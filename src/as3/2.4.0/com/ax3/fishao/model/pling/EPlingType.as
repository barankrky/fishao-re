package com.ax3.fishao.model.pling
{
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.locations.EBoosterType;
   
   public class EPlingType
   {
      
      public static const RESOURCE_RECEIVED:uint = 102;
      
      public static const TOURNAMENT_START_IN:uint = 112;
      
      public static const EPT_FISHING_LINE_UPDATE:uint = 200;
      
      public static const EPT_MONEY_TREE_UPDATE:uint = 300;
      
      public static const EPT_END_OF_INF_LUCK_POTION:uint = 500;
      
      public static const EPT_END_OF_INF_MAGIC_WATCH:uint = 501;
      
      public static const EPT_END_OF_INF_FISH_RADAR:uint = 502;
      
      public static const EPT_END_OF_INF_EXP_BOOSTER:uint = 503;
      
      public static const EPT_END_OF_INF_SHINY_POTION:uint = 504;
      
      public static const EPT_END_OF_INF_POWER_BOOSTER:uint = 505;
      
      public static const EPT_NEW_SHINY_COLLECTION_AVAILABLE:uint = 600;
      
      public static const EPT_NEW_SHINY_POTIONS_AVAILABLE:uint = 700;
      
      public static const EPT_COLLECTION_COMPLETED:uint = 800;
      
      public static const EPT_COLLECTION_UNLOCKED:uint = 801;
      
      public static const EPT_COLLECTION_UNLOCK_LOST_VALLEY_FISH:uint = 802;
      
      public static const CLUB_TOURNAMENT_START_IN:uint = 900;
      
      public static const CLUB_TOURNAMENT_END:uint = 901;
      
      public static const EPT_WHEEL_OF_FORTUNE_REWARD_FISH_UNLOCK:uint = 1000;
      
      public static const EPT_WHEEL_OF_FORTUNE_REWARD_EXP:uint = 1001;
      
      public function EPlingType()
      {
         super();
      }
      
      public static function getBoosterEndPlingType(param1:String) : uint
      {
         var _loc2_:uint = 0;
         switch(param1)
         {
            case EBoosterType.EBT_EXP:
               _loc2_ = EPT_END_OF_INF_EXP_BOOSTER;
               break;
            case EBoosterType.EBT_LUCKY_POTION:
               _loc2_ = EPT_END_OF_INF_LUCK_POTION;
               break;
            case EBoosterType.EBT_MAGIC_WATCH:
               _loc2_ = EPT_END_OF_INF_MAGIC_WATCH;
               break;
            case EBoosterType.EBT_RADAR:
               _loc2_ = EPT_END_OF_INF_FISH_RADAR;
               break;
            case EBoosterType.EBT_SHINY_POTION:
               _loc2_ = EPT_END_OF_INF_SHINY_POTION;
               break;
            case EBoosterType.EBT_POWER_BOOSTER:
               _loc2_ = EPT_END_OF_INF_POWER_BOOSTER;
               break;
            default:
               Debug.assert(false);
         }
         return _loc2_;
      }
   }
}

