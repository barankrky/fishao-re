package com.ax3.events
{
   import flash.events.Event;
   import flash.utils.getQualifiedClassName;
   
   public class ErrorEvent extends Event
   {
      
      public static const ERROR:String = "error";
      
      public var id:int;
      
      public var descr:String;
      
      public function ErrorEvent(param1:int, param2:String = "", param3:Boolean = false, param4:Boolean = false)
      {
         super(ERROR,param3,param4);
         this.id = param1;
         this.descr = param2;
      }
      
      override public function clone() : Event
      {
         return new ErrorEvent(this.id,this.descr,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return getQualifiedClassName(this) + " (id: " + this.id + ", descr: " + this.descr + ")";
      }
   }
}

