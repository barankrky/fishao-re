package com.ax3.fishao.view.dialogs.fruits.controllers
{
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.view.dialogs.base.controllers.implementations.Controller;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces.EControllerUpdate;
   import com.ax3.fishao.view.dialogs.fruits.ManagerFruits;
   import com.ax3.fishao.view.dialogs.fruits.model.EFruitItemType;
   import com.ax3.fishao.view.dialogs.fruits.model.FruitItem;
   import com.ax3.fishao.view.dialogs.fruits.views.ViewFruitsSelected;
   import flash.display.DisplayObjectContainer;
   
   public class ControllerFruitsSelected extends Controller
   {
      
      private var _view:ViewFruitsSelected;
      
      private var _items:Array;
      
      private var _managerFruits:ManagerFruits;
      
      public function ControllerFruitsSelected(param1:DisplayObjectContainer)
      {
         this._view = new ViewFruitsSelected(this,param1);
         super(this._view);
         this.init();
      }
      
      private function init() : void
      {
         this._managerFruits = GameSwf.instance.managerFruits;
         this._items = [];
         this.updateItems();
         this.updateItemsView();
      }
      
      private function updateItems() : void
      {
         var _loc1_:int = 0;
         var _loc2_:FruitItem = null;
         var _loc3_:ControllerFruitCrushItem = null;
         this.clearItems();
         var _loc4_:Array = this._managerFruits.selectedFruits;
         var _loc5_:int = 0;
         while(_loc5_ < this._view.itemsOnPage)
         {
            _loc1_ = _loc4_.length > _loc5_ ? (_loc4_[_loc5_] as FruitItem).id : 0;
            _loc2_ = new FruitItem(_loc1_,1);
            _loc3_ = new ControllerFruitCrushItem(_loc2_,EFruitItemType.EFIT_SELECTED);
            this._items.push(_loc3_);
            _loc5_++;
         }
      }
      
      private function updateItemsView() : void
      {
         var _loc1_:ControllerFruitCrushItem = null;
         var _loc2_:Array = [];
         for each(_loc1_ in this._items)
         {
            _loc2_.push(_loc1_.view.source);
         }
         this._view.items = _loc2_;
      }
      
      override public function update(param1:String) : void
      {
         var _loc2_:ControllerFruitCrushItem = null;
         switch(param1)
         {
            case EControllerUpdate.ECU_FRUITS_CRUSH_UPDATE:
               this.updateItems();
               this.updateItemsView();
               break;
            case EControllerUpdate.ECU_FRUITS_CRUSH_STARTED:
               for each(_loc2_ in this._items)
               {
                  _loc2_.disable();
               }
               break;
            default:
               Debug.assert(false,"Unsupported type in update method of ControllerFruitsSelected: " + param1);
         }
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
   }
}

