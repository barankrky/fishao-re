package com.ax3.fishao.locations.panheiraBeach
{
   import com.ax3.fishao.locations.base.LocationLayers;
   import com.ax3.fishao.locations.base.LocationModel;
   import com.ax3.fishao.locations.with_club_entrance.LocationDialogWithClubEntrance;
   
   public class LocationDialogPinheiraBeach extends LocationDialogWithClubEntrance
   {
      
      private var _locationLayers:LocationLayersPinheiraBeach;
      
      private var _locationModel:LocationModelPinheiraBeach;
      
      public function LocationDialogPinheiraBeach(param1:LocationModel)
      {
         this._locationModel = param1 as LocationModelPinheiraBeach;
         super(param1);
      }
      
      override protected function createLocationLayers() : LocationLayers
      {
         this._locationLayers = super.createLocationLayers() as LocationLayersPinheiraBeach;
         return this._locationLayers;
      }
   }
}

