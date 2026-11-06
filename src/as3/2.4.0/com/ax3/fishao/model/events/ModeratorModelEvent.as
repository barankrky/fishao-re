package com.ax3.fishao.model.events
{
   import flash.events.Event;
   
   public class ModeratorModelEvent extends Event
   {
      
      public static const CHANGE_REPORT_STATE:String = "changeReportState";
      
      public function ModeratorModelEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super(param1,param2,param3);
      }
   }
}

