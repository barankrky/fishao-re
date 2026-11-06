package com.ax3.fishao.view.dialogs.base.controllers.implementations.improvable
{
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs.base.controllers.implementations._e2bbbb1ef110bb0aa28b913f;
   import com.ax3.fishao.view.dialogs.base.views.implementations.improvable._37c3612007dbafee748d61ae;
   import com.ax3.fishao.view.dialogs.fishingLine.model._39c10ed960794a3ab8a11641;
   import com.ax3.jss.requests.server._5e1bab759fcaea6d1f84faa7;
   import com.ax3.utils.timer._34a2ba6ad978d976b8b0f5a4;
   import com.ax3.utils.timer._92d7656ddc3c3da810e99c74;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import protocol.api.base.ResponseOk;
   import protocol.api.improvable.FscExtensionImprovable;
   import protocol.api.improvable.ImprovableLevelInfo;
   
   public class _fbb392388cc0ed4699e6c8ee extends _e2bbbb1ef110bb0aa28b913f
   {
      
      private var _35fdbbc39c69b1d11a2f5dd3:_37c3612007dbafee748d61ae;
      
      private var _35541415216a20e17e9b7026:ImprovableLevelInfo;
      
      private var _f8835b5dcca3075e6c258f4e:_39c10ed960794a3ab8a11641;
      
      private var _1e5813743e89498f1483ca80:FscExtensionImprovable;
      
      private var _4d160937f9ab7c2f116abfdb:_34a2ba6ad978d976b8b0f5a4;
      
      private var _473a636d32361f6f1e5406df:Boolean;
      
      public function _fbb392388cc0ed4699e6c8ee(param1:DisplayObjectContainer, param2:_39c10ed960794a3ab8a11641, param3:FscExtensionImprovable)
      {
         this._35fdbbc39c69b1d11a2f5dd3 = new _37c3612007dbafee748d61ae(this,param1);
         super(this._35fdbbc39c69b1d11a2f5dd3);
         this._f8835b5dcca3075e6c258f4e = Debug.assertNotEqual(param2,null);
         this._1e5813743e89498f1483ca80 = Debug.assertNotEqual(param3,null);
         this.init();
      }
      
      public function set entity(param1:ImprovableLevelInfo) : void
      {
         var _loc2_:int = -2054917104 ^ 0x1FB37DBA ^ -1298145768 ^ -146712137;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x2BDBE8DD ^ 0x5A1DB277 ^ 0x1B6F32D8 ^ -1254037899))
            {
               case 0:
                  return;
               case 1:
                  this._35541415216a20e17e9b7026 = param1;
                  this._fe4893a9181e7ce647608247();
                  return;
               case 2:
                  if(this._35541415216a20e17e9b7026 == param1)
                  {
                     _loc2_ = 0x4EFC8FEF ^ -159813408 ^ -1781664944 ^ -224296360;
                  }
                  else
                  {
                     _loc2_ = 0x2B10A781 ^ 0x09697652 ^ -818091778 ^ 0x32ACB72B;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function get _c7cb0a759ba4b679df19a787() : uint
      {
         var _loc1_:uint = uint(0x1EE5FDFD ^ -302930561 ^ -1148369324 ^ 0x48991ED6);
         var _loc2_:int = this._f8835b5dcca3075e6c258f4e.timeLeftToNextUpgrade;
         if(_loc2_ < (0x5A1E12E7 ^ -457544069 ^ 0x553D62 ^ -1091485186))
         {
            return _loc1_;
         }
         var _loc3_:uint = Math.ceil(_loc2_ / (0x137A802B ^ -1645174337 ^ 0x46CCAF68 ^ -934900032));
         return uint(Math.ceil(_loc3_ / (0x7077D4E3 ^ 0x158352BD ^ 0x6FDFAD1B ^ 0x0A2B2B79)));
      }
      
      override public function _4f254116765eb1a39d6712be(param1:Object, param2:Event) : Boolean
      {
         var _loc3_:Boolean = super._4f254116765eb1a39d6712be(param1,param2);
         if(!_loc3_)
         {
            var _loc4_:Object = param1;
            switch(this._35fdbbc39c69b1d11a2f5dd3.buttonBuy === _loc4_ ? 0x75B9531F ^ 0x4CC6D57B ^ -2091861997 ^ -1171308937 : -1879455577 ^ 0x1FB37850 ^ -82247065 ^ 0x6B53B291)
            {
               case 0:
                  this._2e254a3f0d1f4b3cdf9dfda6();
                  break;
               default:
                  Debug.assert(false);
            }
         }
         return _loc3_;
      }
      
      private function _2e254a3f0d1f4b3cdf9dfda6() : void
      {
         var needShowDialogBuyFishcoins:Boolean = false;
         if(this._473a636d32361f6f1e5406df)
         {
            return;
         }
         needShowDialogBuyFishcoins = false;
         if(this._f8835b5dcca3075e6c258f4e.isNowUpgrading)
         {
            if(app.user.fishcoins >= this._c7cb0a759ba4b679df19a787)
            {
               this._473a636d32361f6f1e5406df = true;
               this._1e5813743e89498f1483ca80.upgradeLevelEarly(function(param1:_5e1bab759fcaea6d1f84faa7):void
               {
                  if(param1 is ResponseOk)
                  {
                     _f8835b5dcca3075e6c258f4e._f4e547982d74083b0bb47c80();
                  }
                  _473a636d32361f6f1e5406df = false;
               });
            }
            else
            {
               needShowDialogBuyFishcoins = true;
            }
         }
         else if(app.user.fishcoins >= this._35541415216a20e17e9b7026.priceUpgrade)
         {
            this._473a636d32361f6f1e5406df = true;
            this._1e5813743e89498f1483ca80.upgradeLevel(function(param1:_5e1bab759fcaea6d1f84faa7):void
            {
               if(param1 is ResponseOk)
               {
                  _f8835b5dcca3075e6c258f4e._c4ca5941d1516c4093d23e7e(_35541415216a20e17e9b7026);
                  _d57045de842d0cecb481b1a1();
               }
               _473a636d32361f6f1e5406df = false;
            });
         }
         else
         {
            needShowDialogBuyFishcoins = true;
         }
         if(needShowDialogBuyFishcoins)
         {
            GameSwf.instance._e6f0a7b005cacf7751286e97();
         }
      }
      
      private function _e6207ca491f7745f65d9af93(param1:uint, param2:uint) : void
      {
         var _loc3_:int = 0x69C66163 ^ 0x74B75375 ^ -1502733231 ^ -476557223;
         loop0:
         while(true)
         {
            switch(_loc3_ ^ (-1308540401 ^ 0x6DA1855A ^ -132320064 ^ 0x7F3B4D89))
            {
               case 0:
                  this._35fdbbc39c69b1d11a2f5dd3.timeLeft = this._f8835b5dcca3075e6c258f4e.timeLeftToNextUpgrade;
                  this._35fdbbc39c69b1d11a2f5dd3.upgradePrice = this._c7cb0a759ba4b679df19a787;
                  _loc3_ = -1466213495 ^ -1199130911 ^ -72962629 ^ -1287897396;
                  break;
               case 1:
                  this._88700858c068c6e380d59b52();
                  _loc3_ = 0x4A8463B3 ^ 0x7740BDCD ^ -897943494 ^ -1355163557;
                  break;
               case 2:
                  if(!this._f8835b5dcca3075e6c258f4e.isNowUpgrading)
                  {
                     _loc3_ = -1818824874 ^ 0x40C5C4AB ^ 0x20C41CC1 ^ -1424996063;
                  }
                  else
                  {
                     _loc3_ = 0x5858FCA8 ^ -1084363581 ^ -1100399931 ^ 0x01EB54B2;
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
         this._4d160937f9ab7c2f116abfdb = _92d7656ddc3c3da810e99c74.getInstance()._57ad3faeff9ca92cbf9fe447(_34a2ba6ad978d976b8b0f5a4.TIMER_1S);
         this._473a636d32361f6f1e5406df = false;
      }
      
      private function _fe4893a9181e7ce647608247() : void
      {
         this._d57045de842d0cecb481b1a1();
      }
      
      private function _d57045de842d0cecb481b1a1() : void
      {
         var _loc1_:int = -1608639114 ^ -981725567 ^ 0x5151DC3D ^ 0x30D75FE0;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (0x2D309AD4 ^ -137018968 ^ -56192585 ^ 0x22A7DAE3))
            {
               case 0:
                  this._35fdbbc39c69b1d11a2f5dd3._31a3c39eec073cc64db8f49c(this._f8835b5dcca3075e6c258f4e.isNowUpgrading,this._35541415216a20e17e9b7026.number);
                  this._35fdbbc39c69b1d11a2f5dd3.upgradePrice = this._35541415216a20e17e9b7026.priceUpgrade;
                  this._35fdbbc39c69b1d11a2f5dd3.timeLeft = this._35541415216a20e17e9b7026.timeUpgrade;
                  _loc1_ = -2021690846 ^ 0x50FD88D6 ^ 0x2181C83A ^ -219700507;
                  break;
               case 1:
                  this._35fdbbc39c69b1d11a2f5dd3._31a3c39eec073cc64db8f49c(this._f8835b5dcca3075e6c258f4e.isNowUpgrading,-204045531 ^ 0x6E6235F5 ^ -1806022948 ^ 0x09EEF00C);
                  this._35fdbbc39c69b1d11a2f5dd3.timeLeft = this._f8835b5dcca3075e6c258f4e.timeLeftToNextUpgrade;
                  this._35fdbbc39c69b1d11a2f5dd3.upgradePrice = this._c7cb0a759ba4b679df19a787;
                  this._cd69a3a96633d0d86272e4d1();
                  _loc1_ = 0x1A3D13D0 ^ 0x75C42509 ^ 0x48249C51 ^ 0x23393AA3;
                  break;
               case 2:
                  if(this._f8835b5dcca3075e6c258f4e.isNowUpgrading)
                  {
                     _loc1_ = 0x671B9457 ^ -425464236 ^ -448922165 ^ 0x606117E1;
                  }
                  else
                  {
                     _loc1_ = -1508648500 ^ -1008930396 ^ 0x7ACAA108 ^ 0x1BE11948;
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
      
      private function _cd69a3a96633d0d86272e4d1() : void
      {
         this._4d160937f9ab7c2f116abfdb._475178699397df7592a9026e(this._e6207ca491f7745f65d9af93);
      }
      
      private function _88700858c068c6e380d59b52() : void
      {
         this._4d160937f9ab7c2f116abfdb._95b5d5379ad5d337e4cae733(this._e6207ca491f7745f65d9af93);
      }
      
      override public function _90eac9ca552fe54c2ca0299f() : void
      {
         this._88700858c068c6e380d59b52();
         super._90eac9ca552fe54c2ca0299f();
      }
   }
}

