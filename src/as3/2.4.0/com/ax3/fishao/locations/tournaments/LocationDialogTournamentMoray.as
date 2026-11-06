package com.ax3.fishao.locations.tournaments
{
   import com.ax3.fishao.locations.base.LocationLayers;
   import com.ax3.fishao.locations.base.LocationModel;
   import com.ax3.fishao.locations.entries.FieldChar;
   import com.ax3.fishao.locations.palmIsland.LocationLayersPalmIsland;
   import flash.events.Event;
   
   public class LocationDialogTournamentMoray extends LocationDialogTournament
   {
      
      private var _locationLayers:LocationLayersPalmIsland;
      
      public function LocationDialogTournamentMoray(param1:LocationModel)
      {
         super(param1);
         this.init();
      }
      
      override public function isInSpecialWall(param1:Number, param2:Number, param3:FieldChar = null) : Boolean
      {
         var _loc4_:Boolean = super.isInSpecialWall(param1,param2,param3);
         return _loc4_ || this._locationLayers.viewMegalodon != null && this._locationLayers.viewMegalodon.hitTest(param1,param2) || this._locationLayers.viewPirateCave != null && this._locationLayers.viewPirateCave.hitTest(param1,param2,false);
      }
      
      override protected function onLocationLayersParsingComplete(param1:Event) : void
      {
         super.onLocationLayersParsingComplete(param1);
         this._locationLayers.viewMegalodon.isEnabled = false;
         this._locationLayers.viewPirateCave.isEnabled = false;
      }
      
      private function init() : void
      {
      }
      
      override protected function createLocationLayers() : LocationLayers
      {
         this._locationLayers = super.createLocationLayers() as LocationLayersPalmIsland;
         return this._locationLayers;
      }
   }
}

