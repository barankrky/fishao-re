package com.ax3.fishao.view.dialogs.base.controllers.implementations.improvable
{
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs.base.controllers.implementations.Controller;
   import com.ax3.fishao.view.dialogs.base.views.implementations.improvable.ViewLevelUpgrade;
   import com.ax3.fishao.view.dialogs.fishingLine.model.ManagerImprovableBase;
   import com.ax3.jss.requests.server.ServerResp;
   import com.ax3.utils.timer.UpdateGroup;
   import com.ax3.utils.timer.UpdateManager;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import protocol.api.base.ResponseOk;
   import protocol.api.improvable.FscExtensionImprovable;
   import protocol.api.improvable.ImprovableLevelInfo;
   
   public class ControllerLevelUpgrade extends Controller
   {
      
      private var _view:ViewLevelUpgrade;
      
      private var _entity:ImprovableLevelInfo;
      
      private var _managerImprovable:ManagerImprovableBase;
      
      private var _remoteConnector:FscExtensionImprovable;
      
      private var _updateGroup1S:UpdateGroup;
      
      private var _waitingForResponse:Boolean;
      
      public function ControllerLevelUpgrade(param1:DisplayObjectContainer, param2:ManagerImprovableBase, param3:FscExtensionImprovable)
      {
         this._view = new ViewLevelUpgrade(this,param1);
         super(this._view);
         this._managerImprovable = Debug.assertNotEqual(param2,null);
         this._remoteConnector = Debug.assertNotEqual(param3,null);
         this.init();
      }
      
      public function set entity(param1:ImprovableLevelInfo) : void
      {
         if(this._entity == param1)
         {
            return;
         }
         this._entity = param1;
         this.syncWithModel();
      }
      
      private function get priceUpgradeEarly() : uint
      {
         var _loc1_:uint = 0;
         var _loc2_:int = this._managerImprovable.timeLeftToNextUpgrade;
         if(_loc2_ < 0)
         {
            return _loc1_;
         }
         var _loc3_:uint = Math.ceil(_loc2_ / 60);
         return uint(Math.ceil(_loc3_ / 60));
      }
      
      override public function onViewClicked(param1:Object, param2:Event) : Boolean
      {
         var _loc3_:Boolean = super.onViewClicked(param1,param2);
         if(!_loc3_)
         {
            switch(param1)
            {
               case this._view.buttonBuy:
                  this.onButtonBuyClicked();
                  break;
               default:
                  Debug.assert(false);
            }
         }
         return _loc3_;
      }
      
      private function onButtonBuyClicked() : void
      {
         var needShowDialogBuyFishcoins:Boolean = false;
         if(this._waitingForResponse)
         {
            return;
         }
         needShowDialogBuyFishcoins = false;
         if(this._managerImprovable.isNowUpgrading)
         {
            if(app.user.fishcoins >= this.priceUpgradeEarly)
            {
               this._waitingForResponse = true;
               this._remoteConnector.upgradeLevelEarly(function(param1:ServerResp):void
               {
                  if(param1 is ResponseOk)
                  {
                     _managerImprovable.onBuyUpgradeEarlyAccess();
                  }
                  _waitingForResponse = false;
               });
            }
            else
            {
               needShowDialogBuyFishcoins = true;
            }
         }
         else if(app.user.fishcoins >= this._entity.priceUpgrade)
         {
            this._waitingForResponse = true;
            this._remoteConnector.upgradeLevel(function(param1:ServerResp):void
            {
               if(param1 is ResponseOk)
               {
                  _managerImprovable.onBuyUpgrade(_entity);
                  updateUpgradeStatus();
               }
               _waitingForResponse = false;
            });
         }
         else
         {
            needShowDialogBuyFishcoins = true;
         }
         if(needShowDialogBuyFishcoins)
         {
            GameSwf.instance.showBuyFishcoinsDialog();
         }
      }
      
      private function onTimerTick(param1:uint, param2:uint) : void
      {
         if(!this._managerImprovable.isNowUpgrading)
         {
            this.timerStop();
         }
         else
         {
            this._view.timeLeft = this._managerImprovable.timeLeftToNextUpgrade;
            this._view.upgradePrice = this.priceUpgradeEarly;
         }
      }
      
      private function init() : void
      {
         this._updateGroup1S = UpdateManager.getInstance().getGroup(UpdateGroup.TIMER_1S);
         this._waitingForResponse = false;
      }
      
      private function syncWithModel() : void
      {
         this.updateUpgradeStatus();
      }
      
      private function updateUpgradeStatus() : void
      {
         if(this._managerImprovable.isNowUpgrading)
         {
            this._view.onUpgradingStatusChange(this._managerImprovable.isNowUpgrading,0);
            this._view.timeLeft = this._managerImprovable.timeLeftToNextUpgrade;
            this._view.upgradePrice = this.priceUpgradeEarly;
            this.timerStart();
         }
         else
         {
            this._view.onUpgradingStatusChange(this._managerImprovable.isNowUpgrading,this._entity.number);
            this._view.upgradePrice = this._entity.priceUpgrade;
            this._view.timeLeft = this._entity.timeUpgrade;
         }
      }
      
      private function timerStart() : void
      {
         this._updateGroup1S.addFunction(this.onTimerTick);
      }
      
      private function timerStop() : void
      {
         this._updateGroup1S.removeFunction(this.onTimerTick);
      }
      
      override public function cleanup() : void
      {
         this.timerStop();
         super.cleanup();
      }
   }
}

