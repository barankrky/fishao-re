package com.ax3.fishao.locations.privateHouse.interior.controller
{
   import com.ax3.fishao.locations.privateHouse.interior.model.InteriorItemFloor;
   import com.ax3.fishao.locations.privateHouse.interior.view.ViewInteriorFloor;
   import flash.display.DisplayObjectContainer;
   
   public class ControllerInteriorFloor extends ControllerInteriorItem
   {
      
      private var _entity:InteriorItemFloor;
      
      private var _view:ViewInteriorFloor = new ViewInteriorFloor(this);
      
      public function ControllerInteriorFloor(param1:InteriorItemFloor, param2:ControllerInterior)
      {
         this._entity = param1;
         super(param1,this._view,param2);
         this.init();
      }
      
      private function init() : void
      {
         _graphicsToLoad = 1;
      }
      
      override public function load(param1:DisplayObjectContainer, param2:String, param3:String, param4:int = 0, param5:int = 0) : void
      {
         if(this._entity.itemId == 7)
         {
            return;
         }
         super.load(param1,param2,param3,param4,param5);
      }
      
      override protected function addItem() : void
      {
         this._view.addOnLayer(_controllerInterior.locationLayers.privateHouseFloor);
      }
      
      override public function removeItem(param1:Boolean = true) : void
      {
         this._view.removeFromLayer(_controllerInterior.locationLayers.privateHouseFloor);
         super.removeItem(param1);
      }
   }
}

