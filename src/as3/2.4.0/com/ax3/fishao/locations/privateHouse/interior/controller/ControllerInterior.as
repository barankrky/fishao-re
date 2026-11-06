package com.ax3.fishao.locations.privateHouse.interior.controller
{
   import com.ax3.fishao.display.dialogs.LoadingScreen;
   import com.ax3.fishao.display.dialogs.MessageDialog;
   import com.ax3.fishao.locations.privateHouse.LocationDialogPrivateHouse;
   import com.ax3.fishao.locations.privateHouse.LocationLayersPrivateHouse;
   import com.ax3.fishao.locations.privateHouse.interior.model.EInteriorItemLocation;
   import com.ax3.fishao.locations.privateHouse.interior.model.EInteriorItemType;
   import com.ax3.fishao.locations.privateHouse.interior.model.FactoryInteriorItem;
   import com.ax3.fishao.locations.privateHouse.interior.model.FactoryInteriorItemController;
   import com.ax3.fishao.locations.privateHouse.interior.model.InteriorItemModel;
   import com.ax3.fishao.locations.privateHouse.model.*;
   import com.ax3.fishao.model.vo.PrivateHouseInteriorItemVO;
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.utils.Preloader;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces.EControllerUpdate;
   import com.ax3.net.LoadingIndicator;
   import flash.events.Event;
   import flashx.textLayout.formats.TextAlign;
   
   public class ControllerInterior
   {
      
      private static const DEFAULT_FLOOR_ID:int = 7;
      
      private static const DEFAULT_WALL_ID:int = 2;
      
      private var _interiorData:Array;
      
      private var _items:Array;
      
      private var _locationLayers:LocationLayersPrivateHouse;
      
      private var _locationDialog:LocationDialogPrivateHouse;
      
      private var _loadInteriorInitialized:Boolean;
      
      private var _currentWall:Object;
      
      private var _currentFloor:Object;
      
      private var _numberOfInteriorItemsToLoad:int;
      
      private var _numberOfInteriorItemsLoaded:int;
      
      private var _dataIndicator:LoadingIndicator;
      
      private var _itemsLocation:String;
      
      private var _selectedItem:ControllerInteriorItem;
      
      public function ControllerInterior()
      {
         super();
         this.init();
      }
      
      private static function isItemLoadable(param1:String, param2:int) : Boolean
      {
         var _loc3_:Boolean = true;
         switch(param1)
         {
            case EInteriorItemType.EIIT_WALL:
               if(param2 == DEFAULT_WALL_ID)
               {
                  _loc3_ = false;
               }
               break;
            case EInteriorItemType.EIIT_FLOOR:
               if(param2 == DEFAULT_FLOOR_ID)
               {
                  _loc3_ = false;
               }
         }
         return _loc3_;
      }
      
      public function get selectedItem() : ControllerInteriorItem
      {
         return this._selectedItem;
      }
      
      public function set selectedItem(param1:ControllerInteriorItem) : void
      {
         this._selectedItem = param1;
      }
      
      public function get items() : Array
      {
         return this._items;
      }
      
      public function get currentWall() : Object
      {
         return this._currentWall;
      }
      
      public function get currentFloor() : Object
      {
         return this._currentFloor;
      }
      
      public function set locationLayers(param1:LocationLayersPrivateHouse) : void
      {
         this._locationLayers = param1;
      }
      
      public function get locationLayers() : LocationLayersPrivateHouse
      {
         return this._locationLayers;
      }
      
      public function set locationDialog(param1:LocationDialogPrivateHouse) : void
      {
         this._locationDialog = param1;
      }
      
      public function get locationDialog() : LocationDialogPrivateHouse
      {
         return this._locationDialog;
      }
      
      public function set interiorItemsPlace(param1:String) : void
      {
         this._itemsLocation = param1;
      }
      
      public function set interiorData(param1:Array) : void
      {
         this._interiorData = param1;
      }
      
      public function get interiorDataToLoadLength() : int
      {
         var _loc1_:ControllerInteriorItem = null;
         var _loc2_:int = 0;
         for each(_loc1_ in this._items)
         {
            if(isItemLoadable(_loc1_.entity.type,_loc1_.entity.itemId))
            {
               _loc2_++;
            }
         }
         return _loc2_;
      }
      
      public function get dynamicGraphicsProgress() : Number
      {
         var _loc1_:Number = 0;
         if(this._numberOfInteriorItemsToLoad != 0)
         {
            _loc1_ = this._numberOfInteriorItemsLoaded / this._numberOfInteriorItemsToLoad;
         }
         return _loc1_;
      }
      
      public function updateItemsVisibility() : void
      {
         var _loc1_:ControllerInteriorItem = null;
         var _loc2_:int = EPlayerPosition.getFloorByPosition(this._locationDialog.playerPositionCurrent);
         for each(_loc1_ in this._items)
         {
            _loc1_.isVisible = _loc1_.entity.floor == _loc2_ && this._locationDialog.playerPositionCurrent != EPlayerPosition.EPP_GARDEN;
         }
      }
      
      public function isHitTest(param1:int, param2:int) : Boolean
      {
         var _loc3_:ControllerInteriorItem = null;
         var _loc4_:ControllerInteriorFurniture = null;
         var _loc5_:Boolean = false;
         var _loc6_:int = EPlayerPosition.getFloorByPosition(this._locationDialog.playerPositionCurrent);
         for each(_loc3_ in this._items)
         {
            _loc4_ = _loc3_ as ControllerInteriorFurniture;
            if(!(_loc4_ == null || _loc3_.entity.floor != _loc6_))
            {
               if(_loc4_.isHitTest(param1,param2))
               {
                  _loc5_ = true;
                  break;
               }
            }
         }
         return _loc5_;
      }
      
      public function isEnabledFloor(param1:int) : Boolean
      {
         var _loc2_:ControllerInteriorItem = null;
         var _loc3_:Boolean = false;
         for each(_loc2_ in this._items)
         {
            if(_loc2_.entity.floor == param1)
            {
               _loc3_ = true;
               break;
            }
         }
         return _loc3_;
      }
      
      private function getInteriorItemById(param1:int) : ControllerInteriorItem
      {
         var _loc2_:ControllerInteriorItem = null;
         var _loc3_:ControllerInteriorItem = null;
         for each(_loc2_ in this._items)
         {
            if(_loc2_.entity.id == param1)
            {
               _loc3_ = _loc2_;
               break;
            }
         }
         return _loc3_;
      }
      
      private function onItemLoaded(param1:Event = null) : void
      {
         if(this._itemsLocation == EInteriorItemLocation.EIIL_FRIENDS_HOUSE && this._numberOfInteriorItemsLoaded == this._numberOfInteriorItemsToLoad)
         {
            this.updateItemsVisibility();
            return;
         }
         if(this._selectedItem != null)
         {
            this.onLoadFromInventory();
            return;
         }
         ++this._numberOfInteriorItemsLoaded;
         if(this._numberOfInteriorItemsLoaded == this._numberOfInteriorItemsToLoad)
         {
            if(this._loadInteriorInitialized)
            {
               this._locationDialog.onLoadInteriorComplete();
            }
            else
            {
               this._locationDialog.activateLoc();
            }
         }
      }
      
      private function onLoadingComplete(param1:Event = null) : void
      {
         if(this._dataIndicator != null)
         {
            this._dataIndicator.stop();
            Preloader.removeIndicator(this._dataIndicator);
         }
      }
      
      private function onLoadFromInventory() : void
      {
         this.onLoadingComplete();
         if(this._selectedItem.entity.type == EInteriorItemType.EIIT_FURNITURE)
         {
            this.enterBuildMode();
         }
         this._selectedItem.view.show();
      }
      
      public function onInteriorUpdate() : void
      {
         var _loc1_:Array = this.initNewItemsModel();
         this.removeUnusedItems(_loc1_);
         this.moveItems(_loc1_);
         this.addItems(_loc1_);
         this.updateItemsVisibility();
      }
      
      private function init() : void
      {
         this._interiorData = [];
         this._items = [];
         this._loadInteriorInitialized = false;
         this._numberOfInteriorItemsToLoad = 0;
         this._numberOfInteriorItemsLoaded = 0;
      }
      
      public function load() : void
      {
         var _loc1_:PrivateHouseInteriorItemVO = null;
         var _loc2_:Object = null;
         var _loc3_:int = 0;
         var _loc4_:InteriorItemModel = null;
         var _loc5_:ControllerInteriorItem = null;
         var _loc6_:ControllerInteriorItem = null;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         this._loadInteriorInitialized = true;
         for each(_loc2_ in this._interiorData)
         {
            _loc1_ = app.privateHouseInteriorItemDict.get(_loc2_.item_id) as PrivateHouseInteriorItemVO;
            if(_loc1_ != null)
            {
               _loc4_ = FactoryInteriorItem.createInteriorItem(_loc2_,_loc1_.type);
               _loc4_.location = this._itemsLocation;
               _loc5_ = FactoryInteriorItemController.createController(_loc4_,this);
               this._items.push(_loc5_);
            }
         }
         this._numberOfInteriorItemsToLoad = this.interiorDataToLoadLength;
         _loc3_ = 0;
         while(_loc3_ < this._items.length)
         {
            _loc6_ = this._items[_loc3_];
            _loc7_ = int(this._items.length);
            _loc6_.startLoading();
            _loc8_ = int(this._items.length);
            if(_loc7_ == _loc8_)
            {
               _loc3_++;
            }
         }
      }
      
      public function enterBuildMode() : void
      {
         var _loc1_:ControllerInteriorItem = null;
         if(this._itemsLocation != EInteriorItemLocation.EIIL_PRIVATE_HOUSE || this._locationDialog.playerPositionCurrent == EPlayerPosition.EPP_GARDEN)
         {
            return;
         }
         this._locationDialog.buildMode = true;
         for each(_loc1_ in this._items)
         {
            _loc1_.buildMode = true;
         }
         (this._selectedItem as ControllerInteriorFurniture).isSelected = true;
         this._locationDialog.addDragListeners();
      }
      
      public function exitBuildMode() : void
      {
         var _loc1_:ControllerInteriorItem = null;
         this._locationDialog.buildMode = false;
         for each(_loc1_ in this._items)
         {
            _loc1_.buildMode = false;
         }
         this._selectedItem = null;
         this._locationDialog.removeDragListeners();
      }
      
      public function addDecorationFromInventory(param1:int, param2:int) : void
      {
         var _loc3_:ControllerInteriorItem = null;
         var _loc4_:FurniturePosition = null;
         var _loc5_:MessageDialog = null;
         var _loc6_:int = EPlayerPosition.getFloorByPosition(this._locationDialog.playerPositionCurrent);
         var _loc7_:PrivateHouseInteriorItemVO = app.privateHouseInteriorItemDict.get(param2) as PrivateHouseInteriorItemVO;
         this.loadingStart();
         var _loc8_:Object = {};
         _loc8_.id = param1;
         _loc8_.item_id = param2;
         _loc8_.floor = _loc6_;
         switch(_loc7_.type)
         {
            case EInteriorItemType.EIIT_FLOOR:
            case EInteriorItemType.EIIT_WALL:
               _loc3_ = this.getItemOnFloorWithType(_loc6_,_loc7_.type);
               if(_loc3_ != null)
               {
                  _loc3_.removeItem();
               }
               break;
            case EInteriorItemType.EIIT_FURNITURE:
               _loc4_ = FurnitureHelper.getPosition(this._locationDialog.furnitureMap[_loc6_ - 1],_loc7_.size_x,_loc7_.size_y);
               if(_loc4_ == null)
               {
                  this.onLoadingComplete();
                  _loc5_ = new MessageDialog();
                  _loc5_.setText(I18n.get("noSpaceForFurniture").split("#USERNAME").join(app.user.username));
                  _loc5_.textAlign = TextAlign.CENTER;
                  _loc5_.buttons = MessageDialog.OK_BUTTON;
                  _loc5_.closeOnOk = true;
                  _loc5_.show();
                  return;
               }
               _loc8_.position_x = _loc4_.point.x;
               _loc8_.position_y = _loc4_.point.y;
               _loc8_.rotation = _loc4_.rotation;
         }
         this._locationDialog.removeItemFromInventory(param1);
         var _loc9_:InteriorItemModel = FactoryInteriorItem.createInteriorItem(_loc8_,_loc7_.type);
         _loc9_.location = this._itemsLocation;
         var _loc10_:Boolean = GameSwf.instance.managerTutorial.isAnyTutorialInProgress;
         var _loc11_:ControllerInteriorItem = FactoryInteriorItemController.createController(_loc9_,this,_loc10_);
         this._selectedItem = _loc11_;
         this._items.push(_loc11_);
         if(isItemLoadable(_loc9_.type,_loc9_.itemId))
         {
            this._selectedItem.startLoading();
         }
         else
         {
            this.onItemLoaded();
         }
         this.save();
      }
      
      private function getItemOnFloorWithType(param1:int, param2:String) : ControllerInteriorItem
      {
         var _loc3_:ControllerInteriorItem = null;
         var _loc4_:ControllerInteriorItem = null;
         for each(_loc3_ in this._items)
         {
            if(_loc3_.entity.floor == param1 && _loc3_.entity.type == param2)
            {
               _loc4_ = _loc3_;
               break;
            }
         }
         return _loc4_;
      }
      
      public function update(param1:String) : void
      {
         switch(param1)
         {
            case EControllerUpdate.ECU_INTERIOR_ITEM_LOADED:
               this.onItemLoaded();
               break;
            default:
               super.updateWithType(param1);
         }
      }
      
      private function initNewItemsModel() : Array
      {
         var _loc1_:PrivateHouseInteriorItemVO = null;
         var _loc2_:Object = null;
         var _loc3_:InteriorItemModel = null;
         var _loc4_:Array = [];
         for each(_loc2_ in this._interiorData)
         {
            _loc1_ = app.privateHouseInteriorItemDict.get(_loc2_.item_id) as PrivateHouseInteriorItemVO;
            if(_loc1_ != null)
            {
               _loc3_ = FactoryInteriorItem.createInteriorItem(_loc2_,_loc1_.type);
               _loc3_.location = this._itemsLocation;
               _loc4_.push(_loc3_);
            }
         }
         return _loc4_;
      }
      
      private function removeUnusedItems(param1:Array) : void
      {
         var _loc2_:ControllerInteriorItem = null;
         var _loc3_:Boolean = false;
         var _loc4_:InteriorItemModel = null;
         for each(_loc2_ in this._items)
         {
            _loc3_ = false;
            for each(_loc4_ in param1)
            {
               if(_loc4_.id == _loc2_.entity.id)
               {
                  _loc3_ = true;
                  break;
               }
            }
            if(!_loc3_)
            {
               _loc2_.removeItem(false);
            }
         }
      }
      
      private function moveItems(param1:Array) : void
      {
         var _loc2_:InteriorItemModel = null;
         var _loc3_:ControllerInteriorItem = null;
         for each(_loc2_ in param1)
         {
            _loc3_ = this.getInteriorItemById(_loc2_.id);
            if(!(_loc3_ == null || _loc3_.entity.type != EInteriorItemType.EIIT_FURNITURE || _loc3_.entity.isSameWith(_loc2_)))
            {
               _loc3_.entity.copyPosition(_loc2_);
               _loc3_.onItemMoved();
            }
         }
      }
      
      private function addItems(param1:Array) : void
      {
         var _loc2_:InteriorItemModel = null;
         var _loc3_:ControllerInteriorItem = null;
         var _loc4_:ControllerInteriorItem = null;
         for each(_loc2_ in param1)
         {
            _loc3_ = this.getInteriorItemById(_loc2_.id);
            if(_loc3_ == null)
            {
               _loc4_ = FactoryInteriorItemController.createController(_loc2_,this);
               this._items.push(_loc4_);
               _loc4_.startLoading();
            }
         }
      }
      
      public function save() : void
      {
         var _loc1_:ControllerInteriorItem = null;
         var _loc2_:Array = [];
         for each(_loc1_ in this._items)
         {
            _loc2_.push(_loc1_.entity.serialize());
         }
         GameSwf.instance.managerInterior.save(JSON.stringify(_loc2_));
      }
      
      private function loadingStart() : void
      {
         this._dataIndicator = new LoadingIndicator(LoadingScreen.TYPE_SIMPLE);
         this._dataIndicator.start();
         Preloader.addIndicator(this._dataIndicator);
      }
      
      public function cleanup() : void
      {
         var _loc1_:ControllerInteriorItem = null;
         if(this._items != null)
         {
            for each(_loc1_ in this._items)
            {
               _loc1_.cleanup();
               _loc1_ = null;
            }
            this._items = null;
         }
      }
   }
}

