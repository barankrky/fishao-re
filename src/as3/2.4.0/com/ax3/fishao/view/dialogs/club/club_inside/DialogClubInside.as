package com.ax3.fishao.view.dialogs.club.club_inside
{
   import com.ax3.fishao.view.dialogs.base.EDialogType;
   import com.ax3.fishao.view.dialogs.club.base.DialogClubBase;
   import com.ax3.fishao.view.dialogs.club.model.ManagerClubs;
   import protocol.api.clubs.page.EClubPageType;
   
   public class DialogClubInside extends DialogClubBase
   {
      
      public function DialogClubInside()
      {
         super("dialog_clubs.swf");
      }
      
      override public function get type() : String
      {
         return EDialogType.EDT_CLUB_INSIDE;
      }
      
      override protected function get tabsTypes() : Array
      {
         var _loc1_:ManagerClubs = GameSwf.instance.managerClubs;
         var _loc2_:Array = [EClubPageType.ECPT_INFO,EClubPageType.ECPT_TOURNAMENT,EClubPageType.ECPT_RANKINGS,EClubPageType.ECPT_GOALS,EClubPageType.ECPT_LOGS];
         if(_loc1_.isUserLeader)
         {
            _loc2_.push(EClubPageType.ECPT_MANAGEMENT);
         }
         return _loc2_;
      }
   }
}

