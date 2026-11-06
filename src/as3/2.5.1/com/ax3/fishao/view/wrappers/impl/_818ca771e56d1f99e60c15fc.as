package com.ax3.fishao.view.wrappers.impl
{
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
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
   
   public class _818ca771e56d1f99e60c15fc extends ShiftWrapper implements IAssetWrapper
   {
      
      protected var _scroll:ScrollWrapper;
      
      protected var _content:Sprite;
      
      protected var _contentHeight:Number;
      
      private const _9ff9abb784a32f48e102ff7d:Number = 30;
      
      private const _d16c1f2865138f5cc3b9ac82:Number = 0.3333333333333333;
      
      protected var _mouseScrollArea:DisplayObjectContainer;
      
      private var _a795f3e29a05c003d29b8d59:Number = 0.002;
      
      public function _818ca771e56d1f99e60c15fc()
      {
         super();
      }
      
      protected function get contentHeight() : Number
      {
         return this._contentHeight;
      }
      
      override public function process(param1:DisplayObject) : void
      {
         var _loc2_:int = -273335002 ^ 0x694B2409 ^ -1540458069 ^ 0x0FDBB84F;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (-450348131 ^ 0x160AAD54 ^ -333171631 ^ 0x320D7A52))
            {
               case 0:
                  this.addEventListener(MouseEvent.MOUSE_OVER,this._6f240d3a9baf5fe203098fde);
                  this.addEventListener(MouseEvent.MOUSE_OUT,this._dd5bd18bac839f61c45776e0);
                  addChild(_child);
                  this._22bd16959dba2e323cc80b96();
                  return;
               case 1:
                  super.process(param1);
                  this._mouseScrollArea = DisplayObjectContainer(DisplayObjectContainer(param1).getChildByName(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("၁ဝၼჀဈჰსქჳპႫ၂ိჷ၈ხဉႷხဎ႓ဦი჈ჭမ႓ထၥ၆თဧဗ჻ဤპ၉ဢ","ငသ၏ၗၼၘნၭ჊Ⴐ၌ဲၷ၌သფ")));
                  if(this._mouseScrollArea != null)
                  {
                     _loc2_ = -1916239434 ^ 0x020DBFBE ^ 0x38CEF363 ^ -1711270493;
                  }
                  else
                  {
                     _loc2_ = 0x5E3149D6 ^ 0x5C558DEB ^ -313295571 ^ -1036230182;
                  }
                  break;
               case 2:
                  this._mouseScrollArea.alpha = -488516361 ^ 0x1592EDD9 ^ -1882313296 ^ 0x78BD149E;
                  this._mouseScrollArea.mouseChildren = true;
                  this._mouseScrollArea.mouseEnabled = true;
                  _loc2_ = -139159229 ^ -1017504212 ^ -548194028 ^ -961124687;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      protected function _22bd16959dba2e323cc80b96() : void
      {
         this._scroll = new _8964e753fb9dbef2411af0bf();
         this._scroll.process((_child as DisplayObjectContainer).getChildByName(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ဆၐႎ၊ႊႧွ႟ႳဣၝႵფဢေၒ႔ၘ၍Ⴖ","ဟႋႨဥႆြწ့ဗ႔္၍ჿၬთ႘")));
         this._scroll.moveHandler = this._a6ae8c4816dbd7123227833f;
      }
      
      private function _6f240d3a9baf5fe203098fde(param1:MouseEvent) : void
      {
         var _loc2_:int = -1754563946 ^ 0x0673FEAE ^ 0x58DDC7AA ^ 0x59144D60;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x696B7823 ^ -602047770 ^ -852894196 ^ -393293253))
            {
               case 0:
                  if(!this.hasEventListener(MouseEvent.MOUSE_WHEEL))
                  {
                     _loc2_ = -928614071 ^ 0x7374CFEE ^ 0x275E2D6E ^ 0x0C5D953A;
                  }
                  else
                  {
                     _loc2_ = -1979078091 ^ -1641494614 ^ 0x1A2F853D ^ -1629493678;
                  }
                  break;
               case 1:
                  this.addEventListener(MouseEvent.MOUSE_WHEEL,this._782323aeef3e2d253b6180b4);
                  this.addEventListener(KeyboardEvent.KEY_DOWN,this._a49a34de98dda333059b95c6);
                  _loc2_ = -2032974506 ^ -1817041329 ^ 0x740C97E3 ^ -239273462;
                  break;
               case 2:
                  this.stage.stageFocusRect = false;
                  this.stage.focus = this;
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function _dd5bd18bac839f61c45776e0(param1:MouseEvent) : void
      {
         var _loc2_:int = -1668804660 ^ 0x1E8A251A ^ -1453727206 ^ 0x38FDFD65;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (-520343682 ^ -2009381848 ^ -1323654847 ^ -897843265))
            {
               case 0:
                  return;
               case 1:
                  if(this.hasEventListener(MouseEvent.MOUSE_WHEEL))
                  {
                     _loc2_ = -870854877 ^ 0x1FE09B7B ^ 0x56661F3E ^ -1774747956;
                  }
                  else
                  {
                     _loc2_ = -1492978460 ^ -1335770504 ^ 0x4063EAA6 ^ 0x44A6E992;
                  }
                  break;
               case 2:
                  this.removeEventListener(MouseEvent.MOUSE_WHEEL,this._782323aeef3e2d253b6180b4);
                  this.removeEventListener(KeyboardEvent.KEY_DOWN,this._a49a34de98dda333059b95c6);
                  _loc2_ = 0x02A86DCF ^ 0x1CAB6FB7 ^ -1148789074 ^ -1239160450;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function _782323aeef3e2d253b6180b4(param1:MouseEvent) : void
      {
         var _loc2_:Boolean = GameSwf.instance.managerTutorial == null || GameSwf.instance.managerTutorial != null && GameSwf.instance.managerTutorial.isTutorialCommonComplete;
         if(!_loc2_)
         {
            return;
         }
         this.scrollTo(this._content.scrollRect.y - param1.delta * this._d16c1f2865138f5cc3b9ac82 * this._9ff9abb784a32f48e102ff7d);
         this._f05a805aeab556f42d19e5ba();
      }
      
      private function _a49a34de98dda333059b95c6(param1:KeyboardEvent) : void
      {
         var _loc2_:int = 0x67BE7E61 ^ 0x7DDC42DE ^ 0x66FDCE7D ^ 0x7C9FF2C2;
         switch(param1.keyCode)
         {
            case Keyboard.UP:
               §§push(-1484967768 ^ 0x651C981A ^ -1595382132 ^ 0x6289CE3E);
               break;
            case Keyboard.DOWN:
               §§push(-1719079784 ^ 0x414DC175 ^ -1492821748 ^ 0x7FC074E0);
               break;
            default:
               §§push(0x21A40939 ^ 0x2C57C3BD ^ -329914848 ^ -509203290);
         }
         switch(§§pop())
         {
            case 0:
               _loc2_ = -1930020647 ^ -2040913642 ^ 0x315033E1 ^ -1006381615;
               break;
            case 1:
               _loc2_ = 0x63FD9664 ^ 0x28432725 ^ 0x2B069DF3 ^ 0x60B82CB3;
         }
         this.scrollTo(this._content.scrollRect.y + _loc2_ * this._9ff9abb784a32f48e102ff7d);
         this._f05a805aeab556f42d19e5ba();
      }
      
      protected function get distanceForScrolling() : Number
      {
         return this.contentHeight - this._content.scrollRect.height;
      }
      
      public function _a6ae8c4816dbd7123227833f(param1:Number) : void
      {
         if(param1 < this._a795f3e29a05c003d29b8d59)
         {
            param1 = 0x77B796C8 ^ 0x6269A2EC ^ -807676778 ^ -637149006;
         }
         if(param1 > (-1724292729 ^ 0x618FA17F ^ -1385011288 ^ 0x55C4A751) - this._a795f3e29a05c003d29b8d59)
         {
            param1 = 0x6ECEA44F ^ -1389576306 ^ 0x1BEB2E7E ^ -670485058;
         }
         var _loc2_:int = int(this.distanceForScrolling * param1);
         this.scrollTo(_loc2_);
      }
      
      protected function scrollTo(param1:int) : void
      {
         var _loc2_:Rectangle = null;
         param1 = limit(param1,-922459944 ^ 0x3FDD2DF4 ^ -2109749399 ^ 0x74E68A45,this.distanceForScrolling);
         if(param1 >= (-1347500624 ^ 0x439881A5 ^ -253455121 ^ 0x1CD2D0FA) && param1 <= this.distanceForScrolling)
         {
            _loc2_ = this._content.scrollRect;
            _loc2_.y = param1;
            this._content.scrollRect = _loc2_;
         }
      }
      
      protected function _f05a805aeab556f42d19e5ba() : void
      {
         var _loc1_:int = 0x1A145C5A ^ 0x364B1A6A ^ -526900812 ^ -859347068;
         var _loc2_:Number = this._content.scrollRect.y / this.distanceForScrolling;
         if(_loc2_ < this._a795f3e29a05c003d29b8d59)
         {
            _loc2_ = 0x2B7A8BF8 ^ -783931447 ^ -1349467975 ^ 0x55AC6C88;
         }
         if(_loc2_ > (-828393473 ^ 0x622FB172 ^ 0x1F23C86D ^ -1282158879) - this._a795f3e29a05c003d29b8d59)
         {
            _loc2_ = 0x729B9D28 ^ 0x711D89BD ^ -86928040 ^ -111705652;
         }
         if(_loc2_ == (0x0B07E8A5 ^ -580151904 ^ 0x4BED5470 ^ -1652479627) || _loc2_ == (0x11D8356E ^ -2047106872 ^ 0x72C78DAA ^ -421259251))
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
      
      protected function _c44407c756119b498390c59c(param1:Number) : void
      {
         var _loc2_:Rectangle = this._content.scrollRect;
         _loc2_.height = param1;
         this._content.scrollRect = _loc2_;
      }
      
      public function _a270befba6c808194a3475ba() : void
      {
         this._scroll.percent = -130896320 ^ -2002323218 ^ -1305181612 ^ -1029647110;
         var _loc1_:Number = this.distanceForScrolling;
         if(_loc1_ > (0x62F52284 ^ 0x11F2281C ^ -562703531 ^ -1384982068))
         {
            this._scroll.visible = true;
            this._scroll.setHandlerSize(this._content.scrollRect.height / this._contentHeight,-1355717398 ^ -555959538 ^ -687379352 ^ -1494568040);
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

