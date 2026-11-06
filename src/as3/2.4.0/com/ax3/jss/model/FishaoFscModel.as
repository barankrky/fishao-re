package com.ax3.jss.model
{
   import com.ax3.jss.FscConnection;
   import com.ax3.jss.ext.ChatFscExtension;
   import com.ax3.jss.ext.PrivateMsgFscExtension;
   import com.ax3.jss.ext.impl.BuyEnergyFscExtension;
   import com.ax3.jss.ext.impl.CharFscExtension;
   import com.ax3.jss.ext.impl.ConnectionAliveExtension;
   import com.ax3.jss.ext.impl.DailyQuestExtension;
   import com.ax3.jss.ext.impl.FishingFscExtension;
   import com.ax3.jss.ext.impl.FriendsHouseFscExtension;
   import com.ax3.jss.ext.impl.LocationFscExtension;
   import com.ax3.jss.ext.impl.LoginFscExtension;
   import com.ax3.jss.ext.impl.LogsFscExtension;
   import com.ax3.jss.ext.impl.MissionExtension;
   import com.ax3.jss.ext.impl.ModeratorFscExtension;
   import com.ax3.jss.ext.impl.PaymentsExtension;
   import com.ax3.jss.ext.impl.PlingFscExtension;
   import com.ax3.jss.ext.impl.ProfileFscExtension;
   import com.ax3.jss.ext.impl.SellFishFscExtension;
   import com.ax3.jss.ext.impl.UpdateCharacterFscExtension;
   import com.ax3.jss.ext.impl.UseItemsExtension;
   import com.ax3.jss.model.states.FscModelState;
   import com.ax3.jss.requests.client.IClientRequest;
   import protocol.api.announcements.FscExtensionAnnouncements;
   import protocol.api.breeding.FscExtensionBreeding;
   import protocol.api.clubs.FscExtensionClubs;
   import protocol.api.collections.FscExtensionCollections;
   import protocol.api.events.FscExtensionEvents;
   import protocol.api.features.FscExtensionFeatures;
   import protocol.api.featuresTemporary.FscExtensionFeaturesTemporary;
   import protocol.api.fishes.FscExtensionFishes;
   import protocol.api.fishingLine.FscExtensionFishingLine;
   import protocol.api.fruits.FscExtensionFruits;
   import protocol.api.furniture_factory.FscExtensionFurnitureFactory;
   import protocol.api.holidays.FscExtensionHolidays;
   import protocol.api.interior.FscExtensionInterior;
   import protocol.api.locations.FscExtensionLocation;
   import protocol.api.moneyTree.FscExtensionMoneyTree;
   import protocol.api.monster_fishes.FscExtensionMonsterFishes;
   import protocol.api.periodicFeatures.FscExtensionPeriodicFeatures;
   import protocol.api.quests.FscExtensionQuests;
   import protocol.api.sales.FscExtensionSales;
   import protocol.api.tournaments.FscExtensionTournaments;
   import protocol.api.trade.FscExtensionTrade;
   import protocol.api.tutorial.FscExtensionTutorial;
   import protocol.api.wheel_of_fortune.FscExtensionWheelOfFortune;
   import protocol.api.worlds.FscExtensionWorlds;
   
   public class FishaoFscModel extends FscModel
   {
      
      public var chatFscExtension:ChatFscExtension;
      
      public var updateExtension:UpdateCharacterFscExtension;
      
      public var locationExtension:LocationFscExtension;
      
      public var charExtension:CharFscExtension;
      
      public var pmFscExtension:PrivateMsgFscExtension;
      
      public var fishingExtension:FishingFscExtension;
      
      public var plingExtension:PlingFscExtension;
      
      public var missionExtension:MissionExtension;
      
      public var profileExtension:ProfileFscExtension;
      
      public var paymentExtension:PaymentsExtension;
      
      public var toutorialFscExtension:FscExtensionTutorial;
      
      public var buyEnergyExtension:BuyEnergyFscExtension;
      
      public var logsFscExtension:LogsFscExtension;
      
      public var moderatorFscExtension:ModeratorFscExtension;
      
      public var dailyQuestExtension:DailyQuestExtension;
      
      public var useItemsExtension:UseItemsExtension;
      
      public var sellFishExtension:SellFishFscExtension;
      
      public var getFriendsHouseExtention:FriendsHouseFscExtension;
      
      private var _extensionAnnouncements:FscExtensionAnnouncements;
      
      private var _extensionBreeding:FscExtensionBreeding;
      
      private var _extensionClubs:FscExtensionClubs;
      
      private var _extensionCollections:FscExtensionCollections;
      
      private var _extensionEvents:FscExtensionEvents;
      
      private var _extensionFeatures:FscExtensionFeatures;
      
      private var _extensionFeaturesTemporary:FscExtensionFeaturesTemporary;
      
      private var _extensionFishes:FscExtensionFishes;
      
      private var _extensionFishingLine:FscExtensionFishingLine;
      
      private var _extensionFruits:FscExtensionFruits;
      
      private var _extensionFurnitureFactory:FscExtensionFurnitureFactory;
      
      private var _extensionHolidays:FscExtensionHolidays;
      
      private var _extensionInterior:FscExtensionInterior;
      
      private var _extensionLocation:FscExtensionLocation;
      
      private var _extensionMonsterFish:FscExtensionMonsterFishes;
      
      private var _extensionMoneyTree:FscExtensionMoneyTree;
      
      private var _extensionPeriodicFeatures:FscExtensionPeriodicFeatures;
      
      private var _extensionQuests:FscExtensionQuests;
      
      private var _extensionSales:FscExtensionSales;
      
      private var _extensionTournaments:FscExtensionTournaments;
      
      private var _extensionTutorial:FscExtensionTutorial;
      
      private var _extensionTrade:FscExtensionTrade;
      
      private var _extensionWheelOfFortune:FscExtensionWheelOfFortune;
      
      private var _extensionWorlds:FscExtensionWorlds;
      
      public function FishaoFscModel()
      {
         super(new FscConnection(true));
         this.chatFscExtension = new ChatFscExtension();
         this.chatFscExtension.init(this,_connection,this);
         this.updateExtension = new UpdateCharacterFscExtension();
         this.updateExtension.init(this,_connection,this);
         this.locationExtension = new LocationFscExtension();
         this.locationExtension.init(this,_connection,this);
         this.toutorialFscExtension = new FscExtensionTutorial();
         this.toutorialFscExtension.init(this,_connection,this);
         this.charExtension = new CharFscExtension();
         this.charExtension.init(this,_connection,this);
         this.pmFscExtension = new PrivateMsgFscExtension();
         this.pmFscExtension.init(this,_connection,this);
         this.fishingExtension = new FishingFscExtension();
         this.fishingExtension.init(this,_connection,this);
         this.plingExtension = new PlingFscExtension();
         this.plingExtension.init(this,_connection,this);
         this.missionExtension = new MissionExtension();
         this.missionExtension.init(this,_connection,this);
         this.paymentExtension = new PaymentsExtension();
         this.paymentExtension.init(this,_connection,this);
         this.profileExtension = new ProfileFscExtension();
         this.profileExtension.init(this,_connection,this);
         this.buyEnergyExtension = new BuyEnergyFscExtension();
         this.buyEnergyExtension.init(this,_connection,this);
         this.logsFscExtension = new LogsFscExtension();
         this.logsFscExtension.init(this,_connection,this);
         this.moderatorFscExtension = new ModeratorFscExtension();
         this.moderatorFscExtension.init(this,_connection,this);
         this.dailyQuestExtension = new DailyQuestExtension();
         this.dailyQuestExtension.init(this,_connection,this);
         this.useItemsExtension = new UseItemsExtension();
         this.useItemsExtension.init(this,_connection,this);
         this.sellFishExtension = new SellFishFscExtension();
         this.sellFishExtension.init(this,_connection,this);
         this.getFriendsHouseExtention = new FriendsHouseFscExtension();
         this.getFriendsHouseExtention.init(this,_connection,this);
         this._extensionAnnouncements = new FscExtensionAnnouncements();
         this._extensionAnnouncements.init(this,_connection,this);
         this._extensionBreeding = new FscExtensionBreeding();
         this._extensionBreeding.init(this,_connection,this);
         this._extensionClubs = new FscExtensionClubs();
         this._extensionClubs.init(this,_connection,this);
         this._extensionCollections = new FscExtensionCollections();
         this._extensionCollections.init(this,_connection,this);
         this._extensionEvents = new FscExtensionEvents();
         this._extensionEvents.init(this,_connection,this);
         this._extensionFeatures = new FscExtensionFeatures();
         this._extensionFeatures.init(this,_connection,this);
         this._extensionFeaturesTemporary = new FscExtensionFeaturesTemporary();
         this._extensionFeaturesTemporary.init(this,_connection,this);
         this._extensionFishes = new FscExtensionFishes();
         this._extensionFishes.init(this,_connection,this);
         this._extensionFishingLine = new FscExtensionFishingLine();
         this._extensionFishingLine.init(this,_connection,this);
         this._extensionFruits = new FscExtensionFruits();
         this._extensionFruits.init(this,_connection,this);
         this._extensionFurnitureFactory = new FscExtensionFurnitureFactory();
         this._extensionFurnitureFactory.init(this,_connection,this);
         this._extensionHolidays = new FscExtensionHolidays();
         this._extensionHolidays.init(this,_connection,this);
         this._extensionInterior = new FscExtensionInterior();
         this._extensionInterior.init(this,_connection,this);
         this._extensionLocation = new FscExtensionLocation();
         this._extensionLocation.init(this,_connection,this);
         this._extensionMonsterFish = new FscExtensionMonsterFishes();
         this._extensionMonsterFish.init(this,_connection,this);
         this._extensionMoneyTree = new FscExtensionMoneyTree();
         this._extensionMoneyTree.init(this,_connection,this);
         this._extensionPeriodicFeatures = new FscExtensionPeriodicFeatures();
         this._extensionPeriodicFeatures.init(this,_connection,this);
         this._extensionQuests = new FscExtensionQuests();
         this._extensionQuests.init(this,_connection,this);
         this._extensionSales = new FscExtensionSales();
         this._extensionSales.init(this,_connection,this);
         this._extensionTournaments = new FscExtensionTournaments();
         this._extensionTournaments.init(this,_connection,this);
         this._extensionTutorial = new FscExtensionTutorial();
         this._extensionTutorial.init(this,_connection,this);
         this._extensionTrade = new FscExtensionTrade();
         this._extensionTrade.init(this,_connection,this);
         this._extensionWorlds = new FscExtensionWorlds();
         this._extensionWorlds.init(this,_connection,this);
         this._extensionWheelOfFortune = new FscExtensionWheelOfFortune();
         this._extensionWheelOfFortune.init(this,_connection,this);
      }
      
      public function get extensionAnnouncements() : FscExtensionAnnouncements
      {
         return this._extensionAnnouncements;
      }
      
      public function get extensionBreeding() : FscExtensionBreeding
      {
         return this._extensionBreeding;
      }
      
      public function get extensionClubs() : FscExtensionClubs
      {
         return this._extensionClubs;
      }
      
      public function get extensionCollections() : FscExtensionCollections
      {
         return this._extensionCollections;
      }
      
      public function get extensionEvents() : FscExtensionEvents
      {
         return this._extensionEvents;
      }
      
      public function get extensionFeatures() : FscExtensionFeatures
      {
         return this._extensionFeatures;
      }
      
      public function get extensionFeaturesTemporary() : FscExtensionFeaturesTemporary
      {
         return this._extensionFeaturesTemporary;
      }
      
      public function get extensionFishes() : FscExtensionFishes
      {
         return this._extensionFishes;
      }
      
      public function get extensionFishingLine() : FscExtensionFishingLine
      {
         return this._extensionFishingLine;
      }
      
      public function get extensionFruits() : FscExtensionFruits
      {
         return this._extensionFruits;
      }
      
      public function get extensionFurnitureFactory() : FscExtensionFurnitureFactory
      {
         return this._extensionFurnitureFactory;
      }
      
      public function get extensionHolidays() : FscExtensionHolidays
      {
         return this._extensionHolidays;
      }
      
      public function get extensionInterior() : FscExtensionInterior
      {
         return this._extensionInterior;
      }
      
      public function get extensionLocation() : FscExtensionLocation
      {
         return this._extensionLocation;
      }
      
      public function get extensionMonsterFish() : FscExtensionMonsterFishes
      {
         return this._extensionMonsterFish;
      }
      
      public function get extensionMoneyTree() : FscExtensionMoneyTree
      {
         return this._extensionMoneyTree;
      }
      
      public function get extensionPeriodicFeatures() : FscExtensionPeriodicFeatures
      {
         return this._extensionPeriodicFeatures;
      }
      
      public function get extensionQuests() : FscExtensionQuests
      {
         return this._extensionQuests;
      }
      
      public function get extensionSales() : FscExtensionSales
      {
         return this._extensionSales;
      }
      
      public function get extensionTournaments() : FscExtensionTournaments
      {
         return this._extensionTournaments;
      }
      
      public function get extensionTutorial() : FscExtensionTutorial
      {
         return this._extensionTutorial;
      }
      
      public function get extensionTrade() : FscExtensionTrade
      {
         return this._extensionTrade;
      }
      
      public function get extensionWheelOfFortune() : FscExtensionWheelOfFortune
      {
         return this._extensionWheelOfFortune;
      }
      
      public function get extensionWorlds() : FscExtensionWorlds
      {
         return this._extensionWorlds;
      }
      
      public function isConnected() : Boolean
      {
         if(_loginFscExtension.isFirstConnection())
         {
            return this.isSocketConnected();
         }
         return _state.state == FscModelState.CONNECTED;
      }
      
      public function isSocketConnected() : Boolean
      {
         return _connectionAliveExtension.isConnected();
      }
      
      public function isEstablishingConnection() : Boolean
      {
         return _connectionAliveExtension.isEstablishingConnection();
      }
      
      public function get loginFscExtension() : LoginFscExtension
      {
         return _loginFscExtension;
      }
      
      public function get connectionAliveExtension() : ConnectionAliveExtension
      {
         return _connectionAliveExtension;
      }
      
      public function set logger(param1:Function) : void
      {
         _connection.logger = param1;
      }
      
      public function set sendLog(param1:Function) : void
      {
         _connection.sendLog = param1;
      }
      
      public function sendRequest(param1:IClientRequest, param2:Function = null) : void
      {
         _connection.send(param1,param2);
      }
   }
}

