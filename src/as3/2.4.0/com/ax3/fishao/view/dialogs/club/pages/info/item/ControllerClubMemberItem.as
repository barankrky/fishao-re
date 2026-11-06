package com.ax3.fishao.view.dialogs.club.pages.info.item
{
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.utils.UtilsDialog;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs.base.controllers.implementations.Controller;
   import com.ax3.fishao.view.dialogs.string.EStringType;
   import flash.events.Event;
   
   public class ControllerClubMemberItem extends Controller
   {
      
      private var _entity:Object;
      
      private var _login:String;
      
      private var _leaderLogin:String;
      
      private var _callbackKick:Function;
      
      private var _view:ViewClubMemberItem = new ViewClubMemberItem(this);
      
      public function ControllerClubMemberItem(param1:int, param2:Object, param3:String, param4:Function)
      {
         super(this._view);
         this._view.canShowProfile = GameSwf.instance.managerClubs.isUserInClubWithID(param1);
         this._callbackKick = param4;
         this._leaderLogin = param3;
         this._entity = param2;
         this.init();
      }
      
      public function get login() : String
      {
         return this._login;
      }
      
      public function get isCurrentUser() : Boolean
      {
         return this._login == app.user.username;
      }
      
      private function get isLeader() : Boolean
      {
         return this._login == this._leaderLogin;
      }
      
      private function get isCurrentUserLeader() : Boolean
      {
         return this._leaderLogin == app.user.username;
      }
      
      override public function onViewClicked(param1:Object, param2:Event) : Boolean
      {
         var _loc3_:Boolean = super.onViewClicked(param1,param2);
         if(!_loc3_)
         {
            switch(param1)
            {
               case this._view.buttonDecline:
                  this._callbackKick(this._login);
                  break;
               case this._view.viewHitArea:
                  UtilsDialog.showProfileDialog(this._login);
                  break;
               default:
                  Debug.assert(false);
            }
         }
         return _loc3_;
      }
      
      private function init() : void
      {
         this._login = Debug.assertProperty(this._entity,"login");
         this._view.level = Debug.assertProperty(this._entity,"level");
         this._view.name = this._login;
         this._view.role = this.isLeader ? EStringType.EST_CLUB_MEMBER_ROLE_LEADER : EStringType.EST_CLUB_MEMBER_ROLE_MEMBER;
         this._view.isCurrent = this.isCurrentUser;
         this._view.buttonDecline.visible = this.isCurrentUserLeader && !this.isCurrentUser;
      }
   }
}

