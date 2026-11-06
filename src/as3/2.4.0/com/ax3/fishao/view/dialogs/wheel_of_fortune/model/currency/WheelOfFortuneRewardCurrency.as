package com.ax3.fishao.view.dialogs.wheel_of_fortune.model.currency
{
   import com.ax3.fishao.ResourceType;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.view.dialogs.string.EStringType;
   import com.ax3.fishao.view.dialogs.string.EStringTypeStubs;
   import com.ax3.fishao.view.dialogs.wheel_of_fortune.model.base.EWheelOfFortuneRewardType;
   import com.ax3.fishao.view.dialogs.wheel_of_fortune.model.base.WheelOfFortuneReward;
   
   public class WheelOfFortuneRewardCurrency extends WheelOfFortuneReward
   {
      
      private var _amount:int;
      
      public function WheelOfFortuneRewardCurrency()
      {
         super();
      }
      
      public function get amount() : int
      {
         return this._amount;
      }
      
      override public function get translationWheel() : String
      {
         return this._amount.toString();
      }
      
      override public function get translationUserTop() : String
      {
         var _loc1_:String = null;
         var _loc2_:String = null;
         var _loc3_:String = "";
         switch(_type)
         {
            case EWheelOfFortuneRewardType.EWOFRT_ENERGY:
               _loc2_ = EStringType.getResourceTranslationByName(ResourceType.ENERGY.name);
               _loc3_ = I18n.get(_loc2_);
               break;
            case EWheelOfFortuneRewardType.EWOFRT_EXP:
               _loc3_ = I18n.get(EStringType.EST_COMMON_EXPERIENCE);
               break;
            case EWheelOfFortuneRewardType.EWOFRT_FISHBUCKS:
               _loc2_ = EStringType.getResourceTranslationByName(ResourceType.FISHBUCKS.name);
               _loc3_ = I18n.get(_loc2_);
               break;
            case EWheelOfFortuneRewardType.EWOFRT_FISHCOINS_FEW:
            case EWheelOfFortuneRewardType.EWOFRT_FISHCOINS_MANY:
               _loc2_ = EStringType.getResourceTranslationByName(ResourceType.FISHCOINS.name);
               _loc3_ = I18n.get(_loc2_);
         }
         _loc1_ = I18n.get(EStringType.EST_DIALOG_WHEEL_OF_FORTUNE_REWARD_USER_TOP_RESOURCE);
         return _loc1_.replace(EStringTypeStubs.ESTS_RESOURCE,_loc3_);
      }
      
      override public function get translationUserBottom() : String
      {
         var _loc1_:String = "";
         switch(_type)
         {
            case EWheelOfFortuneRewardType.EWOFRT_ENERGY:
            case EWheelOfFortuneRewardType.EWOFRT_FISHBUCKS:
            case EWheelOfFortuneRewardType.EWOFRT_FISHCOINS_FEW:
            case EWheelOfFortuneRewardType.EWOFRT_FISHCOINS_MANY:
               _loc1_ = this._amount.toString();
               break;
            case EWheelOfFortuneRewardType.EWOFRT_EXP:
               _loc1_ = this._amount.toString() + " " + I18n.getUpper(EStringType.EST_COMMON_EXP);
         }
         return _loc1_;
      }
      
      override public function get imageUrl() : String
      {
         return "";
      }
      
      override public function deserializeRewardWheel(param1:Object) : void
      {
         super.deserializeRewardWheel(param1);
         this._amount = Debug.assertProperty(param1,"amount");
      }
      
      override public function deserializeRewardUser(param1:Object) : void
      {
         super.deserializeRewardUser(param1);
         this._amount = Debug.assertProperty(param1,"amount");
      }
   }
}

