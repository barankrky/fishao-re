package com.ax3.fishao.locations.pirateCave
{
   import com.ax3.fishao.locations.base.LocationDialog;
   import com.ax3.fishao.locations.base.LocationLayers;
   import com.ax3.fishao.locations.base.LocationModel;
   import flash.events.Event;
   
   public class LocationDialogPirateCave extends LocationDialog
   {
      
      private var _locationLayers:LocationLayersPirateCave;
      
      private var _locationModel:LocationModelPirateCave;
      
      public function LocationDialogPirateCave(param1:LocationModel)
      {
         this._locationModel = param1 as LocationModelPirateCave;
         super(param1);
      }
      
      override protected function onLocationLayersParsingComplete(param1:Event) : void
      {
         super.onLocationLayersParsingComplete(param1);
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
      
      override protected function createLocationLayers() : LocationLayers
      {
         this._locationLayers = super.createLocationLayers() as LocationLayersPirateCave;
         return this._locationLayers;
      }
   }
}

