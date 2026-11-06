package com.ax3.fishao.view.dialogs.furniture_factory.controllers
{
   import com.ax3.display.autoscalable.ScaledBitmap;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs.PopupManager;
   import com.ax3.fishao.view.dialogs.base.EDialogType;
   import com.ax3.fishao.view.dialogs.base.controllers.implementations.Controller;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces.EControllerUpdate;
   import com.ax3.fishao.view.dialogs.furniture_factory.ManagerFurnitureFactory;
   import com.ax3.fishao.view.dialogs.furniture_factory.views.ViewFurnitureFactoryReward;
   import com.ax3.fishao.view.dialogs.string.EStringType;
   import com.ax3.utils.TimeConverter;
   import flash.display.DisplayObjectContainer;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class ControllerFurnitureFactoryReward extends Controller
   {
      
      private static const ANIMATION_DURATION:Number = 10;
      
      private var _view:ViewFurnitureFactoryReward;
      
      private var _managerFurnitureFactory:ManagerFurnitureFactory;
      
      private var _timer:Timer;
      
      private var _timerAnimation:Timer;
      
      public function ControllerFurnitureFactoryReward(param1:DisplayObjectContainer)
      {
         this._view = new ViewFurnitureFactoryReward(this,param1);
         super(this._view);
         this.init();
      }
      
      private static function onAnimationComplete(param1:TimerEvent) : void
      {
         PopupManager.getInstance().tryUpdateCurrentDialog(EControllerUpdate.ECU_FURNITURE_FACTORY_REWARD_ANIMATION_COMPLETE,EDialogType.EDT_FURNITURE_FACTORY);
      }
      
      private function onTimerTick(param1:TimerEvent) : void
      {
         var _loc2_:int = this._managerFurnitureFactory.rewardTimeLeft;
         if(_loc2_ == 0)
         {
            this.tryCleanupTimer();
         }
         else
         {
            this._view.labelTimeLeft.text = TimeConverter.toHMSString(TimeConverter.fromSeconds(_loc2_));
         }
      }
      
      private function init() : void
      {
         this._managerFurnitureFactory = GameSwf.instance.managerFurnitureFactory;
         this.updateLabels();
         this.recreateTimerLabel();
      }
      
      private function updateRewardImage() : void
      {
         this._view.viewPlaceholder.removeChildren();
         var _loc1_:String = this._managerFurnitureFactory.reward.imageUrl;
         if(_loc1_ == "")
         {
            return;
         }
         var _loc2_:ScaledBitmap = new ScaledBitmap(null);
         _loc2_.width = this._view.viewPlaceholderSize.x;
         _loc2_.height = this._view.viewPlaceholderSize.y;
         app.resourceManager.replaceBitmapDataFromURL(_loc2_,_loc1_);
         this._view.viewPlaceholder.addChild(_loc2_);
      }
      
      private function updateLabels() : void
      {
         var _loc1_:Boolean = false;
         _loc1_ = false;
         _loc1_ = this._managerFurnitureFactory.rewardTimeLeft == 0;
         if(_loc1_)
         {
            this._view.labelTop.text = I18n.get(EStringType.EST_DIALOG_FURNITURE_FACTORY_REWARD_DESCRIPTION_READY);
         }
         else
         {
            this._view.labelTop.text = I18n.get(EStringType.EST_DIALOG_FURNITURE_FACTORY_REWARD_DESCRIPTION_NOT_READY);
            this._view.labelBottom.text = I18n.get(EStringType.EST_DIALOG_FURNITURE_FACTORY_REWARD_WAIT);
         }
         this._view.labelBottom.source.visible = !_loc1_;
         this._view.labelTimeLeft.source.visible = !_loc1_;
      }
      
      override public function update(param1:String) : void
      {
         switch(param1)
         {
            case EControllerUpdate.ECU_FURNITURE_FACTORY_UPDATE:
               this.recreateTimerLabel();
               this.updateLabels();
               if(this._managerFurnitureFactory.rewardTimeLeft == 0)
               {
                  this._view.hideReward();
               }
               break;
            case EControllerUpdate.ECU_FURNITURE_FACTORY_REWARD_GOT:
               this.updateLabels();
               this.recreateTimerLabel();
               this.recreateTimerAnimation();
               this._view.labelTop.text = I18n.get(EStringType.EST_DIALOG_FURNITURE_FACTORY_REWARD_DESCRIPTION_GET);
               this._view.labelBottom.text = this._managerFurnitureFactory.reward.translationItem;
               this._view.labelRarity.text = this._managerFurnitureFactory.reward.translationRarity;
               this.updateRewardImage();
               this._view.showReward();
               break;
            case EControllerUpdate.ECU_FURNITURE_FACTORY_REWARD_ANIMATION_COMPLETE:
               this.updateLabels();
               this._view.hideReward();
               break;
            default:
               Debug.assert(false,"Unsupported type in update method of ControllerFurnitureFactoryReward: " + param1);
         }
      }
      
      private function recreateTimerLabel() : void
      {
         this.tryCleanupTimer();
         this._timer = new Timer(200);
         this._timer.addEventListener(TimerEvent.TIMER,this.onTimerTick);
         this._timer.start();
         this.onTimerTick(null);
      }
      
      private function recreateTimerAnimation() : void
      {
         this.tryCleanupTimerAnimation();
         this._timerAnimation = new Timer(ANIMATION_DURATION * 1000,1);
         this._timerAnimation.addEventListener(TimerEvent.TIMER,onAnimationComplete);
         this._timerAnimation.start();
      }
      
      private function tryCleanupTimer() : void
      {
         if(this._timer == null)
         {
            return;
         }
         this._timer.removeEventListener(TimerEvent.TIMER,this.onTimerTick);
         this._timer.stop();
         this._timer = null;
      }
      
      private function tryCleanupTimerAnimation() : void
      {
         if(this._timerAnimation == null)
         {
            return;
         }
         this._timerAnimation.removeEventListener(TimerEvent.TIMER_COMPLETE,this.onTimerTick);
         this._timerAnimation.stop();
         this._timerAnimation = null;
      }
      
      override public function cleanup() : void
      {
         this.tryCleanupTimer();
         this.tryCleanupTimerAnimation();
         super.cleanup();
      }
   }
}

