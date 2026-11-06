package com.ax3.fishao.view.dialogs.moneyTree.model
{
   import com.ax3.fishao.ConstantsBase;
   import com.ax3.fishao.FishaoFscModelManager;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.locations.base.LocationDialog;
   import com.ax3.fishao.locations.privateHouse.LocationDialogPrivateHouse;
   import com.ax3.fishao.utils.Utils;
   import com.ax3.fishao.utils.UtilsArray;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs.PopupManager;
   import com.ax3.fishao.view.dialogs.base.EDialogType;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces.EControllerUpdate;
   import com.ax3.fishao.view.dialogs.fishingLine.model.ManagerImprovableBase;
   import com.ax3.jss.requests.server.ServerResp;
   import flash.geom.Point;
   import protocol.api.base.ResponseOk;
   import protocol.api.moneyTree.FscExtensionMoneyTree;
   import protocol.api.moneyTree.data.MoneyTreeLevelInfo;
   import protocol.api.moneyTree.init.ResponseMoneyTreeInit;
   
   public class ManagerMoneyTree extends ManagerImprovableBase
   {
      
      private static const TIME_PERIOD_GENERATING:uint = 24 * 60 * 60;
      
      private static const RATE_FISHCOINS:uint = 1;
      
      private static const RATE_FISHBUCKS:uint = 50;
      
      private var _fishcoinsLeft:int;
      
      private var _fishcoinsPositions:Array;
      
      private var _fishbucksLeft:int;
      
      private var _fishbucksPositions:Array;
      
      private var _timeToNextGenerate:int;
      
      private var _isCountdownToRewardStarted:Boolean;
      
      private var _extensionMoneyTree:FscExtensionMoneyTree = FishaoFscModelManager.fscModel.extensionMoneyTree;
      
      public function ManagerMoneyTree()
      {
         super(this._extensionMoneyTree);
         this._fishcoinsPositions = [];
         this._fishbucksPositions = [];
      }
      
      private static function getArrayWithRandomPoints(param1:uint) : Array
      {
         var _loc2_:Point = null;
         var _loc3_:Array = [];
         var _loc4_:int = 0;
         while(_loc4_ < param1)
         {
            _loc2_ = new Point(Utils.randomFromTo(-100,100),Utils.randomFromTo(30,80));
            _loc3_.push(_loc2_);
            _loc4_++;
         }
         return _loc3_;
      }
      
      public function get levelInfoMaxMoneyTree() : MoneyTreeLevelInfo
      {
         return this.levelInfoMax as MoneyTreeLevelInfo;
      }
      
      public function get fishcoinsLeft() : int
      {
         return this._fishcoinsLeft;
      }
      
      public function get fishcoinsPositions() : Array
      {
         return this._fishcoinsPositions;
      }
      
      public function get fishbucksLeft() : int
      {
         return this._fishbucksLeft;
      }
      
      public function get fishbucksPositions() : Array
      {
         return this._fishbucksPositions;
      }
      
      override protected function onInitDataLoaded(param1:ServerResp) : void
      {
         super.onInitDataLoaded(param1);
         var _loc2_:ResponseMoneyTreeInit = param1 as ResponseMoneyTreeInit;
         app.user.moneyTree = getLevelInfo(_loc2_.currentLevel);
         this._fishcoinsLeft = _loc2_.fishcoinsLeft;
         this._fishbucksLeft = _loc2_.fishbucksLeft;
         this.recreateRewardsPositions();
         this._timeToNextGenerate = _loc2_.timeToNextGenerate;
      }
      
      override protected function onConnectedToWorldAtFirst() : void
      {
         super.onConnectedToWorldAtFirst();
         this.countdownToRewardStart();
      }
      
      public function onFishcoinsCollected(param1:ServerResp, param2:Point) : void
      {
         var _loc3_:int = 0;
         if(param1 is ResponseOk)
         {
            this._fishcoinsLeft -= RATE_FISHCOINS;
            _loc3_ = UtilsArray.removeValue(this._fishcoinsPositions,param2);
            Debug.assertNotEqual(_loc3_,-1,"Can\'t remove fishcoin position");
            this.tryEstablishGenerate();
         }
      }
      
      public function onFishbucksCollected(param1:ServerResp, param2:Point) : void
      {
         var _loc3_:int = 0;
         if(param1 is ResponseOk)
         {
            this._fishbucksLeft -= RATE_FISHBUCKS;
            _loc3_ = UtilsArray.removeValue(this._fishbucksPositions,param2);
            Debug.assertNotEqual(_loc3_,-1,"Can\'t remove fishbucks position");
            this.tryEstablishGenerate();
         }
      }
      
      protected function onTimerTick(param1:uint, param2:uint) : void
      {
         var timerMS:uint = param1;
         var timeLeftMS:uint = param2;
         if(this._timeToNextGenerate == ConstantsBase.INDEX_NONE)
         {
            this.countdownToRewardStop();
            this._extensionMoneyTree.generateReward(function(param1:ServerResp):void
            {
               if(param1 is ResponseOk)
               {
                  if(app.user != null && app.user.moneyTree != null)
                  {
                     _fishbucksLeft = app.user.moneyTree.fishbucksPerDay;
                     _fishcoinsLeft = app.user.moneyTree.fishcoinsPerDay;
                  }
                  recreateRewardsPositions();
               }
            });
         }
         else
         {
            --this._timeToNextGenerate;
         }
      }
      
      private function tryEstablishGenerate() : void
      {
         if(this._fishcoinsLeft > 0 || this._fishbucksLeft > 0 || this._timeToNextGenerate != ConstantsBase.INDEX_NONE)
         {
            return;
         }
         this._timeToNextGenerate = TIME_PERIOD_GENERATING;
         this.countdownToRewardStart();
      }
      
      private function recreateRewardsPositions() : void
      {
         this._fishbucksPositions = getArrayWithRandomPoints(this._fishbucksLeft / RATE_FISHBUCKS);
         this._fishcoinsPositions = getArrayWithRandomPoints(this._fishcoinsLeft / RATE_FISHCOINS);
         var _loc1_:LocationDialog = GameSwf.currentLocationDialog;
         if(_loc1_ is LocationDialogPrivateHouse)
         {
            (_loc1_ as LocationDialogPrivateHouse).tryAddMoneyTreeReward();
         }
      }
      
      public function collectFishbucks(param1:Point, param2:Function) : void
      {
         var position:Point = param1;
         var callback:Function = param2;
         var callbackWrapper:Function = function(param1:ServerResp):void
         {
            onFishbucksCollected(param1,position);
            if(callback != null)
            {
               callback(param1);
            }
         };
         this._extensionMoneyTree.collectReward(RATE_FISHBUCKS,0,callbackWrapper);
      }
      
      public function collectFishcoins(param1:Point, param2:Function) : void
      {
         var position:Point = param1;
         var callback:Function = param2;
         var callbackWrapper:Function = function(param1:ServerResp):void
         {
            onFishcoinsCollected(param1,position);
            if(callback != null)
            {
               callback(param1);
            }
         };
         this._extensionMoneyTree.collectReward(0,RATE_FISHCOINS,callbackWrapper);
      }
      
      override protected function upgradeToNextLevel() : void
      {
         app.user.moneyTree = getLevelInfoNext(app.user.moneyTree.number);
         PopupManager.getInstance().tryUpdateCurrentDialog(EControllerUpdate.ECU_MONEY_TREE_LEVEL,EDialogType.EDT_MONEY_TREE);
         var _loc1_:LocationDialogPrivateHouse = GameSwf.currentLocationDialog as LocationDialogPrivateHouse;
         if(_loc1_ != null && _loc1_.isOwnHouse)
         {
            (_loc1_ as LocationDialogPrivateHouse).locationLayers.viewMoneyTree.level = app.user.moneyTree.number;
         }
      }
      
      private function countdownToRewardStart() : void
      {
         if(this._isCountdownToRewardStarted)
         {
            return;
         }
         this.updateGroup1S.addFunction(this.onTimerTick);
         this._isCountdownToRewardStarted = true;
      }
      
      private function countdownToRewardStop() : void
      {
         Debug.assert(this._isCountdownToRewardStarted,"User doesn\'t wait generating before");
         this._isCountdownToRewardStarted = false;
         this.updateGroup1S.removeFunction(this.onTimerTick);
         this._timeToNextGenerate = -1;
      }
   }
}

