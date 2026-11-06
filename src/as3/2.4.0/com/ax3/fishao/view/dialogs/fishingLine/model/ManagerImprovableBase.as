package com.ax3.fishao.view.dialogs.fishingLine.model
{
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.view.dialogs.base.ManagerBase;
   import com.ax3.jss.requests.server.ServerResp;
   import com.ax3.utils.timer.UpdateGroup;
   import com.ax3.utils.timer.UpdateManager;
   import flash.utils.Dictionary;
   import protocol.api.base.ResponseOk;
   import protocol.api.improvable.FscExtensionImprovable;
   import protocol.api.improvable.ImprovableLevelInfo;
   import protocol.api.improvable.ResponseImprovable;
   
   public class ManagerImprovableBase extends ManagerBase
   {
      
      private var _levelsInfoMap:Dictionary;
      
      private var _timeLeftToNextUpgrade:int;
      
      private var _isNowUpgrading:Boolean;
      
      private var _updateGroup1S:UpdateGroup;
      
      private var _levelInfoMax:ImprovableLevelInfo;
      
      private var _remoteConnector:FscExtensionImprovable;
      
      public function ManagerImprovableBase(param1:FscExtensionImprovable)
      {
         super();
         this._remoteConnector = Debug.assertNotEqual(param1,null);
         _remoteExtension = this._remoteConnector;
         this.init();
      }
      
      public function get levelInfoMax() : ImprovableLevelInfo
      {
         return this._levelInfoMax;
      }
      
      public function get isNowUpgrading() : Boolean
      {
         return this._isNowUpgrading;
      }
      
      public function get timeLeftToNextUpgrade() : int
      {
         return this._timeLeftToNextUpgrade;
      }
      
      protected function get updateGroup1S() : UpdateGroup
      {
         return this._updateGroup1S;
      }
      
      override protected function onInitDataLoaded(param1:ServerResp) : void
      {
         var _loc2_:ImprovableLevelInfo = null;
         super.onInitDataLoaded(param1);
         var _loc3_:ResponseImprovable = param1 as ResponseImprovable;
         for each(_loc2_ in _loc3_.levelsInfo)
         {
            if(this._levelsInfoMap[_loc2_.number] == null)
            {
               this._levelsInfoMap[_loc2_.number] = _loc2_;
               if(this._levelInfoMax == null)
               {
                  this._levelInfoMax = _loc2_;
               }
               else
               {
                  this._levelInfoMax = _loc2_.number > this._levelInfoMax.number ? _loc2_ : this._levelInfoMax;
               }
            }
         }
         this._timeLeftToNextUpgrade = _loc3_.timeToNextUpgrade;
      }
      
      override protected function onConnectedToWorldAtFirst() : void
      {
         super.onConnectedToWorldAtFirst();
         if(this._timeLeftToNextUpgrade >= 0)
         {
            this.upgradeStart();
         }
      }
      
      public function onBuyUpgrade(param1:ImprovableLevelInfo) : void
      {
         Debug.assertNotEqual(param1,null);
         this._timeLeftToNextUpgrade = param1.timeUpgrade;
         this.upgradeStart();
      }
      
      public function onBuyUpgradeEarlyAccess() : void
      {
         this.upgradeStop();
         this.upgradeToNextLevel();
      }
      
      private function onTimerTick(param1:uint, param2:uint) : void
      {
         if(this._timeLeftToNextUpgrade == 0)
         {
            this.upgradeStop();
            this.upgradeByTime();
         }
         else
         {
            --this._timeLeftToNextUpgrade;
         }
      }
      
      private function init() : void
      {
         this._levelsInfoMap = new Dictionary(true);
         this._updateGroup1S = UpdateManager.getInstance().getGroup(UpdateGroup.TIMER_1S);
      }
      
      public function getLevelInfo(param1:uint) : *
      {
         var _loc2_:ImprovableLevelInfo = null;
         _loc2_ = this._levelsInfoMap[param1];
         Debug.assertNotEqual(_loc2_,null);
         return _loc2_;
      }
      
      public function getLevelInfoNext(param1:uint) : *
      {
         var _loc2_:ImprovableLevelInfo = null;
         return this._levelsInfoMap[param1 + 1];
      }
      
      private function upgradeStart() : void
      {
         Debug.assert(!this._isNowUpgrading,"Upgrading already started");
         this._updateGroup1S.addFunction(this.onTimerTick);
         this._isNowUpgrading = true;
      }
      
      private function upgradeStop() : void
      {
         Debug.assert(this._isNowUpgrading,"Upgrading not started");
         this._isNowUpgrading = false;
         this._updateGroup1S.removeFunction(this.onTimerTick);
         this._timeLeftToNextUpgrade = -1;
      }
      
      protected function upgradeByTime() : void
      {
         this._remoteConnector.upgradeLevelByTime(function(param1:ServerResp):void
         {
            if(param1 is ResponseOk)
            {
               upgradeToNextLevel();
            }
         });
      }
      
      protected function upgradeToNextLevel() : void
      {
         Debug.assert(false,"Please override");
      }
   }
}

