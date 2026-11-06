package com.ax3.fishao.locations.littleRio
{
   import com.ax3.fishao.locations.base.LocationDialog;
   import com.ax3.fishao.locations.base.LocationLayers;
   import com.ax3.fishao.locations.base.LocationModel;
   
   public class LocationDialogLittleRio extends LocationDialog
   {
      
      private var _locationLayers:LocationLayersLittleRio;
      
      private var _locationModel:LocationModelLittleRio;
      
      public function LocationDialogLittleRio(param1:LocationModel)
      {
         this._locationModel = param1 as LocationModelLittleRio;
         super(param1);
      }
      
      override protected function createLocationLayers() : LocationLayers
      {
         this._locationLayers = super.createLocationLayers() as LocationLayersLittleRio;
         return this._locationLayers;
      }
   }
}

