package com.ax3.fishao.view.dialogs.base.views.implementations
{
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.display.wrappers.impl._eb2314ffc37429732989b460;
   import com.ax3.fishao.core._b3eaa7c095cb44ffd145a8a0;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.display.popups._73899a4de8f83c8d2c26f545;
   import com.ax3.fishao.utils.UtilsString;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces._988093efdfa36e13bfd6c6cf;
   import com.ax3.fishao.view.dialogs.base.views.interfaces._ebeac595a62fba6d6fcea1c2;
   import com.ax3.fishao.view.dialogs.club.pages.base.view_input._00a78eeb9c4e2487e66b434b;
   import com.ax3.fishao.view.wrappers.impl.FrameButtonWrapper;
   import com.greensock.TweenLite;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   
   public class _04cce4e240ff9bea66c1b7f7 extends _b3eaa7c095cb44ffd145a8a0 implements _ebeac595a62fba6d6fcea1c2
   {
      
      private var _f11fd30a464463b3bc1e01a0:DisplayObjectContainer;
      
      private var _23e04ab10146680710ee34c1:_988093efdfa36e13bfd6c6cf;
      
      private var _8af72430410af22dd1bf827a:Stage;
      
      private var _01a18d29fe9e33b40ea10e02:_eb2314ffc37429732989b460;
      
      public function _04cce4e240ff9bea66c1b7f7(param1:_988093efdfa36e13bfd6c6cf, param2:DisplayObjectContainer)
      {
         super();
         this._f11fd30a464463b3bc1e01a0 = Debug.assertNotEqual(param2,null);
         this._23e04ab10146680710ee34c1 = Debug.assertNotEqual(param1,null);
         this._8af72430410af22dd1bf827a = Debug.assertNotEqual(GameSwf.stage,null);
      }
      
      public function set tooltipText(param1:String) : void
      {
         this._01a18d29fe9e33b40ea10e02.tooltipConfig = {(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ခႅၵ႖ჱသၜႈဉჾၹႉჲႅႈ႖","ထၷუყ჈ჾႶ႙ပဴი჉ၗႼၞၻ")):param1};
      }
      
      public function get source() : DisplayObject
      {
         return this._f11fd30a464463b3bc1e01a0;
      }
      
      protected function get controller() : _988093efdfa36e13bfd6c6cf
      {
         return this._23e04ab10146680710ee34c1;
      }
      
      protected function onMouseClick(param1:MouseEvent) : void
      {
         this._23e04ab10146680710ee34c1._4f254116765eb1a39d6712be(this,param1);
      }
      
      private function _d632877789861df5150b4592(param1:MouseEvent) : void
      {
         param1.stopImmediatePropagation();
      }
      
      protected function onMouseMove(param1:MouseEvent) : void
      {
         this._23e04ab10146680710ee34c1._7ca229f4ec64f1a817fc6ff2(this,param1);
      }
      
      protected function _2bb53dca69617f99b0fccaf1(param1:MouseEvent) : void
      {
         this._23e04ab10146680710ee34c1._6f13cdf51d77d3ffa790eb14(this,param1);
      }
      
      protected function _e65cc29e97245b3be974acda(param1:Event) : void
      {
         this._23e04ab10146680710ee34c1._cb5f48a6e92b5e740d939812(this,param1 is MouseEvent ? MouseEvent(param1) : null);
      }
      
      protected function onMouseOver(param1:MouseEvent) : void
      {
         this._23e04ab10146680710ee34c1._3f01a00fe42ae7d40439e92d(this,param1);
      }
      
      protected function onMouseOut(param1:MouseEvent) : void
      {
         this._23e04ab10146680710ee34c1._1d60bfeebe58296604b7f4bf(this,param1);
      }
      
      protected function onMouseDown(param1:MouseEvent) : void
      {
         this._23e04ab10146680710ee34c1._adef58f9002aa2a71e1a50b0(this,param1);
      }
      
      protected function onMouseWheel(param1:MouseEvent) : void
      {
         this._23e04ab10146680710ee34c1._01082a0a47e5c8c237064b36(this,param1);
      }
      
      public function _38df5ae3c9d5e15bce3d7ffe() : void
      {
         this._f11fd30a464463b3bc1e01a0.addEventListener(MouseEvent.CLICK,this._d632877789861df5150b4592);
      }
      
      public function _fc17178734ae7cc816dbcc2f(param1:Boolean = false, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false, param5:Boolean = false, param6:Boolean = false, param7:Boolean = false, param8:Boolean = false) : void
      {
         var _loc9_:int = -889630546 ^ -1166008210 ^ -1535787382 ^ 0x167EA319;
         loop0:
         while(true)
         {
            switch(_loc9_ ^ (0x1BDAF5E6 ^ 0x37AC583A ^ -1305712501 ^ 0x5C28A80C))
            {
               case 0:
                  this._f11fd30a464463b3bc1e01a0.addEventListener(MouseEvent.CLICK,this.onMouseClick);
                  this._f11fd30a464463b3bc1e01a0[_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劜剕刚刽剢勪分劎剂创勛勡刏创劉功劖剌分刉勄剏劏剽刡刖刾動","剃則刌勑劺勹刔刀勯勝刮勒刪剰労剌")] = true;
                  _loc9_ = 0x705D1368 ^ 0x1E36BBD0 ^ 0x24B229E1 ^ -2001998847;
                  break;
               case 1:
                  this._f11fd30a464463b3bc1e01a0.addEventListener(MouseEvent.MOUSE_MOVE,this.onMouseMove);
                  _loc9_ = 0x7D2995B4 ^ 0x338DDA2F ^ 0x78434CAC ^ -191533444;
                  break;
               case 2:
                  this._f11fd30a464463b3bc1e01a0.addEventListener(MouseEvent.MOUSE_OVER,this.onMouseOver);
                  _loc9_ = 0x4551D5FF ^ -2129191315 ^ 0x2665A5C0 ^ 0x20510305;
                  break;
               case 3:
                  if(param2)
                  {
                     _loc9_ = -1279064865 ^ -95135347 ^ 0x2F0B53CC ^ -1527880764;
                  }
                  else
                  {
                     _loc9_ = -703359468 ^ -2047566255 ^ -192852191 ^ 0x65142A2F;
                  }
                  break;
               case 4:
                  this._f11fd30a464463b3bc1e01a0.addEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
                  _loc9_ = -1070539591 ^ -165963707 ^ 0x52D83227 ^ -1501488241;
                  break;
               case 5:
                  if(param8)
                  {
                     _loc9_ = -743064675 ^ 0x1E16DEB7 ^ 0x20A70D5A ^ 0x2F76052F;
                  }
                  else
                  {
                     _loc9_ = 0x2177F179 ^ -899516675 ^ -1160571373 ^ -1816855357;
                  }
                  break;
               case 6:
                  if(param4)
                  {
                     _loc9_ = 0x508E0307 ^ 0x74B5743B ^ 0x26D68D72 ^ -1063282914;
                  }
                  else
                  {
                     _loc9_ = 0x0B04FC05 ^ 0x14FEC8BF ^ -1629398866 ^ 0x43690141;
                  }
                  break;
               case 7:
                  if(param6)
                  {
                     _loc9_ = -1373990509 ^ 0x0A8DEEBB ^ -1917105999 ^ -346137920;
                  }
                  else
                  {
                     _loc9_ = -9148332 ^ -968122620 ^ 0x1BFB180D ^ -524910070;
                  }
                  break;
               case 8:
                  this._f11fd30a464463b3bc1e01a0.removeEventListener(MouseEvent.CLICK,this.onMouseClick);
                  this._f11fd30a464463b3bc1e01a0.removeEventListener(MouseEvent.MOUSE_MOVE,this.onMouseMove);
                  this._f11fd30a464463b3bc1e01a0.removeEventListener(MouseEvent.MOUSE_UP,this._2bb53dca69617f99b0fccaf1);
                  this._8af72430410af22dd1bf827a.removeEventListener(MouseEvent.MOUSE_UP,this._e65cc29e97245b3be974acda);
                  this._8af72430410af22dd1bf827a.removeEventListener(Event.MOUSE_LEAVE,this._e65cc29e97245b3be974acda);
                  this._f11fd30a464463b3bc1e01a0.removeEventListener(MouseEvent.MOUSE_DOWN,this.onMouseDown);
                  this._f11fd30a464463b3bc1e01a0.removeEventListener(MouseEvent.MOUSE_OVER,this.onMouseOver);
                  this._f11fd30a464463b3bc1e01a0.removeEventListener(MouseEvent.MOUSE_OUT,this.onMouseOut);
                  this._f11fd30a464463b3bc1e01a0.removeEventListener(MouseEvent.MOUSE_WHEEL,this.onMouseWheel);
                  if(param1)
                  {
                     _loc9_ = 0x452B79A4 ^ -494407244 ^ -158252464 ^ -1823496421;
                  }
                  else
                  {
                     _loc9_ = 0x61960964 ^ 0x5F83BA6D ^ -1124918094 ^ 0x4094C2E3;
                  }
                  break;
               case 9:
                  this._f11fd30a464463b3bc1e01a0.addEventListener(MouseEvent.MOUSE_OUT,this.onMouseOut);
                  _loc9_ = 0x6E07A37C ^ 0x29BF25B5 ^ 0x10546960 ^ -1784773897;
                  break;
               case 10:
                  this._f11fd30a464463b3bc1e01a0.addEventListener(MouseEvent.MOUSE_DOWN,this.onMouseDown);
                  _loc9_ = -2097541518 ^ -2047420794 ^ -137296169 ^ 0x32AFB37F;
                  break;
               case 11:
                  this._8af72430410af22dd1bf827a.addEventListener(MouseEvent.MOUSE_UP,this._e65cc29e97245b3be974acda);
                  this._8af72430410af22dd1bf827a.addEventListener(Event.MOUSE_LEAVE,this._e65cc29e97245b3be974acda);
                  _loc9_ = -1547218629 ^ -2122258132 ^ 0x2F0814B6 ^ -818036236;
                  break;
               case 12:
                  if(param7)
                  {
                     _loc9_ = -717884906 ^ -971539164 ^ 0x64431460 ^ -1256983040;
                  }
                  else
                  {
                     _loc9_ = -834564277 ^ -1915454710 ^ -1235594052 ^ 0x37BDCDA3;
                  }
                  break;
               case 13:
                  this._f11fd30a464463b3bc1e01a0.addEventListener(MouseEvent.MOUSE_UP,this._2bb53dca69617f99b0fccaf1);
                  _loc9_ = -70424718 ^ -483651568 ^ -540158762 ^ 0x055ECEE9;
                  break;
               case 14:
                  if(param5)
                  {
                     _loc9_ = -1501741386 ^ 0x40B36F6E ^ -1232204534 ^ -1842204285;
                  }
                  else
                  {
                     _loc9_ = -1934338147 ^ -2004207592 ^ 0x462217DB ^ -2140269310;
                  }
                  break;
               case 15:
                  return;
               case 16:
                  if(param3)
                  {
                     _loc9_ = -497682474 ^ 0x092DC6E0 ^ -625402359 ^ -206355863;
                  }
                  else
                  {
                     _loc9_ = -964947252 ^ -963167411 ^ 0x31DB9113 ^ -213723697;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function show(param1:Number = 0, param2:Function = null) : void
      {
         this._f11fd30a464463b3bc1e01a0.visible = true;
      }
      
      public function hide(param1:Number = 0, param2:Function = null) : void
      {
         this._f11fd30a464463b3bc1e01a0.visible = false;
      }
      
      public function _63b9041bf855ea499da8554e(param1:Boolean) : void
      {
      }
      
      public function _09d32aad035d4c6f4097c78b() : void
      {
         var _loc1_:int = 0x51680DB2 ^ -1012558128 ^ -777156647 ^ -1045145416;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (-2008622821 ^ -1091886699 ^ -403924113 ^ 0x539527E2))
            {
               case 0:
                  if(this._01a18d29fe9e33b40ea10e02 != null)
                  {
                     _loc1_ = -1274508538 ^ -444770861 ^ 0x53198E82 ^ -2135419818;
                  }
                  else
                  {
                     _loc1_ = -229865565 ^ 0x52411128 ^ 0x0F37D0F0 ^ 0x2DEE0279;
                  }
                  break;
               case 1:
                  this._f11fd30a464463b3bc1e01a0.mouseChildren = true;
                  this._01a18d29fe9e33b40ea10e02 = new _eb2314ffc37429732989b460();
                  this._01a18d29fe9e33b40ea10e02.x = -773758129 ^ 0x367BB664 ^ 0x7D777784 ^ -1695702353;
                  this._01a18d29fe9e33b40ea10e02.y = 0x7D17E49D ^ -1817738 ^ -1894970575 ^ 0x0DFEACDA;
                  this._01a18d29fe9e33b40ea10e02.graphics.beginFill(-1540258648 ^ -1583217576 ^ 0x7735787A ^ 0x7236981A,0x4958FFD9 ^ -821612717 ^ -768166028 ^ 0x546967FE);
                  var _temp_2:* = this._01a18d29fe9e33b40ea10e02.graphics;
                  var _temp_1:* = 0x460FDB84 ^ 0x45034D95 ^ -723877202 ^ -673835841;
                  _temp_2.drawRect(_temp_1,_temp_1,this._f11fd30a464463b3bc1e01a0.width,this._f11fd30a464463b3bc1e01a0.height);
                  this._01a18d29fe9e33b40ea10e02.graphics.endFill();
                  this._f11fd30a464463b3bc1e01a0.addChild(this._01a18d29fe9e33b40ea10e02);
                  return;
               case 2:
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      protected function _4bba52ae9618ef515b6267ea(param1:String, param2:String, param3:DisplayObject = null) : _73899a4de8f83c8d2c26f545
      {
         var _loc4_:_73899a4de8f83c8d2c26f545 = null;
         if(param3 == null)
         {
            param3 = this.source;
         }
         var _loc5_:TextField = Debug.assertProperty(param3,param1);
         _loc4_ = new _73899a4de8f83c8d2c26f545(_loc5_);
         _loc4_.text = UtilsString.isNullOrEmpty(param2) ? "" : _c2ad9d37d7be0097d6d2e977.get(param2);
         return _loc4_;
      }
      
      protected function _092050566a3adcf2725382ab(param1:String, param2:DisplayObject = null, param3:Function = null) : FrameButtonWrapper
      {
         var source:DisplayObject = null;
         var result:FrameButtonWrapper = null;
         var buttonName:String = param1;
         var parent:DisplayObject = param2;
         var callback:Function = param3;
         result = null;
         result = new FrameButtonWrapper();
         if(parent == null)
         {
            parent = this.source;
         }
         if(callback == null)
         {
            callback = function(param1:Event):void
            {
               controller._4f254116765eb1a39d6712be(result,param1);
            };
         }
         source = Debug.assertProperty(parent,buttonName);
         result.process(source);
         result.handler = callback;
         return result;
      }
      
      protected function _5203ba54ebb97a8474baec77(param1:String) : _00a78eeb9c4e2487e66b434b
      {
         var _loc2_:_00a78eeb9c4e2487e66b434b = new _00a78eeb9c4e2487e66b434b(this.controller,Debug.assertProperty(this.source,param1));
         _loc2_.label.text = "";
         return _loc2_;
      }
      
      override public function _90eac9ca552fe54c2ca0299f() : void
      {
         this._f11fd30a464463b3bc1e01a0.removeEventListener(MouseEvent.CLICK,this._d632877789861df5150b4592);
         this._fc17178734ae7cc816dbcc2f();
         TweenLite.killTweensOf(this.source);
         super._90eac9ca552fe54c2ca0299f();
      }
   }
}

