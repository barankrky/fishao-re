package com.ax3.fishao.locations.lostValley
{
   import com.ax3.fishao.locations.base.LocationDialog;
   import com.ax3.fishao.locations.base.LocationLayers;
   import com.ax3.fishao.locations.base.LocationModel;
   import com.ax3.fishao.locations.entries.FieldChar;
   import flash.events.Event;
   
   public class LocationDialogLostValley extends LocationDialog
   {
      
      private var _locationLayers:LocationLayersLostValley;
      
      private var _locationModel:LocationModelLostValley;
      
      public function LocationDialogLostValley(param1:LocationModel)
      {
         this._locationModel = param1 as LocationModelLostValley;
         super(param1);
         this.init();
      }
      
      override protected function onLocationLayersParsingComplete(param1:Event) : void
      {
         super.onLocationLayersParsingComplete(param1);
         this._locationModel.updateRocksPondVisibility();
      }
      
      private function init() : void
      {
      }
      
      override protected function createLocationLayers() : LocationLayers
      {
         this._locationLayers = super.createLocationLayers() as LocationLayersLostValley;
         return this._locationLayers;
      }
      
      override public function isInSpecialWall(param1:Number, param2:Number, param3:FieldChar = null) : Boolean
      {
         var _loc4_:Boolean = super.isInSpecialWall(param1,param2,param3);
         return _loc4_ || this._locationLayers.viewRocksPond != null && this._locationLayers.viewRocksPond.hitTest(param1,param2);
      }
   }
}

