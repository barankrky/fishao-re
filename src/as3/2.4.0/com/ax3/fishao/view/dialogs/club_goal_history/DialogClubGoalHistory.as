package com.ax3.fishao.view.dialogs.club_goal_history
{
   import com.ax3.fishao.view.dialogs.base.DialogBase;
   import com.ax3.fishao.view.dialogs.base.EDialogType;
   
   public class DialogClubGoalHistory extends DialogBase
   {
      
      private var _controller:ControllerGoalHistory;
      
      public function DialogClubGoalHistory()
      {
         super("dialog_clubs_goal_history.swf");
      }
      
      override public function get type() : String
      {
         return EDialogType.EDT_CLUB_GOAL_HISTORY;
      }
      
      override protected function onAssetCreationComplete() : void
      {
         super.onAssetCreationComplete();
         this._controller = new ControllerGoalHistory(_asset);
      }
   }
}

