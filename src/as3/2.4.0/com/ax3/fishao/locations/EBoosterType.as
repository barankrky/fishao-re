package com.ax3.fishao.locations
{
   import com.ax3.fishao.ResourceType;
   import com.ax3.fishao.debug.Debug;
   
   public class EBoosterType
   {
      
      public static const EBT_EXP:String = "usedExpBooster";
      
      public static const EBT_RADAR:String = "usedFishRadar";
      
      public static const EBT_MAGIC_WATCH:String = "usedMagicWatch";
      
      public static const EBT_LUCKY_POTION:String = "usedLuckPotion";
      
      public static const EBT_SHINY_POTION:String = "usedShinyPotion";
      
      public static const EBT_POWER_BOOSTER:String = "usedPowerBooster";
      
      public function EBoosterType()
      {
         super();
      }
      
      public static function getBoosterTypeById(param1:uint) : String
      {
         var _loc2_:String = null;
         switch(param1)
         {
            case ResourceType.ID_EXP_BOOSTER_X2:
            case ResourceType.ID_EXP_BOOSTER_X4:
               _loc2_ = EBT_EXP;
               break;
            case ResourceType.ID_GREEN_FISH_RADAR:
            case ResourceType.ID_WHITE_FISH_RADAR:
            case ResourceType.ID_BLUE_FISH_RADAR:
               _loc2_ = EBT_RADAR;
               break;
            case ResourceType.ID_MAGIC_WATCH:
               _loc2_ = EBT_MAGIC_WATCH;
               break;
            case ResourceType.ID_LUCK_POTION_1:
            case ResourceType.ID_LUCK_POTION_2:
               _loc2_ = EBT_LUCKY_POTION;
               break;
            case ResourceType.ID_SHINY_POTION_1:
            case ResourceType.ID_SHINY_POTION_2:
               _loc2_ = EBT_SHINY_POTION;
               break;
            case ResourceType.ID_POWER_BOOSTER_1:
            case ResourceType.ID_POWER_BOOSTER_2:
               _loc2_ = EBT_POWER_BOOSTER;
               break;
            default:
               Debug.assert(false,"Unsupported booster Id in getBoosterTypeById method: " + param1);
         }
         return _loc2_;
      }
   }
}

