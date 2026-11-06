package com.ax3.fishao.view.dialogs.tournaments.controllers
{
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.view.dialogs.base.controllers.implementations.Controller;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces.EControllerUpdate;
   import com.ax3.fishao.view.dialogs.tournaments.ManagerTournaments;
   import com.ax3.fishao.view.dialogs.tournaments.models.TournamentMemberInfo;
   import com.ax3.fishao.view.dialogs.tournaments.views.ViewTournamentMembers;
   import flash.display.DisplayObjectContainer;
   
   public class ControllerTournamentMembers extends Controller
   {
      
      private var _view:ViewTournamentMembers;
      
      private var _managerTournaments:ManagerTournaments;
      
      private var _membersControllers:Array;
      
      public function ControllerTournamentMembers(param1:DisplayObjectContainer)
      {
         this._view = new ViewTournamentMembers(this,param1);
         super(this._view);
         this.init();
      }
      
      private function init() : void
      {
         this._managerTournaments = GameSwf.instance.managerTournaments;
         this._membersControllers = [];
         this.updateTournamentMembers();
      }
      
      override public function update(param1:String) : void
      {
         switch(param1)
         {
            case EControllerUpdate.ECU_TOURNAMENTS_MEMBERS_INFO_UPDATED:
               this.updateTournamentMembers();
               break;
            default:
               Debug.assert(false,"Unsupported update type in update method of ControllerTournamentDialogStart: " + param1);
         }
      }
      
      private function updateTournamentMembers() : void
      {
         var _loc1_:TournamentMemberInfo = null;
         var _loc2_:ControllerTournamentMember = null;
         var _loc3_:DisplayObjectContainer = null;
         var _loc4_:Array = [];
         for each(_loc1_ in this._managerTournaments.tournamentCurrent.members)
         {
            _loc2_ = this.getMemberControllerByLogin(_loc1_.login);
            if(_loc2_ == null)
            {
               _loc3_ = new gViewTournamentMember();
               _loc2_ = new ControllerTournamentMember(_loc1_,_loc3_);
               this._membersControllers.push(_loc2_);
            }
            else
            {
               _loc2_.updateView();
            }
            _loc4_.push(_loc2_.view.source);
         }
         this._view.items = _loc4_;
      }
      
      private function getMemberControllerByLogin(param1:String) : ControllerTournamentMember
      {
         var _loc2_:ControllerTournamentMember = null;
         var _loc3_:ControllerTournamentMember = null;
         for each(_loc2_ in this._membersControllers)
         {
            if(param1 == _loc2_.entity.login)
            {
               _loc3_ = _loc2_;
               break;
            }
         }
         return _loc3_;
      }
   }
}

