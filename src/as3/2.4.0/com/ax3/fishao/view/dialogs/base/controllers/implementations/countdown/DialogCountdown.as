package com.ax3.fishao.view.dialogs.base.controllers.implementations.countdown
{
   import com.ax3.fishao.locations.base.LocationDialog;
   import com.ax3.fishao.model.TimerMark;
   import com.ax3.fishao.vars.app;
   import com.ax3.utils.timer.IUpdate;
   import com.ax3.utils.timer.UpdateGroup;
   import com.ax3.utils.timer.UpdateManager;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.utils.getTimer;
   
   public class DialogCountdown extends Sprite implements IUpdate
   {
      
      private var _controllerCountdown:ControllerCountdown;
      
      private var _timerMark:TimerMark;
      
      private var _isLastTimerTick:Boolean;
      
      public function DialogCountdown(param1:int, param2:int)
      {
         super();
         var _loc3_:DisplayObjectContainer = new gViewCountdown();
         this._controllerCountdown = new ControllerCountdown(_loc3_,param1,param2);
         this._timerMark = new TimerMark(param1 * 1000,getTimer());
         this._isLastTimerTick = param1 == 0;
         this.init();
      }
      
      public function get controllerCountdown() : ControllerCountdown
      {
         return this._controllerCountdown;
      }
      
      private function init() : void
      {
         UpdateManager.getInstance().getGroup(UpdateGroup.TIMER_1S).add(this);
         var _loc1_:DisplayObjectContainer = this._controllerCountdown.view.source as DisplayObjectContainer;
         addChild(_loc1_);
         app.dialogManager.assetWrappersProcessor.process(_loc1_);
      }
      
      public function update(param1:uint, param2:uint) : void
      {
         var _loc3_:LocationDialog = null;
         var _loc4_:int = this._timerMark.getLeftSec(param1);
         if(_loc4_ >= 0 && !this._isLastTimerTick)
         {
            this._controllerCountdown.timeLeft = _loc4_;
            this._isLastTimerTick = _loc4_ == 0;
         }
         else
         {
            if(this._controllerCountdown.onCompleteFunction != null)
            {
               this._controllerCountdown.onCompleteFunction();
            }
            _loc3_ = GameSwf.currentLocationDialog;
            if(_loc3_ != null)
            {
               _loc3_.gui.removeCountdownDialogByType(this._controllerCountdown.type);
            }
         }
      }
      
      public function destroy() : void
      {
         UpdateManager.getInstance().getGroup(UpdateGroup.TIMER_1S).remove(this);
         if(this.parent != null)
         {
            this.parent.removeChild(this);
         }
         this._timerMark = null;
         this._controllerCountdown.cleanup();
         this._controllerCountdown = null;
      }
   }
}

