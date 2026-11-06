package com.ax3.fishao.display.dialogs
{
   import flash.display.DisplayObject;
   
   public interface ILoadingScreen
   {
      
      function fitToScreen() : void;
      
      function set percent(param1:Number) : void;
      
      function textUpdate() : void;
      
      function destroy() : void;
      
      function addChild(param1:DisplayObject) : DisplayObject;
   }
}

