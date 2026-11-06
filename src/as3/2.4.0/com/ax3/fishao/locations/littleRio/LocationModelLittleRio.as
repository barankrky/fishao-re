package com.ax3.fishao.locations.littleRio
{
   import com.ax3.fishao.locations.sublocation.SublocationModel;
   
   public class LocationModelLittleRio extends SublocationModel
   {
      
      private var _locationLayers:LocationLayersLittleRio;
      
      public function LocationModelLittleRio(param1:int)
      {
         super(param1);
      }
      
      override public function onLocationLoadingComplete() : void
      {
         super.onLocationLoadingComplete();
         this._locationLayers = (dialog as LocationDialogLittleRio).locationLayersBase as LocationLayersLittleRio;
      }
   }
}

