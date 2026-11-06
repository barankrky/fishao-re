package com.ax3.fishao.view.dialogs.wheel_of_fortune.model.resource
{
   import com.ax3.fishao.ResourceType;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.utils.FishaoBitmapLoader;
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs.string.EStringType;
   import com.ax3.fishao.view.dialogs.string.EStringTypeStubs;
   import com.ax3.fishao.view.dialogs.wheel_of_fortune.model.base.EWheelOfFortuneRewardType;
   import com.ax3.fishao.view.dialogs.wheel_of_fortune.model.base.WheelOfFortuneReward;
   
   public class WheelOfFortuneRewardResource extends WheelOfFortuneReward
   {
      
      private var _resourceType:int;
      
      private var _resourceId:int;
      
      private var _amount:int;
      
      public function WheelOfFortuneRewardResource()
      {
         super();
      }
      
      public function get resourceType() : int
      {
         return this._resourceType;
      }
      
      public function get resourceId() : int
      {
         return this._resourceId;
      }
      
      public function get amount() : int
      {
         return this._amount;
      }
      
      override public function get translationWheel() : String
      {
         var _loc1_:String = "";
         switch(_type)
         {
            case EWheelOfFortuneRewardType.EWOFRT_BAIT_MONSTER:
               _loc1_ = I18n.get(EStringType.EST_DIALOG_WHEEL_OF_FORTUNE_REWARD_BAIT_MONSTER);
               break;
            case EWheelOfFortuneRewardType.EWOFRT_BAIT_SPECIAL:
               _loc1_ = I18n.get(EStringType.EST_DIALOG_WHEEL_OF_FORTUNE_REWARD_BAIT_SPECIAL);
               break;
            case EWheelOfFortuneRewardType.EWOFRT_GADGET_RANDOM:
               _loc1_ = I18n.get(EStringType.EST_DIALOG_WHEEL_OF_FORTUNE_REWARD_GADGET_RANDOM);
               break;
            case EWheelOfFortuneRewardType.EWOFRT_ROD_GLOWING:
               _loc1_ = I18n.get(EStringType.EST_DIALOG_WHEEL_OF_FORTUNE_REWARD_ROD_GLOWING);
               break;
            case EWheelOfFortuneRewardType.EWOFRT_ROD_RANDOM:
               _loc1_ = I18n.get(EStringType.EST_DIALOG_WHEEL_OF_FORTUNE_REWARD_ROD_RANDOM);
               break;
            default:
               Debug.assert(false,"Unsupported type got on defineTranslationWheel method of WheelOfFortuneRewardResource class: " + _type);
         }
         return _loc1_;
      }
      
      override public function get translationUserTop() : String
      {
         var _loc1_:String = null;
         var _loc2_:String = ResourceType.getKindByType(this._resourceType);
         var _loc3_:String = I18n.get(_loc2_ + "_" + this._resourceId);
         _loc1_ = I18n.get(EStringType.EST_DIALOG_WHEEL_OF_FORTUNE_REWARD_USER_TOP_RESOURCE);
         return _loc1_.replace(EStringTypeStubs.ESTS_RESOURCE,_loc3_);
      }
      
      override public function get translationUserBottom() : String
      {
         var _loc1_:String = null;
         var _loc2_:Object = null;
         switch(_type)
         {
            case EWheelOfFortuneRewardType.EWOFRT_ROD_GLOWING:
            case EWheelOfFortuneRewardType.EWOFRT_ROD_RANDOM:
               _loc2_ = app.rodsDict.get(this._resourceId);
               _loc1_ = (_loc2_.quality_duration as String) + " " + I18n.get(EStringType.EST_COMMON_THROWS).toLowerCase();
               break;
            case EWheelOfFortuneRewardType.EWOFRT_BAIT_MONSTER:
            case EWheelOfFortuneRewardType.EWOFRT_BAIT_SPECIAL:
               _loc1_ = this._amount + " " + I18n.get(EStringType.EST_COMMON_THROWS).toLowerCase();
               break;
            case EWheelOfFortuneRewardType.EWOFRT_GADGET_RANDOM:
               _loc1_ = "";
               break;
            default:
               Debug.assert(false,"Unsupported type got on defineTranslationWheel method of WheelOfFortuneRewardResource class: " + _type);
         }
         return _loc1_;
      }
      
      override public function get imageUrl() : String
      {
         var _loc1_:String = null;
         var _loc2_:ResourceType = ResourceType.findById(this._resourceType);
         return FishaoBitmapLoader.convertImageNameURL(FishaoBitmapLoader.getResourceFilenameByKind(_loc2_.name,this._resourceId));
      }
      
      override public function deserializeRewardUser(param1:Object) : void
      {
         super.deserializeRewardUser(param1);
         this._resourceType = Debug.assertProperty(param1,"resource_type");
         this._resourceId = Debug.assertProperty(param1,"resource_id");
         this._amount = Debug.assertProperty(param1,"amount");
      }
   }
}

