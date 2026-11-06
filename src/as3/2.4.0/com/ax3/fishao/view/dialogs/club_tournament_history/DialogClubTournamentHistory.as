package com.ax3.fishao.view.dialogs.club_tournament_history
{
   import com.ax3.fishao.view.dialogs.base.DialogBase;
   import com.ax3.fishao.view.dialogs.base.EDialogType;
   
   public class DialogClubTournamentHistory extends DialogBase
   {
      
      private var _controller:ControllerTournamentHistory;
      
      public function DialogClubTournamentHistory()
      {
         super("dialog_clubs_tournament_history.swf");
      }
      
      override public function get type() : String
      {
         return EDialogType.EDT_CLUB_TOURNAMENT_HISTORY;
      }
      
      override protected function onAssetCreationComplete() : void
      {
         super.onAssetCreationComplete();
         this._controller = new ControllerTournamentHistory(_asset);
      }
   }
}

