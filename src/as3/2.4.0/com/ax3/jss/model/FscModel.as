package com.ax3.jss.model
{
   import com.ax3.jss.FscConnection;
   import com.ax3.jss.events.FscEvent;
   import com.ax3.jss.ext.impl.ConnectionAliveExtension;
   import com.ax3.jss.ext.impl.LoginFscExtension;
   import com.ax3.jss.model.states.DispatchedStateMachine;
   import com.ax3.jss.model.states.FscModelState;
   import com.ax3.jss.model.states.IState;
   import com.ax3.jss.requests.server.ServerResp;
   import com.ax3.jss.requests.server.dispatcher.RequestDispatcher;
   import flash.events.EventDispatcher;
   
   public class FscModel extends EventDispatcher implements IFscModel
   {
      
      protected var _state:DispatchedStateMachine;
      
      protected var _loginFscExtension:LoginFscExtension;
      
      protected var _connection:FscConnection;
      
      private var _requestDispatcher:RequestDispatcher;
      
      protected var _connectionAliveExtension:ConnectionAliveExtension;
      
      public function FscModel(param1:FscConnection)
      {
         super();
         this._requestDispatcher = new RequestDispatcher();
         this._connection = param1;
         this._connection.init(this);
         addEventListener(FscEvent.RECEIVE_DATA,this.onFscReceived);
         this._state = new DispatchedStateMachine(this);
         this._state.state = FscModelState.INIT;
         this._loginFscExtension = new LoginFscExtension();
         this._loginFscExtension.init(this,this._connection,this);
         this._connectionAliveExtension = new ConnectionAliveExtension();
         this._connectionAliveExtension.init(this,this._connection,this);
      }
      
      private function onFscReceived(param1:FscEvent) : void
      {
         this._requestDispatcher.handleRequest(ServerResp(param1.data));
      }
      
      public function testResponse(param1:ServerResp) : void
      {
         this._requestDispatcher.handleRequest(param1);
      }
      
      public function connect(param1:String) : void
      {
         this._connectionAliveExtension.open(param1);
      }
      
      public function changeServer(param1:String) : void
      {
         this._connectionAliveExtension.changeServer(param1);
      }
      
      public function disconnect() : void
      {
         this._connectionAliveExtension.close();
      }
      
      public function disableAutoReconnect() : void
      {
         this._connectionAliveExtension.autoReconnect = false;
      }
      
      public function set state(param1:IState) : void
      {
         this._state.state = param1;
      }
      
      public function get state() : IState
      {
         return this._state.state;
      }
      
      public function addRequestHandler(param1:Class, param2:Function) : void
      {
         this._requestDispatcher.addRequestListener(param1,param2);
      }
      
      public function removeRequestHandler(param1:Class, param2:Function) : void
      {
         this._requestDispatcher.removeRequestListener(param1,param2);
      }
      
      public function addStateHandler(param1:IState, param2:Function) : void
      {
         this._state.addStateChangeListener(param1,param2);
      }
      
      public function getAverageTimeMS() : Number
      {
         return this._connection.callbackManager.averageTimeMS.value;
      }
      
      public function getAverageCount() : Number
      {
         return this._connection.callbackManager.averageTimeMS.count;
      }
   }
}

