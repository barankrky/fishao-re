package com.ax3.fishao.view.dialogs.tournaments.controllers
{
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.view.dialogs.base.controllers.implementations.Controller;
   import com.ax3.fishao.view.dialogs.tournaments.models.ETournamentType;
   import com.ax3.fishao.view.dialogs.tournaments.models.TournamentInfo;
   import com.ax3.fishao.view.dialogs.tournaments.models.TournamentMemberInfo;
   import com.ax3.fishao.view.dialogs.tournaments.views.ViewTournamentMemberResult;
   
   public class ControllerTournamentMemberResult extends Controller
   {
      
      private var _view:ViewTournamentMemberResult = new ViewTournamentMemberResult(this,new gViewTournamentMemberResult());
      
      private var _entity:TournamentMemberInfo;
      
      private var _currentTournament:TournamentInfo;
      
      public function ControllerTournamentMemberResult(param1:TournamentMemberInfo)
      {
         this._entity = param1;
         super(this._view);
         this.init();
      }
      
      private function init() : void
      {
         var _loc1_:int = 0;
         this._currentTournament = GameSwf.instance.managerTournaments.tournamentCurrent;
         this._view.position = this._entity.position;
         this._view.login = this._entity.login;
         var _loc2_:String = "";
         switch(this._currentTournament.type)
         {
            case ETournamentType.ETT_BOAT_ON_SEA:
            case ETournamentType.ETT_MORAY:
               _loc2_ = this._entity.criteria.toString();
               break;
            case ETournamentType.ETT_LAKE_RUN:
               _loc2_ = I18n.formatDistance(this._entity.criteria);
               break;
            case ETournamentType.ETT_RACE:
               _loc1_ = this._entity.criteria;
               switch(this._entity.position)
               {
                  case 1:
                  case 2:
                  case 3:
                     _loc2_ = I18n.formatTimestampToClockView(_loc1_);
                     break;
                  default:
                     _loc2_ = _loc1_ + " " + I18n.get("Fishes");
               }
         }
         this._view.criteria = _loc2_;
         this._view.reward = this._entity.rewardFishcoins;
         if(this._entity.position == 1)
         {
            this._view.trophy = TournamentInfo.getTrophyByTournamentType(this._currentTournament.type);
         }
      }
   }
}

