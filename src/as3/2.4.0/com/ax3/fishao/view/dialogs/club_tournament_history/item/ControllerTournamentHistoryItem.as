package com.ax3.fishao.view.dialogs.club_tournament_history.item
{
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.view.dialogs.base.controllers.implementations.Controller;
   
   public class ControllerTournamentHistoryItem extends Controller
   {
      
      private var _view:ViewTournamentHistoryItem = new ViewTournamentHistoryItem(this);
      
      private var _data:Object;
      
      public function ControllerTournamentHistoryItem(param1:Object)
      {
         super(this._view);
         this._data = param1;
         this.init();
      }
      
      private function init() : void
      {
         this._view.tournamentType = Debug.assertProperty(this._data,"tournament_type");
         this._view.position = Debug.assertProperty(this._data,"position");
         this._view.reward = Debug.assertProperty(this._data,"reward");
      }
   }
}

