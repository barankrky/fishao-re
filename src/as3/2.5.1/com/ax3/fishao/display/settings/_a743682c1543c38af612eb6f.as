package com.ax3.fishao.display.settings
{
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces._988093efdfa36e13bfd6c6cf;
   import com.ax3.fishao.view.dialogs.base.views.implementations._04cce4e240ff9bea66c1b7f7;
   import com.ax3.fishao.view.dialogs.base.views.interfaces._ebeac595a62fba6d6fcea1c2;
   import com.ax3.fishao.view.dialogs.string._85b2141a2303f6545d411d7a;
   import flash.display.MovieClip;
   import flash.geom.Point;
   
   public class _a743682c1543c38af612eb6f extends _04cce4e240ff9bea66c1b7f7
   {
      
      private var _f01250baa77952c69e851408:gViewSettings = new gViewSettings();
      
      private var _e825d7585de362bf0cf1a121:_2e64381b8bd1832674d6adbe;
      
      private var _d6dd0de56767bb32374e7ec6:_2b7a3cb04ffcd1e3a128f15b;
      
      private var _15d4099d94e1d156aecb334a:_2b7a3cb04ffcd1e3a128f15b;
      
      private var _b004c4f28a2233a06fd78eee:_2b7a3cb04ffcd1e3a128f15b;
      
      private var _31099be3300d230498659af2:_2b7a3cb04ffcd1e3a128f15b;
      
      private var _188ef923ffd0ea56d73a77c2:_2b7a3cb04ffcd1e3a128f15b;
      
      private var _1a72bc7fff7192e38b732ddf:_2b7a3cb04ffcd1e3a128f15b;
      
      private var _03c11f8b43e09baf1e0eaf2d:_2b7a3cb04ffcd1e3a128f15b;
      
      private var _24135f98ae0c692b74ace5ea:_2b7a3cb04ffcd1e3a128f15b;
      
      private var _d0e7e1289184535f09bc64bf:_c76e116381f923a097c7442e;
      
      public function _a743682c1543c38af612eb6f(param1:_988093efdfa36e13bfd6c6cf)
      {
         super(param1,this._f01250baa77952c69e851408);
         this.init();
      }
      
      public function get buttonMusic() : _2b7a3cb04ffcd1e3a128f15b
      {
         return this._d6dd0de56767bb32374e7ec6;
      }
      
      public function get buttonModerator() : _2e64381b8bd1832674d6adbe
      {
         return this._e825d7585de362bf0cf1a121;
      }
      
      public function get buttonSound() : _2b7a3cb04ffcd1e3a128f15b
      {
         return this._15d4099d94e1d156aecb334a;
      }
      
      public function get buttonPling() : _2b7a3cb04ffcd1e3a128f15b
      {
         return this._31099be3300d230498659af2;
      }
      
      public function get buttonFullscreen() : _2b7a3cb04ffcd1e3a128f15b
      {
         return this._188ef923ffd0ea56d73a77c2;
      }
      
      public function get buttonSettings() : _2b7a3cb04ffcd1e3a128f15b
      {
         return this._b004c4f28a2233a06fd78eee;
      }
      
      public function get buttonEvents() : _2b7a3cb04ffcd1e3a128f15b
      {
         return this._1a72bc7fff7192e38b732ddf;
      }
      
      public function get buttonClubs() : _2b7a3cb04ffcd1e3a128f15b
      {
         return this._24135f98ae0c692b74ace5ea;
      }
      
      public function get buttonFriends() : _2b7a3cb04ffcd1e3a128f15b
      {
         return this._03c11f8b43e09baf1e0eaf2d;
      }
      
      public function get viewArrowEvents() : _ebeac595a62fba6d6fcea1c2
      {
         return this._d0e7e1289184535f09bc64bf;
      }
      
      private function init() : void
      {
         var _loc1_:Point = new Point(-1477690173 ^ -1160099169 ^ 0xFCC130 ^ 0x1DCAB76C,-104707126 ^ 0x4B623D86 ^ 0x157C9CA6 ^ -1478694164);
         var _loc2_:Point = new Point(0x5C284938 ^ 0x054D6F8A ^ 0x509A0109 ^ -167716799,-1173810081 ^ -1619478334 ^ 0x65652462 ^ 0x401488FF);
         this._e825d7585de362bf0cf1a121 = new _2e64381b8bd1832674d6adbe(controller,this._f01250baa77952c69e851408.buttonModerator);
         this._e825d7585de362bf0cf1a121.offset = _loc1_;
         this._d6dd0de56767bb32374e7ec6 = this._6829b0317ed6f6eedf73fe03(this._f01250baa77952c69e851408.buttonMusic,_loc1_);
         this._15d4099d94e1d156aecb334a = this._6829b0317ed6f6eedf73fe03(this._f01250baa77952c69e851408.buttonSound,_loc1_);
         this._b004c4f28a2233a06fd78eee = this._6829b0317ed6f6eedf73fe03(this._f01250baa77952c69e851408.buttonSettings,_loc1_);
         this._31099be3300d230498659af2 = this._6829b0317ed6f6eedf73fe03(this._f01250baa77952c69e851408.buttonPling,_loc1_);
         this._188ef923ffd0ea56d73a77c2 = this._6829b0317ed6f6eedf73fe03(this._f01250baa77952c69e851408.buttonFullscreen,_loc1_);
         this._1a72bc7fff7192e38b732ddf = this._6829b0317ed6f6eedf73fe03(this._f01250baa77952c69e851408.buttonEvents,_loc2_,_85b2141a2303f6545d411d7a.EST_UI_BUTTON_EVENTS_TOOLTIP);
         this._03c11f8b43e09baf1e0eaf2d = this._6829b0317ed6f6eedf73fe03(this._f01250baa77952c69e851408.buttonFriends,_loc2_,_85b2141a2303f6545d411d7a.EST_UI_BUTTON_FRIENDS_TOOLTIP);
         this._24135f98ae0c692b74ace5ea = this._6829b0317ed6f6eedf73fe03(this._f01250baa77952c69e851408.buttonClubs,_loc2_,_85b2141a2303f6545d411d7a.EST_UI_BUTTON_CLUBS_TOOLTIP);
         this._d0e7e1289184535f09bc64bf = new _c76e116381f923a097c7442e(controller,this._f01250baa77952c69e851408.viewArrow,_85b2141a2303f6545d411d7a.EST_UI_BUTTON_EVENTS_ARROW);
      }
      
      private function _6829b0317ed6f6eedf73fe03(param1:MovieClip, param2:Point, param3:String = null) : _2b7a3cb04ffcd1e3a128f15b
      {
         var _loc4_:_2b7a3cb04ffcd1e3a128f15b = new _2b7a3cb04ffcd1e3a128f15b(controller,param1);
         _loc4_.offset = param2;
         if(param3 != null)
         {
            _loc4_.tooltipText = _c2ad9d37d7be0097d6d2e977.get(param3);
         }
         return _loc4_;
      }
      
      override public function _90eac9ca552fe54c2ca0299f() : void
      {
         this._d0e7e1289184535f09bc64bf._90eac9ca552fe54c2ca0299f();
         this._d0e7e1289184535f09bc64bf = null;
         this._e825d7585de362bf0cf1a121._90eac9ca552fe54c2ca0299f();
         this._e825d7585de362bf0cf1a121 = null;
         this._d6dd0de56767bb32374e7ec6._90eac9ca552fe54c2ca0299f();
         this._d6dd0de56767bb32374e7ec6 = null;
         this._15d4099d94e1d156aecb334a._90eac9ca552fe54c2ca0299f();
         this._15d4099d94e1d156aecb334a = null;
         this._b004c4f28a2233a06fd78eee._90eac9ca552fe54c2ca0299f();
         this._b004c4f28a2233a06fd78eee = null;
         this._31099be3300d230498659af2._90eac9ca552fe54c2ca0299f();
         this._31099be3300d230498659af2 = null;
         this._188ef923ffd0ea56d73a77c2._90eac9ca552fe54c2ca0299f();
         this._188ef923ffd0ea56d73a77c2 = null;
         this._1a72bc7fff7192e38b732ddf._90eac9ca552fe54c2ca0299f();
         this._1a72bc7fff7192e38b732ddf = null;
         this._03c11f8b43e09baf1e0eaf2d._90eac9ca552fe54c2ca0299f();
         this._03c11f8b43e09baf1e0eaf2d = null;
         this._24135f98ae0c692b74ace5ea._90eac9ca552fe54c2ca0299f();
         this._24135f98ae0c692b74ace5ea = null;
         super._90eac9ca552fe54c2ca0299f();
      }
   }
}

