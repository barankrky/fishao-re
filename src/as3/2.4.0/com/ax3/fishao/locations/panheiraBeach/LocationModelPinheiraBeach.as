package com.ax3.fishao.locations.panheiraBeach
{
   import com.ax3.fishao.locations.base.LocationModel;
   
   public class LocationModelPinheiraBeach extends LocationModel
   {
      
      private var _locationLayers:LocationLayersPinheiraBeach;
      
      public function LocationModelPinheiraBeach(param1:int)
      {
         super(param1);
      }
      
      override public function onLocationLoadingComplete() : void
      {
         super.onLocationLoadingComplete();
         this._locationLayers = (dialog as LocationDialogPinheiraBeach).locationLayersBase as LocationLayersPinheiraBeach;
      }
   }
}

