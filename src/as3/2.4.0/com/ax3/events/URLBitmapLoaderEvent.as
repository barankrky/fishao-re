package com.ax3.events
{
   import flash.events.Event;
   
   public class URLBitmapLoaderEvent extends Event
   {
      
      public static var BITMAP_LOADED_FROM_URL:String = "BITMAP_LOADED_FROM_URL";
      
      public var param:*;
      
      public function URLBitmapLoaderEvent(param1:String, param2:* = null, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this.param = param2;
      }
      
      override public function clone() : Event
      {
         return new URLBitmapLoaderEvent(type,this.param,bubbles,cancelable);
      }
   }
}

