package com.ax3.fishao.locations.palmIsland
{
   import com.ax3.fishao.ResourceType;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.locations.base.LocationDialog;
   import com.ax3.fishao.locations.base.LocationLayers;
   import com.ax3.fishao.locations.base.LocationModel;
   import com.ax3.fishao.locations.entries.FieldChar;
   import com.ax3.fishao.locations.items.LocationItems;
   import com.ax3.fishao.locations.items.model.LocationItem;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces.EControllerUpdate;
   import com.ax3.fishao.view.dialogs.features.EUserFeature;
   import com.ax3.fishao.view.dialogs.features.ManagerFeatures;
   import com.ax3.fishao.view.dialogs.fruits.ManagerFruits;
   import com.ax3.fishao.view.dialogs.periodicFeatures.EPeriodicFeatureState;
   import com.ax3.fishao.view.dialogs.periodicFeatures.EPeriodicFeatureType;
   import com.ax3.fishao.view.dialogs.periodicFeatures.ManagerPeriodicFeatures;
   import com.ax3.fishao.view.dialogs.periodicFeatures.PeriodicFeatureBase;
   import flash.events.Event;
   
   public class LocationDialogPalmIsland extends LocationDialog
   {
      
      private var _locationLayers:LocationLayersPalmIsland;
      
      private var _locationModel:LocationModelPalmIsland;
      
      private var _managerFruits:ManagerFruits;
      
      private var _managerFeatures:ManagerFeatures;
      
      private var _managerPeriodicFeatures:ManagerPeriodicFeatures;
      
      public function LocationDialogPalmIsland(param1:LocationModel)
      {
         this._locationModel = param1 as LocationModelPalmIsland;
         super(param1);
         this.init();
      }
      
      override protected function onLocationLayersParsingComplete(param1:Event) : void
      {
         super.onLocationLayersParsingComplete(param1);
         this.updateMegalodon();
         this._locationModel.updatePirateCaveAccess();
      }
      
      override protected function onAddItem(param1:Object) : void
      {
         var _loc2_:LocationItem = LocationItems.parse(param1);
         var _loc3_:Boolean = GameSwf.instance.managerFeatures.isFeatureEnabled(EUserFeature.EUF_LOCATION_TREE_CAVE);
         if(_loc2_.resourceType != ResourceType.FOSSIL.id || _loc3_)
         {
            super.onAddItem(param1);
         }
      }
      
      override protected function onRemoveItem(param1:Object) : void
      {
         var _loc2_:LocationItem = LocationItems.parse(param1);
         if(_loc2_.resourceType != ResourceType.FOSSIL.id)
         {
            super.onRemoveItem(param1);
         }
         else
         {
            _locationItems.tryRemoveFossil();
         }
      }
      
      private function init() : void
      {
         this._managerFeatures = GameSwf.instance.managerFeatures;
         this._managerFruits = GameSwf.instance.managerFruits;
         this._managerPeriodicFeatures = GameSwf.instance.managerPeriodicFeatures;
      }
      
      override protected function createLocationLayers() : LocationLayers
      {
         this._locationLayers = super.createLocationLayers() as LocationLayersPalmIsland;
         return this._locationLayers;
      }
      
      override protected function inspectPlayerPosition() : void
      {
         super.inspectPlayerPosition();
         if(_playerChar == null)
         {
            return;
         }
         _locationItems.tryCollectLocationItemAt(_playerChar.graphic.x,_playerChar.graphic.y,10);
      }
      
      override public function isInSpecialWall(param1:Number, param2:Number, param3:FieldChar = null) : Boolean
      {
         var _loc4_:Boolean = super.isInSpecialWall(param1,param2,param3);
         return _loc4_ || this._locationLayers.viewMegalodon != null && this._locationLayers.viewMegalodon.hitTest(param1,param2) || this._locationLayers.viewPirateCave != null && this._locationLayers.viewPirateCave.hitTest(param1,param2,false);
      }
      
      private function updateMegalodon() : void
      {
         var _loc1_:PeriodicFeatureBase = this._managerPeriodicFeatures.getFeatureByType(EPeriodicFeatureType.EPFT_MEGALODON);
         switch(_loc1_.state)
         {
            case EPeriodicFeatureState.EPFS_ACTIVE:
               this._locationLayers.viewMegalodon.isEnabled = true;
               break;
            case EPeriodicFeatureState.EPFS_UNACTIVE:
               this._locationLayers.viewMegalodon.isEnabled = false;
               break;
            default:
               Debug.assert(false,"Unsupported state of PeriodicFeature in updateMegalodon method of LocationDialogPalmIsland: " + _loc1_.state);
         }
      }
      
      override public function updateWithType(param1:String) : void
      {
         if(!_locationLoadComplete)
         {
            return;
         }
         switch(param1)
         {
            case EControllerUpdate.ECU_PERIODIC_FEATURES_MEGALODON_UPDATED:
               if(this._locationLayers != null && this._locationLayers.viewMegalodon != null)
               {
                  this.updateMegalodon();
               }
               break;
            case EControllerUpdate.ECU_QUESTS_PIRATE_CAVE_INFO_UPDATED:
               this._locationModel.updatePirateCaveAccess();
               break;
            default:
               super.updateWithType(param1);
         }
      }
   }
}

