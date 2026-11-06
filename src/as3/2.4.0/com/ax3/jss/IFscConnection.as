package com.ax3.jss
{
   import com.ax3.jss.requests.client.IClientRequest;
   import flash.events.IEventDispatcher;
   
   public interface IFscConnection
   {
      
      function init(param1:IEventDispatcher) : void;
      
      function connect(param1:String) : void;
      
      function disconnect(param1:String = null) : void;
      
      function send(param1:IClientRequest, param2:Function) : Boolean;
      
      function isConnect() : Boolean;
   }
}

