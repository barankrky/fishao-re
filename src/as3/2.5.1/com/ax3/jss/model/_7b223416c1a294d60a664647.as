package com.ax3.jss.model
{
   import com.ax3.jss._30b7fef66889ed3a5e0f6633;
   import com.ax3.jss.ext._1423a9932e563791bf30d944;
   import com.ax3.jss.ext._77bcce15c2905bc50fc9fb7e;
   import com.ax3.jss.ext.impl._1501c4ebe74cc49f0245f36e;
   import com.ax3.jss.ext.impl._30dd6c5a345b432c1c50193c;
   import com.ax3.jss.ext.impl._3679048cdd2f54f27af8cec3;
   import com.ax3.jss.ext.impl._40e84682e3e5ebe3707ce3e5;
   import com.ax3.jss.ext.impl._423a40efcf05a17bb8cf4bf3;
   import com.ax3.jss.ext.impl._6f0659bbb9b0545b58d4e2d3;
   import com.ax3.jss.ext.impl._70497d2829a1401e1f496823;
   import com.ax3.jss.ext.impl._7d4f1954a0455eca4c59f5c2;
   import com.ax3.jss.ext.impl._8f5a4b11c06de881ae672c87;
   import com.ax3.jss.ext.impl._9e1b5adef72fa991c52771f3;
   import com.ax3.jss.ext.impl._a6c1780f03c701523a4d4410;
   import com.ax3.jss.ext.impl._ba5b6db42c6b12b5a6dc1fd0;
   import com.ax3.jss.ext.impl._bcbedc5cbf3e5e8677e15bac;
   import com.ax3.jss.ext.impl._c9663d58c9243b2e09289aa1;
   import com.ax3.jss.ext.impl._da8945d70238098d1f7454c9;
   import com.ax3.jss.ext.impl._ed57147569c64063bdc5fdc4;
   import com.ax3.jss.ext.impl._f38e0abe962b06e30c4ebfc9;
   import com.ax3.jss.model.states._cd789badd5efc353d515a554;
   import com.ax3.jss.requests.client._5353568798ce574eb410b08d;
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
   
   public class _7b223416c1a294d60a664647 extends _e37ab1e23c99b6f7e31df59d
   {
      
      public var chatFscExtension:_1423a9932e563791bf30d944;
      
      public var updateExtension:_a6c1780f03c701523a4d4410;
      
      public var locationExtension:_da8945d70238098d1f7454c9;
      
      public var charExtension:_6f0659bbb9b0545b58d4e2d3;
      
      public var pmFscExtension:_77bcce15c2905bc50fc9fb7e;
      
      public var fishingExtension:_1501c4ebe74cc49f0245f36e;
      
      public var plingExtension:_7d4f1954a0455eca4c59f5c2;
      
      public var missionExtension:_30dd6c5a345b432c1c50193c;
      
      public var profileExtension:_ed57147569c64063bdc5fdc4;
      
      public var paymentExtension:_70497d2829a1401e1f496823;
      
      public var toutorialFscExtension:FscExtensionTutorial;
      
      public var buyEnergyExtension:_8f5a4b11c06de881ae672c87;
      
      public var logsFscExtension:_40e84682e3e5ebe3707ce3e5;
      
      public var moderatorFscExtension:_f38e0abe962b06e30c4ebfc9;
      
      public var dailyQuestExtension:_bcbedc5cbf3e5e8677e15bac;
      
      public var useItemsExtension:_c9663d58c9243b2e09289aa1;
      
      public var sellFishExtension:_ba5b6db42c6b12b5a6dc1fd0;
      
      public var getFriendsHouseExtention:_3679048cdd2f54f27af8cec3;
      
      private var _b1b6c92983e05929ca371b4c:FscExtensionAnnouncements;
      
      private var _a913fe5e1524dccf0bdcac06:FscExtensionBreeding;
      
      private var _59dc974d6e4c4442741c9bd0:FscExtensionClubs;
      
      private var _5051e79f4d74bfaa7c5c4188:FscExtensionCollections;
      
      private var _f2bb48949f0666eb3cb02f1e:FscExtensionEvents;
      
      private var _11e32758619cefa3297b05e7:FscExtensionFeatures;
      
      private var _95384ac32d8f3db47357e03c:FscExtensionFeaturesTemporary;
      
      private var _0b5196674f69aa4cafff3943:FscExtensionFishes;
      
      private var _b871596d5c45f048cbfeaebe:FscExtensionFishingLine;
      
      private var _986369602438a6687d3adb39:FscExtensionFruits;
      
      private var _3f2c116768e2914ee1d2b3da:FscExtensionFurnitureFactory;
      
      private var _831e8c74cee8c7ecb96dafcb:FscExtensionHolidays;
      
      private var _6b8975fd4c4c6e115546cb34:FscExtensionInterior;
      
      private var _3792fdca0f2a6bcc8eebd4dd:FscExtensionLocation;
      
      private var _41e296db2e9c18bf83211150:FscExtensionMonsterFishes;
      
      private var _eb16113420175379b702663e:FscExtensionMoneyTree;
      
      private var _f6b50d0bc59df6382dbffcea:FscExtensionPeriodicFeatures;
      
      private var _ed94b62a069d2f6dfcc5ee09:FscExtensionQuests;
      
      private var _d8d9d23aaa32631e6a4650ea:FscExtensionSales;
      
      private var _994d34872da120a419f0c1c6:FscExtensionTournaments;
      
      private var _41fb230baf69c105b84aee92:FscExtensionTutorial;
      
      private var _441757f392503069d1f1bd88:FscExtensionTrade;
      
      private var _d29a3fbeec8cc24a40e81b3c:FscExtensionWheelOfFortune;
      
      private var _f556dce1e892fd77fa50093f:FscExtensionWorlds;
      
      public function _7b223416c1a294d60a664647()
      {
         super(new _30b7fef66889ed3a5e0f6633(true));
         this.chatFscExtension = new _1423a9932e563791bf30d944();
         this.chatFscExtension.init(this,_connection,this);
         this.updateExtension = new _a6c1780f03c701523a4d4410();
         this.updateExtension.init(this,_connection,this);
         this.locationExtension = new _da8945d70238098d1f7454c9();
         this.locationExtension.init(this,_connection,this);
         this.toutorialFscExtension = new FscExtensionTutorial();
         this.toutorialFscExtension.init(this,_connection,this);
         this.charExtension = new _6f0659bbb9b0545b58d4e2d3();
         this.charExtension.init(this,_connection,this);
         this.pmFscExtension = new _77bcce15c2905bc50fc9fb7e();
         this.pmFscExtension.init(this,_connection,this);
         this.fishingExtension = new _1501c4ebe74cc49f0245f36e();
         this.fishingExtension.init(this,_connection,this);
         this.plingExtension = new _7d4f1954a0455eca4c59f5c2();
         this.plingExtension.init(this,_connection,this);
         this.missionExtension = new _30dd6c5a345b432c1c50193c();
         this.missionExtension.init(this,_connection,this);
         this.paymentExtension = new _70497d2829a1401e1f496823();
         this.paymentExtension.init(this,_connection,this);
         this.profileExtension = new _ed57147569c64063bdc5fdc4();
         this.profileExtension.init(this,_connection,this);
         this.buyEnergyExtension = new _8f5a4b11c06de881ae672c87();
         this.buyEnergyExtension.init(this,_connection,this);
         this.logsFscExtension = new _40e84682e3e5ebe3707ce3e5();
         this.logsFscExtension.init(this,_connection,this);
         this.moderatorFscExtension = new _f38e0abe962b06e30c4ebfc9();
         this.moderatorFscExtension.init(this,_connection,this);
         this.dailyQuestExtension = new _bcbedc5cbf3e5e8677e15bac();
         this.dailyQuestExtension.init(this,_connection,this);
         this.useItemsExtension = new _c9663d58c9243b2e09289aa1();
         this.useItemsExtension.init(this,_connection,this);
         this.sellFishExtension = new _ba5b6db42c6b12b5a6dc1fd0();
         this.sellFishExtension.init(this,_connection,this);
         this.getFriendsHouseExtention = new _3679048cdd2f54f27af8cec3();
         this.getFriendsHouseExtention.init(this,_connection,this);
         this._b1b6c92983e05929ca371b4c = new FscExtensionAnnouncements();
         this._b1b6c92983e05929ca371b4c.init(this,_connection,this);
         this._a913fe5e1524dccf0bdcac06 = new FscExtensionBreeding();
         this._a913fe5e1524dccf0bdcac06.init(this,_connection,this);
         this._59dc974d6e4c4442741c9bd0 = new FscExtensionClubs();
         this._59dc974d6e4c4442741c9bd0.init(this,_connection,this);
         this._5051e79f4d74bfaa7c5c4188 = new FscExtensionCollections();
         this._5051e79f4d74bfaa7c5c4188.init(this,_connection,this);
         this._f2bb48949f0666eb3cb02f1e = new FscExtensionEvents();
         this._f2bb48949f0666eb3cb02f1e.init(this,_connection,this);
         this._11e32758619cefa3297b05e7 = new FscExtensionFeatures();
         this._11e32758619cefa3297b05e7.init(this,_connection,this);
         this._95384ac32d8f3db47357e03c = new FscExtensionFeaturesTemporary();
         this._95384ac32d8f3db47357e03c.init(this,_connection,this);
         this._0b5196674f69aa4cafff3943 = new FscExtensionFishes();
         this._0b5196674f69aa4cafff3943.init(this,_connection,this);
         this._b871596d5c45f048cbfeaebe = new FscExtensionFishingLine();
         this._b871596d5c45f048cbfeaebe.init(this,_connection,this);
         this._986369602438a6687d3adb39 = new FscExtensionFruits();
         this._986369602438a6687d3adb39.init(this,_connection,this);
         this._3f2c116768e2914ee1d2b3da = new FscExtensionFurnitureFactory();
         this._3f2c116768e2914ee1d2b3da.init(this,_connection,this);
         this._831e8c74cee8c7ecb96dafcb = new FscExtensionHolidays();
         this._831e8c74cee8c7ecb96dafcb.init(this,_connection,this);
         this._6b8975fd4c4c6e115546cb34 = new FscExtensionInterior();
         this._6b8975fd4c4c6e115546cb34.init(this,_connection,this);
         this._3792fdca0f2a6bcc8eebd4dd = new FscExtensionLocation();
         this._3792fdca0f2a6bcc8eebd4dd.init(this,_connection,this);
         this._41e296db2e9c18bf83211150 = new FscExtensionMonsterFishes();
         this._41e296db2e9c18bf83211150.init(this,_connection,this);
         this._eb16113420175379b702663e = new FscExtensionMoneyTree();
         this._eb16113420175379b702663e.init(this,_connection,this);
         this._f6b50d0bc59df6382dbffcea = new FscExtensionPeriodicFeatures();
         this._f6b50d0bc59df6382dbffcea.init(this,_connection,this);
         this._ed94b62a069d2f6dfcc5ee09 = new FscExtensionQuests();
         this._ed94b62a069d2f6dfcc5ee09.init(this,_connection,this);
         this._d8d9d23aaa32631e6a4650ea = new FscExtensionSales();
         this._d8d9d23aaa32631e6a4650ea.init(this,_connection,this);
         this._994d34872da120a419f0c1c6 = new FscExtensionTournaments();
         this._994d34872da120a419f0c1c6.init(this,_connection,this);
         this._41fb230baf69c105b84aee92 = new FscExtensionTutorial();
         this._41fb230baf69c105b84aee92.init(this,_connection,this);
         this._441757f392503069d1f1bd88 = new FscExtensionTrade();
         this._441757f392503069d1f1bd88.init(this,_connection,this);
         this._f556dce1e892fd77fa50093f = new FscExtensionWorlds();
         this._f556dce1e892fd77fa50093f.init(this,_connection,this);
         this._d29a3fbeec8cc24a40e81b3c = new FscExtensionWheelOfFortune();
         this._d29a3fbeec8cc24a40e81b3c.init(this,_connection,this);
      }
      
      public function get extensionAnnouncements() : FscExtensionAnnouncements
      {
         return this._b1b6c92983e05929ca371b4c;
      }
      
      public function get extensionBreeding() : FscExtensionBreeding
      {
         return this._a913fe5e1524dccf0bdcac06;
      }
      
      public function get extensionClubs() : FscExtensionClubs
      {
         return this._59dc974d6e4c4442741c9bd0;
      }
      
      public function get extensionCollections() : FscExtensionCollections
      {
         return this._5051e79f4d74bfaa7c5c4188;
      }
      
      public function get extensionEvents() : FscExtensionEvents
      {
         return this._f2bb48949f0666eb3cb02f1e;
      }
      
      public function get extensionFeatures() : FscExtensionFeatures
      {
         return this._11e32758619cefa3297b05e7;
      }
      
      public function get extensionFeaturesTemporary() : FscExtensionFeaturesTemporary
      {
         return this._95384ac32d8f3db47357e03c;
      }
      
      public function get extensionFishes() : FscExtensionFishes
      {
         return this._0b5196674f69aa4cafff3943;
      }
      
      public function get extensionFishingLine() : FscExtensionFishingLine
      {
         return this._b871596d5c45f048cbfeaebe;
      }
      
      public function get extensionFruits() : FscExtensionFruits
      {
         return this._986369602438a6687d3adb39;
      }
      
      public function get extensionFurnitureFactory() : FscExtensionFurnitureFactory
      {
         return this._3f2c116768e2914ee1d2b3da;
      }
      
      public function get extensionHolidays() : FscExtensionHolidays
      {
         return this._831e8c74cee8c7ecb96dafcb;
      }
      
      public function get extensionInterior() : FscExtensionInterior
      {
         return this._6b8975fd4c4c6e115546cb34;
      }
      
      public function get extensionLocation() : FscExtensionLocation
      {
         return this._3792fdca0f2a6bcc8eebd4dd;
      }
      
      public function get extensionMonsterFish() : FscExtensionMonsterFishes
      {
         return this._41e296db2e9c18bf83211150;
      }
      
      public function get extensionMoneyTree() : FscExtensionMoneyTree
      {
         return this._eb16113420175379b702663e;
      }
      
      public function get extensionPeriodicFeatures() : FscExtensionPeriodicFeatures
      {
         return this._f6b50d0bc59df6382dbffcea;
      }
      
      public function get extensionQuests() : FscExtensionQuests
      {
         return this._ed94b62a069d2f6dfcc5ee09;
      }
      
      public function get extensionSales() : FscExtensionSales
      {
         return this._d8d9d23aaa32631e6a4650ea;
      }
      
      public function get extensionTournaments() : FscExtensionTournaments
      {
         return this._994d34872da120a419f0c1c6;
      }
      
      public function get extensionTutorial() : FscExtensionTutorial
      {
         return this._41fb230baf69c105b84aee92;
      }
      
      public function get extensionTrade() : FscExtensionTrade
      {
         return this._441757f392503069d1f1bd88;
      }
      
      public function get extensionWheelOfFortune() : FscExtensionWheelOfFortune
      {
         return this._d29a3fbeec8cc24a40e81b3c;
      }
      
      public function get extensionWorlds() : FscExtensionWorlds
      {
         return this._f556dce1e892fd77fa50093f;
      }
      
      public function _e9a9df5df8a24f9cc71d785d() : Boolean
      {
         var _loc1_:int = -1543853872 ^ -1954689947 ^ -1912985418 ^ 0x4FEEA5E7;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (0x68CD1B20 ^ -562240707 ^ -846372138 ^ -1850772691))
            {
               case 0:
                  return this._6539dae8ab2b268a27c2c312();
               case 1:
                  return _state.state == _cd789badd5efc353d515a554.CONNECTED;
               case 2:
                  if(_loginFscExtension._8c08c789507e1a9a48cf7c50())
                  {
                     _loc1_ = -1775196117 ^ 0x4F789171 ^ -1000098493 ^ -138910209;
                  }
                  else
                  {
                     _loc1_ = 0x36AA46BB ^ 0x1371ED0C ^ 0x6291A3AC ^ -1378229764;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function _6539dae8ab2b268a27c2c312() : Boolean
      {
         return _connectionAliveExtension._e9a9df5df8a24f9cc71d785d();
      }
      
      public function _0b8717013a3fea5d5737f1e6() : Boolean
      {
         return _connectionAliveExtension._0b8717013a3fea5d5737f1e6();
      }
      
      public function get loginFscExtension() : _423a40efcf05a17bb8cf4bf3
      {
         return _loginFscExtension;
      }
      
      public function get connectionAliveExtension() : _9e1b5adef72fa991c52771f3
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
      
      public function _1998765dddbc24f25f64afbb(param1:_5353568798ce574eb410b08d, param2:Function = null) : void
      {
         _connection.send(param1,param2);
      }
   }
}

