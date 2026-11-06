package com.ax3.display.wrappers
{
   import com.ax3.core.App;
   import flash.display.DisplayObjectContainer;
   
   public interface IAssetWrappersProcessor
   {
      
      function configurateFactory(param1:App, param2:String) : void;
      
      function process(param1:DisplayObjectContainer, param2:Object = null) : void;
   }
}

