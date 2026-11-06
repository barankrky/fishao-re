package com.ax3.fishao.view.dialogs.fruits.controllers
{
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.view.dialogs.base.controllers.implementations._e2bbbb1ef110bb0aa28b913f;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces._6b63fd0a4028eb279b227831;
   import com.ax3.fishao.view.dialogs.fruits._a98277cf6d130b0c84f83078;
   import com.ax3.fishao.view.dialogs.fruits.model._273a0e8d279da2c95b553430;
   import com.ax3.fishao.view.dialogs.fruits.model._85e520cd64b9acef6dc31a91;
   import com.ax3.fishao.view.dialogs.fruits.views._3bf19953db4932608db7f4a8;
   import flash.display.DisplayObjectContainer;
   
   public class _e23d17b945429217bbd22e3b extends _e2bbbb1ef110bb0aa28b913f
   {
      
      private var _80a2ebf084207551948e156d:_3bf19953db4932608db7f4a8;
      
      private var _49420ef7e1eaccc8669ec5ab:Array;
      
      private var _c373e349331a7125f02ef074:_a98277cf6d130b0c84f83078;
      
      public function _e23d17b945429217bbd22e3b(param1:DisplayObjectContainer)
      {
         this._80a2ebf084207551948e156d = new _3bf19953db4932608db7f4a8(this,param1);
         super(this._80a2ebf084207551948e156d);
         this.init();
      }
      
      private function init() : void
      {
         this._c373e349331a7125f02ef074 = GameSwf.instance.managerFruits;
         this._49420ef7e1eaccc8669ec5ab = [];
         this._99902a3f94b342e65e633a7a();
         this._008fc2edcf895fe1a0da3213();
      }
      
      private function _99902a3f94b342e65e633a7a() : void
      {
         var _loc1_:int = 0x6BCAFA4C ^ -198803419 ^ -1035409027 ^ 0x5DA49314;
         var _loc2_:_273a0e8d279da2c95b553430 = null;
         var _loc3_:_d7cdd43343fb4d5ffaa1ab2f = null;
         this._8e9400a45fe6adfbd506af3b();
         var _loc4_:Array = this._c373e349331a7125f02ef074.selectedFruits;
         var _loc5_:int = 0x3898D144 ^ -1490882919 ^ 0x5148F73A ^ -822949657;
         while(_loc5_ < this._80a2ebf084207551948e156d.itemsOnPage)
         {
            _loc1_ = _loc4_.length > _loc5_ ? (_loc4_[_loc5_] as _273a0e8d279da2c95b553430).id : -1002758596 ^ -1420021173 ^ -249942755 ^ -1635974806;
            _loc2_ = new _273a0e8d279da2c95b553430(_loc1_,-237302613 ^ 0x469CA658 ^ -1879668275 ^ 0x38B1233F);
            _loc3_ = new _d7cdd43343fb4d5ffaa1ab2f(_loc2_,_85e520cd64b9acef6dc31a91.EFIT_SELECTED);
            this._49420ef7e1eaccc8669ec5ab.push(_loc3_);
            _loc5_++;
         }
      }
      
      private function _008fc2edcf895fe1a0da3213() : void
      {
         var _loc1_:_d7cdd43343fb4d5ffaa1ab2f = null;
         var _loc2_:Array = [];
         for each(_loc1_ in this._49420ef7e1eaccc8669ec5ab)
         {
            _loc2_.push(_loc1_.view.source);
         }
         this._80a2ebf084207551948e156d.items = _loc2_;
      }
      
      override public function update(param1:String) : void
      {
         var _loc2_:_d7cdd43343fb4d5ffaa1ab2f = null;
         switch(param1)
         {
            case _6b63fd0a4028eb279b227831.ECU_FRUITS_CRUSH_UPDATE:
               §§push(0x5D8FD8E0 ^ -1049386516 ^ -1030205943 ^ 0x5E643705);
               break;
            case _6b63fd0a4028eb279b227831.ECU_FRUITS_CRUSH_STARTED:
               §§push(-1461269543 ^ 0x0AF75D04 ^ -759008068 ^ 0x70D3E260);
               break;
            default:
               §§push(0x3E4E2BFB ^ 0x16515DAA ^ -1445290876 ^ -2117735721);
         }
         switch(§§pop())
         {
            case 0:
               this._99902a3f94b342e65e633a7a();
               this._008fc2edcf895fe1a0da3213();
               break;
            case 1:
               for each(_loc2_ in this._49420ef7e1eaccc8669ec5ab)
               {
                  _loc2_.disable();
               }
               break;
            default:
               Debug.assert(false,_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ွსၫჷႎჹჺၕၰႋაჍჄჭၩၣ၅ႧჅှხკ႕ဍပჽူ႟჌ၪ႒ႋნტႥၔႪქ႕႐ၘၿႱႜჽၵ၎ၗဒყၛေွၲა႒ဿၰကၳჰჽါ်႒ქჷიၢၔႜ၇ႝၻ႖ჲჴ႑Ⴟကၚၷဟဍဋဏ჎ႀဩჅၿჅၛჿႚჱპဩჁჭၡၟၢၘပႪထဓၽფဇဥ၊კၮၬნၬშဍႽဣိဩჹფဲကၽႥ႗ၧဘၙ","ၥၺဝ႓ံწႹၡძჳႜၤှფႼპ") + param1);
         }
      }
      
      private function _8e9400a45fe6adfbd506af3b() : void
      {
         var _loc1_:_d7cdd43343fb4d5ffaa1ab2f = null;
         for each(_loc1_ in this._49420ef7e1eaccc8669ec5ab)
         {
            _loc1_._90eac9ca552fe54c2ca0299f();
            _loc1_ = null;
         }
         this._49420ef7e1eaccc8669ec5ab = [];
      }
   }
}

