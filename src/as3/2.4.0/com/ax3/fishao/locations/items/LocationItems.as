package com.ax3.fishao.locations.items
{
   import com.ax3.fishao.FishaoFscModelManager;
   import com.ax3.fishao.ResourceType;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.locations.base.*;
   import com.ax3.fishao.locations.items.controller.ControllerLocationItem;
   import com.ax3.fishao.locations.items.model.LocationItem;
   import com.ax3.fishao.locations.items.view.ViewItem;
   import com.ax3.fishao.locations.privateHouse.LocationDialogPrivateHouse;
   import com.ax3.jss.requests.server.ServerResp;
   import flash.display.DisplayObjectContainer;
   import flash.geom.Point;
   import protocol.api.base.ResponseOk;
   
   public class LocationItems
   {
      
      private var _items:Array;
      
      private var _locationLayers:LocationLayers;
      
      private var _locationDialog:LocationDialog;
      
      public function LocationItems(param1:LocationDialog)
      {
         super();
         this._locationDialog = param1;
         this.init();
      }
      
      private static function getFruitSourceById(param1:int) : DisplayObjectContainer
      {
         var _loc2_:DisplayObjectContainer = null;
         switch(param1)
         {
            case 1:
               _loc2_ = new gViewBanana();
               break;
            case 2:
               _loc2_ = new gViewCoconut();
               break;
            case 3:
               _loc2_ = new gViewKiwi();
               break;
            case 4:
               _loc2_ = new gViewLemon();
               break;
            case 5:
               _loc2_ = new gViewMango();
               break;
            case 6:
               _loc2_ = new gViewOrange();
               break;
            case 7:
               _loc2_ = new gViewPapaya();
               break;
            case 8:
               _loc2_ = new gViewPineapple();
               break;
            case 9:
               _loc2_ = new gViewPitaya();
               break;
            default:
               Debug.assert(false,"Unsupported id on getFruitSourceById method of ViewFruit: " + param1);
         }
         return _loc2_;
      }
      
      public static function parse(param1:Object) : LocationItem
      {
         var _loc2_:LocationItem = new LocationItem();
         _loc2_.deserialize(param1);
         return _loc2_;
      }
      
      public function set locationLayers(param1:LocationLayers) : void
      {
         this._locationLayers = param1;
      }
      
      private function init() : void
      {
         this._items = [];
      }
      
      public function parseAndAdd(param1:Object) : void
      {
         var _loc2_:LocationItem = parse(param1);
         this.addItem(_loc2_);
      }
      
      public function addItem(param1:LocationItem) : void
      {
         var _loc2_:ControllerLocationItem = new ControllerLocationItem(param1);
         this._items.push(_loc2_);
         this._locationLayers.addLocationItem(_loc2_.view as ViewItem);
      }
      
      public function parseAndRemove(param1:Object) : void
      {
         var _loc2_:LocationItem = parse(param1);
         this.removeItem(_loc2_);
      }
      
      public function removeItem(param1:LocationItem) : void
      {
         var _loc2_:ControllerLocationItem = this.findItemByEntity(param1);
         this._items.splice(this._items.indexOf(_loc2_),1);
         this._locationLayers.removeLocationItem(_loc2_.view as ViewItem);
      }
      
      public function tryRemoveFossil() : void
      {
         var _loc1_:ControllerLocationItem = this.findFirstWithType(ResourceType.FOSSIL.id);
         if(_loc1_ == null)
         {
            return;
         }
         this._items.splice(this._items.indexOf(_loc1_),1);
         this._locationLayers.removeLocationItem(_loc1_.view as ViewItem);
      }
      
      public function findItemByEntity(param1:LocationItem) : ControllerLocationItem
      {
         var _loc2_:ControllerLocationItem = null;
         var _loc3_:ControllerLocationItem = null;
         for each(_loc2_ in this._items)
         {
            if(_loc2_.entity.resourceType == param1.resourceType && _loc2_.entity.resourceId == param1.resourceId && _loc2_.entity.position.equals(param1.position))
            {
               _loc3_ = _loc2_;
               break;
            }
         }
         return _loc3_;
      }
      
      public function findFirstWithType(param1:int) : ControllerLocationItem
      {
         var _loc2_:ControllerLocationItem = null;
         var _loc3_:ControllerLocationItem = null;
         for each(_loc2_ in this._items)
         {
            if(_loc2_.entity.resourceType == param1)
            {
               _loc3_ = _loc2_;
               break;
            }
         }
         return _loc3_;
      }
      
      public function findAllWithType(param1:int) : Array
      {
         var _loc2_:ControllerLocationItem = null;
         var _loc3_:Array = [];
         for each(_loc2_ in this._items)
         {
            if(_loc2_.entity.resourceType == param1)
            {
               _loc3_.push(_loc2_);
            }
         }
         return _loc3_;
      }
      
      public function removeAllWithType(param1:int) : void
      {
         var _loc2_:ControllerLocationItem = null;
         var _loc3_:int = 0;
         while(_loc3_ < this._items.length)
         {
            _loc2_ = this._items[_loc3_];
            if(_loc2_.entity.resourceType == param1)
            {
               this._items.splice(_loc3_,1);
               this._locationLayers.removeLocationItem(_loc2_.view as ViewItem);
            }
            else
            {
               _loc3_++;
            }
         }
      }
      
      public function tryCollectLocationItemAt(param1:Number, param2:Number, param3:int) : void
      {
         var item:ControllerLocationItem = null;
         var x:Number = param1;
         var y:Number = param2;
         var distance:int = param3;
         item = null;
         var callback:Function = null;
         item = this.getLocationItemAt(x,y,distance);
         if(item == null || !item.isCollectable)
         {
            return;
         }
         item.tryPlaySoundCollect();
         item.isCollectable = false;
         if(this._locationDialog is LocationDialogPrivateHouse)
         {
            callback = function(param1:ServerResp):void
            {
               if(param1 is ResponseOk)
               {
                  removeItem(item.entity);
               }
            };
            switch(item.entity.resourceType)
            {
               case ResourceType.FISHCOINS.id:
                  GameSwf.instance.managerMoneyTree.collectFishcoins(item.entity.positionOriginal,callback);
                  break;
               case ResourceType.FISHBUCKS.id:
                  GameSwf.instance.managerMoneyTree.collectFishbucks(item.entity.positionOriginal,callback);
            }
         }
         else
         {
            FishaoFscModelManager.locationExtension.collectItem(item.entity.resourceType,item.entity.resourceId,item.entity.position);
         }
      }
      
      private function getLocationItemAt(param1:Number, param2:Number, param3:int) : ControllerLocationItem
      {
         var _loc4_:ControllerLocationItem = null;
         if(this._items == null || this._items.length == 0)
         {
            return null;
         }
         var _loc5_:ControllerLocationItem = null;
         var _loc6_:Point = new Point(param1,param2);
         for each(_loc4_ in this._items)
         {
            if(Point.distance(_loc4_.entity.position,_loc6_) < param3)
            {
               _loc5_ = _loc4_;
               break;
            }
         }
         return _loc5_;
      }
   }
}

