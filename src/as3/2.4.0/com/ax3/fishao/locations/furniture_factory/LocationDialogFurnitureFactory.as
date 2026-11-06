package com.ax3.fishao.locations.furniture_factory
{
   import com.ax3.events.Listeners;
   import com.ax3.fishao.events.LocationModelEvent;
   import com.ax3.fishao.locations.base.LocationDialog;
   import com.ax3.fishao.locations.base.LocationLayers;
   import com.ax3.fishao.locations.base.LocationModel;
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces.EControllerUpdate;
   import com.ax3.fishao.view.dialogs.string.EStringType;
   import com.ax3.fishao.view.dialogs.string.EStringTypeStubs;
   import flash.events.Event;
   
   public class LocationDialogFurnitureFactory extends LocationDialog
   {
      
      private var _locationLayers:LocationLayersFurnitureFactory;
      
      private var _locationModel:LocationModelFurnitureFactory;
      
      public function LocationDialogFurnitureFactory(param1:LocationModel)
      {
         this._locationModel = param1 as LocationModelFurnitureFactory;
         super(param1);
      }
      
      override protected function onLocationLayersParsingComplete(param1:Event) : void
      {
         super.onLocationLayersParsingComplete(param1);
         this._locationModel.updateFurnitureBox();
      }
      
      private function onUpdateBoardFish(param1:LocationModelEvent) : void
      {
         var _loc2_:Array = param1.data as Array;
         this.updateBoardFishTooltip(_loc2_);
      }
      
      override protected function createLocationLayers() : LocationLayers
      {
         this._locationLayers = super.createLocationLayers() as LocationLayersFurnitureFactory;
         return this._locationLayers;
      }
      
      override public function activate() : void
      {
         super.activate();
         Listeners.addEventListener(this,locationModel,LocationModelEvent.UPDATE_BOARD_FISH,this.onUpdateBoardFish);
      }
      
      override public function deactivate() : void
      {
         super.deactivate();
         Listeners.removeEventListener(this,locationModel,LocationModelEvent.UPDATE_BOARD_FISH,this.onUpdateBoardFish);
      }
      
      private function updateBoardFishTooltip(param1:Array) : void
      {
         var _loc2_:int = 0;
         var _loc3_:Array = [];
         var _loc4_:int = 0;
         while(_loc4_ < param1.length)
         {
            _loc3_[_loc4_] = I18n.get("fish_" + param1[_loc4_]);
            _loc4_++;
         }
         _loc3_.sort();
         var _loc5_:String = I18n.get(EStringType.EST_BOARD_FISH_LUCKY_RAFT);
         _loc5_ = _loc5_.replace(EStringTypeStubs.ESTS_COUNT,param1.length);
         if(_loc3_.length == 0)
         {
            _loc5_ = _loc5_.replace(":","");
         }
         else
         {
            _loc2_ = 0;
            while(_loc2_ < param1.length)
            {
               _loc5_ += _loc3_[_loc2_];
               if(_loc2_ < param1.length - 1)
               {
                  _loc5_ += ", ";
               }
               _loc2_++;
            }
         }
         this._locationLayers.boardFish.tooltipText = _loc5_;
      }
      
      override public function updateWithType(param1:String) : void
      {
         if(!_locationLoadComplete)
         {
            return;
         }
         switch(param1)
         {
            case EControllerUpdate.ECU_FURNITURE_FACTORY_UPDATE:
               this._locationModel.updateFurnitureBox();
               break;
            default:
               super.updateWithType(param1);
         }
      }
   }
}

