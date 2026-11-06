package com.ax3.jss.ext
{
   import com.ax3.jss.FscConnection;
   import com.ax3.jss.model.IFscModel;
   import flash.events.IEventDispatcher;
   
   public interface IFscExtension
   {
      
      function init(param1:IEventDispatcher, param2:FscConnection, param3:IFscModel) : void;
   }
}

