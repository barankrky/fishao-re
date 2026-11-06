package com.ax3.fishao.model.interfaces
{
   import flash.display.Sprite;
   
   public interface IOverlayable
   {
      
      function redrawOverlay(param1:int, param2:int, param3:int, param4:int) : void;
      
      function getOverlay(param1:int, param2:int, param3:int, param4:int) : Sprite;
   }
}

