package com.ax3.fishao.view.dialogs.wheel_of_fortune.controllers
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.fishao.control.managers._3a8a2602dcf9bf49b62e62af;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs.base.controllers.implementations._e2bbbb1ef110bb0aa28b913f;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces._6b63fd0a4028eb279b227831;
   import com.ax3.fishao.view.dialogs.string._85b2141a2303f6545d411d7a;
   import com.ax3.fishao.view.dialogs.wheel_of_fortune._ebfae60a420fd1c3ccdd4d9b;
   import com.ax3.fishao.view.dialogs.wheel_of_fortune.views._4b55a491b27adee4676c4a38;
   import com.ax3.utils.TimeConverter;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   
   public class _8b5a0f5d1b44f92643a00889 extends _e2bbbb1ef110bb0aa28b913f
   {
      
      private var _f9bc12ed3d750d01dd2133fb:_4b55a491b27adee4676c4a38;
      
      private var _4ee6ba9426f18ff05e8d6704:_937aeef6b97a82652fa32b6e;
      
      private var _6e61fd0f77c3f38301e9c38c:_0809de889a8dd3ae24ab500e;
      
      private var _52a178bc5d2c83e0122cab20:_ebfae60a420fd1c3ccdd4d9b;
      
      private var _c18e7f2eee9c039e06150272:Timer;
      
      public function _8b5a0f5d1b44f92643a00889(param1:DisplayObjectContainer)
      {
         this._f9bc12ed3d750d01dd2133fb = new _4b55a491b27adee4676c4a38(this,param1);
         super(this._f9bc12ed3d750d01dd2133fb);
         this.init();
      }
      
      override public function _4f254116765eb1a39d6712be(param1:Object, param2:Event) : Boolean
      {
         var _loc3_:Boolean = super._4f254116765eb1a39d6712be(param1,param2);
         if(!_loc3_)
         {
            switch(param1)
            {
               case this._f9bc12ed3d750d01dd2133fb.buttonSpinFree:
                  §§push(-1034457138 ^ -845075 ^ -1328527380 ^ -1921764657);
                  break;
               case this._f9bc12ed3d750d01dd2133fb.buttonSpinPaid:
                  §§push(-1463733015 ^ 0x2B59CB58 ^ 0x235F8656 ^ -1597539866);
                  break;
               default:
                  §§push(-1937675160 ^ 0x6CD560AC ^ 0x538AC955 ^ -1277246061);
            }
            switch(§§pop())
            {
               case 0:
                  this._52a178bc5d2c83e0122cab20.spin(true);
                  break;
               case 1:
                  if(app.user.fishcoins >= this._52a178bc5d2c83e0122cab20.spinPriceFishcoins)
                  {
                     this._52a178bc5d2c83e0122cab20.spin(false);
                  }
                  else
                  {
                     GameSwf.instance._e6f0a7b005cacf7751286e97();
                  }
                  break;
               default:
                  Debug.assert(false);
            }
         }
         return _loc3_;
      }
      
      private function _1889e24cef25e1c4a9170ccc(param1:TimerEvent) : void
      {
         this._45bdf3f9ec9e1c2a4138ad20();
         this._26ffa3b042e492f797e1861a();
         this._bbbe05af921be7733df9d09a();
      }
      
      private function init() : void
      {
         this._52a178bc5d2c83e0122cab20 = GameSwf.instance.managerWheelOfFortune;
         this._4ee6ba9426f18ff05e8d6704 = new _937aeef6b97a82652fa32b6e(Debug.assertProperty(this._f9bc12ed3d750d01dd2133fb.source,_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揮捱捜损援捐挏揫挹捭捪挡揲揔掑挲挳揖掋捇揓控捁挠挦挺揷揫揗揌揷挱揲推揄揰挈捸挦掂捯揠挵掎","揚揊捅掳揙挮揱捈掄捔挆掹揆排揨推")));
         this._6e61fd0f77c3f38301e9c38c = new _0809de889a8dd3ae24ab500e(Debug.assertProperty(this._f9bc12ed3d750d01dd2133fb.source,_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("႕ႢႾၱ။Ⴌၤ၌ჽဳၺၗჲႈၴႜါႫჺဦ჈၈၍ႉၡဋၛဂၿၮ၅ဗწၖჰဖ","ဝႇႣ჆၀ါႃ႑ဴჽ჏႒ၝუყၭ")));
         this._1889e24cef25e1c4a9170ccc(null);
         this._a1e35e2af59b37b37c472c42();
      }
      
      override public function update(param1:String) : void
      {
         switch(param1)
         {
            case _6b63fd0a4028eb279b227831.ECU_WHEEL_OF_FORTUNE_UPDATE:
               §§push(-1069177191 ^ -2039293611 ^ 0x06D4E09E ^ 0x40E39F52);
               break;
            case _6b63fd0a4028eb279b227831.ECU_WHEEL_OF_FORTUNE_SPIN_START:
               §§push(0x27D1A158 ^ -406250763 ^ -747392899 ^ 0x136B0BD1);
               break;
            case _6b63fd0a4028eb279b227831.ECU_WHEEL_OF_FORTUNE_SPIN_REWARD_UPDATE:
               §§push(0x4451A282 ^ 0x505B8A1C ^ -398928192 ^ -63766948);
               break;
            case _6b63fd0a4028eb279b227831.ECU_WHEEL_OF_FORTUNE_SPIN_ERROR:
               §§push(-2004615994 ^ -1351732954 ^ -831246417 ^ -375791028);
               break;
            case _6b63fd0a4028eb279b227831.ECU_WHEEL_OF_FORTUNE_SPIN_REWARD_GOT:
               §§push(0x3D7E91DA ^ -1174661163 ^ -2018820304 ^ 0x0329B93B);
               break;
            case _6b63fd0a4028eb279b227831.ECU_WHEEL_OF_FORTUNE_SPIN_FINISH:
               §§push(-1317842261 ^ -702859991 ^ -1738851631 ^ -13410986);
               break;
            default:
               §§push(0x1A3577F5 ^ 0x25939047 ^ -85838372 ^ -985345432);
         }
         switch(§§pop())
         {
            case 0:
               this._1889e24cef25e1c4a9170ccc(null);
               this._a1e35e2af59b37b37c472c42();
               break;
            case 1:
               this._4ee6ba9426f18ff05e8d6704.update(param1);
               this._6e61fd0f77c3f38301e9c38c.update(param1);
               this._f9bc12ed3d750d01dd2133fb.buttonSpinFree.disable();
               this._f9bc12ed3d750d01dd2133fb.buttonSpinPaid.disable();
               _3a8a2602dcf9bf49b62e62af.play(_3a8a2602dcf9bf49b62e62af.SFX_079_UI_Wheel_of_fortune_spin);
               break;
            case 2:
               this._6e61fd0f77c3f38301e9c38c.rewardType = this._4ee6ba9426f18ff05e8d6704.pointerRewardType;
               break;
            case 3:
               this._4ee6ba9426f18ff05e8d6704.update(param1);
               this._6e61fd0f77c3f38301e9c38c.update(param1);
               this._f9bc12ed3d750d01dd2133fb.buttonSpinFree.enable();
               this._f9bc12ed3d750d01dd2133fb.buttonSpinPaid.enable();
               break;
            case 4:
               this._4ee6ba9426f18ff05e8d6704.update(param1);
               break;
            case 5:
               this._6e61fd0f77c3f38301e9c38c.update(param1);
               this._f9bc12ed3d750d01dd2133fb.buttonSpinFree.enable();
               this._f9bc12ed3d750d01dd2133fb.buttonSpinPaid.enable();
               _3a8a2602dcf9bf49b62e62af.play(_3a8a2602dcf9bf49b62e62af.SFX_078_UI_Wheel_of_fortune_win);
               break;
            default:
               Debug.assert(false,_95da7f1147c669197db81295._8f4866de82b7339154180ecb("則剂加劤劫刡剹勜剦刡剘剉劜剞勦削剥動分剛勫剁刦勑劸剫加劑剥刵务刣剃剓勬剳刐劺劢勵勆剁刪勴剋劫劅剋切剭刼刣剖勒剨勫刻勢劆劭勜剠勔劏剓剳劈刿创劈勡剝切劂剡劫勯勭劤勧劵勹勁効剪勳剃劳刎勅剈剓剱剛勍劺別勵剺劮剧勔刿劐刓勜劶劓劒剈創勧刑剎刀划勂劣剷劮剭剗劀刵勏勞勥勊助勆刢剉劤劔剓剠劊刈勐剳删刭勗制别刽","剭剢劆剥勊剜刼劊劽則勡刂利劕剝列") + param1);
         }
      }
      
      private function _bbbe05af921be7733df9d09a() : void
      {
         var _loc1_:int = -121772454 ^ -673451711 ^ -1962220025 ^ -1536364260;
         var _loc2_:int = -531669485 ^ 0x6E3BDA25 ^ -830942168 ^ -2034094329;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x170AE3E4 ^ -229130669 ^ -1624093908 ^ -1130272382))
            {
               case 0:
                  _loc1_ = this._52a178bc5d2c83e0122cab20.freeSpinTimeLeft;
                  if(_loc1_ == (-1090875258 ^ 0x2CCF62F1 ^ 0x6A4BD851 ^ -125949402))
                  {
                     _loc2_ = -1803767685 ^ -44397130 ^ -761394823 ^ 0x7D764BAC;
                  }
                  else
                  {
                     _loc2_ = 0x029CE71D ^ 0x79903A09 ^ 0x0D084404 ^ -1328880118;
                  }
                  break;
               case 1:
                  this._cbfcaa867359c09014d1e4a1();
                  this._f9bc12ed3d750d01dd2133fb.labelTimeLeft.text = _c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a.EST_DIALOG_WHEEL_OF_FORTUNE_LABEL_FREE_SPIN_READY);
                  _loc2_ = -867745848 ^ 0x5A72AC6A ^ -230361165 ^ -1564534006;
                  break;
               case 2:
                  return;
               case 3:
                  this._f9bc12ed3d750d01dd2133fb.labelTimeLeft.text = TimeConverter.toHMSString(TimeConverter.fromSeconds(_loc1_));
                  _loc2_ = -1563941444 ^ 0x3C731F6E ^ -1448778494 ^ -238018357;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function _45bdf3f9ec9e1c2a4138ad20() : void
      {
         this._f9bc12ed3d750d01dd2133fb.buttonSpinFree.visible = this._52a178bc5d2c83e0122cab20.freeSpinTimeLeft == (0x0C9CC58C ^ 0x24F74D12 ^ -1659548419 ^ -1249983389);
         this._f9bc12ed3d750d01dd2133fb.buttonSpinPaid.visible = this._52a178bc5d2c83e0122cab20.freeSpinTimeLeft > (0x360C8B86 ^ 0x5021D1E3 ^ 0x79608C79 ^ 0x1F4DD61C);
         this._f9bc12ed3d750d01dd2133fb.buttonSpinPaid.coins = this._52a178bc5d2c83e0122cab20.spinPriceFishcoins;
      }
      
      private function _26ffa3b042e492f797e1861a() : void
      {
         this._f9bc12ed3d750d01dd2133fb.labelDescription.visible = this._52a178bc5d2c83e0122cab20.freeSpinTimeLeft > (-866013447 ^ -1010143876 ^ -822569545 ^ -1051503054);
      }
      
      private function _a1e35e2af59b37b37c472c42() : void
      {
         this._cbfcaa867359c09014d1e4a1();
         this._c18e7f2eee9c039e06150272 = new Timer(-1156048187 ^ 0x3F7A8CA0 ^ -2036768520 ^ 0x02FBF655);
         this._c18e7f2eee9c039e06150272.addEventListener(TimerEvent.TIMER,this._1889e24cef25e1c4a9170ccc);
         this._c18e7f2eee9c039e06150272.start();
      }
      
      private function _cbfcaa867359c09014d1e4a1() : void
      {
         var _loc1_:int = -2058564625 ^ -855022147 ^ -1106241410 ^ -1258488648;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (-1726521147 ^ -364216008 ^ 0x1199E1A7 ^ 0x206D4ACF))
            {
               case 0:
                  return;
               case 1:
                  if(this._c18e7f2eee9c039e06150272 == null)
                  {
                     _loc1_ = -1604149236 ^ 0x01D52395 ^ 0x754E5F70 ^ -1773103492;
                  }
                  else
                  {
                     _loc1_ = 0x6DDD81DB ^ -531347682 ^ -1952486967 ^ 0x44BFE59B;
                  }
                  break;
               case 2:
                  this._c18e7f2eee9c039e06150272.removeEventListener(TimerEvent.TIMER,this._1889e24cef25e1c4a9170ccc);
                  this._c18e7f2eee9c039e06150272.stop();
                  this._c18e7f2eee9c039e06150272 = null;
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      override public function _90eac9ca552fe54c2ca0299f() : void
      {
         this._cbfcaa867359c09014d1e4a1();
         this._52a178bc5d2c83e0122cab20 = null;
         super._90eac9ca552fe54c2ca0299f();
      }
   }
}

