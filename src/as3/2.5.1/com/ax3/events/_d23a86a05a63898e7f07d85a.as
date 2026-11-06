package com.ax3.events
{
   import flash.events.Event;
   
   public class _d23a86a05a63898e7f07d85a extends Event
   {
      
      public var data:*;
      
      public function _d23a86a05a63898e7f07d85a(param1:String, param2:* = null, param3:Boolean = false, param4:Boolean = false)
      {
         this.data = param2;
         super(param1,param3,param4);
      }
      
      override public function clone() : Event
      {
         return new _d23a86a05a63898e7f07d85a(type,this.data,bubbles,cancelable);
      }
   }
}

