package com.ax3.fishao.events
{
   import flash.events.Event;
   import protocol.sr.ErrorResp;
   
   public class RespErrorEvent extends Event
   {
      
      public static const ERROR:String = "respErrorEvent";
      
      public var resp:ErrorResp;
      
      public function RespErrorEvent(param1:ErrorResp, param2:Boolean = false, param3:Boolean = false)
      {
         super(ERROR,param2,param3);
         this.resp = param1;
      }
   }
}

