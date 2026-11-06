package com.ax3.jss.model
{
   import com.ax3.jss.model.states.IState;
   
   public interface IFscModel
   {
      
      function set state(param1:IState) : void;
      
      function get state() : IState;
      
      function addRequestHandler(param1:Class, param2:Function) : void;
      
      function addStateHandler(param1:IState, param2:Function) : void;
      
      function disconnect() : void;
      
      function connect(param1:String) : void;
      
      function changeServer(param1:String) : void;
      
      function disableAutoReconnect() : void;
   }
}

