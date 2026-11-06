package com.ax3.fishao.view.dialogs.club_tournament_history.item
{
   import com.ax3.fishao.display.popups.TextFieldAutofitWrapper;
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces.IController;
   import com.ax3.fishao.view.dialogs.base.views.implementations.ViewBase;
   
   public class ViewTournamentHistoryItem extends ViewBase
   {
      
      private var _source:gViewClubsItemTournamentHistory = new gViewClubsItemTournamentHistory();
      
      private var _labelTournamentType:TextFieldAutofitWrapper;
      
      private var _labelPosition:TextFieldAutofitWrapper;
      
      private var _labelReward:TextFieldAutofitWrapper;
      
      public function ViewTournamentHistoryItem(param1:IController)
      {
         super(param1,this._source);
         this.init();
      }
      
      public function set position(param1:int) : void
      {
         this._labelPosition.text = "#" + param1.toString();
      }
      
      public function set reward(param1:int) : void
      {
         this._labelReward.text = param1.toString();
      }
      
      public function set tournamentType(param1:String) : void
      {
         this._labelTournamentType.text = I18n.get(param1);
      }
      
      private function init() : void
      {
         this._labelTournamentType = new TextFieldAutofitWrapper(this._source.labelTournamentType);
         this._labelPosition = new TextFieldAutofitWrapper(this._source.labelPosition);
         this._labelReward = new TextFieldAutofitWrapper(this._source.labelReward);
      }
   }
}

