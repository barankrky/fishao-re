package com.ax3.fishao.view.dialogs.club.club_outside
{
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import com.ax3.fishao.view.dialogs.base._22437dfd77f65dbf9dbc4281;
   import com.ax3.fishao.view.dialogs.club.base._f525f49bba86edd92aaaf708;
   import protocol.api.clubs.page.EClubPageType;
   
   public class _fb60627e993e6700597a9c2e extends _f525f49bba86edd92aaaf708
   {
      
      public function _fb60627e993e6700597a9c2e()
      {
         super(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剘刅剪剴刅刐刂勿創刯剴刳剋判剹刘勾勪勋勪劵劺勭刨剙勷勥劅劶勓刍刺剈刿刋剅劢努刘剼","勴助初劊剖刱剱劳剮刞勵办劙勴勨刮"));
         this.canOpenDialogInside = true;
      }
      
      override public function get type() : String
      {
         return _22437dfd77f65dbf9dbc4281.EDT_CLUB_OUTSIDE;
      }
      
      override protected function get tabsTypes() : Array
      {
         return [EClubPageType.ECPT_CREATE,EClubPageType.ECPT_RECOMMENDED,EClubPageType.ECPT_RANKINGS];
      }
   }
}

