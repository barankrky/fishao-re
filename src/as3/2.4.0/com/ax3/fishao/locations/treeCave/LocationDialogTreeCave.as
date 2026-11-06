package com.ax3.fishao.locations.treeCave
{
   import com.ax3.fishao.locations.base.LocationDialog;
   import com.ax3.fishao.locations.base.LocationLayers;
   import com.ax3.fishao.locations.base.LocationModel;
   
   public class LocationDialogTreeCave extends LocationDialog
   {
      
      private var _locationLayers:LocationLayersTreeCave;
      
      private var _locationModel:LocationModelTreeCave;
      
      public function LocationDialogTreeCave(param1:LocationModel)
      {
         this._locationModel = param1 as LocationModelTreeCave;
         super(param1);
         this.init();
      }
      
      private function init() : void
      {
      }
      
      override protected function createLocationLayers() : LocationLayers
      {
         this._locationLayers = super.createLocationLayers() as LocationLayersTreeCave;
         return this._locationLayers;
      }
   }
}

