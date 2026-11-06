package com.ax3.fishao.view.dialogs.fruits.controllers
{
   import com.ax3.fishao.ResourceType;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.model.info.UserResource;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs.base.controllers.implementations.Controller;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces.EControllerUpdate;
   import com.ax3.fishao.view.dialogs.fruits.ManagerFruits;
   import com.ax3.fishao.view.dialogs.fruits.model.EFruitItemType;
   import com.ax3.fishao.view.dialogs.fruits.model.FruitItem;
   import com.ax3.fishao.view.dialogs.fruits.views.ViewFruitsInventory;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   
   public class ControllerFruitsInventory extends Controller
   {
      
      private var _view:ViewFruitsInventory;
      
      private var _items:Array;
      
      private var _managerFruits:ManagerFruits;
      
      public function ControllerFruitsInventory(param1:DisplayObjectContainer)
      {
         this._view = new ViewFruitsInventory(this,param1);
         super(this._view);
         this.init();
      }
      
      private function init() : void
      {
         this._managerFruits = GameSwf.instance.managerFruits;
         this._items = [];
         this.updateItems();
         this.updateItemsAmount();
         this.updateItemsView();
      }
      
      override public function update(param1:String) : void
      {
         var _loc2_:ControllerFruitCrushItem = null;
         switch(param1)
         {
            case EControllerUpdate.ECU_FRUITS_CRUSH_UPDATE:
               this.updateItemsAmount();
               break;
            case EControllerUpdate.ECU_FRUITS_CRUSH_STARTED:
               for each(_loc2_ in this._items)
               {
                  _loc2_.disable();
               }
               break;
            default:
               Debug.assert(false,"Unsupported type in update method of ControllerFruitsInventory: " + param1);
         }
      }
      
      private function updateItems() : void
      {
         var _loc1_:Object = null;
         var _loc2_:FruitItem = null;
         var _loc3_:ControllerFruitCrushItem = null;
         var _loc4_:Vector.<Object> = app.fruits.getAll();
         for each(_loc1_ in _loc4_)
         {
            _loc2_ = new FruitItem(_loc1_.resource_id,0);
            _loc3_ = new ControllerFruitCrushItem(_loc2_,EFruitItemType.EFIT_INVENTORY);
            this._items.push(_loc3_);
         }
      }
      
      private function updateItemsAmount() : void
      {
         var _loc1_:UserResource = null;
         for each(_loc1_ in app.user.inventory.other)
         {
            if(_loc1_.type == ResourceType.FRUIT.id)
            {
               this.updateFruitItemAmount(_loc1_.id,_loc1_.quantity);
            }
         }
         this.removeSelected();
      }
      
      private function removeSelected() : void
      {
         var _loc1_:FruitItem = null;
         var _loc2_:ControllerFruitCrushItem = null;
         for each(_loc1_ in this._managerFruits.selectedFruits)
         {
            for each(_loc2_ in this._items)
            {
               if(_loc2_.entity.id == _loc1_.id)
               {
                  --_loc2_.amount;
                  break;
               }
            }
         }
      }
      
      private function updateFruitItemAmount(param1:int, param2:int) : void
      {
         var _loc3_:ControllerFruitCrushItem = null;
         for each(_loc3_ in this._items)
         {
            if(_loc3_.entity.id == param1)
            {
               _loc3_.amount = param2;
               break;
            }
         }
      }
      
      private function updateItemsView() : void
      {
         var _loc1_:DisplayObject = null;
         var _loc2_:Array = [];
         var _loc3_:int = 0;
         while(_loc3_ < this._items.length && _loc3_ < this._view.itemsOnPage)
         {
            _loc1_ = (this._items[_loc3_] as ControllerFruitCrushItem).view.source;
            _loc2_.push(_loc1_);
            _loc3_++;
         }
         this._view.items = _loc2_;
      }
      
      private function clearItems() : void
      {
         var _loc1_:ControllerFruitCrushItem = null;
         for each(_loc1_ in this._items)
         {
            _loc1_.cleanup();
            _loc1_ = null;
         }
         this._items = [];
      }
      
      override public function cleanup() : void
      {
         this.clearItems();
         super.cleanup();
      }
   }
}

