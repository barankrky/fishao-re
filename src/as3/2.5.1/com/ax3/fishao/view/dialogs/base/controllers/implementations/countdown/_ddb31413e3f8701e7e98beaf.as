package com.ax3.fishao.view.dialogs.base.controllers.implementations.countdown
{
   import com.ax3.fishao.locations.base._67f8febc099eaa05c48aa41e;
   import com.ax3.fishao.model._020eb172ea5f58203a09fdb5;
   import com.ax3.fishao.vars.app;
   import com.ax3.utils.timer._34a2ba6ad978d976b8b0f5a4;
   import com.ax3.utils.timer._69eec7d2f73604da25ccda04;
   import com.ax3.utils.timer._92d7656ddc3c3da810e99c74;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.utils.getTimer;
   
   public class _ddb31413e3f8701e7e98beaf extends Sprite implements _69eec7d2f73604da25ccda04
   {
      
      private var _7c0d5cb7831a30823caea667:_72bc06861ce0187625c1f6b9;
      
      private var _602810ccbf2f284406135227:_020eb172ea5f58203a09fdb5;
      
      private var _a412b4957a1263251c73e5b1:Boolean;
      
      public function _ddb31413e3f8701e7e98beaf(param1:int, param2:int)
      {
         super();
         var _loc3_:DisplayObjectContainer = new gViewCountdown();
         this._7c0d5cb7831a30823caea667 = new _72bc06861ce0187625c1f6b9(_loc3_,param1,param2);
         this._602810ccbf2f284406135227 = new _020eb172ea5f58203a09fdb5(param1 * (0x15D8AA9D ^ -1960828694 ^ -166050472 ^ 0x68E2CCC7),getTimer());
         this._a412b4957a1263251c73e5b1 = param1 == (0x600443A4 ^ -109481900 ^ 0x4A2D96C6 ^ -749689546);
         this.init();
      }
      
      public function get controllerCountdown() : _72bc06861ce0187625c1f6b9
      {
         return this._7c0d5cb7831a30823caea667;
      }
      
      private function init() : void
      {
         _92d7656ddc3c3da810e99c74.getInstance()._57ad3faeff9ca92cbf9fe447(_34a2ba6ad978d976b8b0f5a4.TIMER_1S).add(this);
         var _loc1_:DisplayObjectContainer = this._7c0d5cb7831a30823caea667.view.source as DisplayObjectContainer;
         addChild(_loc1_);
         app.dialogManager.assetWrappersProcessor.process(_loc1_);
      }
      
      public function update(param1:uint, param2:uint) : void
      {
         var _loc3_:_67f8febc099eaa05c48aa41e = null;
         var _loc4_:int = this._602810ccbf2f284406135227._0995b3aa2fe33ceaf8dd4322(param1);
         if(_loc4_ >= (0x048B9A31 ^ -83617819 ^ 0x3B7DD91D ^ -990751543) && !this._a412b4957a1263251c73e5b1)
         {
            this._7c0d5cb7831a30823caea667.timeLeft = _loc4_;
            this._a412b4957a1263251c73e5b1 = _loc4_ == (-1095345661 ^ -1651056205 ^ 0x5DE02F16 ^ 0x7EC094A6);
         }
         else
         {
            if(this._7c0d5cb7831a30823caea667.onCompleteFunction != null)
            {
               this._7c0d5cb7831a30823caea667.onCompleteFunction();
            }
            _loc3_ = GameSwf.currentLocationDialog;
            if(_loc3_ != null)
            {
               _loc3_.gui._7da8f3c12244070df2c23152(this._7c0d5cb7831a30823caea667.type);
            }
         }
      }
      
      public function destroy() : void
      {
         var _loc1_:int = -2082228647 ^ 0x26424502 ^ 0x7529A8AB ^ 0x51164AF8;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (-154210387 ^ 0x24EF9C18 ^ 0x57471492 ^ 0x04F8762D))
            {
               case 0:
                  this.parent.removeChild(this);
                  _loc1_ = -826984372 ^ -502890599 ^ 0x43CFCA8A ^ -287138732;
                  break;
               case 1:
                  this._602810ccbf2f284406135227 = null;
                  this._7c0d5cb7831a30823caea667._90eac9ca552fe54c2ca0299f();
                  this._7c0d5cb7831a30823caea667 = null;
                  return;
               case 2:
                  _92d7656ddc3c3da810e99c74.getInstance()._57ad3faeff9ca92cbf9fe447(_34a2ba6ad978d976b8b0f5a4.TIMER_1S).remove(this);
                  if(this.parent != null)
                  {
                     _loc1_ = -959169738 ^ 0x66248252 ^ -1068553006 ^ -517897028;
                  }
                  else
                  {
                     _loc1_ = -354379085 ^ 0x556BC416 ^ 0x39A0FA72 ^ 0x07B5B5DC;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
   }
}

