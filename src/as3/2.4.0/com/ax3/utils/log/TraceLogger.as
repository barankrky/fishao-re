package com.ax3.utils.log
{
   import flash.events.Event;
   
   public class TraceLogger implements IGlobalLogger
   {
      
      public function TraceLogger()
      {
         super();
      }
      
      public function logch(param1:*, ... rest) : void
      {
      }
      
      public function error(... rest) : void
      {
         trace.apply(this,rest);
      }
      
      public function dispatchEvent(param1:Event) : void
      {
      }
      
      public function ch(param1:*, param2:*, param3:int = 2, param4:Boolean = false) : void
      {
      }
   }
}

