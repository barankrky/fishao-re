package com.ax3.fishao.utils
{
   import com.junkbyte.console.Cc;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   
   public class ErrorManager
   {
      
      public function ErrorManager()
      {
         super();
      }
      
      public static function handleCriticalSecurityError(param1:SecurityErrorEvent) : void
      {
         Cc.error(param1);
      }
      
      public static function handleCriticalIoError(param1:IOErrorEvent) : void
      {
         Cc.error(param1);
      }
   }
}

