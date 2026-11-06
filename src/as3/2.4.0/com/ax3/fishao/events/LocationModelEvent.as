package com.ax3.fishao.events
{
   import com.ax3.events.ExtEvent;
   
   public class LocationModelEvent extends ExtEvent
   {
      
      public static const ENTER_TO_LOCATION:String = "enterToLocation";
      
      public static const ADD_NEW_CHAR:String = "addNewChar";
      
      public static const UPDATE_CHARS:String = "updateChars";
      
      public static const REMOVE_CHAR:String = "removeChar";
      
      public static const UPDATE_SHELLS:String = "updateShells";
      
      public static const REMOVE_SHELL:String = "removeShell";
      
      public static const ADD_SHELL:String = "addShell";
      
      public static const LOAD_LOCATION_ITEMS:String = "updateLocationItems";
      
      public static const REMOVE_LOCATION_ITEM:String = "removeLocationItem";
      
      public static const ADD_LOCATION_ITEM:String = "addLocationItem";
      
      public static const START_BOBS_MINIGAME:String = "startBobsMinigame";
      
      public static const STOP_BOBS_MINIGAME:String = "removeBobsMinigameTimer";
      
      public static const ADD_DAILY_QUEST_FISHBONES:String = "addDailyQuestFishbones";
      
      public static const PUT_CHAR_TO_BOAT:String = "putCharToBoat";
      
      public static const UPDATE_TOP_USER_LIST:String = "updateTopUserList";
      
      public static const ADD_FISHBOX:String = "addFishbox";
      
      public static const REMOVE_FISHBOX:String = "removeFishbox";
      
      public static const DESTROY_FISHBOX:String = "destroyFishbox";
      
      public static const START_STEVE_MINIGAME:String = "startSteveMinigame";
      
      public static const UPDATE_BOARD_FISH:String = "update_board_fish";
      
      public static const FORCE_MOVE_TO_LUCKY_SAILOR:String = "FORCE_MOVE_TO_LUCKY_SAILOR";
      
      public static const UPDATE_MAINTENANCE_TIME:String = "updateMaintenanceTime";
      
      public function LocationModelEvent(param1:String, param2:* = null, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param2,param3,param4);
      }
   }
}

