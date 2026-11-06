package com.ax3.fishao.view.wrappers.impl
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
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
         param1[this._config.scaleFieldName] = -942725141 ^ 0x1BE25CF6 ^ 0x129B17BE ^ -826905438;
         this._asset = param1;
         this._bg = this.getAssetChildByName(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ჅၭၔႻჳ၏ႚဥၟႫ၆ၶ","ჹ჏ၚၘ჻ჾეဖှ၀ဒკႠႨိလ"));
         this._bg.alpha = _39d7d82359bf8046fe8ef6c4._ed4a735c5a6981f99dda5b73("挭挟揥挫捆捝掲捆揆揼挘揥掵捳掌捕捹挘挗掿揙挦揘揧","揳挭掘揌提捚掩揇挍掺挬捧捀掱捷揄");
         this._bg[this._config.scaleFieldName] = _loc2_;
         this._body = Sprite(this.getAssetChildByName(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劇勻刀剞刢勳制刣刓劧勥刂劦勺勰刞","勑勹勦刟刅勒劳劆劓劇刊刉剟务劾劮")));
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
            _loc2_ = DisplayObjectContainer(this._scrollContainer.getChildByName(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("჊ၘჱ჎჏ၜდბჵ၇ဦဂႴၗႦႯნႤဲြဃၔ჻შ჻კဟၦၤჟဟၷღၺლკჷၳ","ჵႫဩჶာდ၇ၯျჀႲႃၩၟဧဖ")));
            if(_loc2_ != null)
            {
               _loc2_.alpha = 0x6A2BA21E ^ 0x4BF5EC48 ^ -1646097234 ^ -1136868616;
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
         var _loc2_:int = 0x593E578D ^ 0x3EA53BFA ^ 0x47ED9F03 ^ 0x6D19DC98;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x6F2FFFEF ^ 0x4308E871 ^ -40935984 ^ -1664653917))
            {
               case 0:
                  this._scrollContainer.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
                  this._scrollContainer.addEventListener(KeyboardEvent.KEY_DOWN,this.onKeyPressed);
                  _loc2_ = -1094177746 ^ 0x240C8142 ^ 0x6BF4A3B5 ^ -1134616266;
                  break;
               case 1:
                  if(!this._scrollContainer.hasEventListener(MouseEvent.MOUSE_WHEEL))
                  {
                     _loc2_ = -1715630308 ^ -1352390604 ^ -1922772002 ^ -153986277;
                  }
                  else
                  {
                     _loc2_ = -180509415 ^ 0x5B67A0D6 ^ 0x5C91E0E9 ^ -1079719223;
                  }
                  break;
               case 2:
                  this._scrollContainer.stage.stageFocusRect = false;
                  this._scrollContainer.stage.focus = this._scrollContainer;
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function onMouseOut(param1:MouseEvent) : void
      {
         var _loc2_:int = -754365834 ^ -1123938630 ^ 0x2E9A9596 ^ -1358771661;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x4C357273 ^ -275955105 ^ -1045640119 ^ -1920473331))
            {
               case 0:
                  return;
               case 1:
                  if(this._scrollContainer.hasEventListener(MouseEvent.MOUSE_WHEEL))
                  {
                     _loc2_ = 0x3C07F7F7 ^ 0x199ECCC8 ^ -1509000944 ^ 0x6C045945;
                  }
                  else
                  {
                     _loc2_ = 0x2F596B95 ^ 0x2C962641 ^ -2096321346 ^ 0x6F50FA02;
                  }
                  break;
               case 2:
                  this._scrollContainer.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
                  this._scrollContainer.removeEventListener(KeyboardEvent.KEY_DOWN,this.onKeyPressed);
                  _loc2_ = 0x706D42C4 ^ -1794133569 ^ 0x730D64F0 ^ 0x79FC8CE3;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
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
         var _loc3_:int = 0x3F1718A1 ^ -1038953766 ^ 0x139C0C52 ^ -291912151;
         switch(param1.keyCode)
         {
            case Keyboard.UP:
               §§push(-117067340 ^ 0x2CB42DBD ^ 0x2B52E70D ^ -18646268);
               break;
            case Keyboard.DOWN:
               §§push(-918035088 ^ -969822556 ^ 0x5A90EAEF ^ 0x55E6A13A);
               break;
            default:
               §§push(0x3B1F2628 ^ 0x6BDB2EC9 ^ 0x147B020B ^ 0x44BF0AE8);
         }
         switch(§§pop())
         {
            case 0:
               _loc3_ = 0x629D9493 ^ 0x223E2ED1 ^ 0x5DEEFADE ^ -491602077;
               break;
            case 1:
               _loc3_ = 0x043D6916 ^ 0x1865ADC5 ^ 0x3B4FCBC8 ^ 0x27170F1A;
         }
         _loc2_ = _loc3_ * this.SCROLL_DISTANCE / this.listSize;
         this.scrollList(false,_loc2_);
      }
      
      private function scrollList(param1:Boolean = true, param2:Number = 0) : void
      {
         var _loc3_:Number = this.percent;
         if(isNaN(_loc3_))
         {
            _loc3_ = -1298243423 ^ -608709504 ^ 0x13FF46D1 ^ 0x7AD6F2F0;
         }
         if(this.listSize <= (0x55937DAF ^ 0x379658D7 ^ -1224220939 ^ -721224819))
         {
            return;
         }
         _loc3_ += param2;
         _loc3_ = limit(_loc3_,-375648620 ^ 0x18A569A8 ^ 0x362695DD ^ -954207519,-201209893 ^ 0x3D02A676 ^ -681932476 ^ 0x1E59E8E8);
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
         var _loc2_:int = -1152065189 ^ 0x7055350D ^ 0x3C6166B2 ^ 0x481E9345;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (-966415059 ^ 0x0E34D0FE ^ -1330099373 ^ -946399454))
            {
               case 0:
                  return new Rectangle();
               case 1:
                  return new Rectangle(this._body.x,this._body.y,this.getSizePlaceForSliderOnBackground(this._body.x,this._body.x,this._asset.width),-1557862915 ^ -1847747033 ^ 0x0C1A861A ^ 0x3EE3FDC0);
               case 2:
                  return new Rectangle(this._body.x,this._body.y,0x14C4C647 ^ -1704308869 ^ 0x09F145A2 ^ -2023764834,this.getSizePlaceForSliderOnBackground(this._body.y,this._body.y,this._asset.height));
               case 3:
                  if(this._config.direction == ScrollWrapperConfig.VERTICAL_SCROLL_DIRECTION)
                  {
                     _loc2_ = 0x34BBFC34 ^ -1746525615 ^ 0x2C06ABA4 ^ 0x30255461;
                  }
                  else
                  {
                     _loc2_ = 0x66A3898A ^ 0x020F6102 ^ -870506187 ^ 0x17CFE81B;
                  }
                  break;
               case 4:
                  if(this._config.direction == ScrollWrapperConfig.HORIZONTAL_SCROLL_DIRECTION)
                  {
                     _loc2_ = 0x5E9B8901 ^ 0x1D2B07C7 ^ 0x546B6E64 ^ -1465532159;
                  }
                  else
                  {
                     _loc2_ = -858017488 ^ -829118788 ^ -718823329 ^ 0x68169671;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function getSizePlaceForSliderOnBackground(param1:Number, param2:Number, param3:Number) : Number
      {
         var _loc4_:Number = param1;
         var _loc5_:Number = param3 - param2;
         return _loc5_ - _loc4_;
      }
      
      private function updateRect() : void
      {
         var _loc1_:int = -339969265 ^ -726669768 ^ -1067215394 ^ 0x34BBD729;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (-1218753667 ^ 0x61D2E48B ^ 0x3B45157D ^ 0x26076548))
            {
               case 0:
                  if(this._config.direction == ScrollWrapperConfig.HORIZONTAL_SCROLL_DIRECTION)
                  {
                     _loc1_ = 0x69538836 ^ 0x3DF95FB0 ^ -399364650 ^ 0x77532591;
                  }
                  else
                  {
                     _loc1_ = 0x6E404D03 ^ 0x17289239 ^ 0x15E95FF5 ^ -1488298227;
                  }
                  break;
               case 1:
                  return;
               case 2:
                  this._rect = new Rectangle(this._placeForSlider.x,this._placeForSlider.y,Math.floor(this._placeForSlider.width - this._body.width),-156348839 ^ -333517984 ^ 0x47D18448 ^ 0x5D612171);
                  _loc1_ = -1112921549 ^ -98521417 ^ 0x7713EC8D ^ -78465077;
                  break;
               case 3:
                  if(this._config.direction == ScrollWrapperConfig.VERTICAL_SCROLL_DIRECTION)
                  {
                     _loc1_ = 0x48120901 ^ -1128245469 ^ -308382698 ^ -762841613;
                  }
                  else
                  {
                     _loc1_ = 0x5B47EF1B ^ -1901167180 ^ -1409234644 ^ -1306360768;
                  }
                  break;
               case 4:
                  this._rect = new Rectangle(this._placeForSlider.x,this._placeForSlider.y,-412412971 ^ 0x0A81DC4D ^ -2016959337 ^ 0x6A2D6B0F,Math.floor(this._placeForSlider.height - this._body.height));
                  _loc1_ = -1247306258 ^ -1998860642 ^ 0x2C31400D ^ -628699969;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
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
            _loc2_ = -1666902654 ^ 0x5BD09033 ^ 0x672EB94E ^ -1604633345;
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
         var _loc2_:int = -390898907 ^ 0x5946CD00 ^ 0x66A8B665 ^ -837194470;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (-619549589 ^ 0x644873B0 ^ -1842953386 ^ 0x343891D6))
            {
               case 0:
                  if(this._config.direction == ScrollWrapperConfig.HORIZONTAL_SCROLL_DIRECTION)
                  {
                     _loc2_ = 0x09413164 ^ 0x1AE49915 ^ 0x4842CCE9 ^ 0x42A329C1;
                  }
                  else
                  {
                     _loc2_ = 0x1BC5F8E7 ^ 0x440E29F2 ^ 0x4CAEACEC ^ 0x0A2130A6;
                  }
                  break;
               case 1:
                  if(this._config.direction == ScrollWrapperConfig.VERTICAL_SCROLL_DIRECTION)
                  {
                     _loc2_ = -251673411 ^ 0x41EBC749 ^ 0x0304351E ^ -1420526670;
                  }
                  else
                  {
                     _loc2_ = 0x3168CC54 ^ 0x3DE2FF80 ^ 0x55E20AE4 ^ 0x402C746B;
                  }
                  break;
               case 2:
                  this._body.x = this._rect.x + this._rect.width * param1;
                  _loc2_ = -2099932266 ^ -706394841 ^ 0x13D4F3A5 ^ 0x5DA0684B;
                  break;
               case 3:
                  this._body.y = this._rect.y + this._rect.height * param1;
                  _loc2_ = 0x27FCA3DC ^ 0x09F8112C ^ -1647515591 ^ -1433659498;
                  break;
               case 4:
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function get percent() : Number
      {
         var _loc1_:int = -1751172999 ^ 0x480114CD ^ -1248679668 ^ 0x7E40C1DC;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (-1608071247 ^ 0x5EC80E48 ^ 0x3E9D07F6 ^ -734033303))
            {
               case 0:
                  return -1867903391 ^ -2007041876 ^ 0x1D44E1CB ^ 0x05B01706;
               case 1:
                  return (this._body.x - this._rect.x) / this._rect.width;
               case 2:
                  if(this._config.direction == ScrollWrapperConfig.VERTICAL_SCROLL_DIRECTION)
                  {
                     _loc1_ = 0x3C93F6E5 ^ -1246177077 ^ -18783141 ^ 0x63860E17;
                  }
                  else
                  {
                     _loc1_ = -142831238 ^ -1737530636 ^ -662357163 ^ -1545958210;
                  }
                  break;
               case 3:
                  if(this._config.direction == ScrollWrapperConfig.HORIZONTAL_SCROLL_DIRECTION)
                  {
                     _loc1_ = 0x54F580DE ^ 0x3A4D221C ^ -1485318385 ^ -578604630;
                  }
                  else
                  {
                     _loc1_ = 0x25BC8FB6 ^ 0x2285A7BB ^ 0x12566316 ^ 0x01230F7D;
                  }
                  break;
               case 4:
                  return (this._body.y - this._rect.y) / this._rect.height;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function setHandlerSize(param1:Number, param2:Number) : void
      {
         param1 = limit(param1,0x34B6A910 ^ 0x65BA7B0A ^ -1285928979 ^ -497641993,-69188310 ^ 0x52331F53 ^ 0x07145E69 ^ -1362689007);
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
         var _loc1_:int = 0x747ED363 ^ -1515977463 ^ 0x0A95198C ^ -1115942988;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (0x6F289C74 ^ 0x723AA96D ^ -987458648 ^ -1106942238))
            {
               case 0:
                  this.setHandlerSize((0x5C7331EA ^ -1275130726 ^ -590431732 ^ 0x3342877D) / this._pageCount,-857379899 ^ -1568201450 ^ 0x4D308B5E ^ 0x2352C58D);
                  _loc1_ = 0x24F233DD ^ 0x20931217 ^ 0x0C477E6A ^ 0x6E159FF1;
                  break;
               case 1:
                  if(this._pageCount > (0x0E6D34CA ^ -560907113 ^ -348674748 ^ 0x3BCBAD19))
                  {
                     _loc1_ = 0x0D1E4D25 ^ -1613385724 ^ 0x3A0E5415 ^ -822711961;
                  }
                  else
                  {
                     _loc1_ = 0x6A529E7B ^ -1942005756 ^ -315497867 ^ 0x6D6FE45B;
                  }
                  break;
               case 2:
                  this.percent = this._value / (this._maximum - this._minimum);
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function isHorizontal() : Boolean
      {
         return this._config.direction == ScrollWrapperConfig.HORIZONTAL_SCROLL_DIRECTION;
      }
      
      public function set height(param1:Number) : void
      {
         this._bg.height = param1;
         this._placeForSlider = this.calculateOriginRect(-1802715808 ^ 0x27F18557 ^ 0x5DB2D438 ^ -288363506);
      }
   }
}

