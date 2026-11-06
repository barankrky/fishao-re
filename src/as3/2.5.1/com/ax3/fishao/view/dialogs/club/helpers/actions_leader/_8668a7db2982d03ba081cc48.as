package com.ax3.fishao.view.dialogs.club.helpers.actions_leader
{
   import com.ax3.fishao.utils._745ca4cad2f6acc1f3084ea1;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import com.ax3.fishao.utils._fa8d5efc34d8920757369351;
   import com.ax3.fishao.view.dialogs.club.helpers.base._2f6c6d10b633b0793782cff7;
   import com.ax3.fishao.view.dialogs.string._706c123ff0b2d45829c1bb3e;
   import com.ax3.fishao.view.dialogs.string._85b2141a2303f6545d411d7a;
   import com.ax3.jss.requests.server._5e1bab759fcaea6d1f84faa7;
   
   public class _8668a7db2982d03ba081cc48 extends _2f6c6d10b633b0793782cff7
   {
      
      private var _0403df237622944b2467263c:String;
      
      public function _8668a7db2982d03ba081cc48()
      {
         super();
      }
      
      public function set login(param1:String) : void
      {
         this._0403df237622944b2467263c = param1;
      }
      
      override protected function _384d7874fb93e69ef9f82fda(param1:_5e1bab759fcaea6d1f84faa7) : void
      {
         var _loc2_:int = 0x1CB87D9F ^ -78665649 ^ 0x79CA0DB0 ^ 0x197AE0AD;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x1AD57BD6 ^ 0x2CFE139D ^ -2035837395 ^ 0x37CBC6A9))
            {
               case 0:
                  return;
               case 1:
                  _onComplete(this._0403df237622944b2467263c);
                  _loc2_ = -2053049417 ^ -978227901 ^ -711666602 ^ 0x12C2726D;
                  break;
               case 2:
                  super._384d7874fb93e69ef9f82fda(param1);
                  if(_onComplete != null)
                  {
                     _loc2_ = -223412211 ^ 0x3ACF421F ^ 0x342A6517 ^ 0x7B0D1FCB;
                  }
                  else
                  {
                     _loc2_ = 0x20F9CFF5 ^ -1948463366 ^ 0x3FA72381 ^ 0x13C51A41;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      override public function _5b0b922e5cc4a5322f6ea1d2(param1:Function = null) : void
      {
         super._5b0b922e5cc4a5322f6ea1d2(param1);
         var _loc2_:String = _c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a.EST_CLUB_APPROVE_CONFIRMATION);
         _loc2_ = _loc2_.replace(_706c123ff0b2d45829c1bb3e.ESTS_USERNAME,this._0403df237622944b2467263c);
         _fa8d5efc34d8920757369351._bbdc1e141d798ec73174d586(_loc2_,this._880ced2ac700f92c444f0d68);
      }
      
      private function _880ced2ac700f92c444f0d68() : void
      {
         _managerClubs.approveMember(this._0403df237622944b2467263c,_745ca4cad2f6acc1f3084ea1._8f86b04e4306f87a82dcadcb(this._384d7874fb93e69ef9f82fda));
      }
   }
}

