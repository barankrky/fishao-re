package com.ax3.fishao.view.dialogs.club.pages.base
{
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.view.dialogs.base.DialogBase;
   import com.ax3.fishao.view.dialogs.club.model.ClubInfo;
   import com.ax3.fishao.view.dialogs.club.pages.create.ControllerClubPageCreate;
   import com.ax3.fishao.view.dialogs.club.pages.goals.ControllerClubPageGoals;
   import com.ax3.fishao.view.dialogs.club.pages.info.ControllerClubPageInfo;
   import com.ax3.fishao.view.dialogs.club.pages.logs.ControllerClubPageLogs;
   import com.ax3.fishao.view.dialogs.club.pages.management.ControllerClubPageManagement;
   import com.ax3.fishao.view.dialogs.club.pages.rankings.ControllerClubPageRankings;
   import com.ax3.fishao.view.dialogs.club.pages.recommended.ControllerClubPageRecommended;
   import com.ax3.fishao.view.dialogs.club.pages.tournament.ControllerClubPageTournament;
   import flash.display.DisplayObjectContainer;
   import protocol.api.clubs.page.EClubPageType;
   
   public class FactoryClubPages
   {
      
      public function FactoryClubPages()
      {
         super();
      }
      
      public static function createPage(param1:String, param2:DialogBase, param3:DisplayObjectContainer, param4:ClubInfo, param5:String) : ControllerClubPage
      {
         var _loc6_:ControllerClubPage = null;
         switch(param1)
         {
            case EClubPageType.ECPT_CREATE:
               _loc6_ = new ControllerClubPageCreate(param3);
               break;
            case EClubPageType.ECPT_GOALS:
               _loc6_ = new ControllerClubPageGoals(param3);
               break;
            case EClubPageType.ECPT_INFO:
               _loc6_ = new ControllerClubPageInfo(param3);
               break;
            case EClubPageType.ECPT_LOGS:
               _loc6_ = new ControllerClubPageLogs(param3);
               break;
            case EClubPageType.ECPT_MANAGEMENT:
               _loc6_ = new ControllerClubPageManagement(param3);
               break;
            case EClubPageType.ECPT_RANKINGS:
               _loc6_ = new ControllerClubPageRankings(param3,param5);
               break;
            case EClubPageType.ECPT_RECOMMENDED:
               _loc6_ = new ControllerClubPageRecommended(param3);
               break;
            case EClubPageType.ECPT_TOURNAMENT:
               _loc6_ = new ControllerClubPageTournament(param3);
               break;
            default:
               Debug.assert(false);
         }
         _loc6_.entity = param4;
         _loc6_.type = param1;
         _loc6_.owner = param2;
         return _loc6_;
      }
   }
}

