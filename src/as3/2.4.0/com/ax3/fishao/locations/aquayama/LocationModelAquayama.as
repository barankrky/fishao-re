package com.ax3.fishao.locations.aquayama
{
   import com.ax3.fishao.locations.base.LocationModel;
   import com.ax3.fishao.locations.objects.ViewSecretEntranceWall;
   import com.ax3.fishao.quests.EQuestType;
   import com.ax3.fishao.quests.ManagerQuests;
   import com.ax3.fishao.quests.QuestInfoGameEnd;
   
   public class LocationModelAquayama extends LocationModel
   {
      
      private var _managerQuests:ManagerQuests;
      
      private var _locationLayers:LocationLayersAquayama;
      
      public function LocationModelAquayama(param1:int)
      {
         super(param1);
         this.init();
      }
      
      public function get isLostValleyAvailable() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:QuestInfoGameEnd = this._managerQuests.getQuestInfoByType(EQuestType.EQT_GAME_END) as QuestInfoGameEnd;
         if(_loc2_ != null)
         {
            _loc1_ = _loc2_.lostValleyOpened;
         }
         return _loc1_;
      }
      
      override public function onLocationLoadingComplete() : void
      {
         super.onLocationLoadingComplete();
         this._locationLayers = (dialog as LocationDialogAquayama).locationLayersBase as LocationLayersAquayama;
      }
      
      private function init() : void
      {
         this._managerQuests = GameSwf.instance.managerQuests;
      }
      
      public function updateSecretWallEntance() : void
      {
         var _loc1_:ViewSecretEntranceWall = null;
         var _loc2_:QuestInfoGameEnd = this._managerQuests.getQuestInfoByType(EQuestType.EQT_GAME_END) as QuestInfoGameEnd;
         if(_loc2_ != null)
         {
            _loc1_ = this._locationLayers.viewSecretEntranceWall;
            _loc1_.isEnabled = !_loc2_.lostValleyOpened;
         }
      }
   }
}

