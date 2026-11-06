package com.ax3.fishao.view.dialogs.tournaments
{
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.view.dialogs.base.EDialogType;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces.EControllerUpdate;
   import com.ax3.fishao.view.dialogs.tournaments.controllers.ControllerDialogTournamentSignUp;
   
   public class DialogTournamentSignUp extends DialogTournamentSignUpAsset
   {
      
      private var _controllerDialogTournamentSignUp:ControllerDialogTournamentSignUp;
      
      public function DialogTournamentSignUp()
      {
         super();
      }
      
      override public function get type() : String
      {
         return EDialogType.EDT_TOURNAMENT_SIGNUP;
      }
      
      override protected function onAssetCreationComplete() : void
      {
         super.onAssetCreationComplete();
         this._controllerDialogTournamentSignUp = new ControllerDialogTournamentSignUp(_asset);
      }
      
      override public function update(param1:String) : void
      {
         switch(param1)
         {
            case EControllerUpdate.ECU_TOURNAMENTS_TOURNAMENT_SIGN_UP:
            case EControllerUpdate.ECU_TOURNAMENTS_ESTABLISH_CURRENT:
               this._controllerDialogTournamentSignUp.update(param1);
               break;
            default:
               Debug.assert(false,"Unsupported update type in update method of TournamentSignUpDialog: " + param1);
         }
      }
      
      override public function close() : void
      {
         this._controllerDialogTournamentSignUp.cleanup();
         super.close();
      }
   }
}

