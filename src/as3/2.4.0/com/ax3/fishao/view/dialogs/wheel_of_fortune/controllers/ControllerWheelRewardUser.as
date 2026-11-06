package com.ax3.fishao.view.dialogs.wheel_of_fortune.controllers
{
   import com.ax3.display.autoscalable.ScaledBitmap;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs.base.controllers.implementations.Controller;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces.EControllerUpdate;
   import com.ax3.fishao.view.dialogs.wheel_of_fortune.ManagerWheelOfFortune;
   import com.ax3.fishao.view.dialogs.wheel_of_fortune.model.base.EWheelOfFortuneRewardType;
   import com.ax3.fishao.view.dialogs.wheel_of_fortune.model.base.WheelOfFortuneReward;
   import com.ax3.fishao.view.dialogs.wheel_of_fortune.views.ViewWheelRewardUser;
   import flash.display.DisplayObjectContainer;
   
   public class ControllerWheelRewardUser extends Controller
   {
      
      private var _view:ViewWheelRewardUser;
      
      private var _managerWheelOfFortune:ManagerWheelOfFortune;
      
      public function ControllerWheelRewardUser(param1:DisplayObjectContainer)
      {
         this._view = new ViewWheelRewardUser(this,param1);
         super(this._view);
         this.init();
      }
      
      public function set rewardType(param1:String) : void
      {
         this._view.rewardTypeWheel = param1;
      }
      
      private function onSpinStart() : void
      {
         this._view.hideLabels();
         if(this._view.viewPlaceholder.alpha > 0)
         {
            this._view.hidePlaceholder();
         }
      }
      
      private function onSpinError() : void
      {
         this._view.rewardTypeWheel = EWheelOfFortuneRewardType.EWOFRT_UNKNOWN;
      }
      
      private function onSpinFinish() : void
      {
         var _loc1_:WheelOfFortuneReward = this._managerWheelOfFortune.spinReward;
         this._view.textTop = _loc1_.translationUserTop;
         this._view.textBottom = _loc1_.translationUserBottom;
         this._view.showLabels();
         this.updateRewardImage(_loc1_);
      }
      
      private function init() : void
      {
         this._managerWheelOfFortune = GameSwf.instance.managerWheelOfFortune;
         this._view.rewardTypeWheel = EWheelOfFortuneRewardType.EWOFRT_UNKNOWN;
      }
      
      override public function update(param1:String) : void
      {
         switch(param1)
         {
            case EControllerUpdate.ECU_WHEEL_OF_FORTUNE_SPIN_START:
               this.onSpinStart();
               break;
            case EControllerUpdate.ECU_WHEEL_OF_FORTUNE_SPIN_ERROR:
               this.onSpinError();
               break;
            case EControllerUpdate.ECU_WHEEL_OF_FORTUNE_SPIN_FINISH:
               this.onSpinFinish();
               break;
            default:
               Debug.assert(false,"Unsupported type in update method of ControllerWheelRewardUser: " + param1);
         }
      }
      
      private function updateRewardImage(param1:WheelOfFortuneReward) : void
      {
         this._view.viewPlaceholder.removeChildren();
         var _loc2_:String = param1.imageUrl;
         if(_loc2_ == "")
         {
            return;
         }
         var _loc3_:ScaledBitmap = new ScaledBitmap(null);
         _loc3_.width = this._view.viewPlaceholderSize.x;
         _loc3_.height = this._view.viewPlaceholderSize.y;
         app.resourceManager.replaceBitmapDataFromURL(_loc3_,_loc2_);
         this._view.viewPlaceholder.addChild(_loc3_);
         this._view.showPlaceholder();
      }
   }
}

