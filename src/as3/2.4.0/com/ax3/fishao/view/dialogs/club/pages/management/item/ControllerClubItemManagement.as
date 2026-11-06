package com.ax3.fishao.view.dialogs.club.pages.management.item
{
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.utils.UtilsDialog;
   import com.ax3.fishao.view.dialogs.base.controllers.implementations.Controller;
   import com.ax3.fishao.view.dialogs.club.helpers.actions_leader.HelperClubApprove;
   import com.ax3.fishao.view.dialogs.club.helpers.actions_leader.HelperClubReject;
   import flash.events.Event;
   
   public class ControllerClubItemManagement extends Controller
   {
      
      private var _helperReject:HelperClubReject;
      
      private var _helperApprove:HelperClubApprove;
      
      private var _callbackKickOrApprove:Function;
      
      private var _view:ViewClubItemManagement = new ViewClubItemManagement(this);
      
      private var _data:Object;
      
      private var _login:String;
      
      public function ControllerClubItemManagement(param1:Object, param2:Function)
      {
         super(this._view);
         this._data = param1;
         this._callbackKickOrApprove = param2;
         this.init();
      }
      
      public function get login() : String
      {
         return this._login;
      }
      
      override public function onViewClicked(param1:Object, param2:Event) : Boolean
      {
         var _loc3_:Boolean = super.onViewClicked(param1,param2);
         if(!_loc3_)
         {
            switch(param1)
            {
               case this._view.viewHitArea:
                  UtilsDialog.showProfileDialog(this._login);
                  break;
               case this._view.buttonAccept:
                  this._helperApprove.doAction(this._callbackKickOrApprove);
                  break;
               case this._view.buttonDecline:
                  this._helperReject.doAction(this._callbackKickOrApprove);
                  break;
               default:
                  Debug.assert(false);
            }
         }
         return _loc3_;
      }
      
      private function init() : void
      {
         this._login = Debug.assertProperty(this._data,"login");
         this._view.level = Debug.assertProperty(this._data,"level");
         this._view.name = this._login;
         this._helperApprove = new HelperClubApprove();
         this._helperApprove.login = this._login;
         this._helperReject = new HelperClubReject();
         this._helperReject.login = this._login;
      }
   }
}

