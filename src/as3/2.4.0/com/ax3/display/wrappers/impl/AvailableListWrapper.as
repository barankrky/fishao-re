package com.ax3.display.wrappers.impl
{
   import com.ax3.display.wrappers.IItemFactory;
   import com.ax3.fishao.view.wrappers.impl.ScrollHWithContainerWrapper;
   import com.ax3.utils.removeAllChildren;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   
   public class AvailableListWrapper extends ScrollHWithContainerWrapper
   {
      
      public static const ACTIVATE_WRAPPER:String = "activateScrollListWrapper";
      
      private static const CONTENT_BOTTOM_PADDING:int = 10;
      
      public var itemTemplate:DisplayObject;
      
      private var _asset:DisplayObjectContainer;
      
      private var _items:Vector.<Object> = new Vector.<Object>();
      
      private var _itemRenderFactory:IItemFactory;
      
      private var _rect:DisplayObject;
      
      private var _scrollAsset:DisplayObject;
      
      public var gap:int = 0;
      
      public function AvailableListWrapper()
      {
         super();
      }
      
      override public function process(param1:DisplayObject) : void
      {
         super.process(param1);
         this._asset = DisplayObjectContainer(param1);
         var _loc2_:DisplayObject = this._asset.getChildByName("bg");
         this._rect = this._asset.getChildByName("rect");
         this.itemTemplate = this._asset.getChildByName("item");
         this._scrollAsset = this._asset.getChildByName("scroll");
         removeAllChildren(this._asset);
         this._asset.addChild(_loc2_);
         this._asset.addChild(this._scrollAsset);
         _content = new Sprite();
         _content.scrollRect = new Rectangle(0,0,this._rect.width,this._rect.height);
         _content.x = this._rect.x;
         _content.y = this._rect.y;
         _content.name = "scroll_content";
         this._asset.addChild(_content);
      }
      
      public function set itemFactory(param1:IItemFactory) : void
      {
         this._itemRenderFactory = param1;
      }
      
      public function get items() : Vector.<Object>
      {
         return this._items;
      }
      
      public function add(param1:Object) : DisplayObject
      {
         if(this._items.indexOf(param1) == -1)
         {
            return this.addItem(param1);
         }
         return null;
      }
      
      private function addItem(param1:Object) : DisplayObject
      {
         this._items.push(param1);
         var _loc2_:DisplayObject = this.createItemWrapper();
         _loc2_.x = _contentWidth;
         _content.addChild(DisplayObject(_loc2_));
         this.updateList();
         updateScroll();
         return _loc2_;
      }
      
      private function createItemWrapper() : DisplayObject
      {
         return this._itemRenderFactory.createInstance();
      }
      
      public function remove(param1:Object) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Object = this.findItemInList(param1);
         if(_loc3_ != null)
         {
            _loc2_ = this._items.indexOf(_loc3_);
            this._items.splice(_loc2_,1);
            _content.removeChildAt(_loc2_);
            this.updateList();
            updateScroll();
         }
      }
      
      private function updateList() : void
      {
         var _loc1_:DisplayObject = null;
         var _loc2_:uint = 0;
         _contentWidth = 0;
         var _loc3_:int = _content.numChildren;
         if(_loc3_ > 0)
         {
            _loc1_ = _content.getChildAt(0);
            switch(_loc3_)
            {
               case 1:
                  _loc1_.x = this._rect.width / 2 - _loc1_.width / 2;
                  break;
               case 2:
                  _loc1_.x = this._rect.width / 3 - _loc1_.width / 2;
                  _contentWidth = _loc1_.x + _loc1_.width + this.gap;
                  _loc2_ = 1;
                  while(_loc2_ < _loc3_)
                  {
                     _loc1_ = _content.getChildAt(_loc2_);
                     _loc1_.x = _contentWidth;
                     _contentWidth += _loc1_.width + this.gap;
                     _loc2_++;
                  }
                  break;
               default:
                  _loc1_.x = 0;
                  _contentWidth = _loc1_.x + _loc1_.width + this.gap;
                  _loc2_ = 1;
                  while(_loc2_ < _loc3_)
                  {
                     _loc1_ = _content.getChildAt(_loc2_);
                     _loc1_.x = _contentWidth;
                     _contentWidth += _loc1_.width + this.gap;
                     _loc2_++;
                  }
            }
            if(_loc3_ <= 3)
            {
               _content.y = this._rect.y + this._scrollAsset.height / 2;
            }
            else
            {
               _content.y = this._rect.y;
            }
         }
      }
      
      private function findItemInList(param1:Object) : Object
      {
         var _loc2_:Object = null;
         for each(_loc2_ in this._items)
         {
            if(_loc2_.hasOwnProperty("equal") && _loc2_.equal is Function)
            {
               if(_loc2_.equal(param1))
               {
                  return _loc2_;
               }
            }
            else if(_loc2_ == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function removeAll() : void
      {
         this._items.length = 0;
         var _loc1_:Rectangle = _content.scrollRect;
         _loc1_.x = 0;
         _content.scrollRect = _loc1_;
         removeAllChildren(_content);
         this.updateList();
         updateScroll();
      }
      
      public function updateData() : void
      {
         var _loc1_:DisplayObject = null;
         var _loc2_:uint = uint(_content.numChildren);
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc1_ = _content.getChildAt(_loc3_);
            if(_loc1_ is IListItemWrapper)
            {
               IListItemWrapper(_loc1_).updateData();
            }
            _loc3_++;
         }
      }
      
      public function get elements() : Vector.<DisplayObject>
      {
         var _loc1_:int = 0;
         var _loc2_:Vector.<DisplayObject> = new Vector.<DisplayObject>();
         var _loc3_:int = _content.numChildren;
         _loc1_ = 0;
         while(_loc1_ < _loc3_)
         {
            _loc2_.push(_content.getChildAt(_loc1_));
            _loc1_++;
         }
         return _loc2_;
      }
   }
}

