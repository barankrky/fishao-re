package com.ax3.fishao.view.dialogs.club.pages.tournament
{
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs.club.pages.base._a86dadbf5fed875ec9c2c515;
   import com.ax3.fishao.view.dialogs.club.pages.tournament.item._d2aa40bd611bc55a28543881;
   import com.ax3.fishao.view.dialogs.club_tournament_history._280acac4416a5f351155f2a8;
   import com.ax3.fishao.view.dialogs.string._706c123ff0b2d45829c1bb3e;
   import com.ax3.fishao.view.dialogs.string._85b2141a2303f6545d411d7a;
   import com.ax3.fishao.view.dialogs.tournaments.models._87c5db8b779e4199260f7152;
   import com.ax3.jss.requests.server._5e1bab759fcaea6d1f84faa7;
   import com.ax3.utils.timer._34a2ba6ad978d976b8b0f5a4;
   import com.ax3.utils.timer._92d7656ddc3c3da810e99c74;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.utils.clearTimeout;
   import flash.utils.setTimeout;
   import protocol.api.base.ResponseError;
   import protocol.api.clubs.page.tournament.ResponseClubsGetPageTournament;
   
   public class _308f65d1af1b2fa55fd15be8 extends _a86dadbf5fed875ec9c2c515
   {
      
      private var _9eef99fd896450fcd7562510:_4488b7b383914efb9281d7a4;
      
      private var _6f2b8700cc06f96b8122be36:Array;
      
      private var _b47b56059fcd541a662e1487:int;
      
      private var _acd9aefd8844377e67c84f1c:int;
      
      private var _a321c45862ba06127831bfdd:int;
      
      private var _74e8c8a2f52bec5fb7950e7e:_34a2ba6ad978d976b8b0f5a4;
      
      private var _e67d3aa9a08523227bf1db01:String;
      
      private var _6782eaac84d2648e89ae9173:uint;
      
      public function _308f65d1af1b2fa55fd15be8(param1:DisplayObjectContainer)
      {
         this._9eef99fd896450fcd7562510 = new _4488b7b383914efb9281d7a4(this,param1);
         super(this._9eef99fd896450fcd7562510);
         this.init();
      }
      
      override public function _1ca02568f97f6901b3c3003f() : void
      {
         super._1ca02568f97f6901b3c3003f();
         this._74e8c8a2f52bec5fb7950e7e._95b5d5379ad5d337e4cae733(this._ec1b3b19823da6a1cdcfbff8);
      }
      
      private function _ec1b3b19823da6a1cdcfbff8(param1:int, param2:int) : void
      {
         --this._acd9aefd8844377e67c84f1c;
         this._1c76a0512c7cfad0557d8121();
         if(this._acd9aefd8844377e67c84f1c == (-201749786 ^ 0x18A49048 ^ 0x631FF4A1 ^ -2008879601))
         {
            this._74e8c8a2f52bec5fb7950e7e._95b5d5379ad5d337e4cae733(this._ec1b3b19823da6a1cdcfbff8);
            this._f6dd9bc25e3ea2107e22d6d1();
         }
         else
         {
            this._1c76a0512c7cfad0557d8121();
         }
      }
      
      override protected function _3d45492cb1b715a713c0c8d0(param1:_5e1bab759fcaea6d1f84faa7) : void
      {
         super._3d45492cb1b715a713c0c8d0(param1);
         if(param1 is ResponseError)
         {
            return;
         }
         var _loc2_:ResponseClubsGetPageTournament = param1 as ResponseClubsGetPageTournament;
         _loc2_.mergeData();
         this._acd9aefd8844377e67c84f1c = _loc2_.timeLeftChangeState;
         this._e67d3aa9a08523227bf1db01 = _loc2_.state;
         this._a321c45862ba06127831bfdd = _loc2_.clubsInGroup;
         this._9eef99fd896450fcd7562510.buttonHistory.visible = _loc2_.tournaments_played > (-1340590856 ^ 0x3EF7686F ^ -1632235514 ^ 0x10594C91);
         switch(_loc2_.state)
         {
            case _87c5db8b779e4199260f7152.ETS_UPCOMING:
               §§push(-380122921 ^ 0x65FD8DAA ^ -68558318 ^ 0x7743A76F);
               break;
            case _87c5db8b779e4199260f7152.ETS_IN_PROGRESS:
               §§push(-699030735 ^ -1171209945 ^ 0x60281003 ^ 0x0C4D7214);
               break;
            case _87c5db8b779e4199260f7152.ETS_FINISHED:
               §§push(0x0A43E55E ^ 0x5DFA7433 ^ -773845566 ^ -2040947539);
               break;
            default:
               §§push(0x589EC64C ^ 0x35116839 ^ -643714768 ^ -1272045754);
         }
         switch(§§pop())
         {
            case 0:
               this._77152099c9399cc17f8ccad3(_loc2_);
               break;
            case 1:
               this._f68f21f439bfd64205824b12(_loc2_);
               break;
            case 2:
               this._76c574290fc57d5a9d5045d9(_loc2_);
               break;
            default:
               Debug.assert(false);
         }
         this._1c76a0512c7cfad0557d8121();
         this._010a76e7fb9d72d08d1f619e(_loc2_.data,_loc2_.type);
         this._9eef99fd896450fcd7562510.viewPagination.pageCurrent = -1667449653 ^ 0x0E00B747 ^ -1095286587 ^ 0x2C2B4B49;
         this._1eb4e7f1ce73557317dd1958();
         this._36c10cdbd8320a2b0f78db2e();
      }
      
      private function _77152099c9399cc17f8ccad3(param1:ResponseClubsGetPageTournament) : void
      {
         this._9eef99fd896450fcd7562510.isTournamentInProgress = false;
         this._dc5b9980e9093f74b9c98b5f();
      }
      
      private function _f68f21f439bfd64205824b12(param1:ResponseClubsGetPageTournament) : void
      {
         this._9eef99fd896450fcd7562510.isTournamentInProgress = true;
         this._9eef99fd896450fcd7562510.tournamentType = param1.type;
         this._dc5b9980e9093f74b9c98b5f();
      }
      
      private function _76c574290fc57d5a9d5045d9(param1:ResponseClubsGetPageTournament) : void
      {
         this._9eef99fd896450fcd7562510.isTournamentInProgress = false;
      }
      
      override public function _4f254116765eb1a39d6712be(param1:Object, param2:Event) : Boolean
      {
         var _loc3_:_280acac4416a5f351155f2a8 = null;
         var _loc4_:Boolean = super._4f254116765eb1a39d6712be(param1,param2);
         if(!_loc4_)
         {
            switch(param1)
            {
               case this._9eef99fd896450fcd7562510.buttonHistory:
                  §§push(-1499441809 ^ -2115057197 ^ -1363501 ^ -660230801);
                  break;
               case this._9eef99fd896450fcd7562510.viewPagination.buttonLeft:
                  §§push(0x25E496C9 ^ -22818164 ^ -1334182594 ^ 0x6B3EB97A);
                  break;
               case this._9eef99fd896450fcd7562510.viewPagination.buttonRight:
                  §§push(-2093561733 ^ -587405721 ^ -1523752917 ^ -85504459);
                  break;
               default:
                  §§push(0x5A186BB4 ^ 0x37335577 ^ -230296655 ^ -1620128399);
            }
            switch(§§pop())
            {
               case 0:
                  _loc3_ = app.dialogFactory._a0d214350fb42da9f32557e6(_280acac4416a5f351155f2a8);
                  _loc3_.show();
                  break;
               case 1:
               case 2:
                  this._36c10cdbd8320a2b0f78db2e();
                  break;
               default:
                  Debug.assert(false);
            }
         }
         return _loc4_;
      }
      
      private function init() : void
      {
         this._b47b56059fcd541a662e1487 = 0x7AD38367 ^ -1129668569 ^ -1476081461 ^ 0x6E7DEB8D;
         this._6f2b8700cc06f96b8122be36 = [];
         this._74e8c8a2f52bec5fb7950e7e = _92d7656ddc3c3da810e99c74.getInstance()._57ad3faeff9ca92cbf9fe447(_34a2ba6ad978d976b8b0f5a4.TIMER_1S);
      }
      
      private function _1c76a0512c7cfad0557d8121() : void
      {
         var _loc1_:String = null;
         var _loc2_:String = null;
         switch(this._e67d3aa9a08523227bf1db01)
         {
            case _87c5db8b779e4199260f7152.ETS_UPCOMING:
               §§push(-1740057508 ^ 0x259710ED ^ 0x38CE50C1 ^ -2062445456);
               break;
            case _87c5db8b779e4199260f7152.ETS_IN_PROGRESS:
               §§push(0x6E859EF4 ^ -1921072971 ^ 0x1186447D ^ -226682307);
               break;
            case _87c5db8b779e4199260f7152.ETS_FINISHED:
               §§push(-1658118080 ^ 0x563ECA67 ^ 0x09EF2A89 ^ -1023754068);
               break;
            default:
               §§push(0x4A6B8FEF ^ 0x23680423 ^ 0x7C8C7AC6 ^ 0x158FF109);
         }
         switch(§§pop())
         {
            case 0:
               _loc1_ = _c2ad9d37d7be0097d6d2e977._eeaa6c6c21a64b796b80bd46(this._acd9aefd8844377e67c84f1c);
               _loc2_ = _c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a.EST_CLUB_TOURNAMENT_UPCOMING);
               _loc2_ = _loc2_.replace(_706c123ff0b2d45829c1bb3e.ESTS_VALUE,_loc1_);
               break;
            case 1:
               _loc2_ = _c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a.EST_CLUB_TOURNAMENT_IN_PROGRESS);
               _loc2_ = _loc2_.replace(_706c123ff0b2d45829c1bb3e.ESTS_VALUE,Math.max(this._a321c45862ba06127831bfdd - 1,0x150A7319 ^ 0x29DA8809 ^ 0x3433B91E ^ 0x08E3420E));
               break;
            case 2:
               _loc2_ = _c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a.EST_CLUB_TOURNAMENT_FINISHED);
               break;
            default:
               Debug.assert(false);
         }
         this._9eef99fd896450fcd7562510.text = _loc2_;
         this._9eef99fd896450fcd7562510.timeLeft = this._acd9aefd8844377e67c84f1c;
      }
      
      private function _dc5b9980e9093f74b9c98b5f() : void
      {
         var _loc1_:int = 0x0F9FE572 ^ -2030257525 ^ -598240052 ^ -13872330;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (0x434F0832 ^ -1184899871 ^ -161059904 ^ -1502730480))
            {
               case 0:
                  if(this._acd9aefd8844377e67c84f1c == (0x09040D30 ^ 0x1C538419 ^ -504304973 ^ -190356582))
                  {
                     _loc1_ = 0x7FE648D5 ^ -789784341 ^ 0x41B4917C ^ 0x44A69940;
                  }
                  else
                  {
                     _loc1_ = -264565162 ^ 0x67A192BD ^ 0x4B141F56 ^ 0x76961BBC;
                  }
                  break;
               case 1:
                  return;
               case 2:
                  this._74e8c8a2f52bec5fb7950e7e._475178699397df7592a9026e(this._ec1b3b19823da6a1cdcfbff8);
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function _f6dd9bc25e3ea2107e22d6d1() : void
      {
         this._3be006d949f1e0b22ec45ade();
         this._6782eaac84d2648e89ae9173 = setTimeout(_bd82e272777ed3124374ba32,0x5172F383 ^ -1842777477 ^ 0x25D9AF26 ^ -427677426);
      }
      
      private function _010a76e7fb9d72d08d1f619e(param1:Array, param2:String) : void
      {
         var _loc3_:Object = null;
         var _loc4_:_d2aa40bd611bc55a28543881 = null;
         _f2f26e7a66175d89c6f850e5(this._6f2b8700cc06f96b8122be36);
         var _loc5_:DisplayObjectContainer = this._9eef99fd896450fcd7562510.source as DisplayObjectContainer;
         for each(_loc3_ in param1)
         {
            _loc4_ = new _d2aa40bd611bc55a28543881(_loc3_,param2);
            this._6f2b8700cc06f96b8122be36.push(_loc4_);
            _loc5_.addChild(_loc4_.view.source);
         }
         this._93d20df7cc6d0a0961f0d3fe();
      }
      
      private function _93d20df7cc6d0a0961f0d3fe() : void
      {
         _2366485e451061bdda2a0f22(this._6f2b8700cc06f96b8122be36,-758217423 ^ 0x2FDFA89F ^ -1944227987 ^ 0x710C427A,this._b47b56059fcd541a662e1487,0x46BF90B8 ^ 0x180AFA12 ^ 0x36882E0E ^ 0x683D44A4);
      }
      
      private function _1eb4e7f1ce73557317dd1958() : void
      {
         this._9eef99fd896450fcd7562510.viewPagination.pagesTotal = Math.ceil(this._6f2b8700cc06f96b8122be36.length / this._b47b56059fcd541a662e1487);
      }
      
      private function _36c10cdbd8320a2b0f78db2e() : void
      {
         _3d866f07adb02a6079215c17(this._6f2b8700cc06f96b8122be36,this._9eef99fd896450fcd7562510.viewPagination.pageCurrent,this._b47b56059fcd541a662e1487);
      }
      
      private function _3be006d949f1e0b22ec45ade() : void
      {
         clearTimeout(this._6782eaac84d2648e89ae9173);
      }
      
      override public function _90eac9ca552fe54c2ca0299f() : void
      {
         this._3be006d949f1e0b22ec45ade();
         this._74e8c8a2f52bec5fb7950e7e._95b5d5379ad5d337e4cae733(this._ec1b3b19823da6a1cdcfbff8);
         super._90eac9ca552fe54c2ca0299f();
      }
   }
}

