package com.ax3.fishao.display.boosters
{
   import com.ax3.fishao.ResourceType;
   import com.ax3.fishao.debug.Debug;
   
   public class EBoosterButtonState
   {
      
      public static const EBBS_DISABLE:String = "disable";
      
      public static const EBBS_EXP_X2:String = "exp_booster_x2";
      
      public static const EBBS_EXP_X4:String = "exp_booster_x4";
      
      public static const EBBS_LUCK_1:String = "luck_potion_1";
      
      public static const EBBS_LUCK_2:String = "luck_potion_2";
      
      public static const EBBS_MAGIC_WATCH:String = "magic_watch";
      
      public static const EBBS_RADAR_GREEN:String = "green_fish_radar";
      
      public static const EBBS_RADAR_WHITE:String = "white_fish_radar";
      
      public static const EBBS_RADAR_BLUE:String = "blue_fish_radar";
      
      public static const EBBS_SHINY_1:String = "shiny_potion_1";
      
      public static const EBBS_SHINY_2:String = "shiny_potion_2";
      
      public static const EBBS_POWER_1:String = "power_booster_1";
      
      public static const EBBS_POWER_2:String = "power_booster_2";
      
      public function EBoosterButtonState()
      {
         super();
      }
      
      public static function getState(param1:int) : String
      {
         var _loc2_:String = null;
         switch(param1)
         {
            case ResourceType.ID_LUCK_POTION_1:
               _loc2_ = EBBS_LUCK_1;
               break;
            case ResourceType.ID_LUCK_POTION_2:
               _loc2_ = EBBS_LUCK_2;
               break;
            case ResourceType.ID_GREEN_FISH_RADAR:
               _loc2_ = EBBS_RADAR_GREEN;
               break;
            case ResourceType.ID_WHITE_FISH_RADAR:
               _loc2_ = EBBS_RADAR_WHITE;
               break;
            case ResourceType.ID_BLUE_FISH_RADAR:
               _loc2_ = EBBS_RADAR_BLUE;
               break;
            case ResourceType.ID_MAGIC_WATCH:
               _loc2_ = EBBS_MAGIC_WATCH;
               break;
            case ResourceType.ID_EXP_BOOSTER_X2:
               _loc2_ = EBBS_EXP_X2;
               break;
            case ResourceType.ID_EXP_BOOSTER_X4:
               _loc2_ = EBBS_EXP_X4;
               break;
            case ResourceType.ID_SHINY_POTION_1:
               _loc2_ = EBBS_SHINY_1;
               break;
            case ResourceType.ID_SHINY_POTION_2:
               _loc2_ = EBBS_SHINY_2;
               break;
            case ResourceType.ID_POWER_BOOSTER_1:
               _loc2_ = EBBS_POWER_1;
               break;
            case ResourceType.ID_POWER_BOOSTER_2:
               _loc2_ = EBBS_POWER_2;
               break;
            default:
               Debug.assert(false);
         }
         return _loc2_;
      }
   }
}

