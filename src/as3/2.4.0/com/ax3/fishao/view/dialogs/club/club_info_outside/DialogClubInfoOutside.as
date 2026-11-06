package com.ax3.fishao.view.dialogs.club.club_info_outside
{
   import com.ax3.fishao.view.dialogs.base.EDialogType;
   import com.ax3.fishao.view.dialogs.club.base.DialogClubBase;
   import protocol.api.clubs.page.EClubPageType;
   
   public class DialogClubInfoOutside extends DialogClubBase
   {
      
      public function DialogClubInfoOutside()
      {
         super("dialog_clubs.swf");
         this.canOpenDialogInside = true;
      }
      
      override public function get type() : String
      {
         return EDialogType.EDT_CLUB_INFO_OUTSIDE;
      }
      
      override protected function get tabsTypes() : Array
      {
         return [EClubPageType.ECPT_INFO];
      }
   }
}

