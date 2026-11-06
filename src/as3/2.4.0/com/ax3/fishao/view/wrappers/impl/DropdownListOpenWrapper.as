package com.ax3.fishao.view.wrappers.impl
{
   import com.ax3.display.wrappers.IItemFactory;
   import com.ax3.fishao.utils.I18n;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   
   public class DropdownListOpenWrapper extends ScrollWithContainerWrapper
   {
      
      private static const MAX_VISIBLE_ELEMENTS_IN_LIST:Number = 5;
      
      private var _maxCountOfVisibleItems:Number;
      
      private var _items:Vector.<String>;
      
      private var _itemRenderFactory:IItemFactory;
      
      private var _displayItems:Array;
      
      private var _onItemClickHandler:Function;
      
      private var _background:DisplayObject;
      
      private var _differenceHeightBackgroundContent:Number;
      
      private var _itemDisplay:DisplayObject;
      
      public function DropdownListOpenWrapper()
      {
         super();
      }
      
      public function get items() : Array
      {
         return this._displayItems;
      }
      
      public function set maxCountOfVisibleItems(param1:Number) : void
      {
         this._maxCountOfVisibleItems = param1;
      }
      
      override public function process(param1:DisplayObject) : void
      {
         super.process(param1);
         this._background = DisplayObjectContainer(_child).getChildByName("bg");
         this.initContent();
         this.removeTempItem();
         this.clearDisplayItems();
         this.maxCountOfVisibleItems = MAX_VISIBLE_ELEMENTS_IN_LIST;
      }
      
      private function initContent() : void
      {
         _content = new Sprite();
         addChild(_content);
         var _loc1_:DisplayObject = (_child as DisplayObjectContainer).getChildByName("rect") as DisplayObject;
         _content.scrollRect = new Rectangle(0,0,_loc1_.width,_loc1_.height);
         _content.x = _loc1_.x;
         _content.y = _loc1_.y;
         _loc1_.parent.removeChild(_loc1_);
         this._differenceHeightBackgroundContent = this._background.height - _loc1_.height;
      }
      
      private function removeTempItem() : void
      {
         this._itemDisplay = (_child as DisplayObjectContainer).getChildByName("item");
         (_child as DisplayObjectContainer).removeChild(this.itemDisplay);
      }
      
      public function create(param1:Vector.<String>) : void
      {
         this._items = param1;
         this.createDisplayItems();
      }
      
      public function set itemFactory(param1:IItemFactory) : void
      {
         this._itemRenderFactory = param1;
      }
      
      private function createDisplayItems() : void
      {
         this.clearDisplayItems();
         var _loc1_:Number = 0;
         while(_loc1_ < this._items.length)
         {
            this._displayItems.push(this.createItem(this._items[_loc1_],_loc1_));
            if(_loc1_ < this._maxCountOfVisibleItems)
            {
               initScrollRectHeight(contentHeight);
               this.resizeBackground(contentHeight);
            }
            _loc1_++;
         }
         updateScroll();
      }
      
      private function resizeBackground(param1:Number) : void
      {
         this._background.height = param1 + this._differenceHeightBackgroundContent;
      }
      
      private function clearDisplayItems() : void
      {
         var _loc1_:DisplayObject = null;
         for each(_loc1_ in this._displayItems)
         {
            _content.removeChild(_loc1_);
         }
         this._displayItems = [];
         _contentHeight = 0;
         initScrollRectHeight(0);
         this.resizeBackground(0);
         scrollTo(0);
      }
      
      private function createItem(param1:String, param2:int) : IDropdownListItem
      {
         var _loc3_:String = null;
         var _loc4_:IDropdownListItem = this.getDropDownListItem();
         (_loc4_ as DisplayObject).y = contentHeight;
         var _loc5_:int = 0;
         while(_loc5_ < (_loc4_ as DisplayObjectContainer).numChildren)
         {
            if(DisplayObjectContainer((_loc4_ as DisplayObjectContainer).getChildAt(_loc5_)).hasOwnProperty("image"))
            {
               for(_loc3_ in I18n.langs)
               {
                  if(I18n.langs[_loc3_] == param1)
                  {
                     FishaoDropdownImageListItem(_loc4_).clear();
                     FishaoDropdownImageListItem(_loc4_).flag = "flag/flag_" + _loc3_ + ".png";
                  }
               }
            }
            else if(DisplayObjectContainer((_loc4_ as DisplayObjectContainer).getChildAt(_loc5_)).hasOwnProperty("icon"))
            {
               DropDownItemWithIcon(_loc4_).icon = param2;
            }
            _loc5_++;
         }
         _loc4_.displayValue = param1;
         _loc4_.index = param2;
         _loc4_.clickHandler = this._onItemClickHandler;
         _contentHeight += (_loc4_ as DisplayObject).height;
         _content.addChild(DisplayObject(_loc4_));
         return _loc4_;
      }
      
      public function set onItemClickHandler(param1:Function) : void
      {
         this._onItemClickHandler = param1;
      }
      
      public function get itemDisplay() : DisplayObject
      {
         return this._itemDisplay;
      }
      
      protected function getDropDownListItem() : IDropdownListItem
      {
         return IDropdownListItem(this._itemRenderFactory.createInstance());
      }
      
      public function getLabelByIndex(param1:int) : String
      {
         return param1 in this._displayItems ? IDropdownListItem(this._displayItems[param1]).displayValue : null;
      }
   }
}

