package com.ax3.fishao.view.dialogs.boosters.base
{
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.locations.EBoosterType;
   import com.ax3.fishao.view.dialogs.boosters.power.BoosterPower;
   
   public class FactoryBoosters
   {
      
      public function FactoryBoosters()
      {
         super();
      }
      
      public static function createBooster(param1:String, param2:int) : BoosterInfo
      {
         var _loc3_:BoosterInfo = null;
         switch(param1)
         {
            case EBoosterType.EBT_POWER_BOOSTER:
               _loc3_ = new BoosterPower(param2);
               break;
            case EBoosterType.EBT_EXP:
            case EBoosterType.EBT_LUCKY_POTION:
            case EBoosterType.EBT_MAGIC_WATCH:
            case EBoosterType.EBT_RADAR:
            case EBoosterType.EBT_SHINY_POTION:
               _loc3_ = new BoosterInfo(param1,param2);
               break;
            default:
               Debug.assert(false,"Unsupported type on createBooster of FactoryBoosters: " + param1);
         }
         return _loc3_;
      }
   }
}

