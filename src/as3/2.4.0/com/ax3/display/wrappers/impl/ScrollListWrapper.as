package com.ax3.display.wrappers.impl
{
   import com.ax3.display.wrappers.IItemFactory;
   import com.ax3.fishao.view.wrappers.impl.ScrollWithContainerWrapper;
   import com.ax3.utils.removeAllChildren;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   
   public class ScrollListWrapper extends ScrollWithContainerWrapper
   {
      
      public static const ACTIVATE_WRAPPER:String = "activateScrollListWrapper";
      
      protected static const CONTENT_BOTTOM_PADDING:int = 10;
      
      public var itemTemplate:DisplayObject;
      
      private var _asset:DisplayObjectContainer;
      
      private var _items:Vector.<Object> = new Vector.<Object>();
      
      private var _itemsViews:Vector.<IListItemWrapper> = new Vector.<IListItemWrapper>();
      
      private var _itemRenderFactory:IItemFactory;
      
      public var gap:int = 0;
      
      public var sortFn:Function;
      
      public function ScrollListWrapper()
      {
         super();
      }
      
      public function get GetContent() : Sprite
      {
         return _content;
      }
      
      override public function process(param1:DisplayObject) : void
      {
         var _loc2_:DisplayObject = null;
         _loc2_ = null;
         super.process(param1);
         this._asset = DisplayObjectContainer(param1);
         _loc2_ = this._asset.getChildByName("rect");
         this.itemTemplate = this._asset.getChildByName("item");
         var _loc3_:DisplayObject = this._asset.getChildByName("scroll");
         removeAllChildren(this._asset);
         if(_mouseScrollArea != null)
         {
            this._asset.addChild(_mouseScrollArea);
         }
         this._asset.addChild(_loc3_);
         _content = new Sprite();
         _content.scrollRect = new Rectangle(0,0,_loc2_.width,_loc2_.height);
         _content.x = _loc2_.x;
         _content.y = _loc2_.y;
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
      
      public function get itemsViews() : Vector.<IListItemWrapper>
      {
         return this._itemsViews;
      }
      
      public function add(param1:Object, param2:Boolean = true) : IListItemWrapper
      {
         var _loc3_:IListItemWrapper = null;
         if(this._items.indexOf(param1) == -1)
         {
            _loc3_ = this.addItem(param1,param2);
            this._itemsViews.push(_loc3_);
         }
         return _loc3_;
      }
      
      private function addItem(param1:Object, param2:Boolean = true) : IListItemWrapper
      {
         this._items.push(param1);
         if(this.sortFn != null)
         {
            this._items.sort(this.sortFn);
         }
         var _loc3_:int = this._items.indexOf(param1);
         var _loc4_:IListItemWrapper = this.createItemWrapper();
         _loc4_.data = param1;
         _loc4_.y = _contentHeight;
         _content.addChildAt(DisplayObject(_loc4_),_loc3_);
         if(param2)
         {
            this.updateList();
            updateScroll();
         }
         return _loc4_;
      }
      
      private function createItemWrapper() : IListItemWrapper
      {
         return IListItemWrapper(this._itemRenderFactory.createInstance());
      }
      
      public function remove(param1:Object) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Object = this.findItemInList(param1);
         if(_loc3_ != null)
         {
            _loc2_ = this._items.indexOf(_loc3_);
            this._items.splice(_loc2_,1);
            this._itemsViews.splice(_loc2_,1);
            _content.removeChildAt(_loc2_);
            this.updateList();
            updateScroll();
         }
      }
      
      protected function updateList() : void
      {
         var _loc1_:DisplayObject = null;
         var _loc2_:int = 0;
         _contentHeight = 0;
         var _loc3_:int = _content.numChildren;
         if(_loc3_ > 0)
         {
            _loc1_ = _content.getChildAt(0);
            _loc1_.y = 0;
            _contentHeight = _loc1_.y + _loc1_.height + this.gap;
            _loc2_ = 1;
            while(_loc2_ < _loc3_)
            {
               _loc1_ = _content.getChildAt(_loc2_);
               _loc1_.y = _contentHeight;
               _contentHeight += _loc1_.height + this.gap;
               _loc2_++;
            }
         }
         if(_contentHeight > 0)
         {
            _contentHeight += CONTENT_BOTTOM_PADDING;
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
      
      public function scrollToItemIndex(param1:int) : void
      {
         var _loc2_:DisplayObject = null;
         var _loc3_:int = 0;
         if(this.items.length > 0)
         {
            _loc2_ = _content.getChildAt(0);
            _loc3_ = param1 * (_loc2_.height + this.gap);
         }
         this.scrollTo(_loc3_);
         this.additionalScrollCheck();
      }
      
      public function removeAll() : void
      {
         this._items.length = 0;
         this._itemsViews.length = 0;
         var _loc1_:Rectangle = _content.scrollRect;
         _loc1_.y = 0;
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

