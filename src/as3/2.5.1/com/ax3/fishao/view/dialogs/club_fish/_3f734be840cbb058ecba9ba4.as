package com.ax3.fishao.view.dialogs.club_fish
{
   import com.ax3.fishao.ConstantsBase;
   import com.ax3.fishao._dfa25706e58a240c1e33e5c6;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.model.vo._cff30366d510ea862540bfef;
   import com.ax3.fishao.requirements._486f3b64ee967395c7114ca7;
   import com.ax3.fishao.utils._8e13ffc955ce803f9ca06283;
   import com.ax3.fishao.utils._fa8d5efc34d8920757369351;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs.base.controllers.implementations._f6788106409c49494058e542;
   import com.ax3.fishao.view.dialogs.club_fish.item._7e98e2c3d17e975494bcfcd2;
   import com.ax3.jss.requests.server._5e1bab759fcaea6d1f84faa7;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import protocol.api.fishes.FscExtensionFishes;
   import protocol.api.fishes.get_club.ResponseFishesGetClub;
   
   public class _3f734be840cbb058ecba9ba4 extends _f6788106409c49494058e542
   {
      
      private var _4d6a963f40dfac3b65592136:_cec5d50ddac7b903f34bf42a;
      
      private var _a26842c3b14a51084cfeb32b:Array;
      
      private var _7c6abd82cd4fa41d1ac24a87:int;
      
      private var _40e7cfa29d77148091fc8c8b:Boolean;
      
      private var _09b8d2b780073a777a71e35e:Array;
      
      private var _203e1480fb3491b6655c5c49:Array;
      
      public function _3f734be840cbb058ecba9ba4(param1:DisplayObjectContainer, param2:Boolean)
      {
         this._4d6a963f40dfac3b65592136 = new _cec5d50ddac7b903f34bf42a(this,param1);
         super(this._4d6a963f40dfac3b65592136);
         this._40e7cfa29d77148091fc8c8b = param2;
         this.init();
      }
      
      private function _faf24816f90790fa0ed2b2b2(param1:_5e1bab759fcaea6d1f84faa7) : void
      {
         if(_fa8d5efc34d8920757369351._ecb681b2bff0915b270b914b(param1))
         {
            return;
         }
         var _loc2_:ResponseFishesGetClub = param1 as ResponseFishesGetClub;
         this._09b8d2b780073a777a71e35e = _loc2_.fishIDs;
         this._203e1480fb3491b6655c5c49 = _loc2_.fishIDsUnlocked;
         this._cf7906db266d7b9aa32143c2(_loc2_);
         this._4d6a963f40dfac3b65592136.viewPagination.pageCurrent = -803434117 ^ -773670599 ^ 0x35489ADF ^ 0x34B6B29D;
         this._3e2f0d864ef51cb47b29f795();
         this._bb0b68ddae86b2dbe5a0904f();
         this._a6846231e4f99b9fbb14599b();
      }
      
      override public function _4f254116765eb1a39d6712be(param1:Object, param2:Event) : Boolean
      {
         var _loc3_:Boolean = super._4f254116765eb1a39d6712be(param1,param2);
         switch(param1)
         {
            case this._4d6a963f40dfac3b65592136.viewPagination.buttonLeft:
               §§push(0x484C7D10 ^ 0x7F415615 ^ -1166507620 ^ -1921668455);
               break;
            case this._4d6a963f40dfac3b65592136.viewPagination.buttonRight:
               §§push(0x5B6FCE4E ^ 0x10E2490A ^ -245763128 ^ -1160481651);
               break;
            default:
               §§push(0x043A8053 ^ -1004409369 ^ -1312116983 ^ 0x71D1C2BF);
         }
         switch(§§pop())
         {
            case 0:
            case 1:
               this._a6846231e4f99b9fbb14599b();
               break;
            default:
               Debug.assert(false);
         }
         return _loc3_;
      }
      
      public function _434cd9463d2f5b407fe037d4(param1:int) : void
      {
         this._203e1480fb3491b6655c5c49.push(param1);
         this._3e2f0d864ef51cb47b29f795();
      }
      
      private function init() : void
      {
         this._a26842c3b14a51084cfeb32b = [];
         this._7c6abd82cd4fa41d1ac24a87 = 0x22288508 ^ 0x2D6D3EAB ^ 0x59A9F2DF ^ 0x56EC497E;
         var _loc1_:FscExtensionFishes = _dfa25706e58a240c1e33e5c6.fscModel.extensionFishes;
         _loc1_.getClub(this._40e7cfa29d77148091fc8c8b,this._faf24816f90790fa0ed2b2b2);
      }
      
      private function _cf7906db266d7b9aa32143c2(param1:ResponseFishesGetClub) : void
      {
         var _loc2_:int = 0x5CB31BAA ^ -2043523986 ^ 0x635DF682 ^ -1176723130;
         var _loc3_:Array = null;
         var _loc4_:_cff30366d510ea862540bfef = null;
         var _loc5_:_cff30366d510ea862540bfef = null;
         var _loc6_:Boolean = false;
         var _loc7_:_7e98e2c3d17e975494bcfcd2 = null;
         var _loc8_:DisplayObject = null;
         _f2f26e7a66175d89c6f850e5(this._a26842c3b14a51084cfeb32b);
         var _loc9_:DisplayObjectContainer = this._4d6a963f40dfac3b65592136.source as DisplayObjectContainer;
         var _loc10_:Array = [];
         var _loc11_:Array = [];
         var _loc12_:Array = [];
         for each(_loc2_ in param1.fishIDs)
         {
            _loc5_ = app.fishDict.get(_loc2_) as _cff30366d510ea862540bfef;
            if(_loc5_._8cf2d0c59e0bec938a0aef5d(_486f3b64ee967395c7114ca7.ERT_CLUB_POINTS))
            {
               _loc11_.push(_loc5_);
            }
            else if(_loc5_._8cf2d0c59e0bec938a0aef5d(_486f3b64ee967395c7114ca7.ERT_CLUB_UNLOCK_BY_FISHCOINS))
            {
               _loc12_.push(_loc5_);
            }
            else
            {
               _loc10_.push(_loc5_);
            }
         }
         _loc11_.sort(_cff30366d510ea862540bfef._350423b6918b0cdf00c4c708);
         _loc12_.sort(_cff30366d510ea862540bfef._ee1095a667f95d0de0951bd0);
         _loc3_ = _8e13ffc955ce803f9ca06283._95a5742acc364abb3ac13b14(_loc10_,_loc11_);
         _loc3_ = _8e13ffc955ce803f9ca06283._95a5742acc364abb3ac13b14(_loc3_,_loc12_);
         for each(_loc4_ in _loc3_)
         {
            _loc6_ = param1.fishIDsUnlocked.indexOf(_loc4_.id) != ConstantsBase.INDEX_NONE;
            _loc7_ = new _7e98e2c3d17e975494bcfcd2(this,_loc4_,_loc6_,param1.points);
            this._a26842c3b14a51084cfeb32b.push(_loc7_);
            _loc8_ = _loc7_.view.source;
            _loc8_.y = -2014030306 ^ 0x1C705631 ^ -1197526230 ^ 0x231B33A5;
            _loc9_.addChild(_loc8_);
         }
         this._78696c19aa9fa8e1d4b6d272();
      }
      
      private function _3e2f0d864ef51cb47b29f795() : void
      {
         this._4d6a963f40dfac3b65592136._299e7bb5a645ce91a6b1a4d1(this._203e1480fb3491b6655c5c49.length,this._09b8d2b780073a777a71e35e.length,this._40e7cfa29d77148091fc8c8b);
      }
      
      private function _bb0b68ddae86b2dbe5a0904f() : void
      {
         this._4d6a963f40dfac3b65592136.viewPagination.pagesTotal = Math.ceil(this._a26842c3b14a51084cfeb32b.length / this._7c6abd82cd4fa41d1ac24a87);
      }
      
      private function _a6846231e4f99b9fbb14599b() : void
      {
         _3d866f07adb02a6079215c17(this._a26842c3b14a51084cfeb32b,this._4d6a963f40dfac3b65592136.viewPagination.pageCurrent,this._7c6abd82cd4fa41d1ac24a87);
      }
      
      private function _78696c19aa9fa8e1d4b6d272() : void
      {
         _da6ba999cafb0c2a1bddd523(this._a26842c3b14a51084cfeb32b,-684290374 ^ -407937573 ^ 0x67DDB95E ^ 0x57446A08,this._7c6abd82cd4fa41d1ac24a87,-1273918361 ^ 0x1F9AB3ED ^ 0x5337EB6E ^ -121842489);
      }
   }
}

