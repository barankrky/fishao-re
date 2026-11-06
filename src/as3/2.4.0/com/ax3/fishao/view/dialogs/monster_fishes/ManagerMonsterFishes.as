package com.ax3.fishao.view.dialogs.monster_fishes
{
   import com.ax3.fishao.FishaoFscModelManager;
   import com.ax3.fishao.locations.base.LocationDialog;
   import com.ax3.fishao.view.dialogs.base.ManagerBase;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces.EControllerUpdate;
   import com.ax3.fishao.view.dialogs.monster_fishes.base.MonsterFishInfo;
   import com.ax3.fishao.view.dialogs.monster_fishes.base.MonsterFishProgress;
   import com.ax3.jss.requests.server.ServerResp;
   import com.brokenfunction.json.decodeJson;
   import protocol.api.monster_fishes.FscExtensionMonsterFishes;
   import protocol.api.monster_fishes.init.ResponseMonsterFishesInit;
   import protocol.api.monster_fishes.update.ResponseMonsterFishesUpdate;
   
   public class ManagerMonsterFishes extends ManagerBase
   {
      
      private var _extensionMonsterFishes:FscExtensionMonsterFishes;
      
      private var _monsterFishesInfo:Array;
      
      private var _monsterFishesProgress:Array;
      
      public function ManagerMonsterFishes()
      {
         super();
         this.init();
      }
      
      private function getMonsterFishInfoByType(param1:String) : MonsterFishInfo
      {
         var _loc2_:MonsterFishInfo = null;
         var _loc3_:MonsterFishInfo = null;
         for each(_loc3_ in this._monsterFishesInfo)
         {
            if(_loc3_.type == param1)
            {
               _loc2_ = _loc3_;
               break;
            }
         }
         return _loc2_;
      }
      
      private function getProgressByType(param1:String) : MonsterFishProgress
      {
         var _loc2_:MonsterFishProgress = null;
         var _loc3_:MonsterFishProgress = null;
         for each(_loc3_ in this._monsterFishesProgress)
         {
            if(_loc3_.type == param1)
            {
               _loc2_ = _loc3_;
               break;
            }
         }
         return _loc2_;
      }
      
      public function getCurrentSizeByType(param1:String) : Number
      {
         var _loc2_:Number = NaN;
         var _loc3_:MonsterFishProgress = null;
         var _loc4_:MonsterFishInfo = null;
         var _loc5_:int = 0;
         for each(_loc3_ in this._monsterFishesProgress)
         {
            if(_loc3_.type == param1)
            {
               _loc5_ = _loc3_.feedLevel;
               break;
            }
         }
         _loc4_ = this.getMonsterFishInfoByType(param1);
         _loc2_ = _loc5_ / _loc4_.requiredFeedLevel;
         return Math.min(_loc2_,1);
      }
      
      public function getFishingDurationMultiplier(param1:int) : Number
      {
         var _loc2_:MonsterFishInfo = null;
         var _loc3_:Number = 1;
         for each(_loc2_ in this._monsterFishesInfo)
         {
            if(_loc2_.isRelatedToFishId(param1))
            {
               _loc3_ = _loc2_.fishingDurationMultiplier;
               break;
            }
         }
         return _loc3_;
      }
      
      override protected function onInitDataLoaded(param1:ServerResp) : void
      {
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         var _loc4_:MonsterFishInfo = null;
         var _loc5_:MonsterFishProgress = null;
         super.onInitDataLoaded(param1);
         var _loc6_:ResponseMonsterFishesInit = param1 as ResponseMonsterFishesInit;
         for each(_loc2_ in _loc6_.fishesInfo)
         {
            _loc4_ = new MonsterFishInfo();
            _loc4_.deserialize(_loc2_);
            this._monsterFishesInfo.push(_loc4_);
         }
         for each(_loc3_ in _loc6_.fishesProgress)
         {
            _loc5_ = new MonsterFishProgress();
            _loc5_.deserialize(_loc3_);
            this._monsterFishesProgress.push(_loc5_);
         }
      }
      
      private function onMonsterFishesUpdate(param1:ServerResp) : void
      {
         var _loc2_:ResponseMonsterFishesUpdate = param1 as ResponseMonsterFishesUpdate;
         var _loc3_:Object = decodeJson(_loc2_.data);
         var _loc4_:MonsterFishProgress = new MonsterFishProgress();
         _loc4_.deserialize(_loc3_);
         var _loc5_:MonsterFishProgress = this.getProgressByType(_loc4_.type);
         if(_loc5_ == null)
         {
            this._monsterFishesProgress.push(_loc4_);
         }
         else
         {
            _loc5_.feedLevel = _loc4_.feedLevel;
         }
         var _loc6_:LocationDialog = GameSwf.currentLocationDialog;
         if(_loc6_ != null)
         {
            _loc6_.updateWithType(EControllerUpdate.ECU_MONSTER_FISH_UPDATE);
         }
      }
      
      private function init() : void
      {
         this._monsterFishesInfo = [];
         this._monsterFishesProgress = [];
         this._extensionMonsterFishes = FishaoFscModelManager.fscModel.extensionMonsterFish;
         _remoteExtension = this._extensionMonsterFishes;
         addResponseHandler(ResponseMonsterFishesUpdate,this.onMonsterFishesUpdate);
      }
   }
}

