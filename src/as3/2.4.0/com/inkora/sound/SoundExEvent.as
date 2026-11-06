package com.inkora.sound
{
   import flash.events.Event;
   
   public class SoundExEvent extends Event
   {
      
      public static const QUEUE_POINT:String = "queuepoint";
      
      public static const SOUND_COMPLETE:String = "queuepointsoundcompleted";
      
      public static const QUEUE_COMPLETE:String = "queuecompleted";
      
      public static const STOPPED:String = "queuepointsoundstopped";
      
      protected var _qData:Object;
      
      public function SoundExEvent(param1:String, param2:Object, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         if(param2)
         {
            this._qData = {};
            this._qData.label = param2.label;
            this._qData.time = param2.time;
            this._qData.params = param2.params;
         }
      }
      
      public function get QueueData() : Object
      {
         return this._qData;
      }
      
      override public function clone() : Event
      {
         return new SoundExEvent(type,this._qData);
      }
      
      override public function toString() : String
      {
         return formatToString("SoundExEvent","type","bubbles","cancelable","eventPhase","QueueData");
      }
   }
}

