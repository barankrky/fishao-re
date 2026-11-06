package com.ax3.fishao.locations.rio
{
   import com.ax3.fishao.locations.base.LocationDialog;
   import com.ax3.fishao.locations.base.LocationLayers;
   import com.ax3.fishao.locations.base.LocationModel;
   import com.ax3.fishao.locations.entries.FieldChar;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces.EControllerUpdate;
   import flash.events.Event;
   import flash.geom.Point;
   
   public class LocationDialogRio extends LocationDialog
   {
      
      private var _locationLayers:LocationLayersRio;
      
      private var _locationModel:LocationModelRio;
      
      public function LocationDialogRio(param1:LocationModel)
      {
         this._locationModel = param1 as LocationModelRio;
         super(param1);
      }
      
      override public function isInSpecialWall(param1:Number, param2:Number, param3:FieldChar = null) : Boolean
      {
         var _loc4_:Boolean = super.isInSpecialWall(param1,param2,param3);
         return _loc4_ || this._locationLayers.viewWaterfallCave != null && this._locationLayers.viewWaterfallCave.hitTest(param1,param2,false);
      }
      
      override protected function onLocationLayersParsingComplete(param1:Event) : void
      {
         super.onLocationLayersParsingComplete(param1);
         this._locationModel.updateWaterfallCaveAccess();
      }
      
      override protected function createLocationLayers() : LocationLayers
      {
         this._locationLayers = super.createLocationLayers() as LocationLayersRio;
         return this._locationLayers;
      }
      
      override public function updateWithType(param1:String) : void
      {
         if(!_locationLoadComplete)
         {
            return;
         }
         switch(param1)
         {
            case EControllerUpdate.ECU_FEATURE_TEMPORARY_WATERFALL_CAVE_UPDATED:
               this._locationModel.updateWaterfallCaveAccess();
               break;
            default:
               super.updateWithType(param1);
         }
      }
      
      override public function setPositionAfterExitVirtualLocation(param1:int) : void
      {
         if(player == null)
         {
            return;
         }
         if(param1 == 400)
         {
            movePlayerCharTo(new Point(3320,350));
         }
         else if(param1 == 300)
         {
            movePlayerCharTo(new Point(2940,350));
         }
         GameSwf.instance.needSetPositionAfterExitVirtualLocation = false;
      }
   }
}

