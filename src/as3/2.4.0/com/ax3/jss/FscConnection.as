package com.ax3.jss
{
   import air.net.WebSocket;
   import com.ax3.fishao.model.info.BuildConfig;
   import com.ax3.jss.events.FscEvent;
   import com.ax3.jss.requests.client.IClientRequest;
   import com.ax3.jss.requests.server.ServerResp;
   import com.ax3.jss.requests.server.enums.ClientDisconnectionReason;
   import com.ax3.utils.KeyCallbackDispatcher;
   import com.ax3.utils.datetime.getCurrentUTCTime;
   import com.ax3.utils.log.NullGlobalLogger;
   import com.ax3.utils.log.globalLogger;
   import flash.events.DNSResolverEvent;
   import flash.events.ErrorEvent;
   import flash.events.Event;
   import flash.events.IEventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.WebSocketEvent;
   import flash.filesystem.File;
   import flash.filesystem.FileMode;
   import flash.filesystem.FileStream;
   import flash.net.dns.ARecord;
   import flash.net.dns.DNSResolver;
   import flash.system.Capabilities;
   import flash.utils.ByteArray;
   import flash.utils.getTimer;
   import flash.utils.setTimeout;
   import protocol.cr.MvUsrToRq;
   
   public class FscConnection implements IFscConnection
   {
      
      public static var slowConnectionEmulator:Boolean = false;
      
      public static var tracePackets:Boolean = !BuildConfig.isProd();
      
      private static const LOG_FILE:String = "connection.log";
      
      private static const LOG_OLD_FILE:String = "connection.old.log";
      
      private static const LOG_MAX_BYTES:int = 256 * 1024;
      
      private var _url:String;
      
      private var _ws:WebSocket;
      
      private var _dispatcher:IEventDispatcher;
      
      private var _isConnected:Boolean;
      
      private var _lostReported:Boolean = true;
      
      private var _connectedAt:int;
      
      private var _connectStartedAt:int;
      
      private var _dns:DNSResolver;
      
      private var _debug:Boolean = false;
      
      public var logger:Function = NullGlobalLogger.trace;
      
      public var sendLog:Function;
      
      private var reqId:int = 0;
      
      public var callbackManager:KeyCallbackDispatcher = new KeyCallbackDispatcher();
      
      public function FscConnection(param1:Boolean = false)
      {
         this.sendLog = NullGlobalLogger.sendLog;
         super();
         this._debug = param1;
      }
      
      public static function logToFile(param1:String) : void
      {
         appendToLogFile(param1);
      }
      
      private static function pad(param1:int) : String
      {
         return param1 < 10 ? "0" + param1 : String(param1);
      }
      
      private static function appendToLogFile(param1:String) : void
      {
         var _loc5_:File = null;
         var _loc2_:Date = new Date();
         var _loc3_:String = _loc2_.fullYearUTC + "-" + pad(_loc2_.monthUTC + 1) + "-" + pad(_loc2_.dateUTC) + " " + getCurrentUTCTime() + " " + param1;
         var _loc4_:FileStream = new FileStream();
         try
         {
            _loc5_ = File.applicationStorageDirectory.resolvePath(LOG_FILE);
            if(Boolean(_loc5_.exists) && _loc5_.size > LOG_MAX_BYTES)
            {
               _loc5_.moveTo(File.applicationStorageDirectory.resolvePath(LOG_OLD_FILE),true);
            }
            _loc4_.open(_loc5_,FileMode.APPEND);
            _loc4_.writeUTFBytes(_loc3_ + "\r\n");
         }
         catch(e:Error)
         {
         }
         try
         {
            _loc4_.close();
         }
         catch(e:Error)
         {
         }
      }
      
      public function init(param1:IEventDispatcher) : void
      {
         this._dispatcher = param1;
      }
      
      public function connect(param1:String) : void
      {
         var url:String = param1;
         this._url = url;
         this.destroySocket();
         this._lostReported = false;
         this._ws = new WebSocket();
         this._ws.addEventListener(Event.CONNECT,this.handleSocketConnect);
         this._ws.addEventListener(Event.CLOSE,this.handleSocketClose);
         this._ws.addEventListener(IOErrorEvent.IO_ERROR,this.handleSocketError);
         this._ws.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.handleSecurityError);
         this._ws.addEventListener(SecurityErrorEvent.CERTIFICATE_ERROR,this.handleSecurityError);
         this._ws.addEventListener(WebSocketEvent.DATA,this.handleSocketData);
         try
         {
            this.log("WebSocket connect to " + url + ", client " + BuildConfig.VERSION + " on " + Capabilities.os);
            this._connectStartedAt = getTimer();
            this._ws.connect(url);
         }
         catch(error:SecurityError)
         {
            this.log("Security error(_ws.connect): " + error);
            this.sendLog();
            this.destroySocket();
            this.reportConnectionLost(ClientDisconnectionReason.SECURITY_ERROR);
         }
         catch(error:Error)
         {
            this.log("Connection error(_ws.connect): " + error);
            this.sendLog();
            this.destroySocket();
            this.reportConnectionLost(ClientDisconnectionReason.SOCKET_ERROR);
         }
      }
      
      public function disconnect(param1:String = null) : void
      {
         if(param1 == null)
         {
            param1 = ClientDisconnectionReason.MANUAL_DISCONNECT;
         }
         this.log("Disconnect reason: " + param1);
         this.destroySocket();
         this.reportConnectionLost(param1);
      }
      
      public function send(param1:IClientRequest, param2:Function) : Boolean
      {
         var request:IClientRequest = param1;
         var callback:Function = param2;
         var text:String = null;
         ++this.reqId;
         request.setReqId(this.reqId);
         if(!this.isConnect())
         {
            this.log("Cannot send request without connection: " + request);
            return false;
         }
         try
         {
            text = JsonProtocol.encode(request);
         }
         catch(e:Error)
         {
            this.log("Request encode error: " + request + ": " + e.message);
            return false;
         }
         if(this._debug && !(request is MvUsrToRq))
         {
            this.logger("--> Sending(" + this.reqId + "): " + request + ": " + text);
         }
         this.tracePacket("-->",text);
         if(callback != null)
         {
            this.callbackManager.add(this.reqId,callback);
         }
         try
         {
            if(slowConnectionEmulator)
            {
               setTimeout(this._ws.sendMessage,3000,WebSocket.fmtTEXT,text);
            }
            else
            {
               this._ws.sendMessage(WebSocket.fmtTEXT,text);
            }
         }
         catch(e:Error)
         {
            this.log("Send failed: " + e.message);
            this.destroySocket();
            this.reportConnectionLost(ClientDisconnectionReason.SOCKED_CONNECTED_FAIL);
            return false;
         }
         return true;
      }
      
      public function isConnect() : Boolean
      {
         return this._ws != null && this._isConnected;
      }
      
      public function get url() : String
      {
         return this._url;
      }
      
      private function handleSocketConnect(param1:Event) : void
      {
         this.log("SocketConnect: " + this._url);
         this._isConnected = true;
         this._connectedAt = getTimer();
         if(this._dispatcher != null)
         {
            this._dispatcher.dispatchEvent(new FscEvent(FscEvent.CONNECT_TO_SERVER_SOCKET));
         }
      }
      
      private function handleSocketClose(param1:Event) : void
      {
         var _loc2_:int = int(this._ws.closeReason);
         this.log("Socket closed: code=" + _loc2_ + " after " + this.connectedSeconds() + "s" + (_loc2_ == -1 ? ", no close frame, network or proxy dropped it" : ""));
         this.destroySocket();
         this.reportConnectionLost(ClientDisconnectionReason.SOCKET_CLOSE);
      }
      
      private function handleSocketError(param1:IOErrorEvent) : void
      {
         if(this._isConnected)
         {
            this.log("Socket error: " + param1.text + " after " + this.connectedSeconds() + "s");
         }
         else
         {
            this.logConnectFailure(param1.text);
         }
         this.destroySocket();
         this.reportConnectionLost(ClientDisconnectionReason.SOCKET_ERROR);
      }
      
      private function handleSecurityError(param1:SecurityErrorEvent) : void
      {
         this.log("Security error: errorID=" + param1.errorID + " text=" + param1.text);
         this.lookupHost();
         this.sendLog();
         this.destroySocket();
         this.reportConnectionLost(ClientDisconnectionReason.SECURITY_ERROR);
      }
      
      private function handleSocketData(param1:WebSocketEvent) : void
      {
         var _loc2_:ByteArray = null;
         var _loc3_:String = param1.data as String;
         if(_loc3_ == null && param1.data is ByteArray)
         {
            _loc2_ = ByteArray(param1.data);
            _loc2_.position = 0;
            _loc3_ = _loc2_.readUTFBytes(_loc2_.bytesAvailable);
         }
         if(_loc3_ == null || _loc3_.length == 0)
         {
            return;
         }
         this.tracePacket("<--",_loc3_);
         var _loc4_:ServerResp = this.decodeData(_loc3_) as ServerResp;
         if(_loc4_ == null)
         {
            return;
         }
         if(_loc4_.needLog)
         {
            this.logger("<-- Receive resp: " + _loc4_ + ": " + _loc3_);
         }
         if(_loc4_.reqId > -1)
         {
            if(slowConnectionEmulator)
            {
               setTimeout(this.callbackManager.dispatch,3000,_loc4_.reqId,[_loc4_]);
            }
            else
            {
               this.callbackManager.dispatch(_loc4_.reqId,[_loc4_]);
            }
         }
         this._dispatcher.dispatchEvent(new FscEvent(FscEvent.RECEIVE_DATA,_loc4_));
      }
      
      private function decodeData(param1:String) : Object
      {
         var text:String = param1;
         var decodedData:Object = null;
         try
         {
            decodedData = JsonProtocol.decode(text);
         }
         catch(e:Error)
         {
            globalLogger.error("Data decode error:");
            globalLogger.error(e);
            this.destroySocket();
            this.reportConnectionLost(ClientDisconnectionReason.DECODE_ERROR);
         }
         return decodedData;
      }
      
      private function reportConnectionLost(param1:String) : void
      {
         if(this._lostReported)
         {
            return;
         }
         this._lostReported = true;
         this._isConnected = false;
         var _loc2_:int = this.callbackManager.clear();
         if(_loc2_ > 0)
         {
            this.log("Dropped " + _loc2_ + " pending request callback(s)");
         }
         this.log("Connection lost: " + param1);
         if(this._dispatcher != null)
         {
            this._dispatcher.dispatchEvent(new FscEvent(FscEvent.CONNECTION_LOST,param1));
         }
      }
      
      private function destroySocket() : void
      {
         this._isConnected = false;
         if(this._ws == null)
         {
            return;
         }
         this._ws.removeEventListener(Event.CONNECT,this.handleSocketConnect);
         this._ws.removeEventListener(Event.CLOSE,this.handleSocketClose);
         this._ws.removeEventListener(IOErrorEvent.IO_ERROR,this.handleSocketError);
         this._ws.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.handleSecurityError);
         this._ws.removeEventListener(SecurityErrorEvent.CERTIFICATE_ERROR,this.handleSecurityError);
         this._ws.removeEventListener(WebSocketEvent.DATA,this.handleSocketData);
         try
         {
            this._ws.close();
         }
         catch(e:Error)
         {
         }
         this._ws = null;
      }
      
      public function log(param1:String) : void
      {
         var _loc2_:String = getCurrentUTCTime() + " " + param1;
         if(tracePackets)
         {
         }
         this.logger(_loc2_);
         appendToLogFile(param1);
      }
      
      private function logConnectFailure(param1:String) : void
      {
         var _loc2_:String = param1.indexOf("://") != -1 ? "server or proxy answered with an HTTP error instead of upgrading" : "network failure, DNS, refused, unreachable or TLS";
         this.log("Connect failed after " + (getTimer() - this._connectStartedAt) + "ms: " + param1 + ", " + _loc2_);
         this.lookupHost();
      }
      
      private function lookupHost() : void
      {
         var host:String = null;
         try
         {
            host = this._url.replace(/^\w+:\/\//,"").replace(/[:\/].*$/,"");
            if(!DNSResolver.isSupported || host.charAt(0) == "[" || /^[\d.]+$/.test(host))
            {
               return;
            }
            this._dns = new DNSResolver();
            this._dns.addEventListener(DNSResolverEvent.LOOKUP,function(param1:DNSResolverEvent):void
            {
               var _loc3_:ARecord = null;
               var _loc2_:Array = [];
               for each(_loc3_ in param1.resourceRecords)
               {
                  _loc2_.push(_loc3_.address);
               }
               log("DNS " + host + " -> " + _loc2_.join(", "));
            });
            this._dns.addEventListener(ErrorEvent.ERROR,function(param1:ErrorEvent):void
            {
               log("DNS " + host + " failed: " + param1.text);
            });
            this._dns.lookup(host,ARecord);
         }
         catch(e:Error)
         {
            this.log("DNS lookup threw: " + e.message);
         }
      }
      
      private function connectedSeconds() : int
      {
         return this._isConnected ? int((getTimer() - this._connectedAt) / 1000) : 0;
      }
      
      private function tracePacket(param1:String, param2:String) : void
      {
         if(!tracePackets)
         {
            return;
         }
      }
   }
}

