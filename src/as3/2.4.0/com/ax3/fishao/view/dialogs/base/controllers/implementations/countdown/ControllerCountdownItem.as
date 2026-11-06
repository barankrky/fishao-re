package com.ax3.fishao.view.dialogs.base.controllers.implementations.countdown
{
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.view.dialogs.base.controllers.implementations.Controller;
   import com.ax3.fishao.view.dialogs.base.views.implementations.countdown.ViewCountdownItem;
   import com.ax3.fishao.view.dialogs.string.EStringType;
   import com.ax3.fishao.view.dialogs.tournaments.models.ETournamentType;
   import com.ax3.fishao.view.dialogs.tournaments.models.TournamentMemberInfo;
   import flash.display.DisplayObjectContainer;
   
   public class ControllerCountdownItem extends Controller
   {
      
      private var _view:ViewCountdownItem;
      
      private var _entity:TournamentMemberInfo;
      
      private var _tournamentType:String;
      
      public function ControllerCountdownItem(param1:TournamentMemberInfo, param2:DisplayObjectContainer)
      {
         this._entity = param1;
         this._view = new ViewCountdownItem(this,param2);
         super(this._view);
         this.init();
      }
      
      public function set tournamentType(param1:String) : void
      {
         this._tournamentType = param1;
      }
      
      private function init() : void
      {
      }
      
      public function updateData() : void
      {
         this._view.position = this._entity.position;
         this._view.login = this._entity.login;
         this._view.isPlayer = this._entity.isPlayer;
         this.updateCriteria();
      }
      
      private function updateCriteria() : void
      {
         var _loc1_:String = null;
         var _loc2_:String = "";
         var _loc3_:Number = this._entity.criteriaBoost;
         var _loc4_:String = "";
         switch(this._tournamentType)
         {
            case ETournamentType.ETT_BOAT_ON_SEA:
               _loc2_ = this._entity.criteria.toString() + " " + I18n.get(EStringType.EST_COMMON_EXP);
               _loc4_ = _loc3_.toString();
               break;
            case ETournamentType.ETT_LAKE_RUN:
               _loc2_ = I18n.formatDistance(this._entity.criteria);
               _loc4_ = I18n.formatDistanceWithoutUnit(_loc3_);
               break;
            case ETournamentType.ETT_MORAY:
               _loc1_ = this._entity.criteria == 1 ? EStringType.EST_COMMON_SPECIE : EStringType.EST_COMMON_SPECIES;
               _loc2_ = this._entity.criteria.toString() + " " + I18n.get(_loc1_);
               _loc4_ = _loc3_.toString();
               break;
            default:
               Debug.assert(false,"Unsupported Tournament type to update criteria on ControllerCountdown: " + this._tournamentType);
         }
         this._view.criteria = _loc2_;
         if(_loc3_ != 0)
         {
            this._view.showPopup(_loc4_);
         }
      }
      
      override public function cleanup() : void
      {
         this._entity = null;
         super.cleanup();
      }
   }
}

