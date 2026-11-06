package com.ax3.fishao.view.dialogs.tournaments
{
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.view.dialogs.base.EDialogType;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces.EControllerUpdate;
   import com.ax3.fishao.view.dialogs.tournaments.controllers.ControllerDialogTournamentStart;
   import com.ax3.fishao.view.dialogs.tournaments.models.ETournamentState;
   
   public class DialogTournamentStart extends DialogTournamentStartAsset
   {
      
      private var _controllerDialogTournamentStart:ControllerDialogTournamentStart;
      
      public function DialogTournamentStart()
      {
         super();
      }
      
      override public function get type() : String
      {
         return EDialogType.EDT_TOURNAMENT_START;
      }
      
      override protected function onAssetCreationComplete() : void
      {
         super.onAssetCreationComplete();
         this._controllerDialogTournamentStart = new ControllerDialogTournamentStart(_asset);
      }
      
      override public function update(param1:String) : void
      {
         switch(param1)
         {
            case EControllerUpdate.ECU_TOURNAMENTS_MEMBERS_INFO_UPDATED:
               if(this._controllerDialogTournamentStart == null)
               {
                  return;
               }
               this._controllerDialogTournamentStart.update(param1);
               break;
            default:
               Debug.assert(false,"Unsupported update type in update method of TournamentSignUpDialog: " + param1);
         }
      }
      
      override public function show() : void
      {
         if(GameSwf.instance.managerTournaments.tournamentCurrent.state != ETournamentState.ETS_SIGNING)
         {
            this.close();
         }
         super.show();
      }
      
      override public function close() : void
      {
         this._controllerDialogTournamentStart.cleanup();
         this._controllerDialogTournamentStart = null;
         super.close();
      }
   }
}

