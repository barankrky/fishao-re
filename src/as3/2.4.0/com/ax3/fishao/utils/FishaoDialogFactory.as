package com.ax3.fishao.utils
{
   import com.ax3.core.SwfDialogManager;
   import com.ax3.fishao.display.dialogs.BreedingStatusDialog;
   import com.ax3.fishao.display.dialogs.ConnectionLostDialog;
   import com.ax3.fishao.display.dialogs.FishMarketAvailableSwfDialog;
   import com.ax3.fishao.display.dialogs.FriendsHouseListSwfDialog;
   import com.ax3.fishao.display.dialogs.IconMessageDialog;
   import com.ax3.fishao.display.dialogs.LoginDialog;
   import com.ax3.fishao.display.dialogs.MessageDialog;
   import com.ax3.fishao.display.dialogs.MessageDialogSmall;
   import com.ax3.fishao.display.dialogs.ModeratorActionSwfDialog;
   import com.ax3.fishao.display.dialogs.ModeratorReportSwfDialog;
   import com.ax3.fishao.display.dialogs.ModeratorSwfDialog;
   import com.ax3.fishao.display.dialogs.PlingHistoryWindow;
   import com.ax3.fishao.display.dialogs.ShopSwfDialog;
   import com.ax3.fishao.display.dialogs.TradeDecorationSwfDialog;
   import com.ax3.fishao.display.dialogs.TradeFishSwfDialog;
   import com.ax3.fishao.tutorial.views.dialogs.bite.TutorialBiteExplanationSwfDialog;
   import com.ax3.fishao.tutorial.views.dialogs.fishdex.DialogTutorialFishdex;
   import com.ax3.fishao.tutorial.views.dialogs.inventory.DialogInventoryTutorial;
   import com.ax3.fishao.tutorial.views.dialogs.profile.DialogProfileTutorial;
   import com.ax3.fishao.tutorial.views.dialogs.settings.DialogSettingsTutorial;
   import com.ax3.fishao.tutorial.views.dialogs.shop.DialogShopTutorial;
   import com.ax3.fishao.tutorial.views.dialogs.story.StorySwfDialog;
   import com.ax3.fishao.tutorial.views.world_map.WorldMapTutorial;
   import com.ax3.fishao.view.dialogs.BreederRexFishSwfDialog;
   import com.ax3.fishao.view.dialogs.CatchInfoSwfDialog;
   import com.ax3.fishao.view.dialogs.CommunicationSwfDialog;
   import com.ax3.fishao.view.dialogs.DailyQuestPrizesSwfDialog;
   import com.ax3.fishao.view.dialogs.DailyQuestSwfDialog;
   import com.ax3.fishao.view.dialogs.EmailActivationSwfDialog;
   import com.ax3.fishao.view.dialogs.FishboxPrizesSwfDialog;
   import com.ax3.fishao.view.dialogs.FishdexSwfDialog;
   import com.ax3.fishao.view.dialogs.InventorySwfDialog;
   import com.ax3.fishao.view.dialogs.NewLevelSwfDialog;
   import com.ax3.fishao.view.dialogs.ProfileSwfDialog;
   import com.ax3.fishao.view.dialogs.SettingsSwfDialog;
   import com.ax3.fishao.view.dialogs.TimezoneSwfDialog;
   import com.ax3.fishao.view.dialogs.TopPlayersSwfDialog;
   import com.ax3.fishao.view.dialogs.WorldListSwfDialog;
   import com.ax3.fishao.view.dialogs.announcement.DialogAnnouncement;
   import com.ax3.fishao.view.dialogs.bank.energy.BuyEnergySwfDialog;
   import com.ax3.fishao.view.dialogs.collectionPrize.DialogCollectionPrize;
   import com.ax3.fishao.view.dialogs.collections.DialogCollections;
   import com.ax3.fishao.view.dialogs.events.DialogEvents;
   import com.ax3.fishao.view.dialogs.events.DialogEventsUpcoming;
   import com.ax3.fishao.view.dialogs.fishingLine.DialogFishingLine;
   import com.ax3.fishao.view.dialogs.friends.FriendsSwfDialog;
   import com.ax3.fishao.view.dialogs.fruits.model.DialogFruitsCrush;
   import com.ax3.fishao.view.dialogs.missions.MissionCompletedSwfDialog;
   import com.ax3.fishao.view.dialogs.missions.MissionsSwfDialog;
   import com.ax3.fishao.view.dialogs.moneyTree.DialogMoneyTree;
   import com.ax3.fishao.view.dialogs.rankings.DialogRankings;
   import com.ax3.fishao.view.dialogs.tournaments.DialogTournamentResults;
   import com.ax3.fishao.view.dialogs.tournaments.DialogTournamentSignUp;
   import com.ax3.fishao.view.dialogs.tournaments.DialogTournamentStart;
   import com.ax3.fishao.view.dialogs.trade.model.DialogTrade;
   
   public class FishaoDialogFactory
   {
      
      private var _dialogManager:SwfDialogManager;
      
      public function FishaoDialogFactory(param1:SwfDialogManager)
      {
         super();
         this._dialogManager = param1;
      }
      
      public function getDialog(param1:Class) : *
      {
         return this._dialogManager.getSwfDialogByClass(param1) as param1;
      }
      
      public function getWorldMapDialog() : WorldMapTutorial
      {
         return this._dialogManager.getSwfDialogByClass(WorldMapTutorial) as WorldMapTutorial;
      }
      
      public function getEmailActivationDialog() : EmailActivationSwfDialog
      {
         return this._dialogManager.getSwfDialogByClass(EmailActivationSwfDialog) as EmailActivationSwfDialog;
      }
      
      public function getSettingsDialog() : SettingsSwfDialog
      {
         return this._dialogManager.getSwfDialogByClass(SettingsSwfDialog) as SettingsSwfDialog;
      }
      
      public function getSettingsDialogTutorial() : DialogSettingsTutorial
      {
         return this._dialogManager.getSwfDialogByClass(DialogSettingsTutorial) as DialogSettingsTutorial;
      }
      
      public function getLoginDialog() : LoginDialog
      {
         return this._dialogManager.getSingleDialogByClass(LoginDialog) as LoginDialog;
      }
      
      public function getIconMessageDialog() : IconMessageDialog
      {
         return this._dialogManager.getSingleDialogByClass(IconMessageDialog) as IconMessageDialog;
      }
      
      public function getConnectionLostDialog() : ConnectionLostDialog
      {
         return this._dialogManager.getSingleDialogByClass(ConnectionLostDialog) as ConnectionLostDialog;
      }
      
      public function getMessageDialog() : MessageDialog
      {
         return this._dialogManager.getDialogByClass(MessageDialog) as MessageDialog;
      }
      
      public function getMessageDialogSmall() : MessageDialogSmall
      {
         return this._dialogManager.getDialogByClass(MessageDialogSmall) as MessageDialogSmall;
      }
      
      public function getFishdexSwfDialog() : FishdexSwfDialog
      {
         return this._dialogManager.getSwfDialogByClass(FishdexSwfDialog) as FishdexSwfDialog;
      }
      
      public function getFishdexSwfDialogTutorial() : DialogTutorialFishdex
      {
         return this._dialogManager.getSwfDialogByClass(DialogTutorialFishdex) as DialogTutorialFishdex;
      }
      
      public function getWorldListSwfDialog() : WorldListSwfDialog
      {
         return this._dialogManager.getSwfDialogByClass(WorldListSwfDialog) as WorldListSwfDialog;
      }
      
      public function getInventorySwfDialog() : InventorySwfDialog
      {
         return this._dialogManager.getSwfDialogByClass(InventorySwfDialog) as InventorySwfDialog;
      }
      
      public function getInventorySwfDialogTutorial() : DialogInventoryTutorial
      {
         return this._dialogManager.getSwfDialogByClass(DialogInventoryTutorial) as DialogInventoryTutorial;
      }
      
      public function getMissionsSwfDialog() : MissionsSwfDialog
      {
         return this._dialogManager.getSwfDialogByClass(MissionsSwfDialog) as MissionsSwfDialog;
      }
      
      public function getMissionCompletedSwfDialog() : MissionCompletedSwfDialog
      {
         return this._dialogManager.getSwfDialogByClass(MissionCompletedSwfDialog) as MissionCompletedSwfDialog;
      }
      
      public function getCatchInfoDialog() : CatchInfoSwfDialog
      {
         return this._dialogManager.getSwfDialogByClass(CatchInfoSwfDialog) as CatchInfoSwfDialog;
      }
      
      public function getDialogFruitsCrush() : DialogFruitsCrush
      {
         return this._dialogManager.getSwfDialogByClass(DialogFruitsCrush) as DialogFruitsCrush;
      }
      
      public function getDialogTrade() : DialogTrade
      {
         return this._dialogManager.getSwfDialogByClass(DialogTrade) as DialogTrade;
      }
      
      public function getDialogTournamentSignUp() : DialogTournamentSignUp
      {
         return this._dialogManager.getSwfDialogByClass(DialogTournamentSignUp) as DialogTournamentSignUp;
      }
      
      public function getDialogTournamentStart() : DialogTournamentStart
      {
         return this._dialogManager.getSwfDialogByClass(DialogTournamentStart) as DialogTournamentStart;
      }
      
      public function getDialogTournamentResults() : DialogTournamentResults
      {
         return this._dialogManager.getSwfDialogByClass(DialogTournamentResults) as DialogTournamentResults;
      }
      
      public function getProfileDialog() : ProfileSwfDialog
      {
         return this._dialogManager.getSwfDialogByClass(ProfileSwfDialog) as ProfileSwfDialog;
      }
      
      public function getProfileDialogTutorial() : DialogProfileTutorial
      {
         return this._dialogManager.getSwfDialogByClass(DialogProfileTutorial) as DialogProfileTutorial;
      }
      
      public function getCommunicationSwfDialog() : CommunicationSwfDialog
      {
         return this._dialogManager.getSwfDialogByClass(CommunicationSwfDialog) as CommunicationSwfDialog;
      }
      
      public function getShopSwfDialog() : ShopSwfDialog
      {
         return this._dialogManager.getSwfDialogByClass(ShopSwfDialog) as ShopSwfDialog;
      }
      
      public function getShopSwfDialogTutorial() : DialogShopTutorial
      {
         return this._dialogManager.getSwfDialogByClass(DialogShopTutorial) as DialogShopTutorial;
      }
      
      public function getTradeFishSwfDialog() : TradeFishSwfDialog
      {
         return this._dialogManager.getSwfDialogByClass(TradeFishSwfDialog) as TradeFishSwfDialog;
      }
      
      public function getTradeDecorationSwfDialog() : TradeDecorationSwfDialog
      {
         return this._dialogManager.getSwfDialogByClass(TradeDecorationSwfDialog) as TradeDecorationSwfDialog;
      }
      
      public function getTopPlayersSwfDialog() : TopPlayersSwfDialog
      {
         return this._dialogManager.getSwfDialogByClass(TopPlayersSwfDialog) as TopPlayersSwfDialog;
      }
      
      public function getBuyEnergySwfDialog() : BuyEnergySwfDialog
      {
         return this._dialogManager.getSwfDialogByClass(BuyEnergySwfDialog) as BuyEnergySwfDialog;
      }
      
      public function getModeratorSwfDialog() : ModeratorSwfDialog
      {
         return this._dialogManager.getSwfDialogByClass(ModeratorSwfDialog) as ModeratorSwfDialog;
      }
      
      public function getModeratorReportSwfDialog() : ModeratorReportSwfDialog
      {
         return this._dialogManager.getSwfDialogByClass(ModeratorReportSwfDialog) as ModeratorReportSwfDialog;
      }
      
      public function getModeratorActionSwfDialog() : ModeratorActionSwfDialog
      {
         return this._dialogManager.getSwfDialogByClass(ModeratorActionSwfDialog) as ModeratorActionSwfDialog;
      }
      
      public function getPlingHistoryWindow() : PlingHistoryWindow
      {
         return this._dialogManager.getDialogByClass(PlingHistoryWindow) as PlingHistoryWindow;
      }
      
      public function getTimezoneSwfDialog() : TimezoneSwfDialog
      {
         return this._dialogManager.getSwfDialogByClass(TimezoneSwfDialog) as TimezoneSwfDialog;
      }
      
      public function getNewLevelSwfDialog() : NewLevelSwfDialog
      {
         return this._dialogManager.getSwfDialogByClass(NewLevelSwfDialog) as NewLevelSwfDialog;
      }
      
      public function getDailyQuestSwfDialog() : DailyQuestSwfDialog
      {
         return this._dialogManager.getSwfDialogByClass(DailyQuestSwfDialog) as DailyQuestSwfDialog;
      }
      
      public function getDailyQuestPrizesSwfDialog() : DailyQuestPrizesSwfDialog
      {
         return this._dialogManager.getSwfDialogByClass(DailyQuestPrizesSwfDialog) as DailyQuestPrizesSwfDialog;
      }
      
      public function getBreederRexFishSwfDialog() : BreederRexFishSwfDialog
      {
         return this._dialogManager.getSwfDialogByClass(BreederRexFishSwfDialog) as BreederRexFishSwfDialog;
      }
      
      public function getFishMarketAvailableSwfDailog() : FishMarketAvailableSwfDialog
      {
         return this._dialogManager.getSwfDialogByClass(FishMarketAvailableSwfDialog) as FishMarketAvailableSwfDialog;
      }
      
      public function getFriendsHouseListSwfDialog() : FriendsHouseListSwfDialog
      {
         return this._dialogManager.getSwfDialogByClass(FriendsHouseListSwfDialog) as FriendsHouseListSwfDialog;
      }
      
      public function getBreedingStatusDialog() : BreedingStatusDialog
      {
         return this._dialogManager.getSwfDialogByClass(BreedingStatusDialog) as BreedingStatusDialog;
      }
      
      public function getFishboxPrizesSwfDialog() : FishboxPrizesSwfDialog
      {
         return this._dialogManager.getSwfDialogByClass(FishboxPrizesSwfDialog) as FishboxPrizesSwfDialog;
      }
      
      public function getAnnouncementDialog() : DialogAnnouncement
      {
         return this._dialogManager.getSwfDialogByClass(DialogAnnouncement) as DialogAnnouncement;
      }
      
      public function getStorySwfDialog() : StorySwfDialog
      {
         return this._dialogManager.getSwfDialogByClass(StorySwfDialog) as StorySwfDialog;
      }
      
      public function getTutorialBiteExplanationDialog() : TutorialBiteExplanationSwfDialog
      {
         return this._dialogManager.getSwfDialogByClass(TutorialBiteExplanationSwfDialog) as TutorialBiteExplanationSwfDialog;
      }
      
      public function getFishingLineDialog() : DialogFishingLine
      {
         return this._dialogManager.getSwfDialogByClass(DialogFishingLine) as DialogFishingLine;
      }
      
      public function getMoneyTreeDialog() : DialogMoneyTree
      {
         return this._dialogManager.getSwfDialogByClass(DialogMoneyTree) as DialogMoneyTree;
      }
      
      public function getEventsDialog() : DialogEvents
      {
         return this._dialogManager.getSwfDialogByClass(DialogEvents) as DialogEvents;
      }
      
      public function getDialogEventsUpcoming() : DialogEventsUpcoming
      {
         return this._dialogManager.getSwfDialogByClass(DialogEventsUpcoming) as DialogEventsUpcoming;
      }
      
      public function getCollectionsSwfDialog() : DialogCollections
      {
         return this._dialogManager.getSwfDialogByClass(DialogCollections) as DialogCollections;
      }
      
      public function getCollectionPrizeSwfDialog() : DialogCollectionPrize
      {
         return this._dialogManager.getSwfDialogByClass(DialogCollectionPrize) as DialogCollectionPrize;
      }
      
      public function getFriendsDialog() : FriendsSwfDialog
      {
         return this._dialogManager.getSwfDialogByClass(FriendsSwfDialog) as FriendsSwfDialog;
      }
      
      public function getRankingsDialog() : DialogRankings
      {
         return this._dialogManager.getSwfDialogByClass(DialogRankings) as DialogRankings;
      }
   }
}

