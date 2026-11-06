package com.ax3.fishao.view.dialogs.tournaments.controllers
{
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.view.dialogs.base.controllers.implementations.Controller;
   import com.ax3.fishao.view.dialogs.string.EStringType;
   import com.ax3.fishao.view.dialogs.tournaments.models.TournamentMemberInfo;
   import com.ax3.fishao.view.dialogs.tournaments.views.ViewTournamentMember;
   import flash.display.DisplayObjectContainer;
   
   public class ControllerTournamentMember extends Controller
   {
      
      private var _view:ViewTournamentMember;
      
      private var _entity:TournamentMemberInfo;
      
      public function ControllerTournamentMember(param1:TournamentMemberInfo, param2:DisplayObjectContainer)
      {
         this._entity = param1;
         this._view = new ViewTournamentMember(this,param2);
         super(this._view);
         this.init();
      }
      
      public function get entity() : TournamentMemberInfo
      {
         return this._entity;
      }
      
      private function init() : void
      {
         this.updateView();
      }
      
      public function updateView() : void
      {
         this._view.login = this._entity.login;
         this._view.level = this._entity.level;
         this._view.isReady = this._entity.isReady;
         if(this._entity.isReady)
         {
            this._view.statusText = I18n.get(EStringType.EST_STATUS_READY);
         }
         else
         {
            this._view.statusText = I18n.get(EStringType.EST_STATUS_NOT_READY);
         }
      }
   }
}

