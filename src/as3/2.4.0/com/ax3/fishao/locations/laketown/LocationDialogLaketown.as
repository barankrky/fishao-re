package com.ax3.fishao.locations.laketown
{
   import com.ax3.fishao.locations.base.LocationLayers;
   import com.ax3.fishao.locations.base.LocationModel;
   import com.ax3.fishao.locations.with_club_entrance.LocationDialogWithClubEntrance;
   
   public class LocationDialogLaketown extends LocationDialogWithClubEntrance
   {
      
      private var _locationLayers:LocationLayersLaketown;
      
      private var _locationModel:LocationModelLaketown;
      
      public function LocationDialogLaketown(param1:LocationModel)
      {
         this._locationModel = param1 as LocationModelLaketown;
         super(param1);
      }
      
      override protected function createLocationLayers() : LocationLayers
      {
         this._locationLayers = super.createLocationLayers() as LocationLayersLaketown;
         return this._locationLayers;
      }
   }
}

