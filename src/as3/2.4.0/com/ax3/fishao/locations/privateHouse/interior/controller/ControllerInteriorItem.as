package com.ax3.fishao.locations.privateHouse.interior.controller
{
   import com.ax3.fishao.Config;
   import com.ax3.fishao.locations.privateHouse.LocationLayersPrivateHouse;
   import com.ax3.fishao.locations.privateHouse.interior.model.InteriorItemModel;
   import com.ax3.fishao.locations.privateHouse.interior.view.ViewInteriorItem;
   import com.ax3.fishao.utils.AssetFactory;
   import com.ax3.fishao.view.dialogs.base.controllers.implementations.Controller;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces.EControllerUpdate;
   import com.ax3.utils.BitmapForDynamicLoading;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.IEventDispatcher;
   
   public class ControllerInteriorItem extends Controller
   {
      
      private var _view:ViewInteriorItem;
      
      private var _entity:InteriorItemModel;
      
      protected var _locationLayers:LocationLayersPrivateHouse;
      
      protected var _controllerInterior:ControllerInterior;
      
      protected var _graphicsToLoad:int;
      
      public function ControllerInteriorItem(param1:InteriorItemModel, param2:ViewInteriorItem, param3:ControllerInterior)
      {
         this._view = param2;
         this._entity = param1;
         this._controllerInterior = param3;
         super(param2);
         this.init();
      }
      
      public function getAssetUrl(param1:String, param2:String) : String
      {
         var _loc3_:String = Config.SERVER;
         _loc3_ += "data/image/private_house/";
         _loc3_ += "graphics";
         _loc3_ += "_";
         _loc3_ += param2;
         _loc3_ += param1;
         _loc3_ += "_";
         _loc3_ += this._entity.itemId.toString();
         return _loc3_ + ".png";
      }
      
      public function get entity() : InteriorItemModel
      {
         return this._entity;
      }
      
      public function get isCompletelyLoaded() : Boolean
      {
         return this._graphicsToLoad == 0;
      }
      
      public function set buildMode(param1:Boolean) : void
      {
      }
      
      public function set isVisible(param1:Boolean) : void
      {
         if(param1)
         {
            this._view.show();
         }
         else
         {
            this._view.hide();
         }
      }
      
      protected function onGraphicsLoaded(param1:Event = null) : void
      {
         this.clearHandler(param1.target);
         --this._graphicsToLoad;
         if(!this.isCompletelyLoaded)
         {
            return;
         }
         this.addItem();
         this._controllerInterior.update(EControllerUpdate.ECU_INTERIOR_ITEM_LOADED);
      }
      
      public function onItemMoved() : void
      {
      }
      
      private function init() : void
      {
      }
      
      public function startLoading() : void
      {
         this._view.load();
      }
      
      public function load(param1:DisplayObjectContainer, param2:String, param3:String, param4:int = 0, param5:int = 0) : void
      {
         var _loc6_:String = this.getAssetUrl(param2,param3);
         var _loc7_:BitmapForDynamicLoading = new BitmapForDynamicLoading();
         _loc7_.addEventListener(BitmapForDynamicLoading.LOADED_EVENT,this.onGraphicsLoaded);
         _loc7_.x = param4;
         _loc7_.y = param5;
         param1.addChild(_loc7_);
         AssetFactory.replaceBitmapDataFromURL(_loc7_,_loc6_);
      }
      
      private function clearHandler(param1:Object) : void
      {
         var _loc2_:IEventDispatcher = param1 as IEventDispatcher;
         if(_loc2_.hasEventListener(BitmapForDynamicLoading.LOADED_EVENT))
         {
            _loc2_.removeEventListener(BitmapForDynamicLoading.LOADED_EVENT,this.onGraphicsLoaded);
         }
      }
      
      protected function addItem() : void
      {
      }
      
      public function removeItem(param1:Boolean = true) : void
      {
         if(param1)
         {
            this._controllerInterior.locationDialog.moveItemToInventory(this._entity.id,this._entity.itemId);
         }
         this._controllerInterior.items.splice(this._controllerInterior.items.indexOf(this),1);
      }
   }
}

