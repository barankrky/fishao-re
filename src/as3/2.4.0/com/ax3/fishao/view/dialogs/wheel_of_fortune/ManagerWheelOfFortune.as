package com.ax3.fishao.view.dialogs.wheel_of_fortune
{
   import com.ax3.fishao.FishaoFscModelManager;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs.PopupManager;
   import com.ax3.fishao.view.dialogs.base.EDialogType;
   import com.ax3.fishao.view.dialogs.base.ManagerBase;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces.EControllerUpdate;
   import com.ax3.fishao.view.dialogs.wheel_of_fortune.model.DialogWheelOfFortune;
   import com.ax3.fishao.view.dialogs.wheel_of_fortune.model.base.EWheelOfFortuneRewardType;
   import com.ax3.fishao.view.dialogs.wheel_of_fortune.model.base.FactoryWheelOfFortuneReward;
   import com.ax3.fishao.view.dialogs.wheel_of_fortune.model.base.WheelOfFortuneReward;
   import com.ax3.jss.requests.server.ServerResp;
   import com.ax3.utils.math.limit;
   import com.ax3.utils.timer.IUpdate;
   import com.ax3.utils.timer.UpdateGroup;
   import com.ax3.utils.timer.UpdateManager;
   import flash.utils.Dictionary;
   import flash.utils.getTimer;
   import protocol.api.wheel_of_fortune.FscExtensionWheelOfFortune;
   import protocol.api.wheel_of_fortune.get_info.ResponseWheelOfFortuneGetInfo;
   import protocol.api.wheel_of_fortune.init.ResponseWheelOfFortuneInit;
   import protocol.api.wheel_of_fortune.spin.ResponseWheelOfFortuneSpin;
   
   public class ManagerWheelOfFortune extends ManagerBase implements IUpdate
   {
      
      private const REWARDS_ORDER:Array = [EWheelOfFortuneRewardType.EWOFRT_ENERGY,EWheelOfFortuneRewardType.EWOFRT_FISHCOINS_MANY,EWheelOfFortuneRewardType.EWOFRT_BAIT_SPECIAL,EWheelOfFortuneRewardType.EWOFRT_ROD_RANDOM,EWheelOfFortuneRewardType.EWOFRT_BAIT_MONSTER,EWheelOfFortuneRewardType.EWOFRT_GADGET_RANDOM,EWheelOfFortuneRewardType.EWOFRT_FISHBUCKS,EWheelOfFortuneRewardType.EWOFRT_FISH_UNLOCK,EWheelOfFortuneRewardType.EWOFRT_FISHCOINS_FEW,EWheelOfFortuneRewardType.EWOFRT_ROD_GLOWING,EWheelOfFortuneRewardType.EWOFRT_EXP];
      
      private var _rewards:Array;
      
      private var _rewardsMap:Dictionary;
      
      private var _freeSpinTimeLeft:int;
      
      private var _freeSpinTimeLeftOnInit:int;
      
      private var _timeOnInit:int;
      
      private var _spinPriceFishcoins:int;
      
      private var _extensionWheelOfFortune:FscExtensionWheelOfFortune;
      
      private var _spinReward:WheelOfFortuneReward;
      
      private var _isUnlockedAllFishes:Boolean;
      
      public function ManagerWheelOfFortune()
      {
         super();
         this.init();
      }
      
      private function sortMethod(param1:WheelOfFortuneReward, param2:WheelOfFortuneReward) : int
      {
         var _loc3_:int = 0;
         var _loc4_:int = this.REWARDS_ORDER.indexOf(param1.type);
         var _loc5_:int = this.REWARDS_ORDER.indexOf(param2.type);
         if(_loc4_ < _loc5_)
         {
            _loc3_ = -1;
         }
         else if(_loc4_ > _loc5_)
         {
            _loc3_ = 1;
         }
         else
         {
            _loc3_ = 0;
         }
         return _loc3_;
      }
      
      public function get freeSpinTimeLeft() : int
      {
         return this._freeSpinTimeLeft;
      }
      
      public function get spinPriceFishcoins() : int
      {
         return this._spinPriceFishcoins;
      }
      
      public function get spinReward() : WheelOfFortuneReward
      {
         return this._spinReward;
      }
      
      public function get rewardsAvailable() : Array
      {
         var _loc1_:WheelOfFortuneReward = null;
         var _loc2_:Array = [];
         for each(_loc1_ in this._rewards)
         {
            switch(_loc1_.type)
            {
               case EWheelOfFortuneRewardType.EWOFRT_FISH_UNLOCK:
                  if(this._isUnlockedAllFishes)
                  {
                     _loc2_.push(this._rewardsMap[EWheelOfFortuneRewardType.EWOFRT_FISHBUCKS]);
                  }
                  else
                  {
                     _loc2_.push(this._rewardsMap[EWheelOfFortuneRewardType.EWOFRT_FISH_UNLOCK]);
                  }
                  break;
               case EWheelOfFortuneRewardType.EWOFRT_FISHBUCKS:
               case EWheelOfFortuneRewardType.EWOFRT_BAIT_RANDOM:
                  break;
               default:
                  _loc2_.push(_loc1_);
            }
         }
         _loc2_.sort(this.sortMethod);
         return _loc2_;
      }
      
      override protected function onInitDataLoaded(param1:ServerResp) : void
      {
         var _loc2_:Object = null;
         var _loc3_:WheelOfFortuneReward = null;
         super.onInitDataLoaded(param1);
         var _loc4_:ResponseWheelOfFortuneInit = param1 as ResponseWheelOfFortuneInit;
         var _loc5_:Array = _loc4_.rewards;
         for each(_loc2_ in _loc5_)
         {
            _loc3_ = FactoryWheelOfFortuneReward.createReward(_loc2_);
            _loc3_.deserializeRewardWheel(_loc2_);
            this._rewards.push(_loc3_);
            this._rewardsMap[_loc3_.type] = _loc3_;
         }
      }
      
      private function onGetInfoResponse(param1:ServerResp) : void
      {
         var _loc2_:DialogWheelOfFortune = null;
         if(handleResponseError(param1))
         {
            return;
         }
         var _loc3_:ResponseWheelOfFortuneGetInfo = param1 as ResponseWheelOfFortuneGetInfo;
         this._spinPriceFishcoins = _loc3_.spin_price_fishcoins;
         this._freeSpinTimeLeftOnInit = this._freeSpinTimeLeft = _loc3_.free_spin_time_left;
         this._isUnlockedAllFishes = _loc3_.is_unlocked_all_fishes;
         this.timerStart();
         var _loc4_:Boolean = PopupManager.getInstance().currentDialog() is DialogWheelOfFortune;
         if(_loc4_)
         {
            PopupManager.getInstance().tryUpdateCurrentDialog(EControllerUpdate.ECU_WHEEL_OF_FORTUNE_UPDATE,EDialogType.EDT_WHEEL_OF_FORTUNE);
         }
         else
         {
            _loc2_ = app.dialogFactory.getDialog(DialogWheelOfFortune);
            _loc2_.show();
         }
      }
      
      private function onSpinResponse(param1:ServerResp) : void
      {
         if(handleResponseError(param1))
         {
            PopupManager.getInstance().tryUpdateCurrentDialog(EControllerUpdate.ECU_WHEEL_OF_FORTUNE_SPIN_ERROR,EDialogType.EDT_WHEEL_OF_FORTUNE);
            return;
         }
         var _loc2_:ResponseWheelOfFortuneSpin = param1 as ResponseWheelOfFortuneSpin;
         this._spinReward = FactoryWheelOfFortuneReward.createReward(_loc2_.rewardData);
         this._spinReward.deserializeRewardUser(_loc2_.rewardData);
         PopupManager.getInstance().tryUpdateCurrentDialog(EControllerUpdate.ECU_WHEEL_OF_FORTUNE_SPIN_REWARD_GOT,EDialogType.EDT_WHEEL_OF_FORTUNE);
      }
      
      public function update(param1:uint, param2:uint) : void
      {
         var _loc3_:int = int((param1 - this._timeOnInit) / 1000);
         var _loc4_:int = limit(this._freeSpinTimeLeftOnInit - _loc3_,0,int.MAX_VALUE);
         if(_loc4_ == 0 && this._freeSpinTimeLeft != _loc4_)
         {
            this.getInfo();
         }
         this._freeSpinTimeLeft = _loc4_;
      }
      
      private function init() : void
      {
         this._rewards = [];
         this._rewardsMap = new Dictionary();
         this._extensionWheelOfFortune = FishaoFscModelManager.fscModel.extensionWheelOfFortune;
         _remoteExtension = this._extensionWheelOfFortune;
         addResponseHandler(ResponseWheelOfFortuneGetInfo,this.onGetInfoResponse);
      }
      
      private function timerStart() : void
      {
         this.tryCleanupTimer();
         this._timeOnInit = getTimer();
         UpdateManager.getInstance().getGroup(UpdateGroup.TIMER_200).add(this);
      }
      
      public function timerStop() : void
      {
         this.tryCleanupTimer();
      }
      
      private function tryCleanupTimer() : void
      {
         UpdateManager.getInstance().getGroup(UpdateGroup.TIMER_200).remove(this);
      }
      
      public function getInfo() : void
      {
         this._extensionWheelOfFortune.getInfo();
      }
      
      public function spin(param1:Boolean) : void
      {
         PopupManager.getInstance().tryUpdateCurrentDialog(EControllerUpdate.ECU_WHEEL_OF_FORTUNE_SPIN_START,EDialogType.EDT_WHEEL_OF_FORTUNE);
         this._extensionWheelOfFortune.spin(param1,this.onSpinResponse);
      }
   }
}

