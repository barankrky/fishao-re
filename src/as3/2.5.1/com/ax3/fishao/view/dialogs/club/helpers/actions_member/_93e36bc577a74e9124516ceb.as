package com.ax3.fishao.view.dialogs.club.helpers.actions_member
{
   import com.ax3.fishao.utils._745ca4cad2f6acc1f3084ea1;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import com.ax3.fishao.utils._fa8d5efc34d8920757369351;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs.club.helpers.base._2f6c6d10b633b0793782cff7;
   import com.ax3.fishao.view.dialogs.string._706c123ff0b2d45829c1bb3e;
   import com.ax3.fishao.view.dialogs.string._85b2141a2303f6545d411d7a;
   import com.ax3.jss.requests.server._5e1bab759fcaea6d1f84faa7;
   import protocol.api.base.ResponseError;
   
   public class _93e36bc577a74e9124516ceb extends _2f6c6d10b633b0793782cff7
   {
      
      private var _a50651a9d9c296fb6b05abe1:int;
      
      public function _93e36bc577a74e9124516ceb()
      {
         super();
      }
      
      public function set level(param1:int) : void
      {
         this._a50651a9d9c296fb6b05abe1 = param1;
      }
      
      override protected function _384d7874fb93e69ef9f82fda(param1:_5e1bab759fcaea6d1f84faa7) : void
      {
         var _loc2_:int = 0x1E3890C1 ^ -1745495379 ^ -959373969 ^ -668023902;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x54D4E8ED ^ -626185986 ^ 0x62D79AD9 ^ 0x7B9CCE6B))
            {
               case 0:
                  super._384d7874fb93e69ef9f82fda(param1);
                  if(param1 is ResponseError)
                  {
                     _loc2_ = -1555501981 ^ 0x1E51A797 ^ -1994030563 ^ -1559339702;
                  }
                  else
                  {
                     _loc2_ = -1031658077 ^ 0x435F709B ^ 0x04C94885 ^ 0x1226891D;
                  }
                  break;
               case 1:
                  onComplete();
                  return;
               case 2:
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      override public function _5b0b922e5cc4a5322f6ea1d2(param1:Function = null) : void
      {
         super._5b0b922e5cc4a5322f6ea1d2(param1);
         var _loc2_:String = _c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a.EST_CLUB_UPGRADE_CONFIRMATION);
         _loc2_ = _loc2_.replace(_706c123ff0b2d45829c1bb3e.ESTS_USERNAME,app.user.username);
         _loc2_ = _loc2_.replace(_706c123ff0b2d45829c1bb3e.ESTS_COUNT,_managerClubs._9be911f3542f4c086c63669e(this._a50651a9d9c296fb6b05abe1 + (-1571970593 ^ 0x55D6AF32 ^ -1418470223 ^ 0x5CE8D25D)));
         _fa8d5efc34d8920757369351._bbdc1e141d798ec73174d586(_loc2_,this._34991ce7bbdcfea71b476fbd);
      }
      
      private function _34991ce7bbdcfea71b476fbd() : void
      {
         _managerClubs.upgradeClubLevel(_745ca4cad2f6acc1f3084ea1._8f86b04e4306f87a82dcadcb(this._384d7874fb93e69ef9f82fda));
      }
   }
}

