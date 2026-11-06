package com.ax3.fishao.view.wrappers.impl.profile.userInfoPanel
{
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs.base.controllers.implementations.Controller;
   import com.ax3.fishao.view.dialogs.club.club_info_outside.DialogClubInfoOutside;
   import com.ax3.fishao.view.dialogs.club.model.ClubInfo;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   
   public class ControllerProfileClubInfo extends Controller
   {
      
      private var _view:ViewProfileClubInfo;
      
      private var _clubInfo:ClubInfo;
      
      public function ControllerProfileClubInfo(param1:DisplayObjectContainer)
      {
         this._view = new ViewProfileClubInfo(this,param1);
         super(this._view);
      }
      
      public function set clubData(param1:Object) : void
      {
         if(param1 == null)
         {
            return;
         }
         this._clubInfo = new ClubInfo();
         this._clubInfo.deserialize(param1);
         this._view.emblemID = this._clubInfo.emblemID;
         this._view.name = this._clubInfo.name;
      }
      
      override public function onViewClicked(param1:Object, param2:Event) : Boolean
      {
         var _loc3_:DialogClubInfoOutside = null;
         var _loc4_:Boolean = super.onViewClicked(param1,param2);
         switch(param1)
         {
            case this._view.viewEmblem:
               if(this._clubInfo != null)
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
         return _loc4_;
      }
   }
}

