package com.ax3.fishao.view.dialogs.tournaments
{
   import com.ax3.fishao.view.dialogs.base.EDialogType;
   import com.ax3.fishao.view.dialogs.tournaments.controllers.ControllerDialogTournamentResults;
   
   public class DialogTournamentResults extends DialogTournamentResultsAsset
   {
      
      private var _controllerDialogTournamentResults:ControllerDialogTournamentResults;
      
      public function DialogTournamentResults()
      {
         super();
      }
      
      override public function get type() : String
      {
         return EDialogType.EDT_TOURNAMENT_RESULTS;
      }
      
      override protected function onAssetCreationComplete() : void
      {
         super.onAssetCreationComplete();
         this._controllerDialogTournamentResults = new ControllerDialogTournamentResults(_asset);
      }
      
      override public function onCloseComplete() : void
      {
         this._controllerDialogTournamentResults.cleanup();
         super.onCloseComplete();
      }
   }
}

