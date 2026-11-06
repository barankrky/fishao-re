package com.ax3.events
{
   public class FatalErrorEvent extends ErrorEvent
   {
      
      public static const ASSET_LOAD_ERROR:int = 2001;
      
      public static const SESSION_ERROR:int = 1002;
      
      public var closeButtonVisible:Boolean = false;
      
      public function FatalErrorEvent(param1:int, param2:String = "", param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param2,param3,param4);
      }
   }
}

