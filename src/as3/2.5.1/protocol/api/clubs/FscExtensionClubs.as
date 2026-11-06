package protocol.api.clubs
{
   import com.ax3.fishao.debug.Debug;
   import com.ax3.jss.requests.client._ccb739c00378004f39879793;
   import com.ax3.jss.requests.server._5e1bab759fcaea6d1f84faa7;
   import protocol.api.base.FscExtensionBase;
   import protocol.api.clubs.actions_leader.approve.RequestClubsMemberApprove;
   import protocol.api.clubs.actions_leader.kick.RequestClubsMemberKick;
   import protocol.api.clubs.actions_leader.reject.RequestClubsMemberReject;
   import protocol.api.clubs.actions_member.join.RequestClubsJoin;
   import protocol.api.clubs.actions_member.leave.RequestClubsLeave;
   import protocol.api.clubs.create.RequestClubsCreate;
   import protocol.api.clubs.get_tabs_data.RequestClubsGetTabsData;
   import protocol.api.clubs.get_user_club.RequestClubsGetUserClub;
   import protocol.api.clubs.goal_history.RequestClubsGoalHistory;
   import protocol.api.clubs.init.RequestClubsInit;
   import protocol.api.clubs.page.EClubPageType;
   import protocol.api.clubs.page.goals.RequestClubsGetPageGoals;
   import protocol.api.clubs.page.info.RequestClubsGetPageInfo;
   import protocol.api.clubs.page.logs.RequestClubsGetPageLogs;
   import protocol.api.clubs.page.management.RequestClubsGetPageManagement;
   import protocol.api.clubs.page.rankings.RequestClubsGetPageRankings;
   import protocol.api.clubs.page.recommended.RequestClubsGetPageRecommended;
   import protocol.api.clubs.page.tournament.RequestClubsGetPageTournament;
   import protocol.api.clubs.tournament_history.RequestClubsTournamentHistory;
   import protocol.api.clubs.update_info.RequestClubsUpdateInfo;
   import protocol.api.clubs.upgrade_level.RequestClubsUpgradeLevel;
   
   public class FscExtensionClubs extends FscExtensionBase
   {
      
      public function FscExtensionClubs()
      {
         super();
      }
      
      override public function loadInitData(param1:Function) : void
      {
         _connection.send(new RequestClubsInit(),param1);
      }
      
      public function createClub(param1:String, param2:String, param3:int, param4:String, param5:int, param6:Function) : void
      {
         var _loc7_:RequestClubsCreate = new RequestClubsCreate();
         _loc7_.requirement_level = param3;
         _loc7_.type = param4;
         _loc7_.emblem = param5;
         _loc7_.name = param1;
         _loc7_.description = param2;
         _connection.send(_loc7_,param6);
      }
      
      public function loadDataForTabsPages(param1:int, param2:Function) : void
      {
         var _loc3_:RequestClubsGetTabsData = new RequestClubsGetTabsData();
         _loc3_.club_id = param1;
         _connection.send(_loc3_,param2);
      }
      
      public function joinTo(param1:int, param2:Function) : void
      {
         var _loc3_:RequestClubsJoin = new RequestClubsJoin();
         _loc3_.club_id = param1;
         _connection.send(_loc3_,param2);
      }
      
      public function leaveFromClub(param1:Function) : void
      {
         _connection.send(new RequestClubsLeave(),param1);
      }
      
      public function upgradeClubLevel(param1:Function) : void
      {
         _connection.send(new RequestClubsUpgradeLevel(),param1);
      }
      
      public function updateInfo(param1:int, param2:String, param3:String, param4:int, param5:Function) : void
      {
         var _loc6_:RequestClubsUpdateInfo = new RequestClubsUpdateInfo();
         _loc6_.emblem_id = param1;
         _loc6_.description = param2;
         _loc6_.club_type = param3;
         _loc6_.required_level = param4;
         _connection.send(_loc6_,param5);
      }
      
      public function kickMember(param1:String, param2:Function) : void
      {
         var _loc3_:RequestClubsMemberKick = new RequestClubsMemberKick();
         _loc3_.login = param1;
         _connection.send(_loc3_,param2);
      }
      
      public function approveMember(param1:String, param2:Function) : void
      {
         var _loc3_:RequestClubsMemberApprove = new RequestClubsMemberApprove();
         _loc3_.login = param1;
         _connection.send(_loc3_,param2);
      }
      
      public function rejectMember(param1:String, param2:Function) : void
      {
         var _loc3_:RequestClubsMemberReject = new RequestClubsMemberReject();
         _loc3_.login = param1;
         _connection.send(_loc3_,param2);
      }
      
      public function getTournamentHistory(param1:Function) : void
      {
         _connection.send(new RequestClubsTournamentHistory(),param1);
      }
      
      public function getGoalHistory(param1:Function) : void
      {
         _connection.send(new RequestClubsGoalHistory(),param1);
      }
      
      public function getClubInfoFor(param1:String, param2:Function) : void
      {
         var _loc3_:RequestClubsGetUserClub = new RequestClubsGetUserClub();
         _loc3_.login = param1;
         _connection.send(_loc3_,param2);
      }
      
      public function loadDataForPage(param1:String, param2:Function, param3:Object = null) : void
      {
         var _loc4_:RequestClubsGetPageInfo = null;
         var _loc5_:RequestClubsGetPageRankings = null;
         var _loc6_:RequestClubsGetPageRecommended = null;
         var _loc7_:_ccb739c00378004f39879793 = null;
         switch(param1)
         {
            case EClubPageType.ECPT_CREATE:
               if(param2 != null)
               {
                  param2(new _5e1bab759fcaea6d1f84faa7());
               }
               break;
            case EClubPageType.ECPT_GOALS:
               _loc7_ = new RequestClubsGetPageGoals();
               break;
            case EClubPageType.ECPT_INFO:
               _loc4_ = new RequestClubsGetPageInfo();
               _loc4_.club_id = Debug.assertProperty(param3,"club_id");
               _loc7_ = _loc4_;
               break;
            case EClubPageType.ECPT_LOGS:
               _loc7_ = new RequestClubsGetPageLogs();
               break;
            case EClubPageType.ECPT_MANAGEMENT:
               _loc7_ = new RequestClubsGetPageManagement();
               break;
            case EClubPageType.ECPT_RANKINGS:
               _loc5_ = new RequestClubsGetPageRankings();
               _loc5_.ranking_type = Debug.assertProperty(param3,"ranking_type");
               _loc7_ = _loc5_;
               break;
            case EClubPageType.ECPT_RECOMMENDED:
               _loc6_ = new RequestClubsGetPageRecommended();
               _loc6_.count = 6;
               _loc7_ = _loc6_;
               break;
            case EClubPageType.ECPT_TOURNAMENT:
               _loc7_ = new RequestClubsGetPageTournament();
               break;
            default:
               Debug.assert(false,"unknown type " + param1);
         }
         if(_loc7_ != null)
         {
            _connection.send(_loc7_,param2);
         }
      }
   }
}

