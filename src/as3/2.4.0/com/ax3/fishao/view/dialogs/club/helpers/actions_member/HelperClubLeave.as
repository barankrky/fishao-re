package com.ax3.fishao.view.dialogs.club.helpers.actions_member
{
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.utils.Preloader;
   import com.ax3.fishao.utils.UtilsDialog;
   import com.ax3.fishao.view.dialogs.club.helpers.base.HelperClubBase;
   import com.ax3.fishao.view.dialogs.string.EStringType;
   import com.ax3.fishao.view.dialogs.string.EStringTypeStubs;
   
   public class HelperClubLeave extends HelperClubBase
   {
      
      private var _possibleLeaderInfo:Object;
      
      private var _membersCount:int;
      
      public function HelperClubLeave()
      {
         super();
      }
      
      public function set possibleLeaderInfo(param1:Object) : void
      {
         this._possibleLeaderInfo = param1;
      }
      
      public function set membersCount(param1:int) : void
      {
         this._membersCount = param1;
      }
      
      override public function doAction(param1:Function = null) : void
      {
         var _loc2_:String = null;
         super.doAction(param1);
         var _loc3_:String = null;
         if(_managerClubs.isUserLeader)
         {
            if(this._membersCount == 1)
            {
               _loc3_ = I18n.get(EStringType.EST_CLUB_DESTROY_CONFIRMATION);
            }
            else
            {
               _loc2_ = "";
               if(this._possibleLeaderInfo != null)
               {
                  _loc2_ = Debug.assertProperty(this._possibleLeaderInfo,"login");
               }
               _loc3_ = I18n.get(EStringType.EST_CLUB_LEAVE_CONFIRMATION_LEADER).replace(EStringTypeStubs.ESTS_USERNAME,_loc2_);
            }
         }
         else
         {
            _loc3_ = I18n.get(EStringType.EST_CLUB_LEAVE_CONFIRMATION_MEMBER);
         }
         UtilsDialog.showConfirmDialog(_loc3_,this.doActionInternal);
      }
      
      private function doActionInternal() : void
      {
         _managerClubs.leaveFromClub(Preloader.waitForResponse(null));
      }
   }
}

