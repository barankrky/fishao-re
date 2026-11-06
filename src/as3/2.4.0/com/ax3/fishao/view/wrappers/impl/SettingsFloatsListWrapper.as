package com.ax3.fishao.view.wrappers.impl
{
   import com.ax3.utils.removeAllChildren;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   
   public class SettingsFloatsListWrapper extends ScrollHWithContainerWrapper
   {
      
      public static const ACTIVATE_WRAPPER:String = "activateScrollListWrapper";
      
      private var _asset:DisplayObjectContainer;
      
      private var _items:Vector.<Object> = new Vector.<Object>();
      
      private var _rect:DisplayObject;
      
      private var _scrollAsset:DisplayObject;
      
      public var gap:int = 6;
      
      public function SettingsFloatsListWrapper()
      {
         super();
      }
      
      override public function process(param1:DisplayObject) : void
      {
         super.process(param1);
         this._asset = DisplayObjectContainer(param1);
         var _loc2_:DisplayObject = this._asset.getChildByName("bg");
         this._rect = this._asset.getChildByName("rect");
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
      
      public function get items() : Vector.<Object>
      {
         return this._items;
      }
      
      public function setItemList(param1:Vector.<FishaoOptButtonWrapper>) : void
      {
         var _loc2_:FishaoOptButtonWrapper = null;
         this._items = new Vector.<Object>();
         _contentWidth = this.gap;
         var _loc3_:uint = 0;
         while(_loc3_ < param1.length)
         {
            this._items.push(param1[_loc3_]);
            _loc2_ = param1[_loc3_];
            _loc2_.x = _contentWidth;
            _loc2_.y = this.gap;
            _content.addChild(_loc2_);
            _contentWidth += _loc2_.width + this.gap;
            _loc3_++;
         }
         updateScroll();
      }
   }
}

