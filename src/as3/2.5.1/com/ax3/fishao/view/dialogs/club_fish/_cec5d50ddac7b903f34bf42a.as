package com.ax3.fishao.view.dialogs.club_fish
{
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.display.popups._73899a4de8f83c8d2c26f545;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces._988093efdfa36e13bfd6c6cf;
   import com.ax3.fishao.view.dialogs.base.views.implementations._04cce4e240ff9bea66c1b7f7;
   import com.ax3.fishao.view.dialogs.base.views.implementations._ab72f7798754bf7a51d8acb3;
   import com.ax3.fishao.view.dialogs.club.pages.base.view_with_buttons_arrows._8504a663c275f49191c30b9b;
   import com.ax3.fishao.view.dialogs.string._706c123ff0b2d45829c1bb3e;
   import com.ax3.fishao.view.dialogs.string._85b2141a2303f6545d411d7a;
   import flash.display.DisplayObjectContainer;
   
   public class _cec5d50ddac7b903f34bf42a extends _04cce4e240ff9bea66c1b7f7
   {
      
      private var _6d427cf8f4f7c03c1d0b85af:_8504a663c275f49191c30b9b;
      
      private var _d37addfd4ddbed5651bdfd70:_ab72f7798754bf7a51d8acb3;
      
      private var _650fb3ba92ca11106d50b920:_73899a4de8f83c8d2c26f545;
      
      public function _cec5d50ddac7b903f34bf42a(param1:_988093efdfa36e13bfd6c6cf, param2:DisplayObjectContainer)
      {
         super(param1,param2);
         this.init();
      }
      
      public function get viewPagination() : _8504a663c275f49191c30b9b
      {
         return this._6d427cf8f4f7c03c1d0b85af;
      }
      
      public function _299e7bb5a645ce91a6b1a4d1(param1:int, param2:int, param3:Boolean) : void
      {
         var _loc4_:String = _c2ad9d37d7be0097d6d2e977.get(param3 ? _85b2141a2303f6545d411d7a.EST_CLUB_FISH_TITLE_SALT : _85b2141a2303f6545d411d7a.EST_CLUB_FISH_TITLE_FRESH);
         this._d37addfd4ddbed5651bdfd70.text = _loc4_;
         var _loc5_:String = _c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a.EST_CLUB_FISH_LABEL_TEXT);
         _loc5_ = _loc5_.replace(_706c123ff0b2d45829c1bb3e.ESTS_VALUE,_loc4_);
         _loc5_ = _loc5_.replace(_706c123ff0b2d45829c1bb3e.ESTS_VALUE,param1);
         _loc5_ = _loc5_.replace(_706c123ff0b2d45829c1bb3e.ESTS_VALUE,param2);
         this._650fb3ba92ca11106d50b920.text = _loc5_;
      }
      
      private function init() : void
      {
         this._6d427cf8f4f7c03c1d0b85af = new _8504a663c275f49191c30b9b(controller,Debug.assertProperty(this.source,_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("Ⴣ႐Ⴌ္Ⴇၪ႙ဪ჋ႭႢ၉Ⴇယထ჈ဇსქ၆ႄႱၯდႤბႉႣ္ၿႰჶჄფၕၯ","ဎဍსაၷჟაဴ႟პ჉ၤაၞႁჁ")));
         this._d37addfd4ddbed5651bdfd70 = new _ab72f7798754bf7a51d8acb3(controller,Debug.assertProperty(this.source,_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剎刾剨刣刁制剒剨制刮劻剘劉刽劾剷划勐","劀割勢効刟务剼勁刱判削刿剗劸剀刁")));
         this._650fb3ba92ca11106d50b920 = _4bba52ae9618ef515b6267ea(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၗႧჸႈ႘ჃႹჼ႓၏ဢဢ႒ၪეჺႜၑႇႤეგဧငႎဈ","သႫ၆჋၅႙დვၼဃၠჍშႥ့ဉ"),null);
      }
   }
}

