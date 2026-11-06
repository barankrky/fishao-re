package com.ax3.jss.events
{
   import flash.events.DataEvent;
   
   public class LoginFscExtensionEvent extends DataEvent
   {
      
      public static const UPDATE_SESSION:String = "updateSession";
      
      public function LoginFscExtensionEvent(param1:String, param2:Boolean = false, param3:Boolean = false, param4:String = "")
      {
         super(param1,param2,param3,param4);
      }
   }
}

