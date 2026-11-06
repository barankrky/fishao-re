package com.ax3.fishao.view.dialogs.club.helpers.actions_member
{
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.utils._745ca4cad2f6acc1f3084ea1;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import com.ax3.fishao.utils._fa8d5efc34d8920757369351;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs._8071087ebe26c264282580d0;
   import com.ax3.fishao.view.dialogs.club.club_info_outside._c6dd57dd12cf02bae4594249;
   import com.ax3.fishao.view.dialogs.club.club_inside._e9af49bc0716fd8d9302dd14;
   import com.ax3.fishao.view.dialogs.club.club_outside._fb60627e993e6700597a9c2e;
   import com.ax3.fishao.view.dialogs.club.helpers.base._2f6c6d10b633b0793782cff7;
   import com.ax3.fishao.view.dialogs.club.model._8a55e6919385386ebc54f870;
   import com.ax3.fishao.view.dialogs.club.model._c47dd344395f9f377962c5cf;
   import com.ax3.fishao.view.dialogs.string._706c123ff0b2d45829c1bb3e;
   import com.ax3.fishao.view.dialogs.string._85b2141a2303f6545d411d7a;
   import com.ax3.jss.requests.server._5e1bab759fcaea6d1f84faa7;
   import flash.events.Event;
   import protocol.api.base.ResponseError;
   
   public class _a2c6e1cd07ea790888ffa67f extends _2f6c6d10b633b0793782cff7
   {
      
      private var _cb5977a5acc25c1bb535e21d:_8a55e6919385386ebc54f870;
      
      private var _bf2a0036baae05990f40a080:Boolean;
      
      public function _a2c6e1cd07ea790888ffa67f()
      {
         super();
      }
      
      public function set clubInfo(param1:_8a55e6919385386ebc54f870) : void
      {
         this._cb5977a5acc25c1bb535e21d = param1;
      }
      
      public function set canOpenDialogInside(param1:Boolean) : void
      {
         this._bf2a0036baae05990f40a080 = param1;
      }
      
      override protected function _384d7874fb93e69ef9f82fda(param1:_5e1bab759fcaea6d1f84faa7) : void
      {
         var _loc2_:String = null;
         var _loc3_:_8071087ebe26c264282580d0 = null;
         var _loc4_:_8071087ebe26c264282580d0 = null;
         super._384d7874fb93e69ef9f82fda(param1);
         if(param1 is ResponseError)
         {
            return;
         }
         switch(this._cb5977a5acc25c1bb535e21d.type)
         {
            case _c47dd344395f9f377962c5cf.ECT_OPENED:
               §§push(-1373674658 ^ 0x1654E241 ^ 0x26F30FCB ^ -1632071980);
               break;
            case _c47dd344395f9f377962c5cf.ECT_PRIVATE:
               §§push(0x2155AD8A ^ -1875719930 ^ 0x185C7BE6 ^ -1455743125);
               break;
            case _c47dd344395f9f377962c5cf.ECT_CLOSED:
               §§push(0x50F725A4 ^ -90574319 ^ 0x4B7AFFC8 ^ -518772609);
               break;
            default:
               §§push(0x534BC448 ^ 0x7FFC254A ^ 0x34BA6EC4 ^ 0x180D8FC5);
         }
         switch(§§pop())
         {
            case 0:
               _loc2_ = _c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a.EST_CLUB_JOIN_CONGRATULATIONS);
               _loc2_ = _loc2_.replace(_706c123ff0b2d45829c1bb3e.ESTS_USERNAME,app.user.username);
               _loc2_ = _loc2_.replace(_706c123ff0b2d45829c1bb3e.ESTS_NAME,this._cb5977a5acc25c1bb535e21d.name);
               _fa8d5efc34d8920757369351._b2f08e71c237117ac643d021(_c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a.EST_CONGRATULATIONS),_loc2_,_c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a.EST_COMMON_COOL),this._553c4149725a22b3342e12a3);
               _loc3_ = GameSwf.instance._4aeac9e48c0facbd15fae3ba(_fb60627e993e6700597a9c2e);
               if(_loc3_ != null)
               {
                  _loc3_.close();
               }
               _loc4_ = GameSwf.instance._4aeac9e48c0facbd15fae3ba(_c6dd57dd12cf02bae4594249);
               if(_loc4_ != null)
               {
                  _loc4_.close();
               }
               break;
            case 1:
               _fa8d5efc34d8920757369351._ec5b9c66a39c137b3f87a20d(_c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a.EST_COMMON_SUCCESS),_c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a.EST_CLUB_JOIN_REQUEST_SENT_TO_PRIVATE));
               break;
            case 2:
               break;
            default:
               Debug.assert(false);
         }
      }
      
      override public function _5b0b922e5cc4a5322f6ea1d2(param1:Function = null) : void
      {
         super._5b0b922e5cc4a5322f6ea1d2(param1);
         switch(this._cb5977a5acc25c1bb535e21d.type)
         {
            case _c47dd344395f9f377962c5cf.ECT_PRIVATE:
               §§push(0x59959FCF ^ 0x6B9021A7 ^ -1124141308 ^ -1896134292);
               break;
            case _c47dd344395f9f377962c5cf.ECT_CLOSED:
               §§push(0x49369A71 ^ -805827913 ^ 0x7FB46DAF ^ -109380248);
               break;
            case _c47dd344395f9f377962c5cf.ECT_OPENED:
               §§push(0x2506FFB2 ^ -302071925 ^ -1133959155 ^ 0x74916836);
               break;
            default:
               §§push(-1212583881 ^ 0x5328C318 ^ -1811909643 ^ 0x7091C0D9);
         }
         switch(§§pop())
         {
            case 0:
               _fa8d5efc34d8920757369351._bbdc1e141d798ec73174d586(_c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a.EST_CLUB_JOIN_CONFIRMATION),this._1d5e3cc57d25124b44136b94);
               break;
            case 1:
               break;
            case 2:
               this._1d5e3cc57d25124b44136b94();
               break;
            default:
               Debug.assert(false);
         }
      }
      
      private function _1d5e3cc57d25124b44136b94(param1:Event = null) : void
      {
         _managerClubs.joinTo(this._cb5977a5acc25c1bb535e21d.ID,_745ca4cad2f6acc1f3084ea1._8f86b04e4306f87a82dcadcb(this._384d7874fb93e69ef9f82fda));
      }
      
      private function _553c4149725a22b3342e12a3() : void
      {
         var _loc1_:_e9af49bc0716fd8d9302dd14 = null;
         if(this._bf2a0036baae05990f40a080)
         {
            _loc1_ = app.dialogFactory._a0d214350fb42da9f32557e6(_e9af49bc0716fd8d9302dd14);
            _loc1_.entity = _managerClubs.userClub;
            _loc1_.show();
         }
      }
   }
}

