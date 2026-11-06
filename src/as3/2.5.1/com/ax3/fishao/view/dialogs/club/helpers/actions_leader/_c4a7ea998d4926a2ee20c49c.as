package com.ax3.fishao.view.dialogs.club.helpers.actions_leader
{
   import com.ax3.fishao.utils._745ca4cad2f6acc1f3084ea1;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import com.ax3.fishao.utils._fa8d5efc34d8920757369351;
   import com.ax3.fishao.view.dialogs.club.helpers.base._2f6c6d10b633b0793782cff7;
   import com.ax3.fishao.view.dialogs.string._706c123ff0b2d45829c1bb3e;
   import com.ax3.fishao.view.dialogs.string._85b2141a2303f6545d411d7a;
   import com.ax3.jss.requests.server._5e1bab759fcaea6d1f84faa7;
   
   public class _c4a7ea998d4926a2ee20c49c extends _2f6c6d10b633b0793782cff7
   {
      
      private var _00f7b9cddffe326b99d8f669:String;
      
      public function _c4a7ea998d4926a2ee20c49c()
      {
         super();
      }
      
      public function set login(param1:String) : void
      {
         this._00f7b9cddffe326b99d8f669 = param1;
      }
      
      override protected function _384d7874fb93e69ef9f82fda(param1:_5e1bab759fcaea6d1f84faa7) : void
      {
         var _loc2_:int = -430166047 ^ 0xAF5C26 ^ 0x5C0E8CC0 ^ -233526701;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x5C0DC22E ^ -1301005188 ^ 0x5FE99098 ^ -109495393))
            {
               case 0:
                  _onComplete(this._00f7b9cddffe326b99d8f669);
                  _loc2_ = 0x4FDD14EF ^ 0x372D2F70 ^ -1477923790 ^ -1745763590;
                  break;
               case 1:
                  super._384d7874fb93e69ef9f82fda(param1);
                  if(_onComplete != null)
                  {
                     _loc2_ = -1370020866 ^ -774570502 ^ -1634469785 ^ -1443269834;
                  }
                  else
                  {
                     _loc2_ = -1938628062 ^ -1386470902 ^ 0x14322DFE ^ 0x7DF5B881;
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
      
      override public function _5b0b922e5cc4a5322f6ea1d2(param1:Function = null) : void
      {
         super._5b0b922e5cc4a5322f6ea1d2(param1);
         var _loc2_:String = _c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a.EST_CLUB_KICK_CONFIRMATION);
         _loc2_ = _loc2_.replace(_706c123ff0b2d45829c1bb3e.ESTS_USERNAME,this._00f7b9cddffe326b99d8f669);
         _fa8d5efc34d8920757369351._bbdc1e141d798ec73174d586(_loc2_,this._5c24c45b54a92895cd32dfe8);
      }
      
      private function _5c24c45b54a92895cd32dfe8() : void
      {
         _managerClubs.kickMember(this._00f7b9cddffe326b99d8f669,_745ca4cad2f6acc1f3084ea1._8f86b04e4306f87a82dcadcb(this._384d7874fb93e69ef9f82fda));
      }
   }
}

