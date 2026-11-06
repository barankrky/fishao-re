package com.ax3.fishao.locations.decorationMarket
{
   import com.ax3.fishao.locations.base.LocationLayers;
   import com.ax3.fishao.locations.base.LocationModel;
   import com.ax3.fishao.locations.privateHouse.LocationDialogPrivateHouse;
   import com.ax3.fishao.locations.privateHouse.interior.model.EInteriorItemLocation;
   import com.ax3.fishao.utils.UtilsArray;
   import com.ax3.fishao.view.dialogs.interior.ManagerInterior;
   import com.ax3.jss.requests.server.ServerResp;
   
   public class LocationDialogDecorationMarket extends LocationDialogPrivateHouse
   {
      
      private var _locationLayers:LocationLayersDecorationMarket;
      
      private var _managerInterior:ManagerInterior;
      
      public function LocationDialogDecorationMarket(param1:LocationModel)
      {
         super(param1);
         this.init();
      }
      
      override public function get interiorItemsLocation() : String
      {
         return EInteriorItemLocation.EIIL_DECORATION_SHOP;
      }
      
      override protected function updateDoors() : void
      {
         this._locationLayers.viewDoorCenter.isEnabled = false;
         this._locationLayers.viewDoorLeft.isEnabled = false;
      }
      
      private function init() : void
      {
         this._managerInterior = GameSwf.instance.managerInterior;
         _furnitureMap = UtilsArray.createMultidimensionalArray([1,12,12]);
      }
      
      override protected function createLocationLayers() : LocationLayers
      {
         this._locationLayers = super.createLocationLayers() as LocationLayersDecorationMarket;
         return this._locationLayers;
      }
      
      override public function destroy() : void
      {
         _controllerInterior.cleanup();
         super.destroy();
      }
      
      override public function show() : void
      {
         super.show();
         updateCenterToRect();
      }
      
      override protected function loadDynamicGraphics(param1:ServerResp) : void
      {
         this._managerInterior.getLocationItems("",true);
      }
      
      override protected function inspectPlayerPosition() : void
      {
         if(this._locationLayers != null)
         {
            super.inspectPlayerPosition();
         }
      }
      
      override public function get isOwnHouse() : Boolean
      {
         return false;
      }
      
      override public function activateLoc() : void
      {
         super.activateLoc();
         _gui.mainMenu.tournamentIcon.enable();
      }
   }
}

