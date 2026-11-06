package com.ax3.fishao.model
{
   import flash.events.Event;
   
   public class UpdateResponseParam extends Event
   {
      
      public var data:Object;
      
      public function UpdateResponseParam(param1:String, param2:Object = null)
      {
         super(generateFullEventType(param1));
         this.data = param2;
      }
      
      public static function generateFullEventType(param1:String) : String
      {
         return "updateResponseParam_" + param1;
      }
   }
}

