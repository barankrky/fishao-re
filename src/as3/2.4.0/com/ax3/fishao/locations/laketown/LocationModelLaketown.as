package com.ax3.fishao.locations.laketown
{
   import com.ax3.fishao.locations.base.LocationModel;
   
   public class LocationModelLaketown extends LocationModel
   {
      
      private var _locationLayers:LocationLayersLaketown;
      
      public function LocationModelLaketown(param1:int)
      {
         super(param1);
      }
      
      override public function onLocationLoadingComplete() : void
      {
         super.onLocationLoadingComplete();
         this._locationLayers = (dialog as LocationDialogLaketown).locationLayersBase as LocationLayersLaketown;
      }
   }
}

