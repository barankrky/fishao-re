package com.ax3.fishao.model.events
{
   import flash.events.Event;
   
   public class TipEvent extends Event
   {
      
      public static const DESTROY:String = "destroy";
      
      public static const DESTROY_POPUP:String = "destroyPopup";
      
      public static const DESTROY_INFOTIP:String = "destroyInfotip";
      
      public function TipEvent(param1:String, param2:Boolean = false, param3:Boolean = false)
      {
         super(param1,param2,param3);
      }
   }
}

