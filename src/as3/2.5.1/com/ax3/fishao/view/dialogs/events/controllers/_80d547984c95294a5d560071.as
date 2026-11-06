package com.ax3.fishao.view.dialogs.events.controllers
{
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs._0737efdbd5337ba3fbc64b2e;
   import com.ax3.fishao.view.dialogs.base.controllers.implementations._e2bbbb1ef110bb0aa28b913f;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces._988093efdfa36e13bfd6c6cf;
   import com.ax3.fishao.view.dialogs.events._cfdef00d95ecf0ca57fce5cc;
   import com.ax3.fishao.view.dialogs.events.views._d0f3c8fd61b2c1099518ac60;
   import com.ax3.fishao.view.dialogs.string._706c123ff0b2d45829c1bb3e;
   import com.ax3.fishao.view.dialogs.string._85b2141a2303f6545d411d7a;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import protocol.api.events.data.EventInfo;
   
   public class _80d547984c95294a5d560071 extends _e2bbbb1ef110bb0aa28b913f
   {
      
      private var _70e65ec0e472d8ff373d6a5b:_d0f3c8fd61b2c1099518ac60;
      
      private var _2a16e45079f3d03ac911db7a:Array;
      
      private var _7c89f844adced013dd18a61a:int;
      
      private var _4e960f81039646068beda753:int;
      
      public function _80d547984c95294a5d560071(param1:DisplayObjectContainer)
      {
         this._70e65ec0e472d8ff373d6a5b = new _d0f3c8fd61b2c1099518ac60(this,param1);
         super(this._70e65ec0e472d8ff373d6a5b);
         this.init();
      }
      
      private function get _6ade282a1870e18c75ffbb3e() : Array
      {
         var _loc1_:int = (this._7c89f844adced013dd18a61a - 1) * this._70e65ec0e472d8ff373d6a5b.itemsOnPage;
         var _loc2_:Array = [];
         var _loc3_:int = _loc1_;
         while(_loc3_ < this._2a16e45079f3d03ac911db7a.length && _loc3_ < _loc1_ + this._70e65ec0e472d8ff373d6a5b.itemsOnPage)
         {
            _loc2_.push(this._2a16e45079f3d03ac911db7a[_loc3_]);
            _loc3_++;
         }
         return _loc2_;
      }
      
      override public function _4f254116765eb1a39d6712be(param1:Object, param2:Event) : Boolean
      {
         var _loc3_:_cfdef00d95ecf0ca57fce5cc = null;
         var _loc4_:Boolean = super._4f254116765eb1a39d6712be(param1,param2);
         switch(param1)
         {
            case this._70e65ec0e472d8ff373d6a5b.buttonPrev:
               §§push(-413427949 ^ 0x3A42FB8F ^ -577302522 ^ 0x8E7C9A);
               break;
            case this._70e65ec0e472d8ff373d6a5b.buttonNext:
               §§push(0x5D925123 ^ 0x0ADE4AE5 ^ -805124558 ^ -2024874507);
               break;
            case this._70e65ec0e472d8ff373d6a5b.buttonBack:
               §§push(0x293B386C ^ -633780755 ^ 0x6A808525 ^ -1719469914);
               break;
            default:
               §§push(-794688921 ^ -533150773 ^ -292990184 ^ -569142601);
         }
         switch(§§pop())
         {
            case 0:
               --this._7c89f844adced013dd18a61a;
               this._1251675b9cea4c74a8e9df73();
               break;
            case 1:
               ++this._7c89f844adced013dd18a61a;
               this._1251675b9cea4c74a8e9df73();
               break;
            case 2:
               _0737efdbd5337ba3fbc64b2e.getInstance()._f42ac7342cf11c48018af906().close();
               _loc3_ = app.dialogFactory._35bb007cf346358de762d4a6();
               _loc3_.show();
         }
         return _loc4_;
      }
      
      private function init() : void
      {
         var _loc1_:EventInfo = null;
         var _loc2_:_d0ae46657ea01e4a0b634092 = null;
         this._2a16e45079f3d03ac911db7a = [];
         var _loc3_:Array = GameSwf.instance.managerEvents.events;
         for each(_loc1_ in _loc3_)
         {
            if(_loc1_.timeLeft > (0x1C39DC04 ^ 0x2F437F8A ^ 0x27B3A0C1 ^ 0x14C9034F))
            {
               _loc2_ = new _d0ae46657ea01e4a0b634092(_loc1_);
               this._2a16e45079f3d03ac911db7a.push(_loc2_);
            }
         }
         this._7c89f844adced013dd18a61a = 0x2254CE4E ^ -1766798744 ^ -1977784647 ^ 0x3EF9629E;
         this._4e960f81039646068beda753 = Math.floor(this._2a16e45079f3d03ac911db7a.length / this._70e65ec0e472d8ff373d6a5b.itemsOnPage) + (-1461797762 ^ 0x4990DCCF ^ 0x15D0F253 ^ -190934301);
         this._1251675b9cea4c74a8e9df73();
      }
      
      private function _1251675b9cea4c74a8e9df73() : void
      {
         this._33cdaa665c8ecde864a81eba();
         this._303f165f4be8b781e87d87a1();
         this._59cb34bfc99233e9a774a561();
      }
      
      private function _33cdaa665c8ecde864a81eba() : void
      {
         var _loc1_:_d0ae46657ea01e4a0b634092 = null;
         var _loc2_:Array = this._6ade282a1870e18c75ffbb3e;
         var _loc3_:Array = [];
         for each(_loc1_ in _loc2_)
         {
            _loc3_.push(_loc1_.view.source);
         }
         this._70e65ec0e472d8ff373d6a5b.items = _loc3_;
      }
      
      private function _303f165f4be8b781e87d87a1() : void
      {
         var _loc1_:_988093efdfa36e13bfd6c6cf = null;
         var _loc2_:uint = uint(0x67E16B9D ^ 0x2F5C7395 ^ 0x37E284D9 ^ 0x7F5F9CD1);
         var _loc3_:int = -1185334164 ^ -811811711 ^ 0x4E5CD9B6 ^ 0x3899595B;
         while(_loc3_ < this._2a16e45079f3d03ac911db7a.length)
         {
            _loc1_ = this._2a16e45079f3d03ac911db7a[_loc3_];
            _loc2_ = Math.ceil((_loc3_ + (0x4787DC08 ^ -783762282 ^ -113076146 ^ 0x6F8DF8D1)) / this._70e65ec0e472d8ff373d6a5b.itemsOnPage);
            if(_loc2_ == this._7c89f844adced013dd18a61a)
            {
               _loc1_.view.show();
            }
            else
            {
               _loc1_.view.hide();
            }
            _loc3_++;
         }
         var _loc4_:String = _c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a.EST_DIALOG_EVENTS_PAGE);
         _loc4_ = _loc4_.replace(_706c123ff0b2d45829c1bb3e.ESTS_VALUE,this._7c89f844adced013dd18a61a);
         _loc4_ = _loc4_.replace(_706c123ff0b2d45829c1bb3e.ESTS_VALUE,this._4e960f81039646068beda753);
         this._70e65ec0e472d8ff373d6a5b.labelPage.text = _loc4_;
      }
      
      private function _59cb34bfc99233e9a774a561() : void
      {
         this._70e65ec0e472d8ff373d6a5b.buttonNext.enabled = this._7c89f844adced013dd18a61a < this._4e960f81039646068beda753;
         this._70e65ec0e472d8ff373d6a5b.buttonPrev.enabled = this._7c89f844adced013dd18a61a > (0x179854EC ^ -180028013 ^ -1014390080 ^ 0x21550BBE);
      }
   }
}

