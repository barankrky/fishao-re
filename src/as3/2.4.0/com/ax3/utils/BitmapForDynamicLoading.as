package com.ax3.utils
{
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.events.Event;
   
   public class BitmapForDynamicLoading extends Bitmap
   {
      
      public static const LOADED_EVENT:String = "loaded";
      
      public function BitmapForDynamicLoading()
      {
         super();
      }
      
      override public function set bitmapData(param1:BitmapData) : void
      {
         super.bitmapData = param1;
         dispatchEvent(new Event(LOADED_EVENT));
      }
   }
}

