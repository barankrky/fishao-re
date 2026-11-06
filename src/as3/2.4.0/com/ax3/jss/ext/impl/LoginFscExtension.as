package com.ax3.jss.ext.impl
{
   import com.ax3.jss.FscConnection;
   import com.ax3.jss.events.FscEvent;
   import com.ax3.jss.events.LoginFscExtensionEvent;
   import com.ax3.jss.ext.BaseFscExtension;
   import com.ax3.jss.ext.IFscExtension;
   import com.ax3.jss.model.IFscModel;
   import com.ax3.jss.model.states.FscModelState;
   import com.ax3.jss.requests.client.ClientRequest;
   import com.ax3.jss.requests.server.ServerResp;
   import com.ax3.utils.log.globalLogger;
   import flash.events.IEventDispatcher;
   import protocol.api.worlds.change.RequestWorldChange;
   import protocol.cr.EnterWorld;
   import protocol.cr.LoginReq;
   import protocol.cr.RegisterReq;
   import protocol.sr.EnterWorldErrorResp;
   import protocol.sr.ErrorResp;
   import protocol.sr.LoginErrorResp;
   import protocol.sr.LoginSuccessResp;
   import protocol.sr.UpdateResp;
   
   public class LoginFscExtension extends BaseFscExtension implements IFscExtension
   {
      
      private var _loginRequest:ClientRequest;
      
      private var _firstConnection:Boolean = true;
      
      private var _callback:Function = null;
      
      private var _newUrl:String;
      
      private var _enterWorldCallback:Function;
      
      private var _newWorldName:String;
      
      public function LoginFscExtension()
      {
         super();
      }
      
      public function get isConnectedToTheSameHost() : Boolean
      {
         return _connection.url == this._newUrl;
      }
      
      public function disableReconnect() : void
      {
         this._loginRequest = null;
         _fscModel.disableAutoReconnect();
      }
      
      override public function init(param1:IEventDispatcher, param2:FscConnection, param3:IFscModel) : void
      {
         super.init(param1,param2,param3);
         _fscModel.addStateHandler(FscModelState.SOCKET_CONNECTED,this.onSocketConnectedState);
         _fscModel.addStateHandler(FscModelState.LOGIN_SUCCESS,this.onLoginSuccessState);
      }
      
      public function register(param1:String, param2:String, param3:Date, param4:String, param5:Boolean, param6:String, param7:String, param8:String, param9:String, param10:String, param11:Boolean = false, param12:Function = null, param13:String = null) : void
      {
         var _loc14_:RegisterReq = new RegisterReq(param1,param2,param3,param4,param5,param6,param7,param8,param9,param10,param11,param13);
         if(_connection.isConnect())
         {
            _connection.send(_loc14_,param12);
            this._callback = null;
         }
      }
      
      public function login(param1:String, param2:String, param3:String = null, param4:Function = null) : void
      {
         this._loginRequest = new LoginReq(param1,param2,param3);
         this.autoLogin(param4);
      }
      
      private function autoLogin(param1:Function) : void
      {
         this._callback = param1;
         if(this._loginRequest is LoginReq && _connection.isConnect() && (_fscModel.state == FscModelState.SOCKET_CONNECTED || _fscModel.state == FscModelState.LOGIN_ERROR || _fscModel.state == FscModelState.REGISTRATION_CHECKING || _fscModel.state == FscModelState.REGISTRATION_ERROR))
         {
            _fscModel.state = FscModelState.LOGIN_CHECKING;
            _connection.send(this._loginRequest,this._callback);
            this._callback = null;
         }
         else if(this._loginRequest is EnterWorld && _connection.isConnect() && _fscModel.state == FscModelState.SOCKET_CONNECTED)
         {
            _fscModel.state = FscModelState.LOGIN_CHECKING;
            _connection.send(this._loginRequest,this._callback);
            this._callback = null;
         }
      }
      
      public function enterWorld(param1:String, param2:String, param3:String, param4:Function = null) : void
      {
         var _loc5_:RequestWorldChange = null;
         this._newUrl = param3;
         this._newWorldName = param1;
         if(this.isConnectedToTheSameHost && Boolean(_connection.callbackManager))
         {
            globalLogger.logch("loading","Enter to the same world");
            this._loginRequest = new EnterWorld(param1,_connection.url,param2);
            _connection.send(this._loginRequest,param4);
            this._callback = null;
         }
         else
         {
            this._enterWorldCallback = param4;
            this._loginRequest = new EnterWorld(param1,_connection.url,param2);
            _loc5_ = new RequestWorldChange();
            _connection.send(_loc5_,this.onWorldSwitch);
         }
      }
      
      private function onWorldSwitch(param1:ServerResp) : void
      {
         if(param1 is ErrorResp)
         {
            return;
         }
         globalLogger.logch("loading","enterWorld : moving from " + _connection.url + " to " + this._newUrl);
         _fscModel.changeServer(this._newUrl);
      }
      
      private function onDataReceived(param1:FscEvent) : void
      {
         var event:FscEvent = param1;
         var rezponse:UpdateResp = null;
         if(event.data is LoginSuccessResp)
         {
            if(_fscModel.state == FscModelState.LOGIN_CHECKING || _fscModel.state == FscModelState.REGISTRATION_CHECKING)
            {
               _dispatcher.removeEventListener(FscEvent.RECEIVE_DATA,this.onDataReceived);
               _dispatcher.dispatchEvent(new LoginFscExtensionEvent(LoginFscExtensionEvent.UPDATE_SESSION,false,false,String((event.data as LoginSuccessResp).sid)));
               _fscModel.state = FscModelState.LOGIN_SUCCESS;
            }
         }
         else if(event.data is UpdateResp && this._loginRequest is EnterWorld)
         {
            try
            {
               rezponse = event.data as UpdateResp;
               if(!rezponse.hasDataProperty("remoteWorld") && !rezponse.hasDataProperty("leaveFriendHouse"))
               {
                  _fscModel.state = FscModelState.LOGIN_SUCCESS;
                  if(this._enterWorldCallback != null && this._loginRequest != null && event.data is ServerResp && (event.data as ServerResp).reqId == this._loginRequest.reqId)
                  {
                     this._enterWorldCallback(event.data);
                  }
                  this._loginRequest = null;
                  this._enterWorldCallback = null;
               }
            }
            catch(e:Error)
            {
               globalLogger.error("LoginFscExtention.onDataReceived ERROR",e);
               throw e;
            }
         }
         else if(event.data is LoginErrorResp)
         {
            if(_fscModel.state == FscModelState.LOGIN_CHECKING)
            {
               _fscModel.state = FscModelState.LOGIN_ERROR;
            }
            if(_fscModel.state == FscModelState.REGISTRATION_ERROR)
            {
               _dispatcher.removeEventListener(FscEvent.RECEIVE_DATA,this.onDataReceived);
               _fscModel.state = FscModelState.REGISTRATION_ERROR;
            }
         }
         else if(event.data is EnterWorldErrorResp)
         {
            _fscModel.state = FscModelState.LOGIN_SUCCESS;
            if(this._enterWorldCallback != null)
            {
               this._enterWorldCallback(event.data);
            }
            this._enterWorldCallback = null;
         }
      }
      
      private function onSocketConnectedState() : void
      {
         _dispatcher.addEventListener(FscEvent.RECEIVE_DATA,this.onDataReceived);
         this.autoLogin(this._callback);
      }
      
      private function onLoginSuccessState() : void
      {
         this._firstConnection = false;
         _fscModel.state = FscModelState.CONNECTED;
      }
      
      public function isFirstConnection() : Boolean
      {
         return this._firstConnection;
      }
      
      public function isEstablishingSession() : Boolean
      {
         return this._loginRequest is EnterWorld || this._loginRequest is LoginReq;
      }
      
      public function hasPendingLogin() : Boolean
      {
         return this._loginRequest != null;
      }
      
      public function get url() : String
      {
         return _connection.url;
      }
      
      public function get worldName() : String
      {
         return this._newWorldName;
      }
   }
}

