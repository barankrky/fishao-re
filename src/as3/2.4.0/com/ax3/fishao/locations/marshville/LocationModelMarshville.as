package com.ax3.fishao.locations.marshville
{
   import com.ax3.fishao.entries.LocationUser;
   import com.ax3.fishao.locations.base.LocationModel;
   import com.ax3.fishao.locations.npc.base.ENpcName;
   import com.ax3.fishao.locations.npc.base.NPC;
   import com.ax3.fishao.locations.objects.ViewBridge;
   import com.ax3.fishao.locations.objects.ViewDoorTreeCave;
   import com.ax3.fishao.quests.EQuestType;
   import com.ax3.fishao.quests.ManagerQuests;
   import com.ax3.fishao.quests.QuestInfoGameEnd;
   import com.ax3.fishao.vars.app;
   
   public class LocationModelMarshville extends LocationModel
   {
      
      private var _managerQuests:ManagerQuests;
      
      private var _locationLayers:LocationLayersMarshville;
      
      public function LocationModelMarshville(param1:int)
      {
         super(param1);
         this.init();
      }
      
      override public function onLocationLoadingComplete() : void
      {
         super.onLocationLoadingComplete();
         this._locationLayers = (dialog as LocationDialogMarshville).locationLayersBase as LocationLayersMarshville;
      }
      
      private function init() : void
      {
         this._managerQuests = GameSwf.instance.managerQuests;
      }
      
      override protected function initNpc(param1:String, param2:Object) : LocationUser
      {
         var _loc3_:LocationUser = super.initNpc(param1,param2);
         if(param1 == ENpcName.ENN_STEVE)
         {
            this.updateSteveVisibility();
         }
         return _loc3_;
      }
      
      public function updateSteveVisibility() : void
      {
         var _loc1_:int = int(app.user.level);
         var _loc2_:NPC = getNPCbyName(ENpcName.ENN_STEVE);
         if(_loc2_ != null)
         {
            _loc2_.visible = _loc1_ >= 125;
         }
      }
      
      public function updateBridgeKeyVisibility() : void
      {
         var _loc1_:ViewBridge = null;
         var _loc2_:QuestInfoGameEnd = this._managerQuests.getQuestInfoByType(EQuestType.EQT_GAME_END) as QuestInfoGameEnd;
         if(_loc2_ != null)
         {
            _loc1_ = this._locationLayers.viewBridgeKey;
            _loc1_.isEnabled = _loc2_.marshvilleBridgeKeyVisible;
         }
      }
      
      public function updateTreeCaveAccess() : void
      {
         var _loc1_:ViewBridge = null;
         var _loc2_:ViewDoorTreeCave = null;
         var _loc3_:QuestInfoGameEnd = this._managerQuests.getQuestInfoByType(EQuestType.EQT_GAME_END) as QuestInfoGameEnd;
         if(_loc3_ != null)
         {
            _loc1_ = this._locationLayers.viewBridgeTreeCave;
            _loc2_ = this._locationLayers.viewDoorTreeCave;
            _loc1_.isEnabled = _loc3_.marshvilleTreeCaveAccessible;
            _loc2_.isEnabled = !_loc3_.marshvilleTreeCaveAccessible;
         }
      }
      
      public function updateKeyVisibility() : void
      {
         var _loc1_:QuestInfoGameEnd = this._managerQuests.getQuestInfoByType(EQuestType.EQT_GAME_END) as QuestInfoGameEnd;
         if(_loc1_ != null)
         {
            this._locationLayers.key.visible = !_loc1_.marshvilleTreeCaveAccessible;
         }
      }
   }
}

