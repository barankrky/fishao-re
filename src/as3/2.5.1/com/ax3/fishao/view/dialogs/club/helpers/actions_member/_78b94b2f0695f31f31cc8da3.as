package com.ax3.fishao.view.dialogs.club.helpers.actions_member
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.utils._745ca4cad2f6acc1f3084ea1;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import com.ax3.fishao.utils._fa8d5efc34d8920757369351;
   import com.ax3.fishao.view.dialogs.club.helpers.base._2f6c6d10b633b0793782cff7;
   import com.ax3.fishao.view.dialogs.string._706c123ff0b2d45829c1bb3e;
   import com.ax3.fishao.view.dialogs.string._85b2141a2303f6545d411d7a;
   
   public class _78b94b2f0695f31f31cc8da3 extends _2f6c6d10b633b0793782cff7
   {
      
      private var _5a2a98794f2ee91c77b47522:Object;
      
      private var _686b0a94cbe4fb0da386eb9e:int;
      
      public function _78b94b2f0695f31f31cc8da3()
      {
         super();
      }
      
      public function set possibleLeaderInfo(param1:Object) : void
      {
         this._5a2a98794f2ee91c77b47522 = param1;
      }
      
      public function set membersCount(param1:int) : void
      {
         this._686b0a94cbe4fb0da386eb9e = param1;
      }
      
      override public function _5b0b922e5cc4a5322f6ea1d2(param1:Function = null) : void
      {
         var _loc2_:String = null;
         super._5b0b922e5cc4a5322f6ea1d2(param1);
         var _loc3_:String = null;
         if(_managerClubs.isUserLeader)
         {
            if(this._686b0a94cbe4fb0da386eb9e == (-1719437171 ^ 0x74714172 ^ -61335354 ^ 0x11AA2138))
            {
               _loc3_ = _c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a.EST_CLUB_DESTROY_CONFIRMATION);
            }
            else
            {
               _loc2_ = "";
               if(this._5a2a98794f2ee91c77b47522 != null)
               {
                  _loc2_ = Debug.assertProperty(this._5a2a98794f2ee91c77b47522,_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挣捭捂接掵捎掂捼挚挿掂揾挥掏掽捣掅挰","掣揯掞捇捴挞掆挿捺捖掔捃揊挝揵掾"));
               }
               _loc3_ = _c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a.EST_CLUB_LEAVE_CONFIRMATION_LEADER).replace(_706c123ff0b2d45829c1bb3e.ESTS_USERNAME,_loc2_);
            }
         }
         else
         {
            _loc3_ = _c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a.EST_CLUB_LEAVE_CONFIRMATION_MEMBER);
         }
         _fa8d5efc34d8920757369351._bbdc1e141d798ec73174d586(_loc3_,this._3693e6a384240a55a07e5334);
      }
      
      private function _3693e6a384240a55a07e5334() : void
      {
         _managerClubs.leaveFromClub(_745ca4cad2f6acc1f3084ea1._8f86b04e4306f87a82dcadcb(null));
      }
   }
}

