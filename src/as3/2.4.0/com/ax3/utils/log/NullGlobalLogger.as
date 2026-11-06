package com.ax3.utils.log
{
   import flash.events.Event;
   
   public class NullGlobalLogger implements IGlobalLogger
   {
      
      public function NullGlobalLogger()
      {
         super();
      }
      
      public static function trace(... rest) : void
      {
      }
      
      public static function sendLog() : void
      {
      }
      
      public function logch(param1:*, ... rest) : void
      {
      }
      
      public function error(... rest) : void
      {
      }
      
      public function dispatchEvent(param1:Event) : void
      {
      }
      
      public function ch(param1:*, param2:*, param3:int = 2, param4:Boolean = false) : void
      {
      }
   }
}

