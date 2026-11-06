package com.ax3.fishao.view.dialogs.wheel_of_fortune.views
{
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces.IController;
   import com.ax3.fishao.view.dialogs.base.views.implementations.ViewBase;
   import com.ax3.fishao.view.dialogs.wheel_of_fortune.model.base.WheelOfFortuneReward;
   import flash.display.DisplayObjectContainer;
   
   public class ViewWheelOfFortune extends ViewBase
   {
      
      private var _source:DisplayObjectContainer;
      
      private var _viewWheelRewards:ViewWheelRewards;
      
      private var _viewWheelPointer:ViewWheelPointer;
      
      public function ViewWheelOfFortune(param1:IController, param2:DisplayObjectContainer)
      {
         super(param1,param2);
         this._source = param2;
         this.init();
      }
      
      public function get viewWheelRewards() : ViewWheelRewards
      {
         return this._viewWheelRewards;
      }
      
      public function get viewWheelPointer() : ViewWheelPointer
      {
         return this._viewWheelPointer;
      }
      
      public function set rewards(param1:Array) : void
      {
         this._viewWheelRewards.rewards = param1;
      }
      
      public function get pointerRewardType() : String
      {
         return this._viewWheelRewards.pointerRewardTypeCurrent;
      }
      
      private function init() : void
      {
         this._viewWheelRewards = new ViewWheelRewards(controller,Debug.assertProperty(this._source,"viewWheelRewards"));
         this._viewWheelPointer = new ViewWheelPointer(controller,Debug.assertProperty(this._source,"viewWheelPointer"));
      }
      
      public function spinStart() : void
      {
         this._viewWheelRewards.spinStart();
      }
      
      public function spinStop() : void
      {
         this._viewWheelRewards.spinStop();
      }
      
      public function spinToReward(param1:WheelOfFortuneReward) : void
      {
         this._viewWheelRewards.spinToReward(param1);
      }
   }
}

