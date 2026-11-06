package com.ax3.fishao.view.dialogs.furniture_factory
{
   import com.ax3.fishao.FishaoFscModelManager;
   import com.ax3.fishao.locations.base.LocationDialog;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs.PopupManager;
   import com.ax3.fishao.view.dialogs.base.EDialogType;
   import com.ax3.fishao.view.dialogs.base.ManagerBase;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces.EControllerUpdate;
   import com.ax3.fishao.view.dialogs.furniture_factory.model.DialogFurnitureFactory;
   import com.ax3.fishao.view.dialogs.furniture_factory.model.FurnitureFactoryReward;
   import com.ax3.jss.requests.server.ServerResp;
   import com.ax3.utils.math.limit;
   import com.ax3.utils.timer.IUpdate;
   import com.ax3.utils.timer.UpdateGroup;
   import com.ax3.utils.timer.UpdateManager;
   import flash.utils.getTimer;
   import protocol.api.furniture_factory.FscExtensionFurnitureFactory;
   import protocol.api.furniture_factory.base.ResponseFurnitureFactoryBase;
   import protocol.api.furniture_factory.get_reward.ResponseFurnitureFactoryGetReward;
   
   public class ManagerFurnitureFactory extends ManagerBase implements IUpdate
   {
      
      private var _rewardTimeLeft:int;
      
      private var _rewardTimeLeftOnInit:int;
      
      private var _timeOnInit:int;
      
      private var _skipTimePriceFishcoins:int;
      
      private var _reward:FurnitureFactoryReward;
      
      private var _extensionFurnitureFactory:FscExtensionFurnitureFactory;
      
      private var _openDialogOnResponse:Boolean;
      
      public function ManagerFurnitureFactory()
      {
         super();
         this._extensionFurnitureFactory = FishaoFscModelManager.fscModel.extensionFurnitureFactory;
         _remoteExtension = this._extensionFurnitureFactory;
      }
      
      public function get rewardTimeLeft() : int
      {
         return this._rewardTimeLeft;
      }
      
      public function get skipTimePriceFishcoins() : int
      {
         return this._skipTimePriceFishcoins;
      }
      
      public function get reward() : FurnitureFactoryReward
      {
         return this._reward;
      }
      
      public function update(param1:uint, param2:uint) : void
      {
         var _loc3_:int = int((param1 - this._timeOnInit) / 1000);
         var _loc4_:int = limit(this._rewardTimeLeftOnInit - _loc3_,0,int.MAX_VALUE);
         if(_loc4_ == 0 && this._rewardTimeLeft != _loc4_)
         {
            this.timerStop();
            this.getInfo(false);
         }
         this._rewardTimeLeft = _loc4_;
      }
      
      override protected function onInitDataLoaded(param1:ServerResp) : void
      {
         super.onInitDataLoaded(param1);
         this.handleResponse(param1);
      }
      
      private function handleResponse(param1:ServerResp) : Boolean
      {
         var _loc2_:Boolean = false;
         if(handleResponseError(param1))
         {
            return _loc2_;
         }
         var _loc3_:ResponseFurnitureFactoryBase = param1 as ResponseFurnitureFactoryBase;
         this._skipTimePriceFishcoins = _loc3_.skip_time_price_fishcoins;
         this._rewardTimeLeftOnInit = this._rewardTimeLeft = _loc3_.reward_time_left;
         if(this._rewardTimeLeft > 0)
         {
            this.timerStart();
         }
         var _loc4_:LocationDialog = GameSwf.currentLocationDialog;
         if(_loc4_ != null)
         {
            _loc4_.updateWithType(EControllerUpdate.ECU_FURNITURE_FACTORY_UPDATE);
         }
         return true;
      }
      
      private function onGetInfoResponse(param1:ServerResp) : void
      {
         var _loc2_:DialogFurnitureFactory = null;
         if(!this.handleResponse(param1))
         {
            return;
         }
         var _loc3_:Boolean = PopupManager.getInstance().currentDialog() is DialogFurnitureFactory;
         if(_loc3_)
         {
            PopupManager.getInstance().tryUpdateCurrentDialog(EControllerUpdate.ECU_FURNITURE_FACTORY_UPDATE,EDialogType.EDT_FURNITURE_FACTORY);
         }
         else if(this._openDialogOnResponse)
         {
            _loc2_ = app.dialogFactory.getDialog(DialogFurnitureFactory);
            _loc2_.show();
            this._openDialogOnResponse = false;
         }
      }
      
      private function onSkipTimeResponse(param1:ServerResp) : void
      {
         if(!this.handleResponse(param1))
         {
            return;
         }
         PopupManager.getInstance().tryUpdateCurrentDialog(EControllerUpdate.ECU_FURNITURE_FACTORY_UPDATE,EDialogType.EDT_FURNITURE_FACTORY);
      }
      
      private function onGetRewardResponse(param1:ServerResp) : void
      {
         if(!this.handleResponse(param1))
         {
            return;
         }
         var _loc2_:ResponseFurnitureFactoryGetReward = param1 as ResponseFurnitureFactoryGetReward;
         this._reward = new FurnitureFactoryReward();
         this._reward.deserialize(_loc2_.rewardData);
         PopupManager.getInstance().tryUpdateCurrentDialog(EControllerUpdate.ECU_FURNITURE_FACTORY_REWARD_GOT,EDialogType.EDT_FURNITURE_FACTORY);
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
      
      public function getInfo(param1:Boolean = true) : void
      {
         this._openDialogOnResponse = param1;
         this._extensionFurnitureFactory.getInfo(this.onGetInfoResponse);
      }
      
      public function skipTime() : void
      {
         this._extensionFurnitureFactory.skipTime(this.onSkipTimeResponse);
      }
      
      public function getReward() : void
      {
         this._extensionFurnitureFactory.getReward(this.onGetRewardResponse);
      }
   }
}

