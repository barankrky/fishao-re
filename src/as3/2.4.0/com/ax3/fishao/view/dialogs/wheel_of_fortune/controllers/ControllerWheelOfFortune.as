package com.ax3.fishao.view.dialogs.wheel_of_fortune.controllers
{
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.view.dialogs.base.controllers.implementations.Controller;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces.EControllerUpdate;
   import com.ax3.fishao.view.dialogs.wheel_of_fortune.ManagerWheelOfFortune;
   import com.ax3.fishao.view.dialogs.wheel_of_fortune.views.ViewWheelOfFortune;
   import flash.display.DisplayObjectContainer;
   
   public class ControllerWheelOfFortune extends Controller
   {
      
      private var _view:ViewWheelOfFortune;
      
      private var _managerWheelOfFortune:ManagerWheelOfFortune;
      
      private var _rewards:Array;
      
      public function ControllerWheelOfFortune(param1:DisplayObjectContainer)
      {
         this._view = new ViewWheelOfFortune(this,param1);
         super(this._view);
         this.init();
      }
      
      public function get pointerRewardType() : String
      {
         return this._view.pointerRewardType;
      }
      
      private function init() : void
      {
         this._managerWheelOfFortune = GameSwf.instance.managerWheelOfFortune;
         this.updateRewards();
      }
      
      private function updateRewards() : void
      {
         this._rewards = this._managerWheelOfFortune.rewardsAvailable;
         this._view.rewards = this._rewards;
      }
      
      override public function update(param1:String) : void
      {
         switch(param1)
         {
            case EControllerUpdate.ECU_WHEEL_OF_FORTUNE_SPIN_START:
               this.updateRewards();
               this.spinStart();
               break;
            case EControllerUpdate.ECU_WHEEL_OF_FORTUNE_SPIN_ERROR:
               this.spinStop();
               break;
            case EControllerUpdate.ECU_WHEEL_OF_FORTUNE_SPIN_REWARD_GOT:
               this.spinToReward();
               break;
            default:
               Debug.assert(false,"Unsupported type in update method of ControllerWheelOfFortune: " + param1);
         }
      }
      
      private function spinStart() : void
      {
         this._view.spinStart();
      }
      
      private function spinStop() : void
      {
         this._view.spinStop();
      }
      
      private function spinToReward() : void
      {
         this._view.spinToReward(this._managerWheelOfFortune.spinReward);
      }
      
      override public function cleanup() : void
      {
         super.cleanup();
      }
   }
}

