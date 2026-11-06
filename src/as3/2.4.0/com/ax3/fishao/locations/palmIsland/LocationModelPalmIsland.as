package com.ax3.fishao.locations.palmIsland
{
   import com.ax3.fishao.events.LocationModelEvent;
   import com.ax3.fishao.locations.base.LocationModel;
   import com.ax3.fishao.locations.objects.ViewPirateCave;
   import com.ax3.fishao.quests.EQuestType;
   import com.ax3.fishao.quests.ManagerQuests;
   import com.ax3.fishao.quests.QuestInfoPirateCave;
   import protocol.sr.UpdateResp;
   
   public class LocationModelPalmIsland extends LocationModel
   {
      
      private var _locationLayers:LocationLayersPalmIsland;
      
      private var _managerQuests:ManagerQuests;
      
      public function LocationModelPalmIsland(param1:int)
      {
         super(param1);
         this.init();
      }
      
      override public function onLocationLoadingComplete() : void
      {
         super.onLocationLoadingComplete();
         this._locationLayers = (dialog as LocationDialogPalmIsland).locationLayersBase as LocationLayersPalmIsland;
      }
      
      override public function updateHandler(param1:UpdateResp) : void
      {
         var _loc2_:Object = null;
         var _loc3_:String = null;
         super.updateHandler(param1);
         for(_loc3_ in param1.data)
         {
            if(param1.data.hasOwnProperty(_loc3_))
            {
               switch(_loc3_)
               {
                  case "fruits":
                  case "fossils":
                     _loc2_ = param1.getJsonData(_loc3_);
                     dispatchEvent(new LocationModelEvent(LocationModelEvent.LOAD_LOCATION_ITEMS,_loc2_));
                     break;
                  case "fruitAppeared":
                  case "fossilAppeared":
                     _loc2_ = param1.getJsonData(_loc3_);
                     dispatchEvent(new LocationModelEvent(LocationModelEvent.ADD_LOCATION_ITEM,_loc2_));
                     break;
                  case "fruitCollected":
                  case "fossilCollected":
                     _loc2_ = param1.getJsonData(_loc3_);
                     dispatchEvent(new LocationModelEvent(LocationModelEvent.REMOVE_LOCATION_ITEM,_loc2_));
               }
            }
         }
      }
      
      private function init() : void
      {
         this._managerQuests = GameSwf.instance.managerQuests;
      }
      
      public function updatePirateCaveAccess() : void
      {
         var _loc1_:ViewPirateCave = null;
         var _loc2_:QuestInfoPirateCave = this._managerQuests.getQuestInfoByType(EQuestType.EQT_PIRATE_CAVE) as QuestInfoPirateCave;
         if(_loc2_ != null)
         {
            _loc1_ = this._locationLayers.viewPirateCave;
            _loc1_.isEnabled = _loc2_.pirateCaveAccessible;
         }
      }
   }
}

