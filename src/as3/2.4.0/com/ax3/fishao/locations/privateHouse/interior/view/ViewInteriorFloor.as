package com.ax3.fishao.locations.privateHouse.interior.view
{
   import com.ax3.fishao.locations.privateHouse.interior.controller.ControllerInteriorItem;
   import com.ax3.fishao.locations.privateHouse.interior.model.EInteriorItemAssetType;
   import com.ax3.fishao.locations.privateHouse.interior.model.EInteriorItemRotation;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces.IController;
   
   public class ViewInteriorFloor extends ViewInteriorItem
   {
      
      private var _controllerInteriorItem:ControllerInteriorItem;
      
      public function ViewInteriorFloor(param1:IController)
      {
         super(param1);
         this.init();
      }
      
      private function init() : void
      {
         this._controllerInteriorItem = controller as ControllerInteriorItem;
      }
      
      override public function load() : void
      {
         this._controllerInteriorItem.load(_source,EInteriorItemRotation.EIIR_FRONT,EInteriorItemAssetType.EIIAT_ISO);
      }
   }
}

