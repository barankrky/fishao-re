package com.ax3.fishao.view.dialogs.wheel_of_fortune.controllers
{
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.display.autoscalable._a4e47350c89a50d87a148c28;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs.base.controllers.implementations._e2bbbb1ef110bb0aa28b913f;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces._6b63fd0a4028eb279b227831;
   import com.ax3.fishao.view.dialogs.wheel_of_fortune._ebfae60a420fd1c3ccdd4d9b;
   import com.ax3.fishao.view.dialogs.wheel_of_fortune.model.base._60d64d32c61de9fe092aecc7;
   import com.ax3.fishao.view.dialogs.wheel_of_fortune.model.base._c09200cfbfabf4d55af08be2;
   import com.ax3.fishao.view.dialogs.wheel_of_fortune.views._77731c23f1329f191b2cc089;
   import flash.display.DisplayObjectContainer;
   
   public class _0809de889a8dd3ae24ab500e extends _e2bbbb1ef110bb0aa28b913f
   {
      
      private var _da154769e0a89a1a931a3bd3:_77731c23f1329f191b2cc089;
      
      private var _9d752c07023c144ef99cc265:_ebfae60a420fd1c3ccdd4d9b;
      
      public function _0809de889a8dd3ae24ab500e(param1:DisplayObjectContainer)
      {
         this._da154769e0a89a1a931a3bd3 = new _77731c23f1329f191b2cc089(this,param1);
         super(this._da154769e0a89a1a931a3bd3);
         this.init();
      }
      
      public function set rewardType(param1:String) : void
      {
         this._da154769e0a89a1a931a3bd3.rewardTypeWheel = param1;
      }
      
      private function _231e668a2b152e73f8834e80() : void
      {
         var _loc1_:int = -1742758875 ^ 0x1453C41B ^ -567853424 ^ 0x3DA54AD8;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (0x69DC71F7 ^ 0x32DF5D33 ^ -1574273136 ^ -1763213536))
            {
               case 0:
                  return;
               case 1:
                  this._da154769e0a89a1a931a3bd3._51590474d65eddb9beb51bb6();
                  _loc1_ = -650824241 ^ -1587485501 ^ -226096385 ^ -451020921;
                  break;
               case 2:
                  this._da154769e0a89a1a931a3bd3._73c10a784bdfcf692cc77c95();
                  if(this._da154769e0a89a1a931a3bd3.viewPlaceholder.alpha > (0x57D59E3C ^ 0x25604D3D ^ -1911887575 ^ -54576600))
                  {
                     _loc1_ = -1999519691 ^ -1371488764 ^ -2119225067 ^ -923770031;
                  }
                  else
                  {
                     _loc1_ = -1312382668 ^ 0x0A076532 ^ -924031639 ^ 0x1CE38D1B;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function _d5a58bde63792efd61ab4984() : void
      {
         this._da154769e0a89a1a931a3bd3.rewardTypeWheel = _c09200cfbfabf4d55af08be2.EWOFRT_UNKNOWN;
      }
      
      private function _c1c7e9a6f592d9e2a3d5dca0() : void
      {
         var _loc1_:_60d64d32c61de9fe092aecc7 = this._9d752c07023c144ef99cc265.spinReward;
         this._da154769e0a89a1a931a3bd3.textTop = _loc1_.translationUserTop;
         this._da154769e0a89a1a931a3bd3.textBottom = _loc1_.translationUserBottom;
         this._da154769e0a89a1a931a3bd3._2504736edc2db8beb52d9672();
         this._500d4b4cf79a2f1f4a4e4bd0(_loc1_);
      }
      
      private function init() : void
      {
         this._9d752c07023c144ef99cc265 = GameSwf.instance.managerWheelOfFortune;
         this._da154769e0a89a1a931a3bd3.rewardTypeWheel = _c09200cfbfabf4d55af08be2.EWOFRT_UNKNOWN;
      }
      
      override public function update(param1:String) : void
      {
         switch(param1)
         {
            case _6b63fd0a4028eb279b227831.ECU_WHEEL_OF_FORTUNE_SPIN_START:
               §§push(0x1E560AC8 ^ 0x5423BD3A ^ 0x5B613585 ^ 0x11148277);
               break;
            case _6b63fd0a4028eb279b227831.ECU_WHEEL_OF_FORTUNE_SPIN_ERROR:
               §§push(0x43A3B5CE ^ 0x20079608 ^ -1085004424 ^ -588249409);
               break;
            case _6b63fd0a4028eb279b227831.ECU_WHEEL_OF_FORTUNE_SPIN_FINISH:
               §§push(-1639494604 ^ -1536415257 ^ 0x4BC55B4A ^ 0x71EE3E9B);
               break;
            default:
               §§push(-413835130 ^ 0x04CC6DAE ^ -496461648 ^ 0x01F1959B);
         }
         switch(§§pop())
         {
            case 0:
               this._231e668a2b152e73f8834e80();
               break;
            case 1:
               this._d5a58bde63792efd61ab4984();
               break;
            case 2:
               this._c1c7e9a6f592d9e2a3d5dca0();
               break;
            default:
               Debug.assert(false,_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ဲჰჰჁဆ။ဤႀ႖Ⴖူၭဇგ႙ၩကၣဴჺႽႍၤႾင၏းးႀႭჽၔဂႍ჊მ჻်႓ဂငၡ႒Ⴇ႑ၸႆၻကၘခၪჸႳဆჰၵ၄ဲ၍ိဘ်ს၆ၾၺွჇၣ၊ჱထဦာၲဣခၤၫလ္ႸჃႢ၎ყ႖၍ၣჄ჆ჿ჎႑၇ႌၞၖ၇ႫႶဴၱლႱါ჉Ⴙ႟ၡႋၲၽ၎ၰვႪჭၸეၞၔၑၴჷဨဢგြဲစျညჟဟ","ဃသეჸჽၵႥှ်ဍးဂတဒဲဎ") + param1);
         }
      }
      
      private function _500d4b4cf79a2f1f4a4e4bd0(param1:_60d64d32c61de9fe092aecc7) : void
      {
         this._da154769e0a89a1a931a3bd3.viewPlaceholder.removeChildren();
         var _loc2_:String = param1.imageUrl;
         if(_loc2_ == "")
         {
            return;
         }
         var _loc3_:_a4e47350c89a50d87a148c28 = new _a4e47350c89a50d87a148c28(null);
         _loc3_.width = this._da154769e0a89a1a931a3bd3.viewPlaceholderSize.x;
         _loc3_.height = this._da154769e0a89a1a931a3bd3.viewPlaceholderSize.y;
         app.resourceManager.replaceBitmapDataFromURL(_loc3_,_loc2_);
         this._da154769e0a89a1a931a3bd3.viewPlaceholder.addChild(_loc3_);
         this._da154769e0a89a1a931a3bd3._47fbc8afc244536182afffeb();
      }
   }
}

