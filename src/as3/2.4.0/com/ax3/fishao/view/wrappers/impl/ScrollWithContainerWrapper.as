package com.ax3.fishao.view.wrappers.impl
{
   import com.ax3.display.wrappers.IAssetWrapper;
   import com.ax3.display.wrappers.ShiftWrapper;
   import com.ax3.utils.math.limit;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   import flash.ui.Keyboard;
   
   public class ScrollWithContainerWrapper extends ShiftWrapper implements IAssetWrapper
   {
      
      protected var _scroll:ScrollWrapper;
      
      protected var _content:Sprite;
      
      protected var _contentHeight:Number;
      
      private const SCROLL_DISTANCE:Number = 30;
      
      private const MOUSE_WHEEL_COEFF:Number = 0.3333333333333333;
      
      protected var _mouseScrollArea:DisplayObjectContainer;
      
      private var _sigma:Number = 0.002;
      
      public function ScrollWithContainerWrapper()
      {
         super();
      }
      
      protected function get contentHeight() : Number
      {
         return this._contentHeight;
      }
      
      override public function process(param1:DisplayObject) : void
      {
         super.process(param1);
         this._mouseScrollArea = DisplayObjectContainer(DisplayObjectContainer(param1).getChildByName("mouseScrollArea"));
         if(this._mouseScrollArea != null)
         {
            this._mouseScrollArea.alpha = 0;
            this._mouseScrollArea.mouseChildren = true;
            this._mouseScrollArea.mouseEnabled = true;
         }
         this.addEventListener(MouseEvent.MOUSE_OVER,this.onMouseOver);
         this.addEventListener(MouseEvent.MOUSE_OUT,this.onMouseOut);
         addChild(_child);
         this.initScroll();
      }
      
      protected function initScroll() : void
      {
         this._scroll = new VScrollWrapper();
         this._scroll.process((_child as DisplayObjectContainer).getChildByName("scroll"));
         this._scroll.moveHandler = this.scrollMoveHandler;
      }
      
      private function onMouseOver(param1:MouseEvent) : void
      {
         if(!this.hasEventListener(MouseEvent.MOUSE_WHEEL))
         {
            this.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
            this.addEventListener(KeyboardEvent.KEY_DOWN,this.onKeyPressed);
         }
         this.stage.stageFocusRect = false;
         this.stage.focus = this;
      }
      
      private function onMouseOut(param1:MouseEvent) : void
      {
         if(this.hasEventListener(MouseEvent.MOUSE_WHEEL))
         {
            this.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
            this.removeEventListener(KeyboardEvent.KEY_DOWN,this.onKeyPressed);
         }
      }
      
      private function onMouseWheel(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = GameSwf.instance.managerTutorial == null || GameSwf.instance.managerTutorial != null && GameSwf.instance.managerTutorial.isTutorialCommonComplete;
         if(!_loc2_)
         {
            return;
         }
         this.scrollTo(this._content.scrollRect.y - param1.delta * this.MOUSE_WHEEL_COEFF * this.SCROLL_DISTANCE);
         this.additionalScrollCheck();
      }
      
      private function onKeyPressed(param1:KeyboardEvent) : void
      {
         var _loc2_:int = 0;
         switch(param1.keyCode)
         {
            case Keyboard.UP:
               _loc2_ = -1;
               break;
            case Keyboard.DOWN:
               _loc2_ = 1;
         }
         this.scrollTo(this._content.scrollRect.y + _loc2_ * this.SCROLL_DISTANCE);
         this.additionalScrollCheck();
      }
      
      protected function get distanceForScrolling() : Number
      {
         return this.contentHeight - this._content.scrollRect.height;
      }
      
      public function scrollMoveHandler(param1:Number) : void
      {
         if(param1 < this._sigma)
         {
            param1 = 0;
         }
         if(param1 > 1 - this._sigma)
         {
            param1 = 1;
         }
         var _loc2_:int = int(this.distanceForScrolling * param1);
         this.scrollTo(_loc2_);
      }
      
      protected function scrollTo(param1:int) : void
      {
         var _loc2_:Rectangle = null;
         param1 = limit(param1,0,this.distanceForScrolling);
         if(param1 >= 0 && param1 <= this.distanceForScrolling)
         {
            _loc2_ = this._content.scrollRect;
            _loc2_.y = param1;
            this._content.scrollRect = _loc2_;
         }
      }
      
      protected function additionalScrollCheck() : void
      {
         var _loc1_:int = 0;
         var _loc2_:Number = this._content.scrollRect.y / this.distanceForScrolling;
         if(_loc2_ < this._sigma)
         {
            _loc2_ = 0;
         }
         if(_loc2_ > 1 - this._sigma)
         {
            _loc2_ = 1;
         }
         if(_loc2_ == 0 || _loc2_ == 1)
         {
            _loc1_ = int(this.distanceForScrolling * _loc2_);
            this.scrollTo(_loc1_);
         }
         this._scroll.percent = _loc2_;
      }
      
      override public function set visible(param1:Boolean) : void
      {
         super.visible = param1;
      }
      
      protected function initScrollRectHeight(param1:Number) : void
      {
         var _loc2_:Rectangle = this._content.scrollRect;
         _loc2_.height = param1;
         this._content.scrollRect = _loc2_;
      }
      
      public function updateScroll() : void
      {
         this._scroll.percent = 0;
         var _loc1_:Number = this.distanceForScrolling;
         if(_loc1_ > 1)
         {
            this._scroll.visible = true;
            this._scroll.setHandlerSize(this._content.scrollRect.height / this._contentHeight,20);
         }
         else
         {
            this._scroll.visible = false;
         }
      }
      
      public function isScrolling() : Boolean
      {
         return this._scroll.isScrolling();
      }
      
      public function isScrollObject(param1:Object) : Boolean
      {
         return this._scroll.isScrollObject(param1);
      }
   }
}

