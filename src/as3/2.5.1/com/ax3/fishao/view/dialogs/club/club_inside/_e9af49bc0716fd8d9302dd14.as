package com.ax3.fishao.view.dialogs.club.club_inside
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import com.ax3.fishao.view.dialogs.base._22437dfd77f65dbf9dbc4281;
   import com.ax3.fishao.view.dialogs.club.base._f525f49bba86edd92aaaf708;
   import com.ax3.fishao.view.dialogs.club.model._518280cac6f3ae016ad4f350;
   import protocol.api.clubs.page.EClubPageType;
   
   public class _e9af49bc0716fd8d9302dd14 extends _f525f49bba86edd92aaaf708
   {
      
      public function _e9af49bc0716fd8d9302dd14()
      {
         super(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掙掾挂挸挰掍揽损揂挫掺捓指揿捯挓捱掎掌捑揶捞援揷揟掱掫捉捦挽揯捄揤揑掔挸挋挠挃掓","挔捾捉掬挕捋揿揱捑掀捆揫揳损揰捼"));
      }
      
      override public function get type() : String
      {
         return _22437dfd77f65dbf9dbc4281.EDT_CLUB_INSIDE;
      }
      
      override protected function get tabsTypes() : Array
      {
         var _loc1_:_518280cac6f3ae016ad4f350 = GameSwf.instance.managerClubs;
         var _loc2_:Array = [EClubPageType.ECPT_INFO,EClubPageType.ECPT_TOURNAMENT,EClubPageType.ECPT_RANKINGS,EClubPageType.ECPT_GOALS,EClubPageType.ECPT_LOGS];
         if(_loc1_.isUserLeader)
         {
            _loc2_.push(EClubPageType.ECPT_MANAGEMENT);
         }
         return _loc2_;
      }
   }
}

