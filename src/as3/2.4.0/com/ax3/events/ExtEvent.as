package com.ax3.events
{
   import flash.events.Event;
   
   public class ExtEvent extends Event
   {
      
      public var data:*;
      
      public function ExtEvent(param1:String, param2:* = null, param3:Boolean = false, param4:Boolean = false)
      {
         this.data = param2;
         super(param1,param3,param4);
      }
      
      override public function clone() : Event
      {
         return new ExtEvent(type,this.data,bubbles,cancelable);
      }
   }
}

