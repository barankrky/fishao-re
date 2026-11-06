package com.ax3.fishao.locations.entries
{
   import com.ax3.fishao.entries._810c4ade948afb64e9c7ee25;
   import com.ax3.fishao.locations._3e7dee0195ecd6b652b730f1;
   import com.ax3.fishao.locations.base._4039c287ddb4ef46ab65ab0e;
   import com.ax3.fishao.model.vo._cff30366d510ea862540bfef;
   import com.ax3.fishao.tutorial._283b592e1b144e604db439f2;
   import com.ax3.fishao.tutorial.views.panels.bite_panel._c0bcdb5aa600b06f6b5897a2;
   import com.ax3.fishao.tutorial.views.panels.user_popup._ff2ebc85607ea6db1e18161d;
   import com.ax3.fishao.vars.app;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.utils.clearTimeout;
   
   public class _0d47696161f1136a4c3be130 extends _c9513c48978d5034cc9ff2f4
   {
      
      private var _3df2413e632232d06d49eda5:Boolean;
      
      private var _f6eb910a42a718b3108b02de:Boolean;
      
      private var _aeb68fddb9e43b6979bdef3c:_283b592e1b144e604db439f2;
      
      private var _eacd29b37b852a3f333f4f63:Boolean;
      
      public function _0d47696161f1136a4c3be130(param1:_810c4ade948afb64e9c7ee25, param2:_4039c287ddb4ef46ab65ab0e, param3:_3e7dee0195ecd6b652b730f1)
      {
         super(param1,param2,param3);
         this._3df2413e632232d06d49eda5 = false;
         this._aeb68fddb9e43b6979bdef3c = GameSwf.instance.managerTutorial;
      }
      
      override protected function get canFishing() : Boolean
      {
         var _loc1_:Boolean = false;
         if(this._aeb68fddb9e43b6979bdef3c.isTutorialCommonComplete)
         {
            _loc1_ = super.canFishing;
         }
         else
         {
            _loc1_ = this._3df2413e632232d06d49eda5 && super.canFishing;
         }
         return _loc1_;
      }
      
      public function _ff5cb7d960bbce83c0d99e6c(param1:Boolean) : void
      {
         var _loc2_:int = 0x6771AB96 ^ 0x25D375E5 ^ -134585887 ^ -1092321348;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x670D4310 ^ -650455554 ^ 0x4FE38D01 ^ -93791295))
            {
               case 0:
                  this._3df2413e632232d06d49eda5 = param1;
                  if(!this._3df2413e632232d06d49eda5)
                  {
                     _loc2_ = 0x61F0648E ^ -1881307470 ^ -2048500960 ^ 0x60777933;
                  }
                  else
                  {
                     _loc2_ = 0x263D6E99 ^ 0x1F93EBEE ^ 0x6708B6F2 ^ 0x551AF3A9;
                  }
                  break;
               case 1:
                  _6227fd5da1ce67d0b36a4f90();
                  this._ea52ddaca1a080cc2518c8da();
                  _loc2_ = 0x37AEDDA8 ^ 0x10D21B24 ^ 0x51FC2C35 ^ 0x7D3C2A95;
                  break;
               case 2:
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function set searchRiver(param1:Boolean) : void
      {
         this._f6eb910a42a718b3108b02de = param1;
      }
      
      public function set disableHideRod(param1:Boolean) : void
      {
         this._eacd29b37b852a3f333f4f63 = param1;
      }
      
      override public function onMouseClick(param1:Number, param2:Number) : void
      {
         if(this._aeb68fddb9e43b6979bdef3c == null || this._aeb68fddb9e43b6979bdef3c.isTutorialCommonComplete)
         {
            super.onMouseClick(param1,param2);
            return;
         }
         if(this._1cc3d070e1f499bddccd0742())
         {
            return;
         }
         app.performanceManager.sleepMode = false;
         if(_93db766860106b900c89ac3a() || inBiteProcess)
         {
            return;
         }
         _139c8b808f423ad8ad174e74(param1,param2);
      }
      
      override protected function _9233e7c18b76169f8f59d3b2(param1:int, param2:int, param3:_cff30366d510ea862540bfef, param4:Boolean, param5:int) : void
      {
         var _loc6_:int = -1147780937 ^ -850687853 ^ 0x34915718 ^ 0x178B2B10;
         loop0:
         while(true)
         {
            switch(_loc6_ ^ (0x3C2C5F29 ^ -1373135599 ^ 0x15DF656A ^ -770501764))
            {
               case 0:
                  clearTimeout(_bitePanelShowTimeoutId);
                  _bitePanelShowTimeoutId = 0x77B6D5E6 ^ 0x0B6228C5 ^ -1133423220 ^ 0x3F5A5750;
                  GameSwf.instance.managerTutorial.tutorialCommon._0e1bc13a989d12a3776df86c();
                  return;
               case 1:
                  return;
               case 2:
                  super._9233e7c18b76169f8f59d3b2(param1,param2,param3,param4,param5);
                  if(this._aeb68fddb9e43b6979bdef3c.isTutorialCommonComplete)
                  {
                     _loc6_ = 0x25C8389C ^ 0x40A75323 ^ -1920123720 ^ -1121590488;
                  }
                  else
                  {
                     _loc6_ = 0x2BD693CB ^ -705030649 ^ -1964906651 ^ 0x210AD687;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      override protected function _700de4bb8697d0fa859ddab2(param1:Event) : void
      {
         var _loc2_:int = -904954147 ^ 0x2814C20C ^ 0x76693F88 ^ -1626934821;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (-761988765 ^ -572634111 ^ 0x3F084533 ^ 0x3B3682D3))
            {
               case 0:
                  if(this._aeb68fddb9e43b6979bdef3c.isTutorialCommonComplete)
                  {
                     _loc2_ = -256644234 ^ 0x035D8658 ^ 0x596B76D9 ^ -1578014346;
                  }
                  else
                  {
                     _loc2_ = -1914362663 ^ -1275976813 ^ -1820603074 ^ -1508329228;
                  }
                  break;
               case 1:
                  return;
               case 2:
                  GameSwf.instance.managerTutorial.tutorialCommon._700de4bb8697d0fa859ddab2();
                  _loc2_ = 0x5D67F9BF ^ 0x13787F70 ^ 0x3A83DAA5 ^ 0x7FE82EE9;
                  break;
               case 3:
                  super._700de4bb8697d0fa859ddab2(param1);
                  _loc2_ = 0x1153D2FA ^ 0x76428DDB ^ 0x66D7D534 ^ 0x0AB2F896;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      override protected function _610f06586492b058cadfdf70() : void
      {
         _bitePanel = new _c0bcdb5aa600b06f6b5897a2();
      }
      
      override protected function _ca56e0fbc229ff7f04ebb46b() : void
      {
         _controllerUserPopup = new _ff2ebc85607ea6db1e18161d(this);
         _controllerUserPopup.buttonPmVisible = false;
      }
      
      override public function _89619ce3363ecc3ce96c8aba() : void
      {
         super._89619ce3363ecc3ce96c8aba();
         if(!this._aeb68fddb9e43b6979bdef3c.isTutorialCommonComplete)
         {
            if(this._f6eb910a42a718b3108b02de && isCloseToTheLake)
            {
               GameSwf.instance.managerTutorial.tutorialCommon._0e1bc13a989d12a3776df86c();
            }
         }
      }
      
      public function _5b998b181997578708537b6a() : Point
      {
         var _loc1_:Point = null;
         var _loc2_:Point = null;
         var _loc3_:Point = null;
         if(!this.isCloseToTheLake)
         {
            return _loc3_;
         }
         for each(_loc1_ in _fishingArea)
         {
            _loc2_ = new Point(_loc1_.x + graphic.x,_loc1_.y + graphic.y);
            if(moveStrategy.isLakeHit(_loc2_))
            {
               _loc3_ = _loc2_;
               break;
            }
         }
         return _loc3_;
      }
      
      override public function _ea52ddaca1a080cc2518c8da() : void
      {
         var _loc1_:int = 0x78FAAAE0 ^ -693726112 ^ 0x344FE745 ^ 0x1ACEC4CC;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (0x181E095B ^ -650119240 ^ -1853400438 ^ -797197983))
            {
               case 0:
                  super._ea52ddaca1a080cc2518c8da();
                  return;
               case 1:
                  if(this._eacd29b37b852a3f333f4f63)
                  {
                     _loc1_ = -388834807 ^ 0x3EA31261 ^ -1507329522 ^ -259313812;
                  }
                  else
                  {
                     _loc1_ = -591277574 ^ -1051756518 ^ -331437971 ^ 0x716D1C85;
                  }
                  break;
               case 2:
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      override public function _912f511bdd1d607aa06afe6c(param1:Number, param2:Number, param3:Number, param4:Boolean = false) : void
      {
         var _loc5_:Boolean = this._3df2413e632232d06d49eda5;
         _loc5_ ||= this._aeb68fddb9e43b6979bdef3c == null || this._aeb68fddb9e43b6979bdef3c.isTutorialCommonComplete;
         if(_loc5_)
         {
            super._912f511bdd1d607aa06afe6c(param1,param2,param3,param4);
         }
      }
      
      override protected function _9bb0902c5747c416f00d19ae() : void
      {
         if(this._aeb68fddb9e43b6979bdef3c == null || this._aeb68fddb9e43b6979bdef3c.isTutorialCommonComplete)
         {
            super._9bb0902c5747c416f00d19ae();
         }
      }
   }
}

