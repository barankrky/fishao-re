package com.ax3.fishao.view.dialogs.furniture_factory.controllers
{
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import com.ax3.display.autoscalable._a4e47350c89a50d87a148c28;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs._0737efdbd5337ba3fbc64b2e;
   import com.ax3.fishao.view.dialogs.base._22437dfd77f65dbf9dbc4281;
   import com.ax3.fishao.view.dialogs.base.controllers.implementations._e2bbbb1ef110bb0aa28b913f;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces._6b63fd0a4028eb279b227831;
   import com.ax3.fishao.view.dialogs.furniture_factory._c77d525b20bc5f754c3cac44;
   import com.ax3.fishao.view.dialogs.furniture_factory.views._1b6419e64fa831b99d85f2f7;
   import com.ax3.fishao.view.dialogs.string._85b2141a2303f6545d411d7a;
   import com.ax3.utils.TimeConverter;
   import flash.display.DisplayObjectContainer;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class _878b94e35d0285122d3e2b00 extends _e2bbbb1ef110bb0aa28b913f
   {
      
      private static const _059d9f075bdfa60f5ea7854a:Number = -2102432327 ^ -199118187 ^ -1353174616 ^ -640225650;
      
      private var _f85271c9708cd1d034f8c98d:_1b6419e64fa831b99d85f2f7;
      
      private var _ecf6cfc9eb6952ffe3cac840:_c77d525b20bc5f754c3cac44;
      
      private var _7039e84d06f942bce8c7ab90:Timer;
      
      private var _6341dfdfa71c258ae6f043ca:Timer;
      
      public function _878b94e35d0285122d3e2b00(param1:DisplayObjectContainer)
      {
         this._f85271c9708cd1d034f8c98d = new _1b6419e64fa831b99d85f2f7(this,param1);
         super(this._f85271c9708cd1d034f8c98d);
         this.init();
      }
      
      private static function _ace5ffa71cb852ae29deb3b6(param1:TimerEvent) : void
      {
         _0737efdbd5337ba3fbc64b2e.getInstance()._83fe3f7775d32c7cda3d7865(_6b63fd0a4028eb279b227831.ECU_FURNITURE_FACTORY_REWARD_ANIMATION_COMPLETE,_22437dfd77f65dbf9dbc4281.EDT_FURNITURE_FACTORY);
      }
      
      private function _9e7edbdba5d40fb24d1a00d5(param1:TimerEvent) : void
      {
         var _loc2_:int = 0x71E785D9 ^ -992889423 ^ -450634794 ^ 0x5015EBBE;
         var _loc3_:int = -1263240621 ^ -192597278 ^ 0x1C96187B ^ -73293803;
         loop0:
         while(true)
         {
            switch(_loc3_ ^ (0x5DF54585 ^ 0x7A69433D ^ -133012664 ^ 0x7888952D))
            {
               case 0:
                  this._811af59fd8fce0e646ae8c84();
                  _loc3_ = -215023432 ^ 0x1E0F4C16 ^ 0x41CBD536 ^ 0x0BED6946;
                  break;
               case 1:
                  this._f85271c9708cd1d034f8c98d.labelTimeLeft.text = TimeConverter.toHMSString(TimeConverter.fromSeconds(_loc2_));
                  _loc3_ = 0x0AD6C060 ^ -1144488237 ^ -241855130 ^ -410133749;
                  break;
               case 2:
                  _loc2_ = this._ecf6cfc9eb6952ffe3cac840.rewardTimeLeft;
                  if(_loc2_ == (-2075641090 ^ 0x1B07A5E5 ^ 0x75A9E841 ^ -353994918))
                  {
                     _loc3_ = 0x3E2994A5 ^ 0x18217BE6 ^ -937743405 ^ 0x4915344D;
                  }
                  else
                  {
                     _loc3_ = 0x5862616B ^ -730466493 ^ -731410001 ^ -8980645;
                  }
                  break;
               case 3:
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function init() : void
      {
         this._ecf6cfc9eb6952ffe3cac840 = GameSwf.instance.managerFurnitureFactory;
         this._af715ef47ac6905c69506073();
         this._9aacfee4e85aa81157aa02ea();
      }
      
      private function _402bb625950bc28f734b248e() : void
      {
         this._f85271c9708cd1d034f8c98d.viewPlaceholder.removeChildren();
         var _loc1_:String = this._ecf6cfc9eb6952ffe3cac840.reward.imageUrl;
         if(_loc1_ == "")
         {
            return;
         }
         var _loc2_:_a4e47350c89a50d87a148c28 = new _a4e47350c89a50d87a148c28(null);
         _loc2_.width = this._f85271c9708cd1d034f8c98d.viewPlaceholderSize.x;
         _loc2_.height = this._f85271c9708cd1d034f8c98d.viewPlaceholderSize.y;
         app.resourceManager.replaceBitmapDataFromURL(_loc2_,_loc1_);
         this._f85271c9708cd1d034f8c98d.viewPlaceholder.addChild(_loc2_);
      }
      
      private function _af715ef47ac6905c69506073() : void
      {
         var _loc1_:Boolean = false;
         _loc1_ = false;
         _loc1_ = this._ecf6cfc9eb6952ffe3cac840.rewardTimeLeft == (0x1BBA2DC0 ^ -1277002986 ^ -1320160705 ^ 0x1917A4E9);
         if(_loc1_)
         {
            this._f85271c9708cd1d034f8c98d.labelTop.text = _c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a.EST_DIALOG_FURNITURE_FACTORY_REWARD_DESCRIPTION_READY);
         }
         else
         {
            this._f85271c9708cd1d034f8c98d.labelTop.text = _c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a.EST_DIALOG_FURNITURE_FACTORY_REWARD_DESCRIPTION_NOT_READY);
            this._f85271c9708cd1d034f8c98d.labelBottom.text = _c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a.EST_DIALOG_FURNITURE_FACTORY_REWARD_WAIT);
         }
         this._f85271c9708cd1d034f8c98d.labelBottom.source.visible = !_loc1_;
         this._f85271c9708cd1d034f8c98d.labelTimeLeft.source.visible = !_loc1_;
      }
      
      override public function update(param1:String) : void
      {
         switch(param1)
         {
            case _6b63fd0a4028eb279b227831.ECU_FURNITURE_FACTORY_UPDATE:
               §§push(-1746303594 ^ -817365500 ^ 0x0EADF4E4 ^ 0x56038F76);
               break;
            case _6b63fd0a4028eb279b227831.ECU_FURNITURE_FACTORY_REWARD_GOT:
               §§push(0x6428AE51 ^ 0x65EC339C ^ -406193353 ^ -435329285);
               break;
            case _6b63fd0a4028eb279b227831.ECU_FURNITURE_FACTORY_REWARD_ANIMATION_COMPLETE:
               §§push(-1265340468 ^ -1748902057 ^ 0x48DE36D9 ^ 0x6B8B8640);
               break;
            default:
               §§push(-1908601752 ^ -1805691261 ^ -999484556 ^ -569423460);
         }
         switch(§§pop())
         {
            case 0:
               this._9aacfee4e85aa81157aa02ea();
               this._af715ef47ac6905c69506073();
               if(this._ecf6cfc9eb6952ffe3cac840.rewardTimeLeft == (0x484E6CD2 ^ -1678403650 ^ 0x432E2FB2 ^ -1869228834))
               {
                  this._f85271c9708cd1d034f8c98d._1548b3f7869600a545573d6f();
               }
               break;
            case 1:
               this._af715ef47ac6905c69506073();
               this._9aacfee4e85aa81157aa02ea();
               this._2a859e0064257939bcb05d6d();
               this._f85271c9708cd1d034f8c98d.labelTop.text = _c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a.EST_DIALOG_FURNITURE_FACTORY_REWARD_DESCRIPTION_GET);
               this._f85271c9708cd1d034f8c98d.labelBottom.text = this._ecf6cfc9eb6952ffe3cac840.reward.translationItem;
               this._f85271c9708cd1d034f8c98d.labelRarity.text = this._ecf6cfc9eb6952ffe3cac840.reward.translationRarity;
               this._402bb625950bc28f734b248e();
               this._f85271c9708cd1d034f8c98d._6c6ebce9a6369af993059588();
               break;
            case 2:
               this._af715ef47ac6905c69506073();
               this._f85271c9708cd1d034f8c98d._1548b3f7869600a545573d6f();
               break;
            default:
               Debug.assert(false,_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劊勲則剤刢则剧劥勑刣勏剐剾剑劣劺劝劒删刊剏功剹刅刘剷刡勱劧剖分剛劔剜刎労劷剉劊剮剤剝勧刎刦劧刧劖劊刦劉刀割劀劍勺劍剠删勀動勫刄剁剌刚劜勭勅劦刬刞剕勉剹劁刺劊剦刷剺刃勛剀刨勼切剦剧劳劕刬劊劁刈刪剘劮刖勢刯刣刏剃勱刖刂刬務刽勏勢删刳剱刜剉刘勗刘删劀劇剂勑制刃勋勿勆刲劇剆劬剓劔剁募剁募剺勏别努刚劃劎刞勂刬","勷刴动剏剜刨勐劧利劵剌勇剡勍勔則") + param1);
         }
      }
      
      private function _9aacfee4e85aa81157aa02ea() : void
      {
         this._811af59fd8fce0e646ae8c84();
         this._7039e84d06f942bce8c7ab90 = new Timer(0x039C9D85 ^ 0x2489964A ^ 0x287F4E9D ^ 0x0F6A459A);
         this._7039e84d06f942bce8c7ab90.addEventListener(TimerEvent.TIMER,this._9e7edbdba5d40fb24d1a00d5);
         this._7039e84d06f942bce8c7ab90.start();
         this._9e7edbdba5d40fb24d1a00d5(null);
      }
      
      private function _2a859e0064257939bcb05d6d() : void
      {
         this._966e75cd40bea6493c4015b6();
         this._6341dfdfa71c258ae6f043ca = new Timer(_059d9f075bdfa60f5ea7854a * (0x419D98AF ^ -298207669 ^ 0x793F5573 ^ -694454145),-2108712057 ^ -486614077 ^ 0x06157EDC ^ 0x66A43E99);
         this._6341dfdfa71c258ae6f043ca.addEventListener(TimerEvent.TIMER,_ace5ffa71cb852ae29deb3b6);
         this._6341dfdfa71c258ae6f043ca.start();
      }
      
      private function _811af59fd8fce0e646ae8c84() : void
      {
         var _loc1_:int = 0x1C9ED1DC ^ -1114668173 ^ 0x0E616506 ^ 0x208064C5;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (0x61A909ED ^ 0x4B55B330 ^ -1355546908 ^ 0x0A3F1754))
            {
               case 0:
                  return;
               case 1:
                  if(this._7039e84d06f942bce8c7ab90 == null)
                  {
                     _loc1_ = 0x6BED21F9 ^ 0x089C5CA2 ^ -1198807859 ^ 0x540A8AFB;
                  }
                  else
                  {
                     _loc1_ = -628371533 ^ -1000498915 ^ -1792005306 ^ 0x04162E87;
                  }
                  break;
               case 2:
                  this._7039e84d06f942bce8c7ab90.removeEventListener(TimerEvent.TIMER,this._9e7edbdba5d40fb24d1a00d5);
                  this._7039e84d06f942bce8c7ab90.stop();
                  this._7039e84d06f942bce8c7ab90 = null;
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function _966e75cd40bea6493c4015b6() : void
      {
         var _loc1_:int = 0x62D2ACC9 ^ 0x62D6CA8A ^ -1251555041 ^ -1768802282;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (0x4934754A ^ 0x12D0E38D ^ 0x4F3022F5 ^ 0x37242378))
            {
               case 0:
                  if(this._6341dfdfa71c258ae6f043ca == null)
                  {
                     _loc1_ = -266463156 ^ 0x28527AD0 ^ 0x0EC1EBEF ^ -176349637;
                  }
                  else
                  {
                     _loc1_ = -1726372866 ^ 0x7DB0F811 ^ -354444950 ^ 0x2D8655CE;
                  }
                  break;
               case 1:
                  this._6341dfdfa71c258ae6f043ca.removeEventListener(TimerEvent.TIMER_COMPLETE,this._9e7edbdba5d40fb24d1a00d5);
                  this._6341dfdfa71c258ae6f043ca.stop();
                  this._6341dfdfa71c258ae6f043ca = null;
                  return;
               case 2:
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      override public function _90eac9ca552fe54c2ca0299f() : void
      {
         this._811af59fd8fce0e646ae8c84();
         this._966e75cd40bea6493c4015b6();
         super._90eac9ca552fe54c2ca0299f();
      }
   }
}

