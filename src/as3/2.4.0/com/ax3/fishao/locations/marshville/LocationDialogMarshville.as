package com.ax3.fishao.locations.marshville
{
   import com.ax3.fishao.EResourceID;
   import com.ax3.fishao.FishaoFscModelManager;
   import com.ax3.fishao.ResourceType;
   import com.ax3.fishao.locations.base.LocationDialog;
   import com.ax3.fishao.locations.base.LocationLayers;
   import com.ax3.fishao.locations.base.LocationModel;
   import com.ax3.fishao.locations.entries.FieldChar;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces.EControllerUpdate;
   import flash.events.Event;
   
   public class LocationDialogMarshville extends LocationDialog
   {
      
      private var _locationLayers:LocationLayersMarshville;
      
      private var _locationModel:LocationModelMarshville;
      
      public function LocationDialogMarshville(param1:LocationModel)
      {
         this._locationModel = param1 as LocationModelMarshville;
         super(param1);
      }
      
      override protected function onLocationLayersParsingComplete(param1:Event) : void
      {
         super.onLocationLayersParsingComplete(param1);
         this._locationModel.updateBridgeKeyVisibility();
         this._locationModel.updateTreeCaveAccess();
         this._locationModel.updateKeyVisibility();
      }
      
      override protected function createLocationLayers() : LocationLayers
      {
         this._locationLayers = super.createLocationLayers() as LocationLayersMarshville;
         return this._locationLayers;
      }
      
      override protected function inspectPlayerPosition() : void
      {
         super.inspectPlayerPosition();
         if(_playerChar == null)
         {
            return;
         }
         if(this._locationLayers.key.visible && this._locationLayers.key.x < _playerChar.graphic.x && this._locationLayers.key.x + this._locationLayers.key.width > _playerChar.graphic.x && this._locationLayers.key.y < _playerChar.graphic.y && this._locationLayers.key.y + this._locationLayers.key.height > _playerChar.graphic.y)
         {
            this._locationLayers.key.visible = false;
            FishaoFscModelManager.locationExtension.collectItem(ResourceType.OTHER.id,EResourceID.ER_KEY_FROM_MARSHVILLE);
         }
      }
      
      override public function isInSpecialWall(param1:Number, param2:Number, param3:FieldChar = null) : Boolean
      {
         var _loc4_:Boolean = super.isInSpecialWall(param1,param2,param3);
         return _loc4_ || this._locationLayers.viewBridgeKey != null && this._locationLayers.viewBridgeKey.hitTest(param1,param2,false) || this._locationLayers.viewBridgeTreeCave != null && this._locationLayers.viewBridgeTreeCave.hitTest(param1,param2,false) || this._locationLayers.viewDoorTreeCave != null && this._locationLayers.viewDoorTreeCave.hitTest(param1,param2);
      }
      
      override public function isHitSpecial(param1:Number, param2:Number) : Boolean
      {
         return this._locationLayers.viewBridgeKey != null && this._locationLayers.viewBridgeKey.hitTest(param1,param2) || this._locationLayers.viewBridgeTreeCave != null && this._locationLayers.viewBridgeTreeCave.hitTest(param1,param2);
      }
      
      override protected function handleUserLevelUp() : void
      {
         super.handleUserLevelUp();
         this._locationModel.updateSteveVisibility();
      }
      
      override public function updateWithType(param1:String) : void
      {
         if(!_locationLoadComplete)
         {
            return;
         }
         switch(param1)
         {
            case EControllerUpdate.ECU_QUESTS_GAME_END_INFO_UPDATED:
               this._locationModel.updateBridgeKeyVisibility();
               this._locationModel.updateTreeCaveAccess();
               this._locationModel.updateKeyVisibility();
               break;
            default:
               super.updateWithType(param1);
         }
      }
   }
}

