package com.ax3.fishao.view.dialogs.wheel_of_fortune.model.fish_unlock
{
   import com.ax3.fishao.ResourceType;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.utils.FishaoBitmapLoader;
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.view.dialogs.string.EStringType;
   import com.ax3.fishao.view.dialogs.wheel_of_fortune.model.base.EWheelOfFortuneRewardType;
   import com.ax3.fishao.view.dialogs.wheel_of_fortune.model.base.WheelOfFortuneReward;
   
   public class WheelOfFortuneRewardFishUnlock extends WheelOfFortuneReward
   {
      
      private var _fishId:int;
      
      public function WheelOfFortuneRewardFishUnlock()
      {
         super();
      }
      
      public function get fishId() : int
      {
         return this._fishId;
      }
      
      override public function get translationWheel() : String
      {
         var _loc1_:String = "";
         switch(_type)
         {
            case EWheelOfFortuneRewardType.EWOFRT_FISH_UNLOCK:
               _loc1_ = I18n.get(EStringType.EST_DIALOG_WHEEL_OF_FORTUNE_REWARD_FISH_UNLOCK);
               break;
            default:
               Debug.assert(false,"Unsupported type got on defineTranslationWheel method of WheelOfFortuneRewardFishUnlock class: " + _type);
         }
         return _loc1_;
      }
      
      override public function get translationUserTop() : String
      {
         return I18n.get(EStringType.EST_DIALOG_WHEEL_OF_FORTUNE_REWARD_USER_TOP_FISH_UNLOCK);
      }
      
      override public function get translationUserBottom() : String
      {
         return I18n.get("fish_" + this._fishId);
      }
      
      override public function get imageUrl() : String
      {
         return FishaoBitmapLoader.convertImageNameURL(FishaoBitmapLoader.getResourceFilenameByKind(ResourceType.FISH.name,this._fishId));
      }
      
      override public function deserializeRewardUser(param1:Object) : void
      {
         super.deserializeRewardUser(param1);
         this._fishId = Debug.assertProperty(param1,"fish_id");
      }
   }
}

