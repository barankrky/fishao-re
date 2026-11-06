package com.ax3.jss.model
{
   import com.ax3.jss._30b7fef66889ed3a5e0f6633;
   import com.ax3.jss.events._d2f221bbcfd428bfdc43d954;
   import com.ax3.jss.ext.impl._423a40efcf05a17bb8cf4bf3;
   import com.ax3.jss.ext.impl._9e1b5adef72fa991c52771f3;
   import com.ax3.jss.model.states._6ac4c4cc282e767e45fe39d5;
   import com.ax3.jss.model.states._6ad0e2821c6ebbf3ebab748d;
   import com.ax3.jss.model.states._cd789badd5efc353d515a554;
   import com.ax3.jss.requests.server._5e1bab759fcaea6d1f84faa7;
   import com.ax3.jss.requests.server.dispatcher._e9c1987d01a78ff54d7bdd6f;
   import flash.events.EventDispatcher;
   
   public class _e37ab1e23c99b6f7e31df59d extends EventDispatcher implements _8037b27a84f7a4943b0eb5f7
   {
      
      protected var _state:_6ac4c4cc282e767e45fe39d5;
      
      protected var _loginFscExtension:_423a40efcf05a17bb8cf4bf3;
      
      protected var _connection:_30b7fef66889ed3a5e0f6633;
      
      private var _8b40e9409cf53989940ecec6:_e9c1987d01a78ff54d7bdd6f;
      
      protected var _connectionAliveExtension:_9e1b5adef72fa991c52771f3;
      
      public function _e37ab1e23c99b6f7e31df59d(param1:_30b7fef66889ed3a5e0f6633)
      {
         super();
         this._8b40e9409cf53989940ecec6 = new _e9c1987d01a78ff54d7bdd6f();
         this._connection = param1;
         this._connection.init(this);
         addEventListener(_d2f221bbcfd428bfdc43d954.RECEIVE_DATA,this._2d13772aca58b557a3ac750c);
         this._state = new _6ac4c4cc282e767e45fe39d5(this);
         this._state.state = _cd789badd5efc353d515a554.INIT;
         this._loginFscExtension = new _423a40efcf05a17bb8cf4bf3();
         this._loginFscExtension.init(this,this._connection,this);
         this._connectionAliveExtension = new _9e1b5adef72fa991c52771f3();
         this._connectionAliveExtension.init(this,this._connection,this);
      }
      
      private function _2d13772aca58b557a3ac750c(param1:_d2f221bbcfd428bfdc43d954) : void
      {
         this._8b40e9409cf53989940ecec6._e39e13c67d1bbdf84793a0a7(_5e1bab759fcaea6d1f84faa7(param1.data));
      }
      
      public function _b34843c05949c8b16421b73f(param1:_5e1bab759fcaea6d1f84faa7) : void
      {
         this._8b40e9409cf53989940ecec6._e39e13c67d1bbdf84793a0a7(param1);
      }
      
      public function connect(param1:String) : void
      {
         this._connectionAliveExtension.open(param1);
      }
      
      public function _a419cce3ba1ca75ddf343ab2(param1:String) : void
      {
         this._connectionAliveExtension._a419cce3ba1ca75ddf343ab2(param1);
      }
      
      public function disconnect() : void
      {
         this._connectionAliveExtension.close();
      }
      
      public function _8406c5a65eec7ac3766ac2b8() : void
      {
         this._connectionAliveExtension.autoReconnect = false;
      }
      
      public function set state(param1:_6ad0e2821c6ebbf3ebab748d) : void
      {
         this._state.state = param1;
      }
      
      public function get state() : _6ad0e2821c6ebbf3ebab748d
      {
         return this._state.state;
      }
      
      public function _93c85485e20e2accb736dfc6(param1:Class, param2:Function) : void
      {
         this._8b40e9409cf53989940ecec6._47f9da4a3850db64b3ca44e6(param1,param2);
      }
      
      public function _66976e92ca4860923b30ee2a(param1:Class, param2:Function) : void
      {
         this._8b40e9409cf53989940ecec6._3f746b3409a312b1482ebf7c(param1,param2);
      }
      
      public function _d10c0f03d4614bf89ae6ef7f(param1:_6ad0e2821c6ebbf3ebab748d, param2:Function) : void
      {
         this._state._e612ecab33b21de0d3fa5fb0(param1,param2);
      }
      
      public function _2b9b992198bf00334c52ab34() : Number
      {
         return this._connection.callbackManager.averageTimeMS.value;
      }
      
      public function _cb6de17be29352df9bbc1fd1() : Number
      {
         return this._connection.callbackManager.averageTimeMS.count;
      }
   }
}

