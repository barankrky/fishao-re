package com.ax3.fishao.locations.chars
{
   import flash.display.BitmapData;
   
   public interface IBitmapAnimationSource
   {
      
      function config(param1:Object) : void;
      
      function getBitmapData(param1:Object = null) : BitmapData;
      
      function enterFrame() : void;
      
      function linkViewport(param1:BitmapAnimationViewport) : void;
      
      function set bitmapData(param1:BitmapData) : void;
   }
}

