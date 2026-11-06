package com.ax3.fishao.locations
{
   import com.ax3.fishao.Config;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   
   public class VisibilityManager
   {
      
      private var _scrollRect:Rectangle;
      
      private var _debugSprite:Sprite;
      
      private const BORDER_PADDING:Number = -100;
      
      private var _displayObjects:Vector.<VisibilityItem>;
      
      private var _selftMoveObjects:Vector.<VisibilityItem>;
      
      private var _x:Number;
      
      private var _y:Number;
      
      private var _right:Number;
      
      private var _bottom:Number;
      
      private var _lastScrollRect:Rectangle;
      
      public function VisibilityManager(param1:Sprite)
      {
         super();
         this._debugSprite = param1;
         this._displayObjects = new Vector.<VisibilityItem>();
         this._selftMoveObjects = new Vector.<VisibilityItem>();
      }
      
      public function set scrollRect(param1:Rectangle) : void
      {
         if(param1 != null && this._lastScrollRect != null && int(this._lastScrollRect.x / 50) == int(param1.x / 50) && int(this._lastScrollRect.y / 50) == int(param1.y / 50) && this._lastScrollRect.height == param1.height && this._lastScrollRect.width == param1.width)
         {
            return;
         }
         this._lastScrollRect = param1.clone();
         this._scrollRect = param1.clone();
         if(this._scrollRect.x > this.BORDER_PADDING)
         {
            this._scrollRect.x += this.BORDER_PADDING;
            this._scrollRect.width -= this.BORDER_PADDING;
         }
         if(this._scrollRect.y > this.BORDER_PADDING)
         {
            this._scrollRect.y += this.BORDER_PADDING;
            this._scrollRect.height -= this.BORDER_PADDING;
         }
         this._scrollRect.width -= this.BORDER_PADDING;
         this._scrollRect.height -= this.BORDER_PADDING;
         this._x = this._scrollRect.x;
         this._y = this._scrollRect.y;
         this._right = this._scrollRect.right;
         this._bottom = this._scrollRect.bottom;
         this.updateVisibleObjects();
      }
      
      private function redrawDebug() : void
      {
         if(Config.DEBUG_DRAW_VISIBILITY)
         {
            if(Config.CLEAR_DRAW_VISIBILITY)
            {
               this._debugSprite.graphics.clear();
            }
            this._debugSprite.graphics.lineStyle(3,16711680);
            this._debugSprite.graphics.drawRect(this._x,this._y,this._scrollRect.width,this._scrollRect.height);
         }
      }
      
      private function updateVisibleObjects() : void
      {
         var _loc1_:VisibilityItem = null;
         for each(_loc1_ in this._displayObjects)
         {
            this.updateVisibility(_loc1_);
         }
      }
      
      private function updateVisibility(param1:VisibilityItem) : void
      {
         var _loc2_:DisplayObject = param1.displayObject;
         var _loc3_:Boolean = _loc2_.x + _loc2_.width + param1.offsetX >= this._x && _loc2_.x - _loc2_.width + param1.offsetRight <= this._right && _loc2_.y + _loc2_.height + param1.offsetY >= this._y && _loc2_.y - _loc2_.height + param1.offsetBottom <= this._bottom;
         if(_loc3_)
         {
            if(param1.visible == false)
            {
               param1.visible = true;
               _loc2_.visible = true;
            }
            if(Config.DEBUG_DRAW_VISIBILITY)
            {
               this.drawVisibleDebug(_loc2_,param1,true);
            }
         }
         else
         {
            if(param1.visible == true)
            {
               param1.visible = false;
               _loc2_.visible = false;
            }
            if(Config.DEBUG_DRAW_VISIBILITY)
            {
               this.drawVisibleDebug(_loc2_,param1,false);
            }
         }
      }
      
      private function drawVisibleDebug(param1:DisplayObject, param2:VisibilityItem, param3:Boolean) : void
      {
         this._debugSprite.graphics.lineStyle(1,65280);
         this._debugSprite.graphics.drawRect(param1.x + param2.offsetX,param1.y + param2.offsetY,param1.width + param2.offsetRight,param1.height + param2.offsetBottom);
      }
      
      public function addObjects(param1:Vector.<DisplayObject>, param2:Number = 0, param3:Number = 0, param4:Number = 0, param5:Number = 0, param6:Boolean = false) : void
      {
         var _loc7_:DisplayObject = null;
         for each(_loc7_ in param1)
         {
            this.addObject(_loc7_,param2,param3,param4,param5,param6);
         }
      }
      
      public function addObject(param1:DisplayObject, param2:Number = 0, param3:Number = 0, param4:Number = 0, param5:Number = 0, param6:Boolean = false) : void
      {
         var _loc7_:VisibilityItem = new VisibilityItem();
         _loc7_.displayObject = param1;
         _loc7_.offsetX = param2;
         _loc7_.offsetY = param3;
         _loc7_.offsetRight = param4;
         _loc7_.offsetBottom = param5;
         _loc7_.selfMove = param6;
         this._displayObjects.push(_loc7_);
         if(_loc7_.selfMove)
         {
            this._selftMoveObjects.push(_loc7_);
         }
      }
      
      public function removeObject(param1:DisplayObject) : void
      {
         var _loc2_:VisibilityItem = null;
         var _loc3_:Vector.<VisibilityItem> = new Vector.<VisibilityItem>();
         var _loc4_:VisibilityItem = null;
         for each(_loc2_ in this._displayObjects)
         {
            if(_loc2_.displayObject != param1)
            {
               _loc3_.push(_loc2_);
            }
            else
            {
               _loc4_ = _loc2_;
            }
         }
         this._displayObjects = _loc3_.slice();
         _loc3_ = new Vector.<VisibilityItem>();
         if(_loc4_ != null && this._selftMoveObjects.indexOf(_loc4_) > -1)
         {
            for each(_loc2_ in this._selftMoveObjects)
            {
               if(_loc2_.displayObject != param1)
               {
                  _loc3_.push(_loc2_);
               }
            }
            this._selftMoveObjects = _loc3_.slice();
         }
      }
      
      public function updateSelfMoveObjects() : void
      {
         var _loc1_:VisibilityItem = null;
         if(Config.DEBUG_DRAW_VISIBILITY)
         {
            this.redrawDebug();
         }
         for each(_loc1_ in this._selftMoveObjects)
         {
            this.updateVisibility(_loc1_);
         }
      }
      
      public function destroy() : void
      {
         this._scrollRect = null;
         this._debugSprite = null;
         this._displayObjects = null;
         this._selftMoveObjects = null;
         this._lastScrollRect = null;
      }
   }
}

