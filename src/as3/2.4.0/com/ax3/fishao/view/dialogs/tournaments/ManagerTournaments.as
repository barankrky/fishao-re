package com.ax3.fishao.view.dialogs.tournaments
{
   import com.ax3.fishao.FishaoFscModelManager;
   import com.ax3.fishao.locations.base.LocationDialog;
   import com.ax3.fishao.locations.tournaments.LocationDialogTournament;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs.PopupManager;
   import com.ax3.fishao.view.dialogs.base.EDialogType;
   import com.ax3.fishao.view.dialogs.base.ManagerBase;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces.EControllerUpdate;
   import com.ax3.fishao.view.dialogs.tournaments.models.ETournamentState;
   import com.ax3.fishao.view.dialogs.tournaments.models.ETournamentType;
   import com.ax3.fishao.view.dialogs.tournaments.models.TournamentInfo;
   import com.ax3.fishao.view.dialogs.worlds.ManagerWorlds;
   import com.ax3.jss.requests.server.ServerResp;
   import protocol.api.tournaments.FscExtensionTournaments;
   import protocol.api.tournaments.end.ResponseTournamentEnd;
   import protocol.api.tournaments.enter.ResponseTournamentEnter;
   import protocol.api.tournaments.getRelevant.ResponseTournamentGetRelevant;
   import protocol.api.tournaments.members.ResponseTournamentMembers;
   import protocol.api.tournaments.sign_up.ResponseTournamentSignUp;
   import protocol.api.tournaments.start.ResponseTournamentStart;
   
   public class ManagerTournaments extends ManagerBase
   {
      
      private var _tournamentCurrent:TournamentInfo;
      
      private var _extensionTournaments:FscExtensionTournaments;
      
      private var _endDataIsNotEnoughMembers:Boolean;
      
      private var _managerWorlds:ManagerWorlds;
      
      public function ManagerTournaments()
      {
         super();
         this._extensionTournaments = FishaoFscModelManager.fscModel.extensionTournaments;
         addResponseHandler(ResponseTournamentEnter,this.onTournamentEnter);
         addResponseHandler(ResponseTournamentStart,this.onTournamentStart);
         addResponseHandler(ResponseTournamentMembers,this.onTournamentMemberUpdate);
         addResponseHandler(ResponseTournamentEnd,this.onTournamentEnd);
      }
      
      private static function onDefaultWorldConnected(param1:ServerResp) : void
      {
         if(handleResponseError(param1))
         {
            return;
         }
         var _loc2_:LocationDialog = GameSwf.currentLocationDialog;
         if(_loc2_ != null)
         {
            _loc2_.updateWithType(EControllerUpdate.ECU_TOURNAMENTS_TOURNAMENT_END);
            GameSwf.instance.closeSublocationDialog();
            GameSwf.currentLocationDialog.gui.mainMenu.tournamentIcon.enable();
         }
      }
      
      public function get tournamentCurrent() : TournamentInfo
      {
         return this._tournamentCurrent;
      }
      
      public function get endDataIsNotEnoughMembers() : Boolean
      {
         return this._endDataIsNotEnoughMembers;
      }
      
      public function onEnterToLocationTournament(param1:Function) : void
      {
         this._extensionTournaments.enterToLocationTournament(this._tournamentCurrent.id,param1);
      }
      
      private function onTournamentGetRelevant(param1:ServerResp) : void
      {
         if(handleResponseError(param1))
         {
            return;
         }
         var _loc2_:ResponseTournamentGetRelevant = param1 as ResponseTournamentGetRelevant;
         this._tournamentCurrent = new TournamentInfo();
         this._tournamentCurrent.deserialize(_loc2_.tournamentInfo);
         this._tournamentCurrent.onTournamentInit();
         PopupManager.getInstance().tryUpdateCurrentDialog(EControllerUpdate.ECU_TOURNAMENTS_ESTABLISH_CURRENT,EDialogType.EDT_TOURNAMENT_SIGNUP);
      }
      
      private function onTournamentCanSignUp(param1:ServerResp) : void
      {
         if(handleResponseError(param1))
         {
            return;
         }
         this._managerWorlds.enterWorld(this._tournamentCurrent.worldId,this._tournamentCurrent.url,this.onEnterTournamentVirtualWorldFirst);
      }
      
      private function onEnterTournamentVirtualWorldFirst(param1:ServerResp) : void
      {
         if(handleResponseError(param1))
         {
            return;
         }
         this.signUpOnCurrent(null);
      }
      
      private function onEnterTournamentVirtualWorld(param1:ServerResp) : void
      {
         if(handleResponseError(param1))
         {
            return;
         }
         GameSwf.instance.enterToTournament(this._tournamentCurrent.locationId);
      }
      
      private function onTournamentSignUp(param1:ServerResp) : void
      {
         if(handleResponseError(param1))
         {
            return;
         }
         var _loc2_:ResponseTournamentSignUp = param1 as ResponseTournamentSignUp;
         this._tournamentCurrent.id = _loc2_.tournament_id;
         this._tournamentCurrent.isPlayerSignedUp = true;
         PopupManager.getInstance().tryUpdateCurrentDialog(EControllerUpdate.ECU_TOURNAMENTS_TOURNAMENT_SIGN_UP,EDialogType.EDT_TOURNAMENT_SIGNUP);
         GameSwf.instance.enterToTournament(this._tournamentCurrent.locationId);
      }
      
      public function onTournamentEnter(param1:ServerResp) : void
      {
         var _loc2_:DialogTournamentStart = null;
         if(handleResponseError(param1))
         {
            return;
         }
         var _loc3_:ResponseTournamentEnter = param1 as ResponseTournamentEnter;
         this._tournamentCurrent.state = _loc3_.state;
         this._tournamentCurrent.updateTime(_loc3_);
         if(this._tournamentCurrent.state == ETournamentState.ETS_SIGNING && (this._tournamentCurrent.type != ETournamentType.ETT_LAKE_RUN || this._tournamentCurrent.timeLeftStart > 5))
         {
            _loc2_ = app.dialogFactory.getDialogTournamentStart();
            _loc2_.show();
         }
         GameSwf.currentLocationDialog.updateWithType(EControllerUpdate.ECU_TOURNAMENTS_TOURNAMENT_ENTER);
      }
      
      private function onTournamentStart(param1:ServerResp) : void
      {
         if(handleResponseError(param1))
         {
            return;
         }
         var _loc2_:int = GameSwf.currentLocationDialog.locationModel.id;
         this._tournamentCurrent.state = ETournamentState.ETS_IN_PROGRESS;
         GameSwf.currentLocationDialog.updateWithType(EControllerUpdate.ECU_TOURNAMENTS_TOURNAMENT_START);
         if(_loc2_ == this._tournamentCurrent.locationId)
         {
            return;
         }
         GameSwf.instance.enterToTournament(this._tournamentCurrent.locationId);
      }
      
      private function onTournamentMemberUpdate(param1:ServerResp) : void
      {
         if(handleResponseError(param1))
         {
            return;
         }
         var _loc2_:ResponseTournamentMembers = param1 as ResponseTournamentMembers;
         if(this._tournamentCurrent == null)
         {
            return;
         }
         this._tournamentCurrent.deserializeMembers(_loc2_.membersInfo);
         PopupManager.getInstance().tryUpdateCurrentDialog(EControllerUpdate.ECU_TOURNAMENTS_MEMBERS_INFO_UPDATED,EDialogType.EDT_TOURNAMENT_START);
         var _loc3_:LocationDialog = GameSwf.currentLocationDialog;
         if(_loc3_ != null)
         {
            _loc3_.updateWithType(EControllerUpdate.ECU_TOURNAMENTS_MEMBERS_INFO_UPDATED);
         }
      }
      
      private function onTournamentFinish(param1:ServerResp) : void
      {
         if(handleResponseError(param1))
         {
            return;
         }
         this._tournamentCurrent.state = ETournamentState.ETS_FINISHED;
         GameSwf.currentLocationDialog.updateWithType(EControllerUpdate.ECU_TOURNAMENTS_MEMBER_FINISH);
      }
      
      private function onTournamentEnd(param1:ServerResp) : void
      {
         if(handleResponseError(param1))
         {
            return;
         }
         var _loc2_:ResponseTournamentEnd = param1 as ResponseTournamentEnd;
         this._endDataIsNotEnoughMembers = _loc2_.isNotEnoughMembers;
         this._tournamentCurrent.deserializeMembers(_loc2_.results,true);
         if(GameSwf.currentLocationDialog is LocationDialogTournament)
         {
            this._managerWorlds.returnToDefaultWorld(onDefaultWorldConnected);
         }
         else if(GameSwf.currentLocationDialog != null)
         {
            GameSwf.currentLocationDialog.updateWithType(EControllerUpdate.ECU_TOURNAMENTS_TOURNAMENT_END);
         }
         else
         {
            this.tryCleanupTournament();
         }
      }
      
      public function onResultsDisplayed() : void
      {
         this.tryCleanupTournament();
      }
      
      override public function postInit() : void
      {
         this._managerWorlds = GameSwf.instance.managerWorlds;
      }
      
      public function canSignUpOnCurrent(param1:Function) : void
      {
         var callback:Function = param1;
         var callbackWrapper:Function = function(param1:ServerResp):void
         {
            onTournamentCanSignUp(param1);
            if(callback != null)
            {
               callback(param1);
            }
         };
         this._extensionTournaments.canSignUpOnCurrent(callbackWrapper);
      }
      
      public function signUpOnCurrent(param1:Function) : void
      {
         var callback:Function = param1;
         var callbackWrapper:Function = function(param1:ServerResp):void
         {
            onTournamentSignUp(param1);
            if(callback != null)
            {
               callback(param1);
            }
         };
         this._extensionTournaments.signUpOnCurrent(callbackWrapper);
      }
      
      public function sendReadyState(param1:Function) : void
      {
         this._extensionTournaments.sendReadyState(this._tournamentCurrent.id,param1);
      }
      
      public function establishRelevantTournament(param1:Function = null) : void
      {
         var callback:Function = param1;
         var callbackWrapper:Function = function(param1:ServerResp):void
         {
            onTournamentGetRelevant(param1);
            if(callback != null)
            {
               callback(param1);
            }
         };
         this._extensionTournaments.getRelevantTournament(callbackWrapper);
      }
      
      public function sendTournamentFinish() : void
      {
         this._extensionTournaments.sendTournamentFinish(this._tournamentCurrent.id,this.onTournamentFinish);
      }
      
      public function changeWorldAndEnter() : void
      {
         this._managerWorlds.enterWorld(this._tournamentCurrent.worldId,this._tournamentCurrent.url,this.onEnterTournamentVirtualWorld);
      }
      
      private function tryCleanupTournament() : void
      {
         if(this._tournamentCurrent == null)
         {
            return;
         }
         this._tournamentCurrent.cleanup();
         this._tournamentCurrent = null;
      }
   }
}

