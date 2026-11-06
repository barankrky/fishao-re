package com.ax3.fishao.events
{
   import com.ax3.events.ExtEvent;
   
   public class LocationDialogEvent extends ExtEvent
   {
      
      public static const UPDATE_OBSTACLE_MAP:String = "updateObstacleMap";
      
      public static const UPDATE_LAKE_OBSTACLE_MAP:String = "updateLakeObstacleMap";
      
      public static const UPDATE_SOUND_MAP:String = "updateSoundMap";
      
      public function LocationDialogEvent(param1:String, param2:* = null, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param2,param3,param4);
      }
   }
}

