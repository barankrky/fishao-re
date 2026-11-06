package com.ax3.fishao.locations.furniture_factory
{
   import com.ax3.fishao.events.LocationModelEvent;
   import com.ax3.fishao.locations.sublocation.SublocationModel;
   import com.ax3.fishao.view.dialogs.furniture_factory.ManagerFurnitureFactory;
   import protocol.sr.UpdateResp;
   
   public class LocationModelFurnitureFactory extends SublocationModel
   {
      
      private var _locationLayers:LocationLayersFurnitureFactory;
      
      private var _managerFurnitureFactory:ManagerFurnitureFactory;
      
      public function LocationModelFurnitureFactory(param1:int)
      {
         super(param1);
         this._managerFurnitureFactory = GameSwf.instance.managerFurnitureFactory;
      }
      
      override public function onLocationLoadingComplete() : void
      {
         super.onLocationLoadingComplete();
         this._locationLayers = (dialog as LocationDialogFurnitureFactory).locationLayersBase as LocationLayersFurnitureFactory;
      }
      
      override public function updateHandler(param1:UpdateResp) : void
      {
         var _loc2_:Object = null;
         var _loc3_:String = null;
         for(_loc3_ in param1.data)
         {
            if(param1.data.hasOwnProperty(_loc3_))
            {
               switch(_loc3_)
               {
                  case "fishes_available":
                     _loc2_ = param1.getJsonData(_loc3_);
                     dispatchEvent(new LocationModelEvent(LocationModelEvent.UPDATE_BOARD_FISH,_loc2_));
               }
            }
         }
         super.updateHandler(param1);
      }
      
      public function updateFurnitureBox() : void
      {
         this._locationLayers.furnitureBox.isEnabled = this._managerFurnitureFactory.rewardTimeLeft == 0;
      }
   }
}

