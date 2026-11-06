package com.ax3.fishao.view.dialogs.tournaments
{
   import com.ax3.fishao._dfa25706e58a240c1e33e5c6;
   import com.ax3.fishao.locations.base._67f8febc099eaa05c48aa41e;
   import com.ax3.fishao.locations.tournaments._cbfd5ba249b6014b04893ab8;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs._0737efdbd5337ba3fbc64b2e;
   import com.ax3.fishao.view.dialogs.base._22437dfd77f65dbf9dbc4281;
   import com.ax3.fishao.view.dialogs.base._9d4645de4f8d7c9a1a570db1;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces._6b63fd0a4028eb279b227831;
   import com.ax3.fishao.view.dialogs.tournaments.models._2a31502166ae419b5332a782;
   import com.ax3.fishao.view.dialogs.tournaments.models._87c5db8b779e4199260f7152;
   import com.ax3.fishao.view.dialogs.tournaments.models._a1842a5c36511100aec6f1ca;
   import com.ax3.fishao.view.dialogs.worlds._15471cbef7d7912586752286;
   import com.ax3.jss.requests.server._5e1bab759fcaea6d1f84faa7;
   import protocol.api.tournaments.FscExtensionTournaments;
   import protocol.api.tournaments.end.ResponseTournamentEnd;
   import protocol.api.tournaments.enter.ResponseTournamentEnter;
   import protocol.api.tournaments.getRelevant.ResponseTournamentGetRelevant;
   import protocol.api.tournaments.members.ResponseTournamentMembers;
   import protocol.api.tournaments.sign_up.ResponseTournamentSignUp;
   import protocol.api.tournaments.start.ResponseTournamentStart;
   
   public class _9adbacee9e79da53f4cf55bb extends _9d4645de4f8d7c9a1a570db1
   {
      
      private var _3e286bbf9cef2f67a37233a1:_2a31502166ae419b5332a782;
      
      private var _3201a15a21ea35a9df20b51d:FscExtensionTournaments;
      
      private var _67ed214c38c3dc8bbd755478:Boolean;
      
      private var _183297e883cab10125c2c58a:_15471cbef7d7912586752286;
      
      public function _9adbacee9e79da53f4cf55bb()
      {
         super();
         this._3201a15a21ea35a9df20b51d = _dfa25706e58a240c1e33e5c6.fscModel.extensionTournaments;
         _4575c3ec15103b43cbf2be04(ResponseTournamentEnter,this._1b65f5fe4d600a3226f3c5c2);
         _4575c3ec15103b43cbf2be04(ResponseTournamentStart,this._a3359aa11a1ce28889ba6bc0);
         _4575c3ec15103b43cbf2be04(ResponseTournamentMembers,this._bb24e6e979bed3921ac9b3d7);
         _4575c3ec15103b43cbf2be04(ResponseTournamentEnd,this._049078b006f0047202c3d042);
      }
      
      private static function _73f9536f853ecab84526d650(param1:_5e1bab759fcaea6d1f84faa7) : void
      {
         if(_8d417bde99754424b1a285c5(param1))
         {
            return;
         }
         var _loc2_:_67f8febc099eaa05c48aa41e = GameSwf.currentLocationDialog;
         if(_loc2_ != null)
         {
            _loc2_.updateWithType(_6b63fd0a4028eb279b227831.ECU_TOURNAMENTS_TOURNAMENT_END);
            GameSwf.instance._9539c89c962dfaf34e69b2ae();
            GameSwf.currentLocationDialog.gui.mainMenu.tournamentIcon.enable();
         }
      }
      
      public function get tournamentCurrent() : _2a31502166ae419b5332a782
      {
         return this._3e286bbf9cef2f67a37233a1;
      }
      
      public function get endDataIsNotEnoughMembers() : Boolean
      {
         return this._67ed214c38c3dc8bbd755478;
      }
      
      public function _8766b98a29c98c56b6d4409b(param1:Function) : void
      {
         this._3201a15a21ea35a9df20b51d.enterToLocationTournament(this._3e286bbf9cef2f67a37233a1.id,param1);
      }
      
      private function _9656408b54136ea0cc31e04d(param1:_5e1bab759fcaea6d1f84faa7) : void
      {
         if(_8d417bde99754424b1a285c5(param1))
         {
            return;
         }
         var _loc2_:ResponseTournamentGetRelevant = param1 as ResponseTournamentGetRelevant;
         this._3e286bbf9cef2f67a37233a1 = new _2a31502166ae419b5332a782();
         this._3e286bbf9cef2f67a37233a1.deserialize(_loc2_.tournamentInfo);
         this._3e286bbf9cef2f67a37233a1._7e53818033d1886bad4a1d01();
         _0737efdbd5337ba3fbc64b2e.getInstance()._83fe3f7775d32c7cda3d7865(_6b63fd0a4028eb279b227831.ECU_TOURNAMENTS_ESTABLISH_CURRENT,_22437dfd77f65dbf9dbc4281.EDT_TOURNAMENT_SIGNUP);
      }
      
      private function _c19cd3e795ad7a528ca4265a(param1:_5e1bab759fcaea6d1f84faa7) : void
      {
         var _loc2_:int = -123085076 ^ -320498588 ^ -918504607 ^ -1638078570;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (-807125201 ^ -1307690824 ^ -1465813085 ^ -1776589237))
            {
               case 0:
                  if(_8d417bde99754424b1a285c5(param1))
                  {
                     _loc2_ = -500793821 ^ -1584222537 ^ -773728445 ^ -788196951;
                  }
                  else
                  {
                     _loc2_ = -1053964268 ^ -163925250 ^ -73008059 ^ -1880977198;
                  }
                  break;
               case 1:
                  return;
               case 2:
                  this._183297e883cab10125c2c58a._52f0054af78784d519fe5f84(this._3e286bbf9cef2f67a37233a1.worldId,this._3e286bbf9cef2f67a37233a1.url,this._e236898ba11c89599f2cec97);
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function _e236898ba11c89599f2cec97(param1:_5e1bab759fcaea6d1f84faa7) : void
      {
         var _loc2_:int = 0x075E7EFB ^ 0x2282C68C ^ -1287928147 ^ -2112615912;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x6097C3CB ^ -1243107321 ^ 0x58096F2D ^ -1718982622))
            {
               case 0:
                  this.signUpOnCurrent(null);
                  return;
               case 1:
                  if(_8d417bde99754424b1a285c5(param1))
                  {
                     _loc2_ = 0x3A9A9F7D ^ 0x4CB2F820 ^ -705306648 ^ -1221669772;
                  }
                  else
                  {
                     _loc2_ = -476785929 ^ 0x0CA98D1B ^ 0x2D779E2A ^ -692472571;
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
      
      private function _0b8ea5699597544ebcda1de5(param1:_5e1bab759fcaea6d1f84faa7) : void
      {
         var _loc2_:int = 0x55C401E7 ^ 0x630C4233 ^ 0x0103AD33 ^ 0x03CD5A3B;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x5E34B92F ^ -74995431 ^ 0x16B1F781 ^ -2029759637))
            {
               case 0:
                  if(_8d417bde99754424b1a285c5(param1))
                  {
                     _loc2_ = -1735655156 ^ 0x3BDD58C1 ^ -548158236 ^ 0x480429F4;
                  }
                  else
                  {
                     _loc2_ = 0x4358418D ^ -2131826779 ^ -499568834 ^ 0x15893DC8;
                  }
                  break;
               case 1:
                  return;
               case 2:
                  GameSwf.instance._6be4d227dc9b0bba6d08a3b3(this._3e286bbf9cef2f67a37233a1.locationId);
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function _b18c84cde12ac12d6c0d333e(param1:_5e1bab759fcaea6d1f84faa7) : void
      {
         if(_8d417bde99754424b1a285c5(param1))
         {
            return;
         }
         var _loc2_:ResponseTournamentSignUp = param1 as ResponseTournamentSignUp;
         this._3e286bbf9cef2f67a37233a1.id = _loc2_.tournament_id;
         this._3e286bbf9cef2f67a37233a1.isPlayerSignedUp = true;
         _0737efdbd5337ba3fbc64b2e.getInstance()._83fe3f7775d32c7cda3d7865(_6b63fd0a4028eb279b227831.ECU_TOURNAMENTS_TOURNAMENT_SIGN_UP,_22437dfd77f65dbf9dbc4281.EDT_TOURNAMENT_SIGNUP);
         GameSwf.instance._6be4d227dc9b0bba6d08a3b3(this._3e286bbf9cef2f67a37233a1.locationId);
      }
      
      public function _1b65f5fe4d600a3226f3c5c2(param1:_5e1bab759fcaea6d1f84faa7) : void
      {
         var _loc2_:_0f0e8f7ec0bd7873425d866f = null;
         if(_8d417bde99754424b1a285c5(param1))
         {
            return;
         }
         var _loc3_:ResponseTournamentEnter = param1 as ResponseTournamentEnter;
         this._3e286bbf9cef2f67a37233a1.state = _loc3_.state;
         this._3e286bbf9cef2f67a37233a1.updateTime(_loc3_);
         if(this._3e286bbf9cef2f67a37233a1.state == _87c5db8b779e4199260f7152.ETS_SIGNING && (this._3e286bbf9cef2f67a37233a1.type != _a1842a5c36511100aec6f1ca.ETT_LAKE_RUN || this._3e286bbf9cef2f67a37233a1.timeLeftStart > (0x35E6EEFF ^ 0x1D1E653E ^ -1624659065 ^ -1211031485)))
         {
            _loc2_ = app.dialogFactory._2ab9eead788e6e50a00d4a94();
            _loc2_.show();
         }
         GameSwf.currentLocationDialog.updateWithType(_6b63fd0a4028eb279b227831.ECU_TOURNAMENTS_TOURNAMENT_ENTER);
      }
      
      private function _a3359aa11a1ce28889ba6bc0(param1:_5e1bab759fcaea6d1f84faa7) : void
      {
         if(_8d417bde99754424b1a285c5(param1))
         {
            return;
         }
         var _loc2_:int = GameSwf.currentLocationDialog.locationModel.id;
         this._3e286bbf9cef2f67a37233a1.state = _87c5db8b779e4199260f7152.ETS_IN_PROGRESS;
         GameSwf.currentLocationDialog.updateWithType(_6b63fd0a4028eb279b227831.ECU_TOURNAMENTS_TOURNAMENT_START);
         if(_loc2_ == this._3e286bbf9cef2f67a37233a1.locationId)
         {
            return;
         }
         GameSwf.instance._6be4d227dc9b0bba6d08a3b3(this._3e286bbf9cef2f67a37233a1.locationId);
      }
      
      private function _bb24e6e979bed3921ac9b3d7(param1:_5e1bab759fcaea6d1f84faa7) : void
      {
         if(_8d417bde99754424b1a285c5(param1))
         {
            return;
         }
         var _loc2_:ResponseTournamentMembers = param1 as ResponseTournamentMembers;
         if(this._3e286bbf9cef2f67a37233a1 == null)
         {
            return;
         }
         this._3e286bbf9cef2f67a37233a1._75925e7dfdf901c64fb3e8fc(_loc2_.membersInfo);
         _0737efdbd5337ba3fbc64b2e.getInstance()._83fe3f7775d32c7cda3d7865(_6b63fd0a4028eb279b227831.ECU_TOURNAMENTS_MEMBERS_INFO_UPDATED,_22437dfd77f65dbf9dbc4281.EDT_TOURNAMENT_START);
         var _loc3_:_67f8febc099eaa05c48aa41e = GameSwf.currentLocationDialog;
         if(_loc3_ != null)
         {
            _loc3_.updateWithType(_6b63fd0a4028eb279b227831.ECU_TOURNAMENTS_MEMBERS_INFO_UPDATED);
         }
      }
      
      private function _2b3324661299fe25ecbf68db(param1:_5e1bab759fcaea6d1f84faa7) : void
      {
         var _loc2_:int = -292208524 ^ -272892421 ^ -339924721 ^ -1005630018;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x071CF34A ^ -1621683951 ^ 0x069727D9 ^ -1337975619))
            {
               case 0:
                  return;
               case 1:
                  if(_8d417bde99754424b1a285c5(param1))
                  {
                     _loc2_ = -1154363246 ^ 0x4B69ED8F ^ 0x0F4A134E ^ -779159700;
                  }
                  else
                  {
                     _loc2_ = 0x6AA76A38 ^ -635704062 ^ -1816125676 ^ 0x0DE04113;
                  }
                  break;
               case 2:
                  this._3e286bbf9cef2f67a37233a1.state = _87c5db8b779e4199260f7152.ETS_FINISHED;
                  GameSwf.currentLocationDialog.updateWithType(_6b63fd0a4028eb279b227831.ECU_TOURNAMENTS_MEMBER_FINISH);
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function _049078b006f0047202c3d042(param1:_5e1bab759fcaea6d1f84faa7) : void
      {
         if(_8d417bde99754424b1a285c5(param1))
         {
            return;
         }
         var _loc2_:ResponseTournamentEnd = param1 as ResponseTournamentEnd;
         this._67ed214c38c3dc8bbd755478 = _loc2_.isNotEnoughMembers;
         this._3e286bbf9cef2f67a37233a1._75925e7dfdf901c64fb3e8fc(_loc2_.results,true);
         if(GameSwf.currentLocationDialog is _cbfd5ba249b6014b04893ab8)
         {
            this._183297e883cab10125c2c58a._f7371ed907da715d38088aec(_73f9536f853ecab84526d650);
         }
         else if(GameSwf.currentLocationDialog != null)
         {
            GameSwf.currentLocationDialog.updateWithType(_6b63fd0a4028eb279b227831.ECU_TOURNAMENTS_TOURNAMENT_END);
         }
         else
         {
            this._e69c6e7a108454bf4bb04057();
         }
      }
      
      public function _830d08eff95ab1e54a3b983c() : void
      {
         this._e69c6e7a108454bf4bb04057();
      }
      
      override public function _90f9c483fb94c3782ed48130() : void
      {
         this._183297e883cab10125c2c58a = GameSwf.instance.managerWorlds;
      }
      
      public function canSignUpOnCurrent(param1:Function) : void
      {
         var callback:Function = param1;
         var callbackWrapper:Function = function(param1:_5e1bab759fcaea6d1f84faa7):void
         {
            _c19cd3e795ad7a528ca4265a(param1);
            if(callback != null)
            {
               callback(param1);
            }
         };
         this._3201a15a21ea35a9df20b51d.canSignUpOnCurrent(callbackWrapper);
      }
      
      public function signUpOnCurrent(param1:Function) : void
      {
         var callback:Function = param1;
         var callbackWrapper:Function = function(param1:_5e1bab759fcaea6d1f84faa7):void
         {
            _b18c84cde12ac12d6c0d333e(param1);
            if(callback != null)
            {
               callback(param1);
            }
         };
         this._3201a15a21ea35a9df20b51d.signUpOnCurrent(callbackWrapper);
      }
      
      public function sendReadyState(param1:Function) : void
      {
         this._3201a15a21ea35a9df20b51d.sendReadyState(this._3e286bbf9cef2f67a37233a1.id,param1);
      }
      
      public function _1dbac8d0df5e942707881671(param1:Function = null) : void
      {
         var callback:Function = param1;
         var callbackWrapper:Function = function(param1:_5e1bab759fcaea6d1f84faa7):void
         {
            _9656408b54136ea0cc31e04d(param1);
            if(callback != null)
            {
               callback(param1);
            }
         };
         this._3201a15a21ea35a9df20b51d.getRelevantTournament(callbackWrapper);
      }
      
      public function sendTournamentFinish() : void
      {
         this._3201a15a21ea35a9df20b51d.sendTournamentFinish(this._3e286bbf9cef2f67a37233a1.id,this._2b3324661299fe25ecbf68db);
      }
      
      public function _02f1b5d9b2f8590e905dab68() : void
      {
         this._183297e883cab10125c2c58a._52f0054af78784d519fe5f84(this._3e286bbf9cef2f67a37233a1.worldId,this._3e286bbf9cef2f67a37233a1.url,this._0b8ea5699597544ebcda1de5);
      }
      
      private function _e69c6e7a108454bf4bb04057() : void
      {
         var _loc1_:int = -1057280322 ^ -1939703447 ^ 0x7ADDED2A ^ 0x359E8CC5;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (-81604045 ^ 0x41A61177 ^ -734864844 ^ 0x6D6C2F49))
            {
               case 0:
                  this._3e286bbf9cef2f67a37233a1._90eac9ca552fe54c2ca0299f();
                  this._3e286bbf9cef2f67a37233a1 = null;
                  return;
               case 1:
                  if(this._3e286bbf9cef2f67a37233a1 == null)
                  {
                     _loc1_ = -1809851381 ^ 0x7BD809C7 ^ -2020592158 ^ 0x6B8DD615;
                  }
                  else
                  {
                     _loc1_ = -604157926 ^ 0x764FE2AB ^ -644926902 ^ 0x77E7AEC2;
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
   }
}

