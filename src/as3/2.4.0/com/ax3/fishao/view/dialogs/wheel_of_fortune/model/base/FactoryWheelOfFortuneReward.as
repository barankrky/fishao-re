package com.ax3.fishao.view.dialogs.wheel_of_fortune.model.base
{
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.view.dialogs.wheel_of_fortune.model.currency.WheelOfFortuneRewardCurrency;
   import com.ax3.fishao.view.dialogs.wheel_of_fortune.model.fish_unlock.WheelOfFortuneRewardFishUnlock;
   import com.ax3.fishao.view.dialogs.wheel_of_fortune.model.resource.WheelOfFortuneRewardResource;
   
   public class FactoryWheelOfFortuneReward
   {
      
      public function FactoryWheelOfFortuneReward()
      {
         super();
      }
      
      public static function createReward(param1:Object) : WheelOfFortuneReward
      {
         var _loc2_:WheelOfFortuneReward = null;
         switch(param1.type)
         {
            case EWheelOfFortuneRewardType.EWOFRT_FISH_UNLOCK:
               _loc2_ = new WheelOfFortuneRewardFishUnlock();
               break;
            case EWheelOfFortuneRewardType.EWOFRT_BAIT_MONSTER:
            case EWheelOfFortuneRewardType.EWOFRT_BAIT_RANDOM:
            case EWheelOfFortuneRewardType.EWOFRT_BAIT_SPECIAL:
            case EWheelOfFortuneRewardType.EWOFRT_GADGET_RANDOM:
            case EWheelOfFortuneRewardType.EWOFRT_ROD_GLOWING:
            case EWheelOfFortuneRewardType.EWOFRT_ROD_RANDOM:
               _loc2_ = new WheelOfFortuneRewardResource();
               break;
            case EWheelOfFortuneRewardType.EWOFRT_ENERGY:
            case EWheelOfFortuneRewardType.EWOFRT_EXP:
            case EWheelOfFortuneRewardType.EWOFRT_FISHBUCKS:
            case EWheelOfFortuneRewardType.EWOFRT_FISHCOINS_FEW:
            case EWheelOfFortuneRewardType.EWOFRT_FISHCOINS_MANY:
               _loc2_ = new WheelOfFortuneRewardCurrency();
               break;
            default:
               Debug.assert(false,"Unsupported type on createReward of FactoryWheelOfFortuneReward: " + param1.type);
         }
         return _loc2_;
      }
   }
}

