package com.ax3.fishao.locations.lucky_raft
{
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import com.ax3.events._02fbe4cbe9e83f1b8c711799;
   import com.ax3.fishao.events._4986c362bed569a2ffb299b4;
   import com.ax3.fishao.locations.base._4039c287ddb4ef46ab65ab0e;
   import com.ax3.fishao.locations.base._67f8febc099eaa05c48aa41e;
   import com.ax3.fishao.locations.base._bd60f9ad6ef4aaf28041ce8f;
   import com.ax3.fishao.locations.npc.base._ba120ae720a391732e866217;
   import com.ax3.fishao.locations.npc.base._e42949745420bb5a55035b31;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import com.ax3.fishao.view.dialogs.string._706c123ff0b2d45829c1bb3e;
   import com.ax3.fishao.view.dialogs.string._85b2141a2303f6545d411d7a;
   import flash.geom.Point;
   
   public class _efc5e8b39b7563e3b0665cc1 extends _67f8febc099eaa05c48aa41e
   {
      
      private var _353217015cbce33f5c255279:_38df3f4f44c1d1f3ed036ac3;
      
      private var _8a1aee2c741e36006f57c328:_d4341637eab7e600e78152a2;
      
      public function _efc5e8b39b7563e3b0665cc1(param1:_4039c287ddb4ef46ab65ab0e)
      {
         this._8a1aee2c741e36006f57c328 = param1 as _d4341637eab7e600e78152a2;
         super(param1);
      }
      
      private function _07bf96ee96c0fdea69f30db7(param1:_4986c362bed569a2ffb299b4) : void
      {
         var _loc2_:Array = param1.data as Array;
         this._702f1e062b1d2d3ac10f4aa0(_loc2_);
      }
      
      private function _5a1150c77b6ed8f51f9a93aa(param1:_4986c362bed569a2ffb299b4) : void
      {
         var _loc2_:Boolean = param1.data as Boolean;
         if(_loc2_)
         {
            this._88f3bf249e5d627545a25258();
         }
      }
      
      override protected function _3536e00a076cf84463e9eaaa() : _bd60f9ad6ef4aaf28041ce8f
      {
         this._353217015cbce33f5c255279 = super._3536e00a076cf84463e9eaaa() as _38df3f4f44c1d1f3ed036ac3;
         return this._353217015cbce33f5c255279;
      }
      
      override public function activate() : void
      {
         super.activate();
         _02fbe4cbe9e83f1b8c711799.addEventListener(this,locationModel,_4986c362bed569a2ffb299b4.UPDATE_BOARD_FISH,this._07bf96ee96c0fdea69f30db7);
         _02fbe4cbe9e83f1b8c711799.addEventListener(this,locationModel,_4986c362bed569a2ffb299b4.FORCE_MOVE_TO_LUCKY_SAILOR,this._5a1150c77b6ed8f51f9a93aa);
      }
      
      override public function deactivate() : void
      {
         super.deactivate();
         _02fbe4cbe9e83f1b8c711799.removeEventListener(this,locationModel,_4986c362bed569a2ffb299b4.UPDATE_BOARD_FISH,this._07bf96ee96c0fdea69f30db7);
         _02fbe4cbe9e83f1b8c711799.removeEventListener(this,locationModel,_4986c362bed569a2ffb299b4.FORCE_MOVE_TO_LUCKY_SAILOR,this._5a1150c77b6ed8f51f9a93aa);
      }
      
      private function _702f1e062b1d2d3ac10f4aa0(param1:Array) : void
      {
         var _loc2_:Array = [];
         var _loc3_:int = 0x3AA6C006 ^ 0x3DE05155 ^ 0x786F6218 ^ 0x7F29F34B;
         while(_loc3_ < param1.length)
         {
            _loc2_[_loc3_] = _c2ad9d37d7be0097d6d2e977.get(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勭剳勂刷刧勵勁勵勑劏劑刄剫勅剺剋剎剱","剬勗勃刜刐務勖勈勷剟刌剼劐剿剔到") + param1[_loc3_]);
            _loc3_++;
         }
         _loc2_.sort();
         var _loc4_:String = _c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a.EST_BOARD_FISH_LUCKY_RAFT);
         _loc4_ = _loc4_.replace(_706c123ff0b2d45829c1bb3e.ESTS_COUNT,param1.length);
         var _loc5_:int = 0x5261BFCC ^ 0x6506AADF ^ -335872272 ^ -593630237;
         while(_loc5_ < param1.length)
         {
            _loc4_ += _loc2_[_loc5_];
            if(_loc5_ < param1.length - 1)
            {
               _loc4_ += _95da7f1147c669197db81295._8f4866de82b7339154180ecb("加券剦勧勍劺剡劋刢刲劰勧","劆勧刭勃务劲剆勦勓刬勩勅剅分剎割");
            }
            _loc5_++;
         }
         this._353217015cbce33f5c255279.boardFish.tooltipText = _loc4_;
      }
      
      private function _88f3bf249e5d627545a25258() : void
      {
         var _loc1_:_ba120ae720a391732e866217 = null;
         _loc1_ = this._8a1aee2c741e36006f57c328._5bbf4a7dc6de36b8bc7fc61d(_e42949745420bb5a55035b31.ENN_LUCKY_SAILOR);
         _programmedCharMoveTarget = new Point();
         _programmedCharMoveTarget.x = _loc1_.position.x;
         _programmedCharMoveTarget.y = _loc1_.position.y + (0x11A13BFB ^ 0x7F54E1ED ^ 0x0FC97FBE ^ 0x613CA5B6);
         _programmedCharMoveTargetNPC = _loc1_;
         if(_playerChar != null)
         {
            _playerChar.programmedMove = true;
            _playerChar.onMouseClick(_programmedCharMoveTarget.x,_programmedCharMoveTarget.y);
         }
      }
   }
}

