package com.ax3.fishao.view.dialogs.wheel_of_fortune.controllers
{
   import com.ax3.fishao.control.managers.FishaoSoundManager;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs.base.controllers.implementations.Controller;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces.EControllerUpdate;
   import com.ax3.fishao.view.dialogs.string.EStringType;
   import com.ax3.fishao.view.dialogs.wheel_of_fortune.ManagerWheelOfFortune;
   import com.ax3.fishao.view.dialogs.wheel_of_fortune.views.ViewDialogWheelOfFortune;
   import com.ax3.utils.TimeConverter;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class ControllerDialogWheelOfFortune extends Controller
   {
      
      private var _view:ViewDialogWheelOfFortune;
      
      private var _controllerWheelOfFortune:ControllerWheelOfFortune;
      
      private var _controllerUserReward:ControllerWheelRewardUser;
      
      private var _managerWheelOfFortune:ManagerWheelOfFortune;
      
      private var _timer:Timer;
      
      public function ControllerDialogWheelOfFortune(param1:DisplayObjectContainer)
      {
         this._view = new ViewDialogWheelOfFortune(this,param1);
         super(this._view);
         this.init();
      }
      
      override public function onViewClicked(param1:Object, param2:Event) : Boolean
      {
         var _loc3_:Boolean = super.onViewClicked(param1,param2);
         if(!_loc3_)
         {
            switch(param1)
            {
               case this._view.buttonSpinFree:
                  this._managerWheelOfFortune.spin(true);
                  break;
               case this._view.buttonSpinPaid:
                  if(app.user.fishcoins >= this._managerWheelOfFortune.spinPriceFishcoins)
                  {
                     this._managerWheelOfFortune.spin(false);
                  }
                  else
                  {
                     GameSwf.instance.showBuyFishcoinsDialog();
                  }
                  break;
               default:
                  Debug.assert(false);
            }
         }
         return _loc3_;
      }
      
      private function onTimerTick(param1:TimerEvent) : void
      {
         this.updateButtons();
         this.updateLabels();
         this.updateTimer();
      }
      
      private function init() : void
      {
         this._managerWheelOfFortune = GameSwf.instance.managerWheelOfFortune;
         this._controllerWheelOfFortune = new ControllerWheelOfFortune(Debug.assertProperty(this._view.source,"viewWheelOfFortune"));
         this._controllerUserReward = new ControllerWheelRewardUser(Debug.assertProperty(this._view.source,"viewRewardUser"));
         this.onTimerTick(null);
         this.recreateTimer();
      }
      
      override public function update(param1:String) : void
      {
         switch(param1)
         {
            case EControllerUpdate.ECU_WHEEL_OF_FORTUNE_UPDATE:
               this.onTimerTick(null);
               this.recreateTimer();
               break;
            case EControllerUpdate.ECU_WHEEL_OF_FORTUNE_SPIN_START:
               this._controllerWheelOfFortune.update(param1);
               this._controllerUserReward.update(param1);
               this._view.buttonSpinFree.disable();
               this._view.buttonSpinPaid.disable();
               FishaoSoundManager.play(FishaoSoundManager.SFX_079_UI_Wheel_of_fortune_spin);
               break;
            case EControllerUpdate.ECU_WHEEL_OF_FORTUNE_SPIN_REWARD_UPDATE:
               this._controllerUserReward.rewardType = this._controllerWheelOfFortune.pointerRewardType;
               break;
            case EControllerUpdate.ECU_WHEEL_OF_FORTUNE_SPIN_ERROR:
               this._controllerWheelOfFortune.update(param1);
               this._controllerUserReward.update(param1);
               this._view.buttonSpinFree.enable();
               this._view.buttonSpinPaid.enable();
               break;
            case EControllerUpdate.ECU_WHEEL_OF_FORTUNE_SPIN_REWARD_GOT:
               this._controllerWheelOfFortune.update(param1);
               break;
            case EControllerUpdate.ECU_WHEEL_OF_FORTUNE_SPIN_FINISH:
               this._controllerUserReward.update(param1);
               this._view.buttonSpinFree.enable();
               this._view.buttonSpinPaid.enable();
               FishaoSoundManager.play(FishaoSoundManager.SFX_078_UI_Wheel_of_fortune_win);
               break;
            default:
               Debug.assert(false,"Unsupported type in update method of ControllerDialogWheelOfFortune: " + param1);
         }
      }
      
      private function updateTimer() : void
      {
         var _loc1_:int = this._managerWheelOfFortune.freeSpinTimeLeft;
         if(_loc1_ == 0)
         {
            this.tryCleanupTimer();
            this._view.labelTimeLeft.text = I18n.get(EStringType.EST_DIALOG_WHEEL_OF_FORTUNE_LABEL_FREE_SPIN_READY);
         }
         else
         {
            this._view.labelTimeLeft.text = TimeConverter.toHMSString(TimeConverter.fromSeconds(_loc1_));
         }
      }
      
      private function updateButtons() : void
      {
         this._view.buttonSpinFree.visible = this._managerWheelOfFortune.freeSpinTimeLeft == 0;
         this._view.buttonSpinPaid.visible = this._managerWheelOfFortune.freeSpinTimeLeft > 0;
         this._view.buttonSpinPaid.coins = this._managerWheelOfFortune.spinPriceFishcoins;
      }
      
      private function updateLabels() : void
      {
         this._view.labelDescription.visible = this._managerWheelOfFortune.freeSpinTimeLeft > 0;
      }
      
      private function recreateTimer() : void
      {
         this.tryCleanupTimer();
         this._timer = new Timer(200);
         this._timer.addEventListener(TimerEvent.TIMER,this.onTimerTick);
         this._timer.start();
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
      
      override public function cleanup() : void
      {
         this.tryCleanupTimer();
         this._managerWheelOfFortune = null;
         super.cleanup();
      }
   }
}

