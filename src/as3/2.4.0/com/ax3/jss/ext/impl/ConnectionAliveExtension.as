package com.ax3.jss.ext.impl
{
   import com.ax3.jss.ConnectionPhase;
   import com.ax3.jss.FscConnection;
   import com.ax3.jss.events.FscEvent;
   import com.ax3.jss.ext.BaseFscExtension;
   import com.ax3.jss.model.IFscModel;
   import com.ax3.jss.model.states.FscModelState;
   import com.ax3.jss.model.states.IState;
   import com.ax3.jss.requests.server.enums.ClientDisconnectionReason;
   import com.ax3.utils.Callback;
   import com.ax3.utils.timer.SingleAlarm;
   import flash.events.IEventDispatcher;
   
   public class ConnectionAliveExtension extends BaseFscExtension
   {
      
      public var connectTimeoutSec:Number = 20;
      
      private var _phase:String = ConnectionPhase.IDLE;
      
      private var _url:String;
      
      private var _autoReconnect:Boolean = true;
      
      private var _isFirstConnection:Boolean = true;
      
      private var _closingOnPurpose:Boolean = false;
      
      private var _connectTimeoutAlarm:SingleAlarm;
      
      public function ConnectionAliveExtension()
      {
         super();
         this._connectTimeoutAlarm = new SingleAlarm();
      }
      
      override public function init(param1:IEventDispatcher, param2:FscConnection, param3:IFscModel) : void
      {
         super.init(param1,param2,param3);
         param1.addEventListener(FscEvent.CONNECT_TO_SERVER_SOCKET,this.onSocketConnected);
         param1.addEventListener(FscEvent.CONNECTION_LOST,this.onConnectionLost);
      }
      
      public function open(param1:String) : void
      {
         this._url = param1;
         this._autoReconnect = true;
         this.openSocket();
      }
      
      public function changeServer(param1:String) : void
      {
         this.log("Change server to " + param1);
         this._url = param1;
         this._autoReconnect = true;
         this.closeSocket(ClientDisconnectionReason.SERVER_CHANGE);
         this.openSocket();
      }
      
      public function close(param1:String = null) : void
      {
         if(param1 == null)
         {
            param1 = ClientDisconnectionReason.MANUAL_DISCONNECT;
         }
         this._autoReconnect = false;
         this.closeSocket(param1);
         this.setPhase(ConnectionPhase.CLOSED);
         _fscModel.state = FscModelState.DISCONNECTED;
      }
      
      public function isConnected() : Boolean
      {
         return this._phase == ConnectionPhase.CONNECTED;
      }
      
      public function hasGivenUp() : Boolean
      {
         return this._phase == ConnectionPhase.FAILED;
      }
      
      public function isEstablishingConnection() : Boolean
      {
         return this._phase == ConnectionPhase.CONNECTING;
      }
      
      public function isFirstConnection() : Boolean
      {
         return this._isFirstConnection;
      }
      
      public function get phase() : String
      {
         return this._phase;
      }
      
      public function get autoReconnect() : Boolean
      {
         return this._autoReconnect;
      }
      
      public function set autoReconnect(param1:Boolean) : void
      {
         this._autoReconnect = param1;
      }
      
      private function openSocket() : void
      {
         if(this._url == null)
         {
            this.log("openSocket() without url");
            return;
         }
         this._connectTimeoutAlarm.destroy();
         this.setPhase(ConnectionPhase.CONNECTING);
         _fscModel.state = this._isFirstConnection ? FscModelState.CONNECTING : FscModelState.RECONNECTING;
         this._connectTimeoutAlarm.activateInSec(this.connectTimeoutSec,new Callback(this.onConnectTimeout));
         _connection.connect(this._url);
      }
      
      private function closeSocket(param1:String) : void
      {
         this._connectTimeoutAlarm.destroy();
         this._closingOnPurpose = true;
         _connection.disconnect(param1);
         this._closingOnPurpose = false;
      }
      
      private function onSocketConnected(param1:FscEvent) : void
      {
         this._connectTimeoutAlarm.destroy();
         this._isFirstConnection = false;
         this.setPhase(ConnectionPhase.CONNECTED);
         _fscModel.state = FscModelState.SOCKET_CONNECTED;
      }
      
      private function onConnectionLost(param1:FscEvent) : void
      {
         if(this._closingOnPurpose)
         {
            return;
         }
         this.handleLoss(String(param1.data));
      }
      
      private function onConnectTimeout() : void
      {
         this.log("Connect timeout after " + this.connectTimeoutSec + "s");
         this.closeSocket(ClientDisconnectionReason.CONNECT_TIMEOUT);
         this.handleLoss(ClientDisconnectionReason.CONNECT_TIMEOUT);
      }
      
      private function handleLoss(param1:String) : void
      {
         this._connectTimeoutAlarm.destroy();
         if(!this._autoReconnect)
         {
            this.log("Connection lost (" + param1 + "), closed on purpose");
            this.setPhase(ConnectionPhase.CLOSED);
            _fscModel.state = FscModelState.DISCONNECTED;
            return;
         }
         this.log("Connection lost (" + param1 + ")");
         this.setPhase(ConnectionPhase.FAILED);
         _fscModel.state = FscModelState.ERROR;
      }
      
      private function setPhase(param1:String) : void
      {
         if(this._phase != param1)
         {
            this.log("Phase " + this._phase + " -> " + param1);
            this._phase = param1;
         }
      }
      
      private function log(param1:String) : void
      {
         _connection.log("ConnectionAlive: " + param1);
      }
   }
}

