package com.ax3.fishao.view.wrappers.impl
{
   import com.ax3.display.IScroller;
   import com.ax3.display.wrappers.IAssetWrapper;
   import com.ax3.utils.math.limit;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.ui.Keyboard;
   
   public class ScrollWrapper extends EventDispatcher implements IAssetWrapper, IScroller
   {
      
      private var _config:ScrollWrapperConfig;
      
      private var _asset:DisplayObject;
      
      private var _bg:DisplayObject;
      
      private var _body:Sprite;
      
      private var _rect:Rectangle;
      
      private var _moveHandler:Function;
      
      private var _placeForSlider:Rectangle;
      
      private var _isScrolling:Boolean = false;
      
      private var _standardBodyPosition:Point = new Point();
      
      private var _maximum:Number;
      
      private var _minimum:Number;
      
      private var _value:Number;
      
      private var _pageCount:int;
      
      private var _scrollContainer:DisplayObjectContainer;
      
      private const SCROLL_DISTANCE:int = 30;
      
      private const MOUSE_WHEEL_COEFF:Number = 0.3333333333333333;
      
      private var _listSize:int;
      
      public function ScrollWrapper(param1:ScrollWrapperConfig)
      {
         super();
         this._config = param1;
      }
      
      public function process(param1:DisplayObject) : void
      {
         var _loc2_:Number = Number(param1[this._config.scaleFieldName]);
         param1[this._config.scaleFieldName] = 1;
         this._asset = param1;
         this._bg = this.getAssetChildByName("bg");
         this._bg.alpha = 0.25;
         this._bg[this._config.scaleFieldName] = _loc2_;
         this._body = Sprite(this.getAssetChildByName("body"));
         this._body.buttonMode = true;
         this._body.useHandCursor = true;
         this._standardBodyPosition.x = this._body.x;
         this._standardBodyPosition.y = this._body.y;
         this._placeForSlider = this.calculateOriginRect(_loc2_);
         this._body.addEventListener(MouseEvent.MOUSE_DOWN,this.onMouseDown);
         this.updateRect();
      }
      
      public function set mouseScrollArea(param1:DisplayObjectContainer) : void
      {
         var _loc2_:DisplayObjectContainer = null;
         _loc2_ = null;
         this._scrollContainer = param1;
         if(this._scrollContainer != null)
         {
            this._scrollContainer.mouseChildren = true;
            this._scrollContainer.mouseEnabled = false;
            _loc2_ = DisplayObjectContainer(this._scrollContainer.getChildByName("mouseScrollArea"));
            if(_loc2_ != null)
            {
               _loc2_.alpha = 0;
               _loc2_.mouseEnabled = true;
               _loc2_.mouseChildren = true;
            }
            if(this._asset.visible == true)
            {
               this._scrollContainer.addEventListener(MouseEvent.MOUSE_OVER,this.onMouseOver);
               this._scrollContainer.addEventListener(MouseEvent.MOUSE_OUT,this.onMouseOut);
            }
         }
      }
      
      private function onMouseOver(param1:MouseEvent) : void
      {
         if(!this._scrollContainer.hasEventListener(MouseEvent.MOUSE_WHEEL))
         {
            this._scrollContainer.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
            this._scrollContainer.addEventListener(KeyboardEvent.KEY_DOWN,this.onKeyPressed);
         }
         this._scrollContainer.stage.stageFocusRect = false;
         this._scrollContainer.stage.focus = this._scrollContainer;
      }
      
      private function onMouseOut(param1:MouseEvent) : void
      {
         if(this._scrollContainer.hasEventListener(MouseEvent.MOUSE_WHEEL))
         {
            this._scrollContainer.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
            this._scrollContainer.removeEventListener(KeyboardEvent.KEY_DOWN,this.onKeyPressed);
         }
      }
      
      private function onMouseWheel(param1:MouseEvent) : void
      {
         var _loc2_:Number = NaN;
         _loc2_ = -param1.delta * this.MOUSE_WHEEL_COEFF * this.SCROLL_DISTANCE / this.listSize;
         this.scrollList(false,_loc2_);
      }
      
      private function onKeyPressed(param1:KeyboardEvent) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:int = 0;
         switch(param1.keyCode)
         {
            case Keyboard.UP:
               _loc3_ = -1;
               break;
            case Keyboard.DOWN:
               _loc3_ = 1;
         }
         _loc2_ = _loc3_ * this.SCROLL_DISTANCE / this.listSize;
         this.scrollList(false,_loc2_);
      }
      
      private function scrollList(param1:Boolean = true, param2:Number = 0) : void
      {
         var _loc3_:Number = this.percent;
         if(isNaN(_loc3_))
         {
            _loc3_ = 0;
         }
         if(this.listSize <= 0)
         {
            return;
         }
         _loc3_ += param2;
         _loc3_ = limit(_loc3_,0,1);
         if(this._moveHandler != null)
         {
            this._moveHandler(_loc3_);
         }
         this.percent = _loc3_;
      }
      
      public function set listSize(param1:int) : void
      {
         this._listSize = param1;
      }
      
      public function get listSize() : int
      {
         return this._listSize;
      }
      
      private function calculateOriginRect(param1:Number) : Rectangle
      {
         if(this._config.direction == ScrollWrapperConfig.VERTICAL_SCROLL_DIRECTION)
         {
            return new Rectangle(this._body.x,this._body.y,0,this.getSizePlaceForSliderOnBackground(this._body.y,this._body.y,this._asset.height));
         }
         if(this._config.direction == ScrollWrapperConfig.HORIZONTAL_SCROLL_DIRECTION)
         {
            return new Rectangle(this._body.x,this._body.y,this.getSizePlaceForSliderOnBackground(this._body.x,this._body.x,this._asset.width),0);
         }
         return new Rectangle();
      }
      
      private function getSizePlaceForSliderOnBackground(param1:Number, param2:Number, param3:Number) : Number
      {
         var _loc4_:Number = param1;
         var _loc5_:Number = param3 - param2;
         return _loc5_ - _loc4_;
      }
      
      private function updateRect() : void
      {
         if(this._config.direction == ScrollWrapperConfig.VERTICAL_SCROLL_DIRECTION)
         {
            this._rect = new Rectangle(this._placeForSlider.x,this._placeForSlider.y,0,Math.floor(this._placeForSlider.height - this._body.height));
         }
         else if(this._config.direction == ScrollWrapperConfig.HORIZONTAL_SCROLL_DIRECTION)
         {
            this._rect = new Rectangle(this._placeForSlider.x,this._placeForSlider.y,Math.floor(this._placeForSlider.width - this._body.width),0);
         }
      }
      
      private function getAssetChildByName(param1:String) : DisplayObject
      {
         return (this._asset as DisplayObjectContainer).getChildByName(param1);
      }
      
      private function onMouseDown(param1:MouseEvent) : void
      {
         this._isScrolling = true;
         this._body.stage.addEventListener(Event.MOUSE_LEAVE,this.onMouseLeave);
         this._body.stage.addEventListener(MouseEvent.MOUSE_UP,this.onMouseUp);
         this._body.stage.addEventListener(MouseEvent.MOUSE_MOVE,this.onMouseMove);
         this._body.startDrag(false,this._rect);
      }
      
      private function onMouseLeave(param1:Event) : void
      {
         this.stopDrag();
      }
      
      private function onMouseUp(param1:MouseEvent) : void
      {
         this.stopDrag();
      }
      
      private function stopDrag() : void
      {
         this._isScrolling = false;
         this._body.stopDrag();
         this._body.stage.removeEventListener(Event.MOUSE_LEAVE,this.onMouseLeave);
         this._body.stage.removeEventListener(MouseEvent.MOUSE_UP,this.onMouseUp);
         this._body.stage.removeEventListener(MouseEvent.MOUSE_MOVE,this.onMouseMove);
      }
      
      private function onMouseMove(param1:MouseEvent = null) : void
      {
         var _loc2_:Number = this.percent;
         if(isNaN(_loc2_))
         {
            _loc2_ = 0;
         }
         if(this._moveHandler != null)
         {
            this._moveHandler(_loc2_);
         }
         this.percent = _loc2_;
         this._value = (this._maximum - this._minimum) * _loc2_ + this._minimum;
         dispatchEvent(new Event(Event.CHANGE));
      }
      
      public function set moveHandler(param1:Function) : void
      {
         this._moveHandler = param1;
      }
      
      public function set percent(param1:Number) : void
      {
         if(this._config.direction == ScrollWrapperConfig.VERTICAL_SCROLL_DIRECTION)
         {
            this._body.y = this._rect.y + this._rect.height * param1;
         }
         else if(this._config.direction == ScrollWrapperConfig.HORIZONTAL_SCROLL_DIRECTION)
         {
            this._body.x = this._rect.x + this._rect.width * param1;
         }
      }
      
      public function get percent() : Number
      {
         if(this._config.direction == ScrollWrapperConfig.VERTICAL_SCROLL_DIRECTION)
         {
            return (this._body.y - this._rect.y) / this._rect.height;
         }
         if(this._config.direction == ScrollWrapperConfig.HORIZONTAL_SCROLL_DIRECTION)
         {
            return (this._body.x - this._rect.x) / this._rect.width;
         }
         return 0;
      }
      
      public function setHandlerSize(param1:Number, param2:Number) : void
      {
         param1 = limit(param1,0,1);
         this.updateRect();
         if(this._config.direction == ScrollWrapperConfig.VERTICAL_SCROLL_DIRECTION)
         {
            this._body.height = Math.max(this._placeForSlider.height * param1,param2);
         }
         else if(this._config.direction == ScrollWrapperConfig.HORIZONTAL_SCROLL_DIRECTION)
         {
            this._body.width = Math.max(this._placeForSlider.width * param1,param2);
         }
         this.updateRect();
      }
      
      public function isScrolling() : Boolean
      {
         return this._isScrolling;
      }
      
      public function isScrollObject(param1:Object) : Boolean
      {
         return param1 == this._asset || (this._asset as DisplayObjectContainer).contains(DisplayObject(param1));
      }
      
      public function reset() : void
      {
         this._body.x = this._standardBodyPosition.x;
         this._body.y = this._standardBodyPosition.y;
         this.onMouseMove();
      }
      
      public function set visible(param1:Boolean) : void
      {
         this._asset.visible = param1;
      }
      
      public function set maximum(param1:Number) : void
      {
         this._maximum = param1;
      }
      
      public function get maximum() : Number
      {
         return this._maximum;
      }
      
      public function set minimum(param1:Number) : void
      {
         this._minimum = param1;
      }
      
      public function set value(param1:Number) : void
      {
         this._value = limit(param1,this._minimum,this._maximum);
         this.updateValues();
      }
      
      public function get value() : Number
      {
         return this._value;
      }
      
      public function set pageCount(param1:int) : void
      {
         this._pageCount = param1;
         this.updateValues();
      }
      
      private function updateValues() : void
      {
         if(this._pageCount > 0)
         {
            this.setHandlerSize(1 / this._pageCount,0);
         }
         this.percent = this._value / (this._maximum - this._minimum);
      }
      
      public function isHorizontal() : Boolean
      {
         return this._config.direction == ScrollWrapperConfig.HORIZONTAL_SCROLL_DIRECTION;
      }
      
      public function set height(param1:Number) : void
      {
         this._bg.height = param1;
         this._placeForSlider = this.calculateOriginRect(1);
      }
   }
}

