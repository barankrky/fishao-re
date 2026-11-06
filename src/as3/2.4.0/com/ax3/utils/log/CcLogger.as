package com.ax3.utils.log
{
   import com.junkbyte.console.Cc;
   import flash.events.Event;
   
   public class CcLogger implements IGlobalLogger
   {
      
      public function CcLogger()
      {
         super();
      }
      
      public function logch(param1:*, ... rest) : void
      {
         rest.unshift(param1);
         Cc.logch.apply(this,rest);
      }
      
      public function error(... rest) : void
      {
         Cc.error.apply(this,rest);
      }
      
      public function dispatchEvent(param1:Event) : void
      {
         GameSwf.globalDispatcher.dispatchEvent(param1);
      }
      
      public function ch(param1:*, param2:*, param3:int = 2, param4:Boolean = false) : void
      {
         Cc.ch(param1,param2,param3,param4);
      }
   }
}

