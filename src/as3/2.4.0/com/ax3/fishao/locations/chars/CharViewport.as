package com.ax3.fishao.locations.chars
{
   import flash.display.Bitmap;
   
   public class CharViewport extends BitmapAnimationViewport
   {
      
      public var frame:int = 0;
      
      public function CharViewport()
      {
         super();
      }
      
      public function clone() : Bitmap
      {
         return new Bitmap(bitmapData);
      }
   }
}

