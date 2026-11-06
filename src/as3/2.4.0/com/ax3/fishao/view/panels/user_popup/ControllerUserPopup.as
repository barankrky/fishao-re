package com.ax3.fishao.view.panels.user_popup
{
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.locations.entries.FieldChar;
   import com.ax3.fishao.utils.FishaoUtil;
   import com.ax3.fishao.utils.UtilsDialog;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs.CommunicationSwfDialog;
   import com.ax3.fishao.view.dialogs.base.controllers.implementations.Controller;
   import com.ax3.fishao.view.dialogs.club.club_info_outside.DialogClubInfoOutside;
   import com.ax3.fishao.view.dialogs.club.model.ClubInfo;
   import com.ax3.fishao.view.dialogs.club.model.ManagerClubs;
   import com.ax3.jss.requests.server.ServerResp;
   import com.greensock.TweenMax;
   import flash.events.Event;
   import flash.utils.clearTimeout;
   import flash.utils.setTimeout;
   import protocol.api.base.ResponseError;
   import protocol.api.clubs.get_user_club.ResponseClubsGetUserClub;
   
   public class ControllerUserPopup extends Controller
   {
      
      private var _showTimeout:int;
      
      protected var _view:ViewUserPopup = new ViewUserPopup(this);
      
      protected var _entity:FieldChar;
      
      private var _clubInfo:ClubInfo;
      
      private var _timestampClubInfoUpdate:Number;
      
      private var _managerClubs:ManagerClubs;
      
      public function ControllerUserPopup(param1:FieldChar)
      {
         super(this._view);
         this._timestampClubInfoUpdate = 0;
         this._entity = param1;
         this.init();
      }
      
      protected function set isGuest(param1:Boolean) : void
      {
         this._view.isGuest = param1;
      }
      
      public function set buttonPmVisible(param1:Boolean) : void
      {
         this._view.buttonPmVisible = param1;
      }
      
      public function set level(param1:int) : void
      {
         this._view.level = param1;
      }
      
      private function get login() : String
      {
         return this._entity.locationUser.username;
      }
      
      private function onResponseClubReceived(param1:ServerResp) : void
      {
         var _loc2_:ResponseClubsGetUserClub = null;
         var _loc3_:Object = null;
         if(this._entity == null || this._entity.locationUser == null)
         {
            return;
         }
         if(param1 is ResponseError)
         {
            this._clubInfo = null;
         }
         else
         {
            _loc2_ = param1 as ResponseClubsGetUserClub;
            _loc3_ = _loc2_.clubInfo;
            if(_loc3_ == null)
            {
               this._clubInfo = null;
            }
            else
            {
               this._clubInfo = new ClubInfo();
               this._clubInfo.deserialize(_loc3_);
            }
         }
         this.showInternal(0.1);
      }
      
      override public function onViewClicked(param1:Object, param2:Event) : Boolean
      {
         var _loc3_:DialogClubInfoOutside = null;
         var _loc4_:Boolean = super.onViewClicked(param1,param2);
         if(!_loc4_)
         {
            switch(param1)
            {
               case this._view.currentView.buttonClose:
                  this.onButtonCloseClicked();
                  _loc4_ = true;
                  break;
               case this._view.currentView.buttonPM:
                  this.onButtonPMClicked();
                  _loc4_ = true;
                  break;
               case this._view.currentView.buttonProfile:
                  this.onButtonProfileClicked();
                  _loc4_ = true;
                  break;
               case this._view.currentView.viewEmblem:
                  if(!app.user.isGuest)
                  {
                     _loc3_ = app.dialogFactory.getDialog(DialogClubInfoOutside);
                     _loc3_.entity = this._clubInfo;
                     _loc3_.show();
                  }
                  _loc4_ = true;
                  break;
               default:
                  Debug.assert(false);
            }
         }
         return _loc4_;
      }
      
      protected function onButtonCloseClicked() : void
      {
         this._view.source.visible = false;
      }
      
      protected function onButtonPMClicked() : void
      {
         var _loc1_:CommunicationSwfDialog = app.dialogFactory.getCommunicationSwfDialog();
         _loc1_.newMessageFor(this.login);
      }
      
      protected function onButtonProfileClicked() : void
      {
         GameSwf.profileSwfDialog = UtilsDialog.showProfileDialog(this.login);
      }
      
      private function init() : void
      {
         this._managerClubs = GameSwf.instance.managerClubs;
         this._showTimeout = -1;
         this._view.login = this.login;
         this._view.level = this._entity.locationUser.level;
      }
      
      public function hide() : void
      {
         var _loc1_:Object = {
            "alpha":0,
            "delay":0.25,
            "onComplete":this.onButtonCloseClicked
         };
         TweenMax.to(this._view.source,1,_loc1_);
         this.tryCleanupTimeoutShow();
      }
      
      public function show() : void
      {
         var _loc1_:Number = new Date().time;
         if(this.login == app.user.username)
         {
            this._clubInfo = this._managerClubs.userClub;
            this.showInternal();
         }
         else if(_loc1_ - this._timestampClubInfoUpdate > 60 * 1000)
         {
            this._timestampClubInfoUpdate = _loc1_;
            this._managerClubs.getClubInfoFor(this.login,this.onResponseClubReceived);
         }
         else
         {
            this.showInternal();
         }
      }
      
      protected function showInternal(param1:Number = 0.25) : void
      {
         this.tryCleanupTimeoutShow();
         this.isGuest = FishaoUtil.isGuestUsername(this.login) || Boolean(app.user.isGuest);
         if(this._clubInfo == null)
         {
            this._view.userInClub = false;
         }
         else
         {
            this._view.userInClub = true;
            this._view.clubName = this._clubInfo.name;
            this._view.emblemID = this._clubInfo.emblemID;
         }
         this._view.source.visible = true;
         var _loc2_:Object = {
            "alpha":1,
            "delay":param1
         };
         TweenMax.to(this._view.source,1,_loc2_);
         this._showTimeout = setTimeout(this.hide,5 * 1000);
      }
      
      protected function tryCleanupTimeoutShow() : void
      {
         if(this._showTimeout == -1)
         {
            return;
         }
         clearTimeout(this._showTimeout);
         this._showTimeout = -1;
      }
      
      override public function cleanup() : void
      {
         this.tryCleanupTimeoutShow();
         this._view = null;
         this._entity = null;
         this._clubInfo = null;
         this._managerClubs = null;
         super.cleanup();
      }
   }
}

