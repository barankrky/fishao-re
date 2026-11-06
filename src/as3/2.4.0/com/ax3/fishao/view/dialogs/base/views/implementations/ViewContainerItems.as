package com.ax3.fishao.view.dialogs.base.views.implementations
{
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces.IController;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.geom.Point;
   
   public class ViewContainerItems extends ViewBase
   {
      
      private var _source:DisplayObjectContainer = new Sprite();
      
      private var _items:Array;
      
      private var _size:Point;
      
      private var _offset:Point;
      
      private var _gap:Point;
      
      private var _additionalSize:Point;
      
      public function ViewContainerItems(param1:IController)
      {
         super(param1,this._source);
         this.init();
      }
      
      public function set size(param1:Point) : void
      {
         if(this._size == param1)
         {
            return;
         }
         this._size = param1;
      }
      
      public function get itemsOnPage() : int
      {
         return int(this._size.x * this._size.y);
      }
      
      public function set items(param1:Array) : void
      {
         var _loc2_:DisplayObject = null;
         if(this._items == param1)
         {
            return;
         }
         Debug.assert(param1.length <= this._size.x * this._size.y,"Items count is too much for selected ViewContainer parameters. Max: " + this._size.x * this._size.y + "; Try to insert: " + this._items.length);
         this._items = param1;
         this._source.removeChildren();
         for each(_loc2_ in this._items)
         {
            this._source.addChild(_loc2_);
         }
         this.placeViews(false);
      }
      
      public function get itemsCount() : int
      {
         return this._items.length;
      }
      
      public function set offset(param1:Point) : void
      {
         this._offset = param1;
      }
      
      public function get offset() : Point
      {
         return this._offset;
      }
      
      public function set gap(param1:Point) : void
      {
         this._gap = param1;
      }
      
      public function set additionalSize(param1:Point) : void
      {
         this._additionalSize = param1;
      }
      
      public function get additionalSize() : Point
      {
         return this._additionalSize;
      }
      
      public function get width() : Number
      {
         return this._source.width + this._additionalSize.x;
      }
      
      public function get height() : Number
      {
         return this._source.height + this._additionalSize.y;
      }
      
      private function init() : void
      {
         this._size = new Point();
         this._offset = new Point();
         this._gap = new Point();
         this._additionalSize = new Point();
         this._items = [];
      }
      
      public function getItemByIndexPosition(param1:int) : Point
      {
         var _loc2_:Point = null;
         _loc2_ = new Point();
         _loc2_.x = (this._items[param1] as DisplayObject).x;
         _loc2_.y = (this._items[param1] as DisplayObject).y;
         return _loc2_;
      }
      
      override public function placeViews(param1:Boolean) : void
      {
         var _loc2_:DisplayObject = null;
         super.placeViews(param1);
         var _loc3_:int = 0;
         while(_loc3_ < this._items.length)
         {
            _loc2_ = this._items[_loc3_] as DisplayObject;
            _loc2_.x = this._offset.x + (_loc2_.width + this._gap.x) * (_loc3_ % this._size.x);
            _loc2_.y = this._offset.y + (_loc2_.height + this._gap.y) * int(_loc3_ / this._size.x);
            _loc3_++;
         }
      }
   }
}

