package com.ax3.fishao.view.dialogs.club.helpers.actions_leader
{
   import com.ax3.fishao.utils._745ca4cad2f6acc1f3084ea1;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import com.ax3.fishao.utils._fa8d5efc34d8920757369351;
   import com.ax3.fishao.view.dialogs.club.helpers.base._2f6c6d10b633b0793782cff7;
   import com.ax3.fishao.view.dialogs.string._706c123ff0b2d45829c1bb3e;
   import com.ax3.fishao.view.dialogs.string._85b2141a2303f6545d411d7a;
   import com.ax3.jss.requests.server._5e1bab759fcaea6d1f84faa7;
   import protocol.api.base.ResponseError;
   
   public class _f77b2a17cfe22f586a49c638 extends _2f6c6d10b633b0793782cff7
   {
      
      private var _766567d58312c3d652ca2b73:String;
      
      public function _f77b2a17cfe22f586a49c638()
      {
         super();
      }
      
      public function set login(param1:String) : void
      {
         this._766567d58312c3d652ca2b73 = param1;
      }
      
      override protected function _384d7874fb93e69ef9f82fda(param1:_5e1bab759fcaea6d1f84faa7) : void
      {
         var _loc2_:int = 0x1A814BDB ^ -1951504120 ^ 0x5DCC71EB ^ -1787209025;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x2F0682BC ^ -175672521 ^ 0x4E72D79E ^ -848744557))
            {
               case 0:
                  _onComplete(this._766567d58312c3d652ca2b73);
                  _loc2_ = -812553146 ^ 0x3963E404 ^ -453175463 ^ 0x4B95969F;
                  break;
               case 1:
                  super._384d7874fb93e69ef9f82fda(param1);
                  if(param1 is ResponseError)
                  {
                     _loc2_ = 0xF5F26D ^ -1217482636 ^ -1854804582 ^ 0x7F70A606;
                  }
                  else
                  {
                     _loc2_ = -1068637586 ^ -2037927757 ^ -1809441767 ^ -1955182778;
                  }
                  break;
               case 2:
                  return;
               case 3:
                  return;
               case 4:
                  if(_onComplete != null)
                  {
                     _loc2_ = 0x4B6941A6 ^ 0x3CB2A33C ^ -984144990 ^ -350828354;
                  }
                  else
                  {
                     _loc2_ = 0x0D9ACCB0 ^ -264031086 ^ -1201094666 ^ 0x1C2B4E50;
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
         var _loc2_:String = _c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a.EST_CLUB_REJECT_CONFIRMATION);
         _loc2_ = _loc2_.replace(_706c123ff0b2d45829c1bb3e.ESTS_USERNAME,this._766567d58312c3d652ca2b73);
         _fa8d5efc34d8920757369351._bbdc1e141d798ec73174d586(_loc2_,this._48a9c6e2799623c3d0e7f82c);
      }
      
      private function _48a9c6e2799623c3d0e7f82c() : void
      {
         _managerClubs.rejectMember(this._766567d58312c3d652ca2b73,_745ca4cad2f6acc1f3084ea1._8f86b04e4306f87a82dcadcb(this._384d7874fb93e69ef9f82fda));
      }
   }
}

