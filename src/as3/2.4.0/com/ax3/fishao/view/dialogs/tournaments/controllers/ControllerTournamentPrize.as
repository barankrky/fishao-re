package com.ax3.fishao.view.dialogs.tournaments.controllers
{
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.view.dialogs.base.controllers.implementations.Controller;
   import com.ax3.fishao.view.dialogs.string.EStringType;
   import com.ax3.fishao.view.dialogs.string.EStringTypeStubs;
   import com.ax3.fishao.view.dialogs.tournaments.models.TournamentPrizeInfo;
   import com.ax3.fishao.view.dialogs.tournaments.views.ViewTournamentPrize;
   import flash.display.DisplayObjectContainer;
   
   public class ControllerTournamentPrize extends Controller
   {
      
      private var _view:ViewTournamentPrize;
      
      private var _entity:TournamentPrizeInfo;
      
      public function ControllerTournamentPrize(param1:DisplayObjectContainer, param2:TournamentPrizeInfo)
      {
         this._entity = param2;
         this._view = new ViewTournamentPrize(this,param1);
         super(this._view);
         this.init();
      }
      
      public function set displayRelevant(param1:Boolean) : void
      {
         var _loc2_:String = param1 ? this._entity.rewardCoefficient * 100 + "%" : this._entity.rewardFishcoins.toString();
         this._view.labelReward = _loc2_;
      }
      
      private function init() : void
      {
         this.updateView();
      }
      
      private function updateView() : void
      {
         this._view.rewardType = this._entity.type;
         this._view.labelPosition.text = I18n.get(EStringType.EST_TOURNAMENT_PRIZE_PLACE.replace(EStringTypeStubs.ESTS_VALUE,this._entity.prizePosition));
      }
      
      public function hidePosition() : void
      {
         this._view.labelPosition.visible = false;
      }
   }
}

