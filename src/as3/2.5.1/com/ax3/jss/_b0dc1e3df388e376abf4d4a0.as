package com.ax3.jss
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.jss.requests.client._ccb739c00378004f39879793;
   import com.ax3.jss.requests.server._5e1bab759fcaea6d1f84faa7;
   import com.ax3.jss.requests.server._e872d2b4bd5992624aff99ce;
   import com.ax3.utils.log.globalLogger;
   import flash.utils.Dictionary;
   import flash.utils.getQualifiedClassName;
   import protocol.api.announcements.init.RequestAnnouncements;
   import protocol.api.announcements.init.ResponseAnnouncements;
   import protocol.api.base.ResponseError;
   import protocol.api.base.ResponseOk;
   import protocol.api.boat.enter.ResponseBoatEnter;
   import protocol.api.boat.move.ResponseBoatMove;
   import protocol.api.boat.release.ResponseBoatRelease;
   import protocol.api.booster.RequestBoosterExp;
   import protocol.api.booster.RequestBoosterFishRadar;
   import protocol.api.booster.RequestBoosterLuckPotion;
   import protocol.api.booster.RequestBoosterMagicWatch;
   import protocol.api.booster.RequestBoosterPower;
   import protocol.api.booster.RequestBoosterShinyPotion;
   import protocol.api.breeding.breed.RequestBreedingBreed;
   import protocol.api.breeding.getCurrent.ResponseBreedingGetCurrent;
   import protocol.api.breeding.getFishes.ResponseBreedingGetFishes;
   import protocol.api.clubs.actions_leader.approve.RequestClubsMemberApprove;
   import protocol.api.clubs.actions_leader.kick.RequestClubsMemberKick;
   import protocol.api.clubs.actions_leader.reject.RequestClubsMemberReject;
   import protocol.api.clubs.actions_member.join.RequestClubsJoin;
   import protocol.api.clubs.actions_member.join.ResponseClubsJoin;
   import protocol.api.clubs.actions_member.leave.RequestClubsLeave;
   import protocol.api.clubs.actions_member.leave.ResponseClubsLeave;
   import protocol.api.clubs.create.RequestClubsCreate;
   import protocol.api.clubs.get_tabs_data.RequestClubsGetTabsData;
   import protocol.api.clubs.get_tabs_data.ResponseClubsGetTabsData;
   import protocol.api.clubs.get_user_club.RequestClubsGetUserClub;
   import protocol.api.clubs.get_user_club.ResponseClubsGetUserClub;
   import protocol.api.clubs.goal_history.RequestClubsGoalHistory;
   import protocol.api.clubs.goal_history.ResponseClubsGoalHistory;
   import protocol.api.clubs.init.RequestClubsInit;
   import protocol.api.clubs.init.ResponseClubsInit;
   import protocol.api.clubs.page.goals.RequestClubsGetPageGoals;
   import protocol.api.clubs.page.goals.ResponseClubsGetPageGoals;
   import protocol.api.clubs.page.info.RequestClubsGetPageInfo;
   import protocol.api.clubs.page.info.ResponseClubsGetPageInfo;
   import protocol.api.clubs.page.logs.RequestClubsGetPageLogs;
   import protocol.api.clubs.page.logs.ResponseClubsGetPageLogs;
   import protocol.api.clubs.page.management.RequestClubsGetPageManagement;
   import protocol.api.clubs.page.management.ResponseClubsGetPageManagement;
   import protocol.api.clubs.page.rankings.RequestClubsGetPageRankings;
   import protocol.api.clubs.page.rankings.ResponseClubsGetPageRankings;
   import protocol.api.clubs.page.recommended.RequestClubsGetPageRecommended;
   import protocol.api.clubs.page.recommended.ResponseClubsGetPageRecommended;
   import protocol.api.clubs.page.tournament.RequestClubsGetPageTournament;
   import protocol.api.clubs.page.tournament.ResponseClubsGetPageTournament;
   import protocol.api.clubs.tournament_history.RequestClubsTournamentHistory;
   import protocol.api.clubs.tournament_history.ResponseClubsTournamentHistory;
   import protocol.api.clubs.update_info.RequestClubsUpdateInfo;
   import protocol.api.clubs.update_info.ResponseClubsUpdateInfo;
   import protocol.api.clubs.upgrade_level.RequestClubsUpgradeLevel;
   import protocol.api.clubs.upgrade_level.ResponseClubsUpgradeLevel;
   import protocol.api.collections.add.ResponseCollectionsAdd;
   import protocol.api.collections.init.RequestCollectionsInit;
   import protocol.api.collections.init.ResponseCollectionsInit;
   import protocol.api.collections.update.ResponseCollectionsUpdate;
   import protocol.api.events.end.ResponseEventEnd;
   import protocol.api.events.init.RequestEventsInit;
   import protocol.api.events.init.ResponseEventsInit;
   import protocol.api.events.members.RequestEventMembers;
   import protocol.api.events.members.ResponseEventMembers;
   import protocol.api.events.newEvents.ResponseNewEvents;
   import protocol.api.events.shown.RequestEventShown;
   import protocol.api.events.start.ResponseEventStart;
   import protocol.api.features.update.RequestFeaturesUpdate;
   import protocol.api.features.update.ResponseFeaturesUpdate;
   import protocol.api.featuresTemporary.activate.ResponseFeatureTemporaryActivate;
   import protocol.api.featuresTemporary.deactivate.ResponseFeatureTemporaryDeactivate;
   import protocol.api.featuresTemporary.init.RequestFeaturesTemporaryInit;
   import protocol.api.featuresTemporary.init.ResponseFeaturesTemporaryInit;
   import protocol.api.fishes.getRelevant.RequestFishesGetRelevant;
   import protocol.api.fishes.getRelevant.ResponseFishesGetRelevant;
   import protocol.api.fishes.get_club.RequestFishesGetClub;
   import protocol.api.fishes.get_club.ResponseFishesGetClub;
   import protocol.api.fishes.unlock_club.RequestFishesUnlockClub;
   import protocol.api.fishingLine.init.RequestFishingLineInit;
   import protocol.api.fishingLine.init.ResponseFishingLineInit;
   import protocol.api.fishingLine.updateColor.RequestFishingLineUpdateColor;
   import protocol.api.fishingLine.upgradeByTime.RequestFishingLineUpgradeLevelByTime;
   import protocol.api.fishingLine.upgradeLevel.RequestFishingLineUpgradeLevel;
   import protocol.api.fishingLine.upgradeLevelEarly.RequestFishingLineUpgradeLevelEarly;
   import protocol.api.friends.accept.RequestFriendsAccept;
   import protocol.api.friends.block.RequestFriendsBlock;
   import protocol.api.friends.cancel.RequestFriendsCancel;
   import protocol.api.friends.deny.RequestFriendsDeny;
   import protocol.api.friends.start.RequestFriendsStart;
   import protocol.api.fruits.crush.RequestFruitsCrush;
   import protocol.api.fruits.crush.ResponseFruitsCrush;
   import protocol.api.furniture_factory.get_info.RequestFurnitureFactoryGetInfo;
   import protocol.api.furniture_factory.get_info.ResponseFurnitureFactoryGetInfo;
   import protocol.api.furniture_factory.get_reward.RequestFurnitureFactoryGetReward;
   import protocol.api.furniture_factory.get_reward.ResponseFurnitureFactoryGetReward;
   import protocol.api.furniture_factory.skip_time.RequestFurnitureFactorySkipTime;
   import protocol.api.furniture_factory.skip_time.ResponseFurnitureFactorySkipTime;
   import protocol.api.holidays.init.RequestHolidaysInit;
   import protocol.api.holidays.init.ResponseHolidaysInit;
   import protocol.api.holidays.update.ResponseHolidayUpdate;
   import protocol.api.interior.buy.RequestInteriorBuy;
   import protocol.api.interior.get_info.RequestInteriorGetInfo;
   import protocol.api.interior.get_info.ResponseInteriorGetInfo;
   import protocol.api.interior.save.RequestInteriorSave;
   import protocol.api.interior.update.ResponseInteriorUpdate;
   import protocol.api.locations.buyAccess.RequestLocationBuyAccess;
   import protocol.api.locations.change_position.RequestLocationChangePosition;
   import protocol.api.locations.change_position.ResponseLocationChangePosition;
   import protocol.api.locations.collectItem.RequestLocationCollectItem;
   import protocol.api.locations.enterPrivateHouse.RequestLocationsEnterPrivateHouse;
   import protocol.api.locations.enter_club_area.RequestLocationsEnterClubArea;
   import protocol.api.miniGameBob.collect.RequestMiniGameBobCollect;
   import protocol.api.miniGameBob.start.ResponseMiniGameBobStart;
   import protocol.api.miniGameBob.stop.ResponseMiniGameBobStop;
   import protocol.api.moneyTree.init.RequestMoneyTreeInit;
   import protocol.api.moneyTree.init.ResponseMoneyTreeInit;
   import protocol.api.moneyTree.rewardCollect.RequestMoneyTreeRewardCollect;
   import protocol.api.moneyTree.rewardGenerate.RequestMoneyTreeRewardGenerate;
   import protocol.api.moneyTree.upgradeByTime.RequestMoneyTreeUpgradeLevelByTime;
   import protocol.api.moneyTree.upgradeLevel.RequestMoneyTreeUpgradeLevel;
   import protocol.api.moneyTree.upgradeLevelEarly.RequestMoneyTreeUpgradeLevelEarly;
   import protocol.api.monster_fishes.init.RequestMonsterFishesInit;
   import protocol.api.monster_fishes.init.ResponseMonsterFishesInit;
   import protocol.api.monster_fishes.update.ResponseMonsterFishesUpdate;
   import protocol.api.npc.action.ResponseNpcAction;
   import protocol.api.npc.talk.RequestNpcTalk;
   import protocol.api.npc.talk.ResponseNpcTalk;
   import protocol.api.npc.talkStop.RequestNpcTalkStop;
   import protocol.api.periodicFeatures.init.RequestPeriodicFeaturesInit;
   import protocol.api.periodicFeatures.init.ResponsePeriodicFeaturesInit;
   import protocol.api.periodicFeatures.update.ResponsePeriodicFeatureUpdate;
   import protocol.api.plings.receive.ResponsePlingReceive;
   import protocol.api.profile.rankings.RequestProfileRankings;
   import protocol.api.profile.rankings.ResponseProfileRankings;
   import protocol.api.quests.init.RequestQuestsInit;
   import protocol.api.quests.init.ResponseQuestsInit;
   import protocol.api.quests.update.ResponseQuestsUpdate;
   import protocol.api.sales.end.ResponseSaleEnd;
   import protocol.api.sales.init.RequestSalesInit;
   import protocol.api.sales.init.ResponseSalesInit;
   import protocol.api.sales.start.ResponseSaleStart;
   import protocol.api.tournaments.canSignUp.RequestTournamentCanSignUp;
   import protocol.api.tournaments.end.ResponseTournamentEnd;
   import protocol.api.tournaments.enter.RequestTournamentEnter;
   import protocol.api.tournaments.enter.ResponseTournamentEnter;
   import protocol.api.tournaments.getRelevant.RequestTournamentGetRelevant;
   import protocol.api.tournaments.getRelevant.ResponseTournamentGetRelevant;
   import protocol.api.tournaments.memberFinish.RequestTournamentMemberFinish;
   import protocol.api.tournaments.memberReady.RequestTournamentMemberReady;
   import protocol.api.tournaments.members.ResponseTournamentMembers;
   import protocol.api.tournaments.sign_up.RequestTournamentSignUp;
   import protocol.api.tournaments.sign_up.ResponseTournamentSignUp;
   import protocol.api.tournaments.start.ResponseTournamentStart;
   import protocol.api.trade.accept.RequestTradeAccept;
   import protocol.api.trade.accept.ResponseTradeAccept;
   import protocol.api.trade.cancel.RequestTradeCancel;
   import protocol.api.trade.cancel.ResponseTradeCancel;
   import protocol.api.trade.offerConfirm.RequestTradeOfferConfirm;
   import protocol.api.trade.offerConfirm.ResponseTradeOfferConfirm;
   import protocol.api.trade.offerReset.ResponseTradeOfferReset;
   import protocol.api.trade.offerReview.RequestTradeOfferReview;
   import protocol.api.trade.offerReview.ResponseTradeOfferReview;
   import protocol.api.trade.offerUpdate.RequestTradeOfferUpdate;
   import protocol.api.trade.offerUpdate.ResponseTradeOfferUpdate;
   import protocol.api.trade.start.RequestTradeStart;
   import protocol.api.trade.start.ResponseTradeStart;
   import protocol.api.trade.success.ResponseTradeSuccess;
   import protocol.api.tutorial.init.RequestTutorialInit;
   import protocol.api.tutorial.init.ResponseTutorialInit;
   import protocol.api.tutorial.step_complete.RequestTutorialStepComplete;
   import protocol.api.wheel_of_fortune.get_info.RequestWheelOfFortuneGetInfo;
   import protocol.api.wheel_of_fortune.get_info.ResponseWheelOfFortuneGetInfo;
   import protocol.api.wheel_of_fortune.init.RequestWheelOfFortuneInit;
   import protocol.api.wheel_of_fortune.init.ResponseWheelOfFortuneInit;
   import protocol.api.wheel_of_fortune.spin.RequestWheelOfFortuneSpin;
   import protocol.api.wheel_of_fortune.spin.ResponseWheelOfFortuneSpin;
   import protocol.api.worlds.change.RequestWorldChange;
   import protocol.api.worlds.init.RequestWorldsInit;
   import protocol.api.worlds.init.ResponseWorldsInit;
   import protocol.cr.ActivationRequest;
   import protocol.cr.BuyEnergyReq;
   import protocol.cr.BuyResourceReq;
   import protocol.cr.CancelFishingReq;
   import protocol.cr.ChangeBoatStateReq;
   import protocol.cr.CollectShellReq;
   import protocol.cr.DailyQuestCompleteReq;
   import protocol.cr.DailyQuestFishboneCollect;
   import protocol.cr.EnterLocation;
   import protocol.cr.EnterSublocationReq;
   import protocol.cr.EnterWorld;
   import protocol.cr.FishdexNoteChangedReq;
   import protocol.cr.FishingRsltReq;
   import protocol.cr.GetCharViewsReq;
   import protocol.cr.GetDailyQuestReq;
   import protocol.cr.GetDataReq;
   import protocol.cr.GetFriendsHouseReq;
   import protocol.cr.GetIglooListReq;
   import protocol.cr.GetWorldMapDataReq;
   import protocol.cr.LeaveLocationReq;
   import protocol.cr.LeaveSublocationReq;
   import protocol.cr.LoginReq;
   import protocol.cr.LogoutReq;
   import protocol.cr.MoveBoatToReq;
   import protocol.cr.MvUsrToRq;
   import protocol.cr.OpenFishboxReq;
   import protocol.cr.PmConfirmReq;
   import protocol.cr.PmDeleteReq;
   import protocol.cr.PmHistoryReq;
   import protocol.cr.RegisterReq;
   import protocol.cr.SellFishReq;
   import protocol.cr.ShowPlingReq;
   import protocol.cr.StartFishingReq;
   import protocol.cr.UpdateReq;
   import protocol.cr.UpdateSettingsReq;
   import protocol.cr.UpdateSoundSettingsReq;
   import protocol.cr.activation.GetUserActivationInfoReq;
   import protocol.cr.activation.SendActivationMailReq;
   import protocol.cr.chat.ChatReq;
   import protocol.cr.chat.PrivateMsgReq;
   import protocol.cr.dayState.GetTimeOfDayReq;
   import protocol.cr.debugging.GetFishBlockAtLakesReq;
   import protocol.cr.missions.AcceptMissionReq;
   import protocol.cr.missions.CollectMissionRewardReq;
   import protocol.cr.missions.GetActiveMissionsReq;
   import protocol.cr.missions.GetCompletedMissionsReq;
   import protocol.cr.moderating.ApplyPenaltyReq;
   import protocol.cr.moderating.CloseOpenReportReq;
   import protocol.cr.moderating.GetBannedUsersListReq;
   import protocol.cr.moderating.GetReportListReq;
   import protocol.cr.moderating.OpenPenaltyReq;
   import protocol.cr.moderating.OpenReportReq;
   import protocol.cr.profile.GetProfileFishesReq;
   import protocol.cr.profile.GetProfileFriendsReq;
   import protocol.cr.profile.GetProfileInventoryReq;
   import protocol.cr.profile.GetProfilePrizesReq;
   import protocol.cr.profile.GetProfileUserInfoReq;
   import protocol.cr.profile.ProfileReportReq;
   import protocol.sr.ActivationErrorResp;
   import protocol.sr.ActivationSuccessResp;
   import protocol.sr.BuyResourceErrorResp;
   import protocol.sr.BuyResourceSuccessResp;
   import protocol.sr.ChangeBoatStateResp;
   import protocol.sr.CharViewUpdResp;
   import protocol.sr.CollectShellSuccess;
   import protocol.sr.DailyQuestCollectResp;
   import protocol.sr.DailyQuestResp;
   import protocol.sr.DamianActionResp;
   import protocol.sr.EnterLocationErrorResp;
   import protocol.sr.EnterLocationSuccessResp;
   import protocol.sr.EnterRaftResp;
   import protocol.sr.EnterSublocationSuccessResp;
   import protocol.sr.EnterWorldErrorResp;
   import protocol.sr.ErrorResp;
   import protocol.sr.FishCatchEmoticonResp;
   import protocol.sr.FishbonesMiniGameError;
   import protocol.sr.FishingResp;
   import protocol.sr.GetDataResp;
   import protocol.sr.GetFriendsHouseResp;
   import protocol.sr.IglooListResp;
   import protocol.sr.IncomingPMResp;
   import protocol.sr.LeaveLocationResp;
   import protocol.sr.LeaveRaftResp;
   import protocol.sr.LeaveSublocationResp;
   import protocol.sr.LoginErrorResp;
   import protocol.sr.LoginSuccessResp;
   import protocol.sr.MvUsrToResp;
   import protocol.sr.MvUsrsToResp;
   import protocol.sr.OpenFishboxResp;
   import protocol.sr.PmHistoryResp;
   import protocol.sr.PrivateHousePondFishResp;
   import protocol.sr.RegisterErrorResp;
   import protocol.sr.SettingsSaveSuccessResp;
   import protocol.sr.SuccessResp;
   import protocol.sr.TradeUpdateResp;
   import protocol.sr.UpdateResp;
   import protocol.sr.WeatherChangedResp;
   import protocol.sr.WorldMapDataResp;
   import protocol.sr.activation.GetUserActivationInfoResp;
   import protocol.sr.activation.SendActivationMailResp;
   import protocol.sr.chat.ChatResp;
   import protocol.sr.dayState.TimeOfDayResp;
   import protocol.sr.debugging.FishBlocksAtLakesDataResp;
   import protocol.sr.missions.ActiveMissionsResp;
   import protocol.sr.missions.CompletedMissionsResp;
   import protocol.sr.moderating.BannedUsersListResp;
   import protocol.sr.moderating.PenaltyDataResp;
   import protocol.sr.moderating.ReportChangeStateResp;
   import protocol.sr.moderating.ReportDataResp;
   import protocol.sr.moderating.ReportListResp;
   import protocol.sr.moderating.ReportUpdateSuccessedResp;
   import protocol.sr.profile.ProfileFishesResp;
   import protocol.sr.profile.ProfileFriendsResp;
   import protocol.sr.profile.ProfileInventoryResp;
   import protocol.sr.profile.ProfilePrizesResp;
   import protocol.sr.profile.ProfileReportSuccessResp;
   import protocol.sr.profile.ProfileUserInfoResp;
   
   public class _b0dc1e3df388e376abf4d4a0
   {
      
      private static const _3c1717b33f6dac4b1d3cf748:Array = [_ccb739c00378004f39879793,ChatReq,PrivateMsgReq,GetFishBlockAtLakesReq,GetUserActivationInfoReq,SendActivationMailReq,GetProfileFishesReq,GetProfileFriendsReq,GetProfileInventoryReq,GetProfilePrizesReq,GetProfileUserInfoReq,ProfileReportReq,ApplyPenaltyReq,GetBannedUsersListReq,CloseOpenReportReq,GetReportListReq,OpenReportReq,OpenPenaltyReq,ActivationRequest,BuyEnergyReq,SellFishReq,BuyResourceReq,CancelFishingReq,ChangeBoatStateReq,CollectShellReq,EnterLocation,EnterSublocationReq,EnterWorld,FishdexNoteChangedReq,FishingRsltReq,GetIglooListReq,GetCharViewsReq,GetDataReq,GetWorldMapDataReq,LeaveLocationReq,LeaveSublocationReq,LoginReq,LogoutReq,MoveBoatToReq,MvUsrToRq,OpenFishboxReq,PmConfirmReq,PmDeleteReq,PmHistoryReq,RegisterReq,StartFishingReq,UpdateSettingsReq,UpdateReq,DailyQuestFishboneCollect,DailyQuestCompleteReq,GetDailyQuestReq,ShowPlingReq,UpdateSoundSettingsReq,GetFriendsHouseReq,AcceptMissionReq,CollectMissionRewardReq
      ,GetActiveMissionsReq,GetCompletedMissionsReq,ChatResp,FishBlocksAtLakesDataResp,ReportChangeStateResp,ReportDataResp,PenaltyDataResp,ReportListResp,BannedUsersListResp,ReportUpdateSuccessedResp,ProfileFishesResp,ProfileFriendsResp,ProfileInventoryResp,ProfilePrizesResp,ProfileReportSuccessResp,ProfileUserInfoResp,ActivationSuccessResp,ActivationErrorResp,BuyResourceErrorResp,BuyResourceSuccessResp,ChangeBoatStateResp,CharViewUpdResp,CollectShellSuccess,DamianActionResp,EnterSublocationSuccessResp,EnterLocationErrorResp,EnterLocationSuccessResp,EnterRaftResp,EnterWorldErrorResp,ErrorResp,FishCatchEmoticonResp,FishingResp,GetDataResp,GetFriendsHouseResp,IglooListResp,IncomingPMResp,LeaveSublocationResp,LeaveLocationResp,LoginErrorResp,LoginSuccessResp,MvUsrToResp,MvUsrsToResp,OpenFishboxResp,GetUserActivationInfoResp,SendActivationMailResp,PrivateHousePondFishResp,PmHistoryResp,RegisterErrorResp,SuccessResp,TradeUpdateResp,UpdateResp,WeatherChangedResp,LeaveRaftResp,_e872d2b4bd5992624aff99ce
      ,WorldMapDataResp,FishbonesMiniGameError,DailyQuestCollectResp,DailyQuestResp,GetTimeOfDayReq,TimeOfDayResp,SettingsSaveSuccessResp,ResponseOk,ResponseError,RequestAnnouncements,ResponseAnnouncements,ResponseBoatEnter,ResponseBoatMove,ResponseBoatRelease,RequestBoosterLuckPotion,RequestBoosterExp,RequestBoosterMagicWatch,RequestBoosterFishRadar,RequestBoosterShinyPotion,RequestBoosterPower,RequestClubsTournamentHistory,ResponseClubsTournamentHistory,RequestClubsGoalHistory,ResponseClubsGoalHistory,RequestClubsCreate,RequestClubsInit,ResponseClubsInit,RequestClubsJoin,ResponseClubsJoin,RequestClubsLeave,ResponseClubsLeave,RequestClubsMemberKick,RequestClubsMemberApprove,RequestClubsMemberReject,RequestClubsGetTabsData,ResponseClubsGetTabsData,RequestClubsUpdateInfo,ResponseClubsUpdateInfo,RequestClubsUpgradeLevel,ResponseClubsUpgradeLevel,RequestClubsGetPageGoals,ResponseClubsGetPageGoals,RequestClubsGetPageInfo,ResponseClubsGetPageInfo,RequestClubsGetPageLogs,ResponseClubsGetPageLogs,RequestClubsGetPageManagement
      ,ResponseClubsGetPageManagement,RequestClubsGetPageRankings,ResponseClubsGetPageRankings,RequestClubsGetPageRecommended,ResponseClubsGetPageRecommended,RequestClubsGetPageTournament,ResponseClubsGetPageTournament,RequestClubsGetUserClub,ResponseClubsGetUserClub,RequestCollectionsInit,ResponseCollectionsInit,ResponseCollectionsUpdate,ResponseCollectionsAdd,ResponseEventEnd,RequestEventsInit,ResponseEventsInit,RequestEventMembers,ResponseEventMembers,ResponseNewEvents,RequestEventShown,ResponseEventStart,RequestFishingLineInit,ResponseFishingLineInit,RequestFishingLineUpdateColor,RequestFishingLineUpgradeLevel,RequestFishingLineUpgradeLevelEarly,RequestFishingLineUpgradeLevelByTime,RequestFriendsAccept,RequestFriendsDeny,RequestFriendsBlock,RequestFriendsStart,RequestFriendsCancel,RequestFruitsCrush,ResponseFruitsCrush,RequestHolidaysInit,ResponseHolidaysInit,ResponseHolidayUpdate,RequestFurnitureFactoryGetInfo,ResponseFurnitureFactoryGetInfo,RequestFurnitureFactoryGetReward,ResponseFurnitureFactoryGetReward
      ,RequestFurnitureFactorySkipTime,ResponseFurnitureFactorySkipTime,RequestInteriorBuy,RequestInteriorGetInfo,ResponseInteriorGetInfo,RequestInteriorSave,ResponseInteriorUpdate,RequestLocationCollectItem,RequestLocationBuyAccess,RequestLocationsEnterPrivateHouse,RequestLocationsEnterClubArea,RequestLocationChangePosition,ResponseLocationChangePosition,RequestMoneyTreeInit,ResponseMoneyTreeInit,RequestMoneyTreeUpgradeLevel,RequestMoneyTreeUpgradeLevelEarly,RequestMoneyTreeUpgradeLevelByTime,RequestMoneyTreeRewardCollect,RequestMoneyTreeRewardGenerate,RequestMonsterFishesInit,ResponseMonsterFishesInit,ResponseMonsterFishesUpdate,ResponseMiniGameBobStart,ResponseMiniGameBobStop,RequestMiniGameBobCollect,ActiveMissionsResp,CompletedMissionsResp,RequestNpcTalk,ResponseNpcTalk,RequestNpcTalkStop,ResponseNpcAction,ResponsePlingReceive,RequestProfileRankings,ResponseProfileRankings,ResponseTournamentEnd,RequestTournamentEnter,ResponseTournamentEnter,RequestTournamentGetRelevant,ResponseTournamentGetRelevant
      ,RequestTournamentMemberFinish,RequestTournamentMemberReady,ResponseTournamentMembers,RequestTournamentCanSignUp,RequestTournamentSignUp,ResponseTournamentSignUp,ResponseTournamentStart,RequestTradeStart,ResponseTradeStart,RequestTradeAccept,ResponseTradeAccept,RequestTradeCancel,ResponseTradeCancel,RequestTradeOfferUpdate,ResponseTradeOfferUpdate,RequestTradeOfferConfirm,ResponseTradeOfferConfirm,ResponseTradeOfferReset,RequestTradeOfferReview,ResponseTradeOfferReview,ResponseTradeSuccess,RequestTutorialInit,ResponseTutorialInit,RequestTutorialStepComplete,RequestQuestsInit,ResponseQuestsInit,ResponseQuestsUpdate,RequestFishesGetRelevant,ResponseFishesGetRelevant,RequestFishesGetClub,ResponseFishesGetClub,RequestFishesUnlockClub,RequestFeaturesUpdate,ResponseFeaturesUpdate,RequestWorldsInit,ResponseWorldsInit,RequestWorldChange,RequestPeriodicFeaturesInit,ResponsePeriodicFeaturesInit,ResponsePeriodicFeatureUpdate,RequestFeaturesTemporaryInit,ResponseFeaturesTemporaryInit,ResponseFeatureTemporaryActivate
      ,ResponseFeatureTemporaryDeactivate,RequestSalesInit,ResponseSalesInit,ResponseSaleStart,ResponseSaleEnd,ResponseBreedingGetFishes,ResponseBreedingGetCurrent,RequestBreedingBreed,RequestWheelOfFortuneInit,ResponseWheelOfFortuneInit,RequestWheelOfFortuneGetInfo,ResponseWheelOfFortuneGetInfo,RequestWheelOfFortuneSpin,ResponseWheelOfFortuneSpin];
      
      private static const _8658a68daa5a38a354c87693:Object = _152e2485d4ca723db3d2dd67();
      
      private static const _f63677c9f23d6dadabb8d928:Dictionary = _5575e0b73d11ead844f6aee1();
      
      public function _b0dc1e3df388e376abf4d4a0()
      {
         super();
      }
      
      public static function encode(param1:Object) : String
      {
         var _loc2_:String = _f63677c9f23d6dadabb8d928[Object(param1).constructor];
         var _loc3_:Object = null;
         var _loc4_:Object = null;
         if(_loc2_ == null)
         {
            throw new Error(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("჋იူနႋჰშႝၝ၍ო჉Ⴢ၄჉ႷေႝჃძ႖რဴ၊ဪဎဉ჻ႾယာჃိၥႆၪၪ၄ჷ၌ဆံဈၡဪဉၞႃ၍კბှ႙ၤႂၲ႟ჟဤ჎჉ၓ","ဂპ჌ေၿჴხႇဪჵუ჻ႱႼုე") + getQualifiedClassName(param1));
         }
         _loc4_ = JSON.parse(JSON.stringify(param1));
         _loc3_ = {
            (_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勨刎刬劀剳劇刲剰剹劒","剛划劅剒劚剮勣划募副勶刭刣刺初刌")):_loc2_,
            (_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("提挃挴捿接挀掰掵挢挊","捳揰挓揽挊掤掙捦挌捶挳揙掻挢捷揳")):_loc4_
         };
         if(param1 is _ccb739c00378004f39879793)
         {
            _loc3_.reqId = _ccb739c00378004f39879793(param1).reqId;
            delete _loc4_.reqId;
         }
         else if(param1 is _5e1bab759fcaea6d1f84faa7)
         {
            _loc3_.reqId = _5e1bab759fcaea6d1f84faa7(param1).reqId;
            _loc3_.maintenanceTime = _5e1bab759fcaea6d1f84faa7(param1).maintenanceTime;
            _loc3_.maintenanceIn = _5e1bab759fcaea6d1f84faa7(param1).maintenanceIn;
            _loc3_.needLog = _5e1bab759fcaea6d1f84faa7(param1).needLog;
            delete _loc4_.reqId;
            delete _loc4_.maintenanceTime;
            delete _loc4_.maintenanceIn;
            delete _loc4_.needLog;
         }
         return JSON.stringify(_loc3_);
      }
      
      public static function decode(param1:String) : Object
      {
         var message:Object;
         var data:Object;
         var envelope:Object = null;
         var key:String = null;
         var text:String = param1;
         envelope = JSON.parse(text);
         var cls:Class = _8658a68daa5a38a354c87693[envelope.t];
         if(cls == null)
         {
            globalLogger.error(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捍捊掼揃挲掴捜挽掋捖捎捪控挝揅挟捄捋掩揃捞捧掆揚援挶挺掸挬掱捞捠捵掷揠揮捜掐挌挾掵掷掀挓換捱捗揓掰掤揅捊掉挢捅捪挏挰挶捦捋捇捦揷挸掖挮掯揿捄掓挻掲掷捔掀捚挾损揑","捡挪捷捡揽揯揂捔揖揌掯挀挥挙挖捱") + envelope.t);
            return null;
         }
         message = new cls();
         data = envelope.d;
         if(message is _ccb739c00378004f39879793)
         {
            _ccb739c00378004f39879793(message).reqId = envelope.reqId;
         }
         else if(message is _5e1bab759fcaea6d1f84faa7)
         {
            _5e1bab759fcaea6d1f84faa7(message).reqId = envelope.reqId;
            _5e1bab759fcaea6d1f84faa7(message).maintenanceTime = envelope.maintenanceTime;
            _5e1bab759fcaea6d1f84faa7(message).maintenanceIn = envelope.maintenanceIn;
            _5e1bab759fcaea6d1f84faa7(message).needLog = envelope.needLog;
         }
         for(key in data)
         {
            try
            {
               message[key] = data[key];
            }
            catch(e:Error)
            {
               globalLogger.error(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("努动剽勅剣剼勂勰劍努勾劆勘勶効勓勭則勥刑劓剻刣劳剕剫剀労勘刑剕劶剿剿剝劍刌勘刊勁劏勦刐刴勃勇剨劁刭勚剝刕剄切劅劌剩刐","勆剐勐劂募刻刹劳勭勄勆刷刦券剮勓") + envelope.t + _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挧揱揗揸揙捕揗捩挺提","掍挲挜揾捫捄捭捄挳掆揳採揃揖掰挆") + key + _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("႓ႜჷლႿၟႽဠေၛ၌ဨ","ဝၪႽღფၭျ၊჊ჳၰႰჅႵဃ႒") + e.message);
            }
         }
         return message;
      }
      
      private static function _152e2485d4ca723db3d2dd67() : Object
      {
         var _loc2_:Class = null;
         var _loc1_:Object = {};
         for each(_loc2_ in _3c1717b33f6dac4b1d3cf748)
         {
            _loc1_[getQualifiedClassName(_loc2_).replace(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劔刘剖动劐劅劎刄劕勋刀刾","劁刟劜初剥到刧刬剛勚剼刁刧勦勁勶"),_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ჵჄ႔႐ၷნჂ჏კႨ","ႧႾပၳၚႴგჃ၂ဩ჉ဠყხဠၦ"))] = _loc2_;
         }
         return _loc1_;
      }
      
      private static function _5575e0b73d11ead844f6aee1() : Dictionary
      {
         var _loc2_:String = null;
         var _loc1_:Dictionary = new Dictionary();
         for(_loc2_ in _8658a68daa5a38a354c87693)
         {
            _loc1_[_8658a68daa5a38a354c87693[_loc2_]] = _loc2_;
         }
         return _loc1_;
      }
   }
}

