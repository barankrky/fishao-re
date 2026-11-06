package
{
   import com.ax3.AnimatedCharacterLoader;
   import com.ax3.CharacterEditorSwfLoader;
   import com.ax3.config.ApplicationConfig;
   import com.ax3.display.dialog.SWFDialogConfig;
   import com.ax3.events.ErrorEvent;
   import com.ax3.events.FatalErrorEvent;
   import com.ax3.events.GameResizeEvent;
   import com.ax3.events.Listeners;
   import com.ax3.fishao.Config;
   import com.ax3.fishao.DiscordPresence;
   import com.ax3.fishao.ECurrencyType;
   import com.ax3.fishao.ExecutionQueue;
   import com.ax3.fishao.FishaoFscModelManager;
   import com.ax3.fishao.IGameSwf;
   import com.ax3.fishao.ResourceType;
   import com.ax3.fishao.announcements.ManagerAnnouncements;
   import com.ax3.fishao.control.FullScreenController;
   import com.ax3.fishao.control.managers.FishaoSoundManager;
   import com.ax3.fishao.control.managers.GlobalGameHandlers;
   import com.ax3.fishao.control.managers.MouseCursorManager;
   import com.ax3.fishao.control.managers.SettingsManager;
   import com.ax3.fishao.control.managers.ToolTipManager;
   import com.ax3.fishao.core.FishaoApp;
   import com.ax3.fishao.core.FishaoDialogManager;
   import com.ax3.fishao.core.FishaoResourceManager;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.debug.Watch;
   import com.ax3.fishao.display.dialogs.ConnectionLostDialog;
   import com.ax3.fishao.display.dialogs.FishMarketAvailableSwfDialog;
   import com.ax3.fishao.display.dialogs.LoginDialog;
   import com.ax3.fishao.display.dialogs.MessageDialog;
   import com.ax3.fishao.display.dialogs.ShopSwfDialog;
   import com.ax3.fishao.display.dialogs.TradeDecorationSwfDialog;
   import com.ax3.fishao.display.dialogs.TradeFishSwfDialog;
   import com.ax3.fishao.entries.LocationUser;
   import com.ax3.fishao.events.PreloadEvent;
   import com.ax3.fishao.locations.EBoosterType;
   import com.ax3.fishao.locations.base.FactoryLocation;
   import com.ax3.fishao.locations.base.FactoryLocationModel;
   import com.ax3.fishao.locations.base.LocationConfig;
   import com.ax3.fishao.locations.base.LocationDialog;
   import com.ax3.fishao.locations.base.LocationModel;
   import com.ax3.fishao.locations.base.LocationModelOnVirtualWorld;
   import com.ax3.fishao.locations.base.daycycle.LocationDayCycleLayers;
   import com.ax3.fishao.locations.chars.KeyboardMoveStrategy;
   import com.ax3.fishao.locations.chars.PathMoveStrategy;
   import com.ax3.fishao.locations.privateHouse.LocationDialogPrivateHouse;
   import com.ax3.fishao.locations.privateHouse.LocationModelPrivateHouse;
   import com.ax3.fishao.managers.CharManager;
   import com.ax3.fishao.mediators.FscConnectionMediator;
   import com.ax3.fishao.model.SettingsModel;
   import com.ax3.fishao.model.info.BuildConfig;
   import com.ax3.fishao.model.pling.EPlingType;
   import com.ax3.fishao.players.ManagerPlayers;
   import com.ax3.fishao.quests.ManagerQuests;
   import com.ax3.fishao.tutorial.ETutorialType;
   import com.ax3.fishao.tutorial.ManagerTutorial;
   import com.ax3.fishao.tutorial.TutorialInfo;
   import com.ax3.fishao.tutorial.views.world_map.WorldMapTutorial;
   import com.ax3.fishao.utils.CheatProtection;
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.utils.Preloader;
   import com.ax3.fishao.utils.UtilsApp;
   import com.ax3.fishao.utils.UtilsArray;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs.EmailActivationSwfDialog;
   import com.ax3.fishao.view.dialogs.FishaoBaseSwfDialog;
   import com.ax3.fishao.view.dialogs.InventorySwfDialog;
   import com.ax3.fishao.view.dialogs.PopupManager;
   import com.ax3.fishao.view.dialogs.ProfileSwfDialog;
   import com.ax3.fishao.view.dialogs.SettingsSwfDialog;
   import com.ax3.fishao.view.dialogs.WorldListSwfDialog;
   import com.ax3.fishao.view.dialogs.bank.energy.BuyEnergySwfDialog;
   import com.ax3.fishao.view.dialogs.base.ManagerBase;
   import com.ax3.fishao.view.dialogs.boosters.ManagerBoosters;
   import com.ax3.fishao.view.dialogs.breeding.ManagerBreeding;
   import com.ax3.fishao.view.dialogs.club.model.ManagerClubs;
   import com.ax3.fishao.view.dialogs.collections.model.ManagerCollections;
   import com.ax3.fishao.view.dialogs.events.model.ManagerEvents;
   import com.ax3.fishao.view.dialogs.features.ManagerFeatures;
   import com.ax3.fishao.view.dialogs.featuresTemporary.ManagerFeaturesTemporary;
   import com.ax3.fishao.view.dialogs.fishes.ManagerFishes;
   import com.ax3.fishao.view.dialogs.fishingLine.model.ManagerFishingLine;
   import com.ax3.fishao.view.dialogs.fruits.ManagerFruits;
   import com.ax3.fishao.view.dialogs.furniture_factory.ManagerFurnitureFactory;
   import com.ax3.fishao.view.dialogs.holidays.model.ManagerHolidays;
   import com.ax3.fishao.view.dialogs.interior.ManagerInterior;
   import com.ax3.fishao.view.dialogs.location.ManagerLocation;
   import com.ax3.fishao.view.dialogs.maintenance.ManagerMaintenance;
   import com.ax3.fishao.view.dialogs.moneyTree.model.ManagerMoneyTree;
   import com.ax3.fishao.view.dialogs.monster_fishes.ManagerMonsterFishes;
   import com.ax3.fishao.view.dialogs.periodicFeatures.ManagerPeriodicFeatures;
   import com.ax3.fishao.view.dialogs.rankings.DialogRankings;
   import com.ax3.fishao.view.dialogs.sales.ManagerSales;
   import com.ax3.fishao.view.dialogs.tournaments.ManagerTournaments;
   import com.ax3.fishao.view.dialogs.trade.model.ManagerTrade;
   import com.ax3.fishao.view.dialogs.wheel_of_fortune.ManagerWheelOfFortune;
   import com.ax3.fishao.view.dialogs.worlds.ManagerWorlds;
   import com.ax3.fishao.view.states.GuiState;
   import com.ax3.fishao.view.wrappers.FishaoAssetWrappersProcessor;
   import com.ax3.jss.FscConnection;
   import com.ax3.jss.ext.events.ChatFscExtensionEvent;
   import com.ax3.jss.model.FishaoFscModel;
   import com.ax3.jss.requests.server.ServerResp;
   import com.ax3.net.BinaryLoaderRepeatable;
   import com.ax3.net.LoadHandler;
   import com.ax3.utils.Input;
   import com.ax3.utils.log.CcLogger;
   import com.ax3.utils.log.globalLogger;
   import com.ax3.utils.timer.IUpdate;
   import com.ax3.utils.timer.UpdateGroup;
   import com.ax3.utils.timer.UpdateManager;
   import com.junkbyte.console.Cc;
   import com.junkbyte.console.addons.displaymap.DisplayMapAddon;
   import com.junkbyte.console.addons.watcher.WatchAddon;
   import flash.desktop.NativeApplication;
   import flash.display.LoaderInfo;
   import flash.display.Sprite;
   import flash.display.Stage;
   import flash.display.StageAlign;
   import flash.display.StageScaleMode;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.FocusEvent;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.UncaughtErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.system.Security;
   import flash.text.TextField;
   import flash.text.TextFieldType;
   import flash.text.TextFormat;
   import flash.ui.ContextMenu;
   import flash.utils.getQualifiedClassName;
   import flash.utils.setTimeout;
   import protocol.sr.FishCatchEmoticonResp;
   import protocol.sr.FishingResp;
   import protocol.sr.GetDataResp;
   import protocol.sr.LeaveLocationResp;
   import protocol.sr.LeaveSublocationResp;
   import protocol.sr.LoginSuccessResp;
   import protocol.sr.UpdateResp;
   import protocol.sr.debugging.FishBlocksAtLakesDataResp;
   import protocol.sr.moderating.ReportChangeStateResp;
   
   [SWF(width="800", height="700", backgroundColor="#ffffff", frameRate="30")]
   public class GameSwf extends Sprite implements IGameSwf, IUpdate
   {
      
      public static var instance:GameSwf;
      
      public static var stage:Stage;
      
      private static var _worldMap:WorldMapTutorial;
      
      public static var guiState:GuiState;
      
      private static var _currentLocationDialog:LocationDialog;
      
      private static var _currentSublocationDialog:LocationDialog;
      
      private static var _privateHouseDialog:LocationDialogPrivateHouse;
      
      public static const LOADING_CHANNEL:String = "Loading";
      
      public static var globalDispatcher:EventDispatcher = new EventDispatcher();
      
      public static var charsManager:CharManager = new CharManager();
      
      public static const settings:SettingsManager = new SettingsManager();
      
      public static var radarType:uint = 0;
      
      public static var isDebugLakeCellsVisible:Boolean = false;
      
      public static var profileSwfDialog:ProfileSwfDialog = null;
      
      private static var _rankingsSwfDialog:DialogRankings = null;
      
      private var _emailActivationDialog:EmailActivationSwfDialog;
      
      private var _loginDialog:LoginDialog;
      
      private var _charEditorLoader:CharacterEditorSwfLoader;
      
      private var _settingsDialog:SettingsSwfDialog;
      
      private var _needSetPositionAfterExitVirtualLocation:Boolean;
      
      private var _fscModel:FishaoFscModel;
      
      private var _fscConnectionMediator:FscConnectionMediator;
      
      private var _animatedCharacter:AnimatedCharacterLoader;
      
      private var _lastLocationId:int;
      
      private var _lastEnterTournamentId:int;
      
      private var _lastVirtualLocationID:int;
      
      private var _managersInitLeft:int;
      
      private var _managers:Array;
      
      private var _managerAnnouncements:ManagerAnnouncements;
      
      private var _managerFishingLine:ManagerFishingLine;
      
      private var _managerMoneyTree:ManagerMoneyTree;
      
      private var _managerEvents:ManagerEvents;
      
      private var _managerTournaments:ManagerTournaments;
      
      private var _managerMaintanence:ManagerMaintenance;
      
      private var _managerQuests:ManagerQuests;
      
      private var _managerWorlds:ManagerWorlds;
      
      private var _managerTrade:ManagerTrade;
      
      private var _managerCollections:ManagerCollections;
      
      private var _managerFishes:ManagerFishes;
      
      private var _managerFeatures:ManagerFeatures;
      
      private var _managerTutorial:ManagerTutorial;
      
      private var _managerPlayers:ManagerPlayers;
      
      private var _managerPeriodicFeatures:ManagerPeriodicFeatures;
      
      private var _managerFeaturesTemporary:ManagerFeaturesTemporary;
      
      private var _managerFruits:ManagerFruits;
      
      private var _managerSales:ManagerSales;
      
      private var _managerBreeding:ManagerBreeding;
      
      private var _managerClubs:ManagerClubs;
      
      private var _managerWheelOfFortune:ManagerWheelOfFortune;
      
      private var _managerBoosters:ManagerBoosters;
      
      private var _managerMonsterFishes:ManagerMonsterFishes;
      
      private var _managerHolidays:ManagerHolidays;
      
      private var _managerFurnitureFactory:ManagerFurnitureFactory;
      
      private var _managerInterior:ManagerInterior;
      
      private var _managerLocation:ManagerLocation;
      
      public var tradeDialog:TradeFishSwfDialog;
      
      private var _needStartTutorialAfterLoadData:Boolean;
      
      private var _openedPopups:Array;
      
      public function GameSwf()
      {
         super();
         try
         {
            Security.allowInsecureDomain("*");
            Security.allowDomain("*");
         }
         catch(e:*)
         {
         }
         if(stage)
         {
            this.init();
         }
         else
         {
            Listeners.addEventListener(this,this,Event.ADDED_TO_STAGE,this.init);
         }
      }
      
      public static function get currentLocationDialog() : LocationDialog
      {
         var _loc1_:LocationDialog = null;
         if(_privateHouseDialog != null)
         {
            _loc1_ = _privateHouseDialog;
         }
         else if(_currentSublocationDialog != null)
         {
            _loc1_ = _currentSublocationDialog;
         }
         else if(_currentLocationDialog != null)
         {
            _loc1_ = _currentLocationDialog;
         }
         return _loc1_;
      }
      
      public static function get worldMap() : WorldMapTutorial
      {
         return _worldMap;
      }
      
      private static function onError(param1:ErrorEvent) : void
      {
         if(param1 is FatalErrorEvent)
         {
            Cc.error(FatalErrorEvent(param1).toString());
         }
      }
      
      private static function onFishingResp(param1:FishingResp) : void
      {
         var _loc2_:String = null;
         if(param1.fishLength == -1)
         {
            _loc2_ = param1.data;
            _loc2_ = "------- FISHING CALCULATION: ------------\n" + _loc2_ + "\n-----------------------------------------";
            Cc.logch("fishing",_loc2_);
         }
      }
      
      private static function onFishCatchEmoticon(param1:FishCatchEmoticonResp) : void
      {
         var _loc2_:LocationUser = null;
         var _loc3_:int = 0;
         if(currentLocationDialog != null && currentLocationDialog.isActive())
         {
            if(currentLocationDialog.locationModel != null)
            {
               _loc2_ = currentLocationDialog.locationModel.getLocationUser(param1.username);
               if(_loc2_ != null)
               {
                  if(currentLocationDialog.gui != null)
                  {
                     if(currentLocationDialog.userIsOnScreen(_loc2_))
                     {
                        _loc3_ = param1.emoticon;
                        if(_loc3_ == 1)
                        {
                           _loc2_.fieldChar.showSmallEmoticon();
                        }
                        else if(_loc3_ == 2)
                        {
                           _loc2_.fieldChar.showMediumEmoticon();
                        }
                        else if(_loc3_ == 3)
                        {
                           _loc2_.fieldChar.showLargeEmoticon();
                        }
                        else
                        {
                           _loc2_.fieldChar.showFiveStarEmoticon();
                        }
                     }
                  }
               }
            }
         }
      }
      
      private static function onChatPublicMessage(param1:ChatFscExtensionEvent) : void
      {
         var _loc2_:LocationUser = null;
         var _loc3_:LocationDialog = null;
         if(currentLocationDialog != null && currentLocationDialog.isActive())
         {
            if(currentLocationDialog.locationModel != null)
            {
               _loc2_ = currentLocationDialog.locationModel.getLocationUser(param1.data.senderLogin);
               if(_loc2_ != null)
               {
                  _loc2_.fieldChar.message = param1.data.msg;
                  Cc.log("Chat public message: " + param1.data.msg);
                  _loc3_ = currentLocationDialog;
                  if(_loc3_.gui != null)
                  {
                     if(currentLocationDialog.userIsOnScreen(_loc2_))
                     {
                        _loc3_.gui.mainMenu.chatPanel.processChatMessage(param1.data.senderLogin,param1.data.msg);
                     }
                  }
               }
            }
         }
      }
      
      private static function showWorldMapOnLeaveResp(param1:ServerResp) : void
      {
         if(param1 is LeaveSublocationResp || param1 is LeaveLocationResp)
         {
            if(_currentLocationDialog != null)
            {
               _currentLocationDialog.close();
               _currentLocationDialog = null;
            }
            showWorldMap();
            worldMap.startMapUpdate();
         }
      }
      
      public static function showWorldMap(param1:Event = null) : void
      {
         if(_worldMap == null)
         {
            _worldMap = app.dialogFactory.getWorldMapDialog();
         }
         _worldMap.show();
      }
      
      private static function onLocationSuspendComplete(param1:int, param2:int = -1) : void
      {
         var newLocationId:int = param1;
         var prevLocationID:int = param2;
         var locationModel:LocationModel = null;
         Cc.log("onLocationSuspendComplete(newLocationId:" + newLocationId + ")");
         try
         {
            locationModel = FactoryLocationModel.createSublocationModel(newLocationId);
            locationModel.prevLocationID = prevLocationID;
            _currentSublocationDialog = FactoryLocation.createSublocation(newLocationId,locationModel);
         }
         catch(e:Error)
         {
            Cc.error("locationConstructor1 error",e);
            GameSwf.sendReportToServer("locaiton");
         }
         try
         {
            _currentSublocationDialog.show();
         }
         catch(e:Error)
         {
            Cc.error("_currentSublocationDialog.show error",e);
            GameSwf.sendReportToServer("locaiton");
         }
      }
      
      private static function onFocusIn(param1:FocusEvent) : void
      {
         if(param1.target is TextField && TextField(param1.target).type == TextFieldType.INPUT && Config.FULLSCREEN == true && UtilsApp.getFlashPlayerVersion() < 11)
         {
            FullScreenController.getInstance().switchFullScreen();
         }
      }
      
      private static function onEnergyPriceListLoaded(param1:GetDataResp) : void
      {
         var _loc2_:Array = null;
         var _loc3_:Object = null;
         var _loc4_:Number = NaN;
         var _loc5_:String = null;
         var _loc6_:int = 0;
         var _loc7_:BuyEnergySwfDialog = null;
         var _loc8_:int = 0;
         if(param1.data.hasOwnProperty("energyPrices"))
         {
            _loc2_ = [];
            _loc3_ = JSON.parse(param1.data.energyPrices);
            _loc4_ = 0;
            for(_loc5_ in _loc3_)
            {
               if(_loc3_.hasOwnProperty(_loc5_))
               {
                  _loc2_.push({
                     "energyCount":_loc5_,
                     "price":_loc3_[_loc5_],
                     "free":0
                  });
               }
            }
            _loc2_.sortOn("energyCount",Array.NUMERIC);
            _loc6_ = 1;
            while(_loc6_ < _loc2_.length)
            {
               _loc8_ = int(String(_loc2_[_loc6_].price).split(":")[0]);
               if(_loc4_ == 0)
               {
                  _loc4_ = _loc8_ / int(_loc2_[_loc6_].energyCount);
               }
               else
               {
                  _loc2_[_loc6_].free = int((int(_loc2_[_loc6_].energyCount) - _loc8_ / _loc4_) * 100 / int(_loc2_[_loc6_].energyCount));
               }
               _loc6_++;
            }
            _loc7_ = app.dialogFactory.getBuyEnergySwfDialog();
            _loc7_.setData(_loc2_);
            _loc7_.show();
         }
      }
      
      private static function onFishBlocksAtLakesDataResp(param1:FishBlocksAtLakesDataResp) : void
      {
         var _loc2_:LocationDialog = currentLocationDialog;
         if(_loc2_ != null)
         {
            _loc2_.showFishBlocks(param1,radarType);
         }
      }
      
      private static function onDeactivate(param1:Event) : void
      {
         Input.clear();
      }
      
      private static function onActivate(param1:Event) : void
      {
         Input.clear();
      }
      
      public static function onBfgEmptyCookie() : void
      {
         var _loc1_:ConnectionLostDialog = app.dialogFactory.getConnectionLostDialog();
         _loc1_.text = I18n.get("emptyCookie");
         _loc1_.refreshButton.visible = false;
         _loc1_.show();
         PopupManager.GAME_FIELD_LAYER.visible = false;
         PopupManager.DIALOG_LAYER.visible = false;
         PopupManager.LOADING_SCREEN.visible = false;
      }
      
      public static function showRankingsDialog() : void
      {
         if(_rankingsSwfDialog == null)
         {
            _rankingsSwfDialog = app.dialogFactory.getRankingsDialog();
         }
         _rankingsSwfDialog.show();
      }
      
      public static function inspectGuestLockedAction() : Boolean
      {
         var _loc1_:ManagerTutorial = null;
         var _loc2_:Boolean = Boolean(app.user.isGuest);
         if(_loc2_)
         {
            _loc1_ = instance._managerTutorial;
            if(_loc1_ == null || !_loc1_.isAnyTutorialInProgress)
            {
               instance.showGuestBlockedActionDialog();
            }
         }
         return _loc2_;
      }
      
      public static function globalShowMessageFn(param1:String, param2:Boolean, param3:int, param4:Boolean) : void
      {
         var _loc5_:MessageDialog = app.dialogFactory.getMessageDialog();
         _loc5_.setText(param1,param2);
         _loc5_.buttons = param3;
         _loc5_.closeOnOk = param4;
         _loc5_.show();
      }
      
      public static function sendReportToServer(param1:String = null) : void
      {
         Cc.sendToServer(Config.BUG_REPORT_URL,true,param1);
      }
      
      public static function destroyCurrentLocations() : void
      {
         if(_currentSublocationDialog != null)
         {
            _currentSublocationDialog.destroy();
            _currentSublocationDialog = null;
         }
         if(_currentLocationDialog != null)
         {
            _currentLocationDialog.destroy();
            _currentLocationDialog = null;
         }
      }
      
      public static function closeCurrentLocation() : void
      {
         if(_currentSublocationDialog != null)
         {
            instance.closeSublocationDialog();
         }
      }
      
      private static function tryRemoveWidget(param1:int) : void
      {
         if(_currentSublocationDialog != null)
         {
            _currentSublocationDialog.gui.removeWidgetByType(param1);
         }
         if(_currentLocationDialog != null)
         {
            _currentLocationDialog.gui.removeWidgetByType(param1);
         }
         if(_privateHouseDialog)
         {
            _privateHouseDialog.gui.removeWidgetByType(param1);
         }
      }
      
      public static function tryUpdateGUI(param1:String) : void
      {
         if(currentLocationDialog == null)
         {
            return;
         }
         if(currentLocationDialog.gui != null)
         {
            currentLocationDialog.gui.update(param1);
         }
      }
      
      private static function initGlobal() : void
      {
         GlobalGameHandlers.showMessage = globalShowMessageFn;
         SWFDialogConfig.globalPostfix = "?r=" + BuildConfig.VERSION;
      }
      
      private static function handleGlobalErrors(param1:UncaughtErrorEvent) : void
      {
         var _loc2_:String = null;
         var _loc3_:MessageDialog = null;
         var _loc4_:TextFormat = null;
         var _loc5_:String = null;
         if(BuildConfig.isProd())
         {
            if(param1.error is Error)
            {
               Cc.error(param1.error);
               _loc2_ = String((param1.error as Error).errorID) + " :: event.text: " + param1.text;
               if(param1.target is LoaderInfo)
               {
                  _loc2_ += " :: event toString: " + param1.toString();
                  _loc2_ += " :: error getStackTrace: " + (param1.error as Error).getStackTrace();
                  _loc2_ += " :: error message: " + (param1.error as Error).message;
                  _loc2_ += " :: error toString: " + (param1.error as Error).toString();
               }
               else
               {
                  _loc2_ += " :: event.target: " + param1.target + "stack trace: " + (param1.error as Error).getStackTrace();
               }
               sendReportToServer(_loc2_);
            }
            Cc.log("Disconnect by handleGlobalError event.error=" + param1.error);
            FishaoFscModelManager.fscModel.disconnect();
         }
         else
         {
            _loc3_ = new MessageDialog();
            _loc3_.buttons = 0;
            _loc3_.messageField.selectable = true;
            _loc4_ = _loc3_.messageField.defaultTextFormat;
            _loc4_.size = 11;
            _loc3_.messageField.defaultTextFormat = _loc4_;
            _loc5_ = "";
            if(param1.error is Error)
            {
               _loc5_ = Cc.error(param1.error);
               Cc.log((param1.error as Error).getStackTrace());
               sendReportToServer(String((param1.error as Error).errorID));
            }
            _loc3_.setText(_loc5_,false);
            _loc3_.show();
         }
      }
      
      private static function reportChangeStateRespHandler(param1:ReportChangeStateResp) : void
      {
         app.moderatorModel.parseReportChangeStateResp(param1);
      }
      
      private static function loadingLogger(... rest) : void
      {
         Cc.logchArgs("load",rest);
      }
      
      public static function waitForLoadLocation(param1:Function) : void
      {
         if(param1 == null)
         {
            return;
         }
         var _loc2_:int = 250;
         var _loc3_:LocationDialog = GameSwf.currentLocationDialog;
         if(_loc3_ == null || !_loc3_.locationLoadComplete || _loc3_.locationModel == null || _loc3_.locationModel.getLocationUser(app.user.username) == null)
         {
            setTimeout(waitForLoadLocation,_loc2_,param1);
            return;
         }
         param1();
      }
      
      public static function processErrors(param1:Array) : void
      {
         var _loc2_:String = null;
         var _loc3_:String = "";
         for each(_loc2_ in param1)
         {
            if(_loc3_.length > 0)
            {
               _loc3_ += "\n";
            }
            _loc3_ += (param1.length > 1 ? "• " : "   ") + _loc2_;
         }
         processError(_loc3_);
      }
      
      public static function processError(param1:String) : void
      {
         var _loc2_:MessageDialog = app.dialogFactory.getMessageDialog();
         _loc2_.setText(param1,false);
         _loc2_.buttons = MessageDialog.CLOSE_BUTTON | MessageDialog.OK_BUTTON;
         _loc2_.closeOnOk = true;
         _loc2_.show();
      }
      
      public function set needSetPositionAfterExitVirtualLocation(param1:Boolean) : void
      {
         this._needSetPositionAfterExitVirtualLocation = param1;
         if(!this._needSetPositionAfterExitVirtualLocation)
         {
            this.lastVirtualLocationID = 0;
         }
      }
      
      public function get needSetPositionAfterExitVirtualLocation() : Boolean
      {
         return this._needSetPositionAfterExitVirtualLocation;
      }
      
      public function get lastVirtualLocationID() : int
      {
         return this._lastVirtualLocationID;
      }
      
      public function set needStartTutorialAfterLoadData(param1:Boolean) : void
      {
         this._needStartTutorialAfterLoadData = param1;
      }
      
      public function get managerClubs() : ManagerClubs
      {
         return this._managerClubs;
      }
      
      public function get managerMonsterFishes() : ManagerMonsterFishes
      {
         return this._managerMonsterFishes;
      }
      
      public function get managerFurnitureFactory() : ManagerFurnitureFactory
      {
         return this._managerFurnitureFactory;
      }
      
      public function get managerInterior() : ManagerInterior
      {
         return this._managerInterior;
      }
      
      public function get managerLocation() : ManagerLocation
      {
         return this._managerLocation;
      }
      
      public function get managerAnnouncements() : ManagerAnnouncements
      {
         return this._managerAnnouncements;
      }
      
      public function get managerFishingLine() : ManagerFishingLine
      {
         return this._managerFishingLine;
      }
      
      public function get managerMoneyTree() : ManagerMoneyTree
      {
         return this._managerMoneyTree;
      }
      
      public function get managerEvents() : ManagerEvents
      {
         return this._managerEvents;
      }
      
      public function get managerTournaments() : ManagerTournaments
      {
         return this._managerTournaments;
      }
      
      public function get managerMaintanence() : ManagerMaintenance
      {
         return this._managerMaintanence;
      }
      
      public function get managerPlayers() : ManagerPlayers
      {
         return this._managerPlayers;
      }
      
      public function get managerWorlds() : ManagerWorlds
      {
         return this._managerWorlds;
      }
      
      public function get managerTrade() : ManagerTrade
      {
         return this._managerTrade;
      }
      
      public function get animatedCharacter() : AnimatedCharacterLoader
      {
         if(this._animatedCharacter == null)
         {
            this.initAnimatedCharacters();
         }
         return this._animatedCharacter;
      }
      
      public function get managerQuests() : ManagerQuests
      {
         return this._managerQuests;
      }
      
      public function get managerCollections() : ManagerCollections
      {
         return this._managerCollections;
      }
      
      public function get managerFishes() : ManagerFishes
      {
         return this._managerFishes;
      }
      
      public function get managerFeatures() : ManagerFeatures
      {
         return this._managerFeatures;
      }
      
      public function get managerFeaturesTemporary() : ManagerFeaturesTemporary
      {
         return this._managerFeaturesTemporary;
      }
      
      public function get managerTutorial() : ManagerTutorial
      {
         return this._managerTutorial;
      }
      
      public function get managerFruits() : ManagerFruits
      {
         return this._managerFruits;
      }
      
      public function get managerSales() : ManagerSales
      {
         return this._managerSales;
      }
      
      public function get managerPeriodicFeatures() : ManagerPeriodicFeatures
      {
         return this._managerPeriodicFeatures;
      }
      
      public function get managerBreeding() : ManagerBreeding
      {
         return this._managerBreeding;
      }
      
      public function get managerWheelOfFortune() : ManagerWheelOfFortune
      {
         return this._managerWheelOfFortune;
      }
      
      public function get managerBoosters() : ManagerBoosters
      {
         return this._managerBoosters;
      }
      
      public function get managerHolidays() : ManagerHolidays
      {
         return this._managerHolidays;
      }
      
      public function onPopupShown(param1:FishaoBaseSwfDialog) : void
      {
         this._openedPopups.push(param1);
      }
      
      public function onPopupClosed(param1:FishaoBaseSwfDialog) : void
      {
         UtilsArray.removeValue(this._openedPopups,param1);
      }
      
      public function onConnectToWorld() : void
      {
         var _loc1_:ManagerBase = null;
         for each(_loc1_ in this._managers)
         {
            _loc1_.onConnectToWorld();
         }
         if(this._needStartTutorialAfterLoadData)
         {
            this._needStartTutorialAfterLoadData = false;
            this._managerTutorial.tryStartTutorialCommon();
         }
      }
      
      private function onManagerDataLoaded(param1:ServerResp) : void
      {
         --this._managersInitLeft;
         var _loc2_:String = getQualifiedClassName(param1);
         Cc.log("manager initialized with response " + _loc2_);
         if(this._managersInitLeft == 0)
         {
            Cc.log("all managers initialized");
            this.onAllManagersInitialized();
         }
      }
      
      private function onAllManagersInitialized() : void
      {
         var _loc1_:WorldListSwfDialog = app.dialogFactory.getWorldListSwfDialog();
         if(Debug.AUTO_SELECT_WORLD || this._managerWorlds.worldsList.length == 1)
         {
            _loc1_.onButtonOkClicked(this._managerWorlds.firstAvailableWorld,false);
         }
         else if(this._managerTutorial.isTutorialCommonComplete)
         {
            _loc1_.show();
         }
         else
         {
            _loc1_.onButtonOkClicked(this._managerWorlds.firstAvailableWorld,false);
         }
      }
      
      public function onLoginSuccess(param1:LoginSuccessResp) : void
      {
         app.user.emailActivation = param1.emailActivation;
         var _loc2_:LocationDialog = GameSwf.currentLocationDialog;
         if(_loc2_ != null)
         {
            if(_loc2_.locationModel != null && _loc2_.locationModel.isSublocation)
            {
               GameSwf.instance.closeSublocationDialog();
            }
         }
         if(param1.lang != Config.LANGUAGE)
         {
            Config.LANGUAGE = I18n.inspectLanguageCodeForExists(param1.lang);
            I18n.init(Config.LANGUAGE,Config.LANGUAGE_URL);
         }
         if(GameSwf.worldMap != null)
         {
            GameSwf.worldMap.titleUpdate();
         }
         this.initManagers();
         this.loadInitData();
      }
      
      public function loadInitData() : void
      {
         var _loc1_:ManagerBase = null;
         this._managersInitLeft = this._managers.length;
         for each(_loc1_ in this._managers)
         {
            _loc1_.loadInitData(Preloader.waitForResponse(this.onManagerDataLoaded));
         }
         this._managerFishes.getFishdexData();
      }
      
      private function init(param1:Event = null) : void
      {
         this._openedPopups = [];
         removeEventListener(Event.ADDED_TO_STAGE,this.init);
         stage.align = StageAlign.TOP_LEFT;
         stage.scaleMode = StageScaleMode.NO_SCALE;
         stage.addEventListener(FocusEvent.FOCUS_IN,onFocusIn);
         var _loc2_:ApplicationConfig = new ApplicationConfig();
         _loc2_.resourceManagerClass = FishaoResourceManager;
         _loc2_.dialogManagerClass = FishaoDialogManager;
         _loc2_.assetWrappersProcessor = new FishaoAssetWrappersProcessor(loaderInfo.applicationDomain);
         _loc2_.swfDialogURL = Config.DIALOG_SERVER + "data/swf/dialogs/";
         app = new FishaoApp(_loc2_);
         app.user.isGuest = Config.IS_GUEST;
         globalDispatcher.addEventListener(I18n.LANG_LOADED,this.onLangLoaded);
         Config.LANGUAGE = I18n.inspectLanguageCodeForExists(Config.LANGUAGE);
         I18n.init(Config.LANGUAGE,Config.LANGUAGE_URL);
         initGlobal();
      }
      
      private function initCheatProtection() : void
      {
         var onSpeedHack:Function = null;
         onSpeedHack = function(param1:Event):void
         {
            if(Boolean(app.user.username) && FishaoFscModelManager.fscModel.isConnected())
            {
               Cc.log("Disconnect by handleGlobalError event.error=6060.B (" + app.user.username + ")");
               sendReportToServer("6060.B");
               FishaoFscModelManager.fscModel.disconnect();
            }
         };
         var wd:CheatProtection = new CheatProtection();
         wd.init();
         wd.addEventListener(SecurityErrorEvent.SECURITY_ERROR,onSpeedHack);
      }
      
      private function initConfig() : void
      {
         var _loc1_:ContextMenu = null;
         this.initConsole(app);
         globalDispatcher.addEventListener(ErrorEvent.ERROR,onError);
         loaderInfo.uncaughtErrorEvents.addEventListener(UncaughtErrorEvent.UNCAUGHT_ERROR,handleGlobalErrors);
         Input.initialize(stage);
         stage.addEventListener(Event.DEACTIVATE,onDeactivate);
         stage.addEventListener(Event.ACTIVATE,onActivate);
         _loc1_ = new ContextMenu();
         _loc1_.hideBuiltInItems();
         this.contextMenu = _loc1_;
         UpdateManager.getInstance().init(stage);
         UpdateManager.getInstance().createGroup(UpdateGroup.TIMER_10M,1000 * 60 * 10);
         UpdateManager.getInstance().createGroup(UpdateGroup.TIMER_30S,30000);
         UpdateManager.getInstance().createGroup(UpdateGroup.TIMER_10S,10000);
         UpdateManager.getInstance().createGroup(UpdateGroup.TIMER_2S,2000);
         UpdateManager.getInstance().createGroup(UpdateGroup.TIMER_1S,1000);
         UpdateManager.getInstance().createGroup(UpdateGroup.TIMER_500,500);
         UpdateManager.getInstance().createGroup(UpdateGroup.TIMER_200,200);
         UpdateManager.getInstance().createGroup(UpdateGroup.ENTER_FRAME);
         UpdateManager.getInstance().getGroup(UpdateGroup.TIMER_500).add(this);
         Cc.logch(LOADING_CHANNEL,"UpdateManager.init() COMPLETE");
         Cc.explodech("config",Config);
         GameSwf.stage = this.stage;
         app.performanceManager.addStageActiveStateListeners(this.stage);
         instance = this;
         FishaoSoundManager.load();
         FishaoSoundManager.init();
         ToolTipManager.init(stage);
         MouseCursorManager.init(stage);
         addChild(PopupManager.GAME_FIELD_LAYER);
         addChild(PopupManager.DIALOG_LAYER);
         addChild(PopupManager.LOADING_SCREEN);
         addChild(PopupManager.TOP_LAYER);
         addChild(PopupManager.TUTORIAL_LAYER);
         addChild(ToolTipManager.TOOLTIP_LAYER);
         PopupManager.getInstance().init(globalDispatcher);
         FullScreenController.getInstance().init(globalDispatcher,stage,this);
         this.checkClientVersion(this.initGame);
      }
      
      private function checkClientVersion(param1:Function) : void
      {
         var loader:URLLoader = null;
         var onUpToDate:Function = param1;
         loader = new URLLoader();
         var onFailed:Function = function(param1:Event):void
         {
            Cc.warn("Client version check failed: " + param1);
            onUpToDate();
         };
         loader.addEventListener(Event.COMPLETE,function(param1:Event):void
         {
            var _loc2_:Object = null;
            try
            {
               _loc2_ = JSON.parse(String(loader.data));
            }
            catch(e:Error)
            {
            }
            if(Boolean(_loc2_ != null) && Boolean(_loc2_.minClient) && BuildConfig.isOlderThan(String(_loc2_.minClient)))
            {
               Cc.log("Client " + BuildConfig.VERSION + " is older than required " + _loc2_.minClient);
               showUpdateRequired(_loc2_.download);
               return;
            }
            onUpToDate();
         });
         loader.addEventListener(IOErrorEvent.IO_ERROR,onFailed);
         loader.addEventListener(SecurityErrorEvent.SECURITY_ERROR,onFailed);
         loader.load(new URLRequest(Config.SERVER + "version"));
      }
      
      private function showUpdateRequired(param1:String) : void
      {
         var downloadURL:String = param1;
         var dialog:ConnectionLostDialog = app.dialogFactory.getConnectionLostDialog();
         dialog.text = "A new version of FISHAO is available. Please update to keep playing.";
         dialog.refreshButton.label = "UPDATE";
         dialog.refreshButton.handler = function(param1:MouseEvent):void
         {
            if(downloadURL)
            {
               navigateToURL(new URLRequest(downloadURL));
            }
            NativeApplication.nativeApplication.exit();
         };
         dialog.show();
         PopupManager.GAME_FIELD_LAYER.visible = false;
         PopupManager.DIALOG_LAYER.visible = false;
         PopupManager.LOADING_SCREEN.visible = false;
      }
      
      private function initGame() : void
      {
         var loginHandler:LoadHandler = null;
         var charEditorHandler:LoadHandler = null;
         var worldMapHandler:LoadHandler = null;
         loginHandler = new LoadHandler(this.showLoginDialog,null,ExecutionQueue.LOGIN);
         ExecutionQueue.getInstance().addLoadHandler(loginHandler);
         charEditorHandler = new LoadHandler();
         charEditorHandler.executor = function():void
         {
            showCharacterEditor(true,[]);
         };
         charEditorHandler.itemType = ExecutionQueue.CHARACTER_EDITOR;
         ExecutionQueue.getInstance().addLoadHandler(charEditorHandler);
         worldMapHandler = new LoadHandler();
         worldMapHandler.itemType = ExecutionQueue.MAP;
         worldMapHandler.executor = showWorldMap;
         ExecutionQueue.getInstance().addLoadHandler(worldMapHandler);
         dispatchEvent(new Event(PreloadEvent.RESOURCES_LOADED));
         FishaoFscModelManager.getInstance().init();
         ExecutionQueue.getInstance().doQueue();
         this._fscModel = FishaoFscModelManager.fscModel;
         this._fscModel.addEventListener(ChatFscExtensionEvent.PUBLIC_MESSAGE,onChatPublicMessage);
         this._fscModel.addRequestHandler(FishCatchEmoticonResp,onFishCatchEmoticon);
         FishaoFscModelManager.fscModel.addRequestHandler(UpdateResp,this.updateResponseHandle);
         FishaoFscModelManager.fscModel.addRequestHandler(FishingResp,onFishingResp);
         FishaoFscModelManager.fscModel.addRequestHandler(ReportChangeStateResp,reportChangeStateRespHandler);
         FishaoFscModelManager.fscModel.addRequestHandler(FishBlocksAtLakesDataResp,onFishBlocksAtLakesDataResp);
         this._fscConnectionMediator = new FscConnectionMediator();
         this._fscConnectionMediator.init(this._fscModel,app.dialogFactory);
         charsManager.init(this._fscModel);
         globalDispatcher.dispatchEvent(new GameResizeEvent(Config.SCREEN_WIDTH,Config.SCREEN_HEIGHT));
         settings.init();
         dispatchEvent(new Event("initConfig"));
         this.initCheatProtection();
         DiscordPresence.start();
      }
      
      private function onLangLoaded(param1:Event) : void
      {
         globalDispatcher.removeEventListener(I18n.LANG_LOADED,this.onLangLoaded);
         this.initConfig();
         if(_worldMap != null)
         {
            _worldMap.titleUpdate();
         }
      }
      
      private function updateResponseHandle(param1:UpdateResp) : void
      {
         var response:UpdateResp = param1;
         var data:Object = null;
         var property:String = null;
         var fishingLog:String = null;
         try
         {
            if(app.user != null && this._managerMaintanence != null)
            {
               this._managerMaintanence.checkAndProcessMaintanence(response);
            }
            data = response.data;
            if(data == null)
            {
               return;
            }
            for(property in data)
            {
               if(data.hasOwnProperty(property))
               {
                  switch(property)
                  {
                     case "toSunRise":
                        LocationDayCycleLayers.toSunRise = response.getIntData(property);
                        break;
                     case "toSunSet":
                        LocationDayCycleLayers.toSunSet = response.getIntData(property);
                        break;
                     case "dayState":
                        LocationDayCycleLayers.isDayState = response.getIntData(property);
                        break;
                     case "selectedBait":
                        app.user.baitInfoId = response.getIntData(property);
                        break;
                     case "selectedUserRodId":
                        app.user.userRodId = response.getIntData(property);
                        break;
                     case "inventory":
                        app.user.inventory.update(response.getJsonData(property) as Array);
                        break;
                     case "fishcoins":
                        app.user.fishcoins = response.getIntData(property);
                        break;
                     case "level":
                        app.user.level = response.getIntData(property);
                        if(app.user.level > 1)
                        {
                           app.user.oldLevel = app.user.level - 1;
                        }
                        break;
                     case "fishbucks":
                        app.user.fishbucks = response.getIntData(property);
                        break;
                     case "experience":
                        if(!response.hasDataProperty("fish_caught"))
                        {
                           app.user.experience = response.getIntData(property);
                        }
                        break;
                     case "settings":
                        settings.updateByResponse(response.getJsonData(property));
                        break;
                     case "amountOfNewReports":
                        app.moderatorModel.amountOfNewReports.value = response.getIntData(property);
                        break;
                     case "fishingLog":
                        fishingLog = response.getStringData(property);
                        fishingLog = "------- FISHING CALCULATION: ------------\n" + fishingLog + "\n-----------------------------------------";
                        Cc.logch("fishing",fishingLog);
                        break;
                     case "dailyQuestsComplete":
                        app.user.needToShowDailyQuestsComplete = true;
                        break;
                     case "unreadPrivateMessages":
                        app.user.unreadPMNumber = response.getIntData(property);
                        break;
                     case "spendings":
                        app.user.spendings = Number(response.getStringData("spendings"));
                  }
               }
            }
            if(response.hasDataProperty("prevExpLimit") && response.hasDataProperty("nextExpLimit"))
            {
               app.user.nextExpLimit = response.getIntData("nextExpLimit");
               app.user.prevExpLimit = response.getIntData("prevExpLimit");
            }
         }
         catch(e:Error)
         {
            Cc.error("GameSwf.updateResponseHandle ERROR",e);
            sendReportToServer("updateResp");
         }
      }
      
      private function initConsole(param1:FishaoApp) : void
      {
         if(BuildConfig.isProd())
         {
            Cc.startOnStage(this,"<fishadminconsoledebug>",true);
            Cc.config.enableKeystroke = true;
         }
         else
         {
            Cc.startOnStage(this," ",true);
            Cc.config.enableKeystroke = true;
         }
         FscConnection.slowConnectionEmulator = false;
         Cc.config.commandLineAllowed = true;
         Cc.config.tracing = true;
         Cc.commandLine = true;
         Cc.height = 200;
         Cc.width = 450;
         globalLogger = new CcLogger();
         DisplayMapAddon.addToMenu();
         WatchAddon.addToMenu();
         CcCommands.initCommands(this);
         BinaryLoaderRepeatable.logger = loadingLogger;
         if(Debug.INCREASE_MOVEMENT_SPEED)
         {
            PathMoveStrategy.maxSpeed = KeyboardMoveStrategy.maxSpeed = 30;
         }
      }
      
      public function exitFromAllLocations() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = false;
         Cc.log("GameSwf::exitFromAllLocations()");
         if(_currentLocationDialog == null)
         {
            return;
         }
         if(worldMap != null)
         {
            worldMap.visible = true;
         }
         if(_currentSublocationDialog != null)
         {
            _loc1_ = _currentSublocationDialog.locationModel.isSublocation;
            _loc2_ = _currentSublocationDialog.locationModel.isTournament;
            if(_currentSublocationDialog != null)
            {
               _currentSublocationDialog.close();
               _currentSublocationDialog = null;
            }
            if(_loc1_)
            {
               FishaoFscModelManager.locationExtension.leaveSublocation(false,Preloader.waitForResponse(showWorldMapOnLeaveResp));
            }
            if(_loc2_)
            {
               FishaoFscModelManager.locationExtension.leaveLocation(Preloader.waitForResponse(showWorldMapOnLeaveResp));
            }
         }
         else
         {
            if(_currentLocationDialog != null)
            {
               _currentLocationDialog.close();
               _currentLocationDialog = null;
            }
            if(_privateHouseDialog != null)
            {
               _privateHouseDialog.close();
               _privateHouseDialog = null;
            }
            else
            {
               FishaoFscModelManager.locationExtension.leaveLocation(Preloader.waitForResponse(showWorldMapOnLeaveResp));
            }
         }
      }
      
      public function exitFromAllLocations2() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = false;
         Cc.log("GameSwf::exitFromAllLocations()");
         if(_currentLocationDialog == null)
         {
            return;
         }
         worldMap.visible = true;
         if(_currentSublocationDialog != null)
         {
            _loc1_ = _currentSublocationDialog.locationModel.isSublocation;
            _loc2_ = _currentSublocationDialog.locationModel.isTournament;
            if(_currentSublocationDialog != null)
            {
               _currentSublocationDialog.close();
               _currentSublocationDialog = null;
            }
            if(_loc1_)
            {
               FishaoFscModelManager.locationExtension.leaveSublocation(false,Preloader.waitForResponse(showWorldMapOnLeaveResp));
            }
            if(_loc2_)
            {
               FishaoFscModelManager.locationExtension.leaveLocation(Preloader.waitForResponse(showWorldMapOnLeaveResp));
            }
         }
         else
         {
            if(_currentLocationDialog != null)
            {
               _currentLocationDialog.close();
               _currentLocationDialog = null;
            }
            if(_privateHouseDialog != null)
            {
               _privateHouseDialog.close();
               _privateHouseDialog = null;
            }
            else
            {
               FishaoFscModelManager.locationExtension.leaveLocation(showWorldMapOnLeaveResp);
            }
         }
      }
      
      public function showLoginDialog() : void
      {
         this._loginDialog = app.dialogFactory.getLoginDialog();
         this._loginDialog.show();
         showWorldMap();
         this.initAnimatedCharacters();
      }
      
      public function showGuestBlockedActionDialog() : void
      {
         if(this._loginDialog == null)
         {
            this._loginDialog = app.dialogFactory.getLoginDialog();
         }
         this._loginDialog.show();
      }
      
      private function initManagers() : void
      {
         this.tryCleanupManagers();
         this._managers = [];
         this._managerAnnouncements = new ManagerAnnouncements();
         this._managers.push(this._managerAnnouncements);
         this._managerClubs = new ManagerClubs();
         this._managers.push(this._managerClubs);
         this._managerMonsterFishes = new ManagerMonsterFishes();
         this._managers.push(this._managerMonsterFishes);
         this._managerFurnitureFactory = new ManagerFurnitureFactory();
         this._managers.push(this._managerFurnitureFactory);
         this._managerInterior = new ManagerInterior();
         this._managers.push(this._managerInterior);
         this._managerLocation = new ManagerLocation();
         this._managers.push(this._managerLocation);
         this._managerWorlds = new ManagerWorlds();
         this._managers.push(this._managerWorlds);
         this._managerFishingLine = new ManagerFishingLine();
         this._managers.push(this._managerFishingLine);
         this._managerMoneyTree = new ManagerMoneyTree();
         this._managers.push(this._managerMoneyTree);
         this._managerEvents = new ManagerEvents();
         this._managers.push(this._managerEvents);
         this._managerTournaments = new ManagerTournaments();
         this._managers.push(this._managerTournaments);
         this._managerMaintanence = new ManagerMaintenance();
         this._managers.push(this._managerMaintanence);
         this._managerFishes = new ManagerFishes();
         this._managers.push(this._managerFishes);
         this._managerFeatures = new ManagerFeatures();
         this._managers.push(this._managerFeatures);
         this._managerFeaturesTemporary = new ManagerFeaturesTemporary();
         this._managers.push(this._managerFeaturesTemporary);
         this._managerTrade = new ManagerTrade();
         this._managers.push(this._managerTrade);
         this._managerQuests = new ManagerQuests();
         this._managers.push(this._managerQuests);
         this._managerCollections = new ManagerCollections();
         this._managers.push(this._managerCollections);
         this._managerPlayers = new ManagerPlayers();
         this._managers.push(this._managerPlayers);
         this._managerSales = new ManagerSales();
         this._managers.push(this._managerSales);
         this._managerPeriodicFeatures = new ManagerPeriodicFeatures();
         this._managers.push(this._managerPeriodicFeatures);
         this._managerTutorial = new ManagerTutorial();
         this._managers.push(this._managerTutorial);
         this._managerFruits = new ManagerFruits();
         this._managers.push(this._managerFruits);
         this._managerBreeding = new ManagerBreeding();
         this._managers.push(this._managerBreeding);
         this._managerWheelOfFortune = new ManagerWheelOfFortune();
         this._managers.push(this._managerWheelOfFortune);
         this._managerBoosters = new ManagerBoosters();
         this._managers.push(this._managerBoosters);
         this._managerHolidays = new ManagerHolidays();
         this._managers.push(this._managerHolidays);
         this.postInit();
      }
      
      private function postInit() : void
      {
         var _loc1_:ManagerBase = null;
         for each(_loc1_ in this._managers)
         {
            _loc1_.postInit();
         }
      }
      
      public function showEmailActivationDialog() : void
      {
         if(this._emailActivationDialog == null)
         {
            this._emailActivationDialog = app.dialogFactory.getEmailActivationDialog();
         }
         this._emailActivationDialog.show();
      }
      
      public function showCharacterEditor(param1:Boolean, param2:Object) : void
      {
         if(this._charEditorLoader == null)
         {
            this.initCharacterEditor(Config.CHARACTER_EDITOR_URL);
         }
         var _loc3_:Boolean = Boolean(app.user.isGuest);
         var _loc4_:int = Config.CAMPAIGN_REC_ID;
         if(param1 && _loc4_ != 0 && !_loc3_)
         {
            app.user.useCampaignLeadClicktag.activate();
            this._charEditorLoader.addEventListener(Event.CLOSE,this.onCharacterEditorAsNewLeadClose);
         }
         this._charEditorLoader.show(this,param1,param2);
      }
      
      public function updateCharacterEditor() : void
      {
         this._charEditorLoader.updateCharacterEditor();
      }
      
      private function onCharacterEditorAsNewLeadClose(param1:Event) : void
      {
         this._charEditorLoader.removeEventListener(Event.CLOSE,this.onCharacterEditorAsNewLeadClose);
         app.user.inspectCampaignLeadClicktag();
      }
      
      public function showSettingsDialog() : void
      {
         var _loc1_:TutorialInfo = this._managerTutorial.getTutorial(ETutorialType.ETT_CHANGE_CHARACTER);
         if(_loc1_ != null && _loc1_.isInProgress)
         {
            this._settingsDialog = app.dialogFactory.getSettingsDialogTutorial();
         }
         else
         {
            this._settingsDialog = app.dialogFactory.getSettingsDialog();
         }
         this._settingsDialog.show();
      }
      
      public function closeSettingsDialog() : void
      {
         if(this._settingsDialog != null && this._settingsDialog.isShowed)
         {
            this._settingsDialog.close();
         }
      }
      
      public function get charEditorLoader() : CharacterEditorSwfLoader
      {
         return this._charEditorLoader;
      }
      
      public function initAnimatedCharacters() : void
      {
         if(this._animatedCharacter == null || !this._animatedCharacter.isLoaded || !this._animatedCharacter.isLoading)
         {
            this._animatedCharacter = new AnimatedCharacterLoader(Config.ANIMATED_CHARACTERS_URL);
         }
      }
      
      public function showCharacterDialog(param1:Object, param2:Object, param3:String) : void
      {
         app.sid = param3;
         param1.isNew = param1.isNew == "true" || param1.isNew == true;
         app.user.handleCharViewDataIsNewStatus(param1.isNew);
         app.char.fromObject(param1);
         if(param1.isNew)
         {
            this.showCharacterEditor(param1.isNew,param2);
         }
         else if(!this._managerTutorial.isTutorialCommonComplete && !this._managerTutorial.tutorialCommon.isInProgress)
         {
            this._managerTutorial.tryStartTutorialCommon();
         }
      }
      
      public function initCharacterEditor(param1:String) : void
      {
         this._charEditorLoader = new CharacterEditorSwfLoader(param1);
      }
      
      public function enterToLocation(param1:int) : void
      {
         Cc.log("GameSwf.enterToLocation(id=" + param1 + ")");
         if(_currentLocationDialog != null)
         {
            _currentLocationDialog.close();
            _currentLocationDialog = null;
         }
         var _loc2_:LocationModel = FactoryLocationModel.createLocationModel(param1);
         _currentLocationDialog = FactoryLocation.createLocation(param1,_loc2_);
         _currentLocationDialog.show();
         if(_worldMap != null && _worldMap.parent != null)
         {
            _worldMap.parent.removeChild(_worldMap);
         }
      }
      
      public function enterToTournament(param1:int) : void
      {
         Cc.log("enterToTournament(locationId:" + param1 + ")");
         if(_currentSublocationDialog != null)
         {
            this._lastEnterTournamentId = param1;
            if(_currentSublocationDialog != null)
            {
               _currentSublocationDialog.close();
               _currentSublocationDialog = null;
            }
            FishaoFscModelManager.locationExtension.leaveSublocation(true,Preloader.waitForResponse(this.onEnterToTournamentLeaveSublocationResp));
         }
         else if(_currentLocationDialog != null)
         {
            _currentLocationDialog.suspend(onLocationSuspendComplete,param1);
         }
      }
      
      private function onEnterToTournamentLeaveSublocationResp(param1:ServerResp) : void
      {
         if(param1 is LeaveSublocationResp)
         {
            _currentLocationDialog.wakeUp();
            if(_currentLocationDialog != null)
            {
               _currentLocationDialog.suspend(onLocationSuspendComplete,this._lastEnterTournamentId);
            }
         }
      }
      
      public function enterToSublocation(param1:int, param2:int) : void
      {
         if(_currentLocationDialog != null)
         {
            if(param1 == -1)
            {
               if(_currentSublocationDialog != null)
               {
                  _currentSublocationDialog.close();
                  _currentSublocationDialog = null;
                  FishaoFscModelManager.locationExtension.leaveSublocation(false,Preloader.waitForResponse(this.onLeaveSublocationResp));
               }
            }
            else
            {
               _currentLocationDialog.suspend(onLocationSuspendComplete,param1,param2);
            }
         }
         else
         {
            onLocationSuspendComplete(param1,param2);
         }
      }
      
      private function onLeaveSublocationResp(param1:ServerResp) : void
      {
         if(param1 is LeaveSublocationResp)
         {
            this.closeSublocationDialog();
         }
      }
      
      public function closeSublocationDialog() : void
      {
         if(_currentSublocationDialog != null)
         {
            _currentSublocationDialog.close();
            _currentSublocationDialog = null;
         }
         _currentLocationDialog.wakeUp();
      }
      
      public function showInventoryWindow(param1:ResourceType = null) : void
      {
         var _loc2_:InventorySwfDialog = null;
         if(this._managerTutorial.isAnyTutorialInProgress)
         {
            _loc2_ = app.dialogFactory.getInventorySwfDialogTutorial();
         }
         else
         {
            _loc2_ = app.dialogFactory.getInventorySwfDialog();
         }
         if(_loc2_ != null)
         {
            if(param1 == null)
            {
               _loc2_.show();
            }
            else
            {
               _loc2_.showTabByResType(param1);
            }
         }
      }
      
      public function showBuyEnergyWindow(param1:MouseEvent = null) : void
      {
         if(GameSwf.inspectGuestLockedAction())
         {
            return;
         }
         FishaoFscModelManager.buyEnergyExtension.getPriceList(onEnergyPriceListLoaded);
      }
      
      public function update(param1:uint, param2:uint) : void
      {
         Watch.change("fps.avg",app.performanceManager.fps);
         Watch.change("fps.exe",app.performanceManager.averageNumber);
         Watch.change("fps.time",app.performanceManager.lowQualityTime);
         Watch.change("isGuest",app.user.isGuest);
         Watch.change("isFirstLoginAfterRegistration",app.user.isFirstLoginAfterRegistration);
         Watch.change("CAMPAIGN_REC_ID",Config.CAMPAIGN_REC_ID);
      }
      
      public function showBuyFishcoinsDialog(param1:MouseEvent = null) : void
      {
         this.showBuyCurrencyDialog(ECurrencyType.ECT_FISHCOINS,ResourceType.FISHCOINS.name);
      }
      
      public function showBuyFishbucksDialog(param1:MouseEvent = null) : void
      {
         this.showBuyCurrencyDialog(ECurrencyType.ECT_FISHBUCKS,ResourceType.FISHBUCKS.name);
      }
      
      private function showBuyCurrencyDialog(param1:int, param2:String) : void
      {
      }
      
      public function showTradeFishSwfDialog(param1:MouseEvent = null) : void
      {
         if(GameSwf.inspectGuestLockedAction())
         {
            return;
         }
         this.tradeDialog = app.dialogFactory.getTradeFishSwfDialog();
         this.tradeDialog.show();
      }
      
      public function showTradeDecorationSwfDialog(param1:MouseEvent = null) : void
      {
         if(GameSwf.inspectGuestLockedAction())
         {
            return;
         }
         if(param1 != null)
         {
            param1.stopPropagation();
         }
         var _loc2_:TradeDecorationSwfDialog = app.dialogFactory.getTradeDecorationSwfDialog();
         _loc2_.show();
      }
      
      public function showAvailableFishMarketDialog(param1:MouseEvent = null) : void
      {
         var _loc2_:FishMarketAvailableSwfDialog = app.dialogFactory.getFishMarketAvailableSwfDailog();
         _loc2_.show();
      }
      
      public function showShopDialog(param1:int = 0, param2:int = 0) : void
      {
         var _loc3_:ShopSwfDialog = null;
         if(this._managerTutorial.isAnyTutorialInProgress)
         {
            _loc3_ = app.dialogFactory.getShopSwfDialogTutorial();
         }
         else if(!GameSwf.inspectGuestLockedAction())
         {
            _loc3_ = app.dialogFactory.getShopSwfDialog();
         }
         if(_loc3_ != null)
         {
            _loc3_.selectTabIdOnLoad(param1);
            _loc3_.selectItemIdOnLoad(param2);
            _loc3_.show();
         }
      }
      
      public function get gameSettings() : SettingsModel
      {
         return settings.getSettings();
      }
      
      public function stopFishing() : void
      {
         var _loc1_:LocationDialog = GameSwf.currentLocationDialog;
         if(_loc1_ != null && _loc1_.isActive())
         {
            _loc1_.stopFishing();
         }
      }
      
      public function enterPrivateHouse(param1:String, param2:Boolean = false) : void
      {
         if(!param2)
         {
            if(!this._managerTutorial.isTutorialCommonComplete)
            {
               return;
            }
         }
         if(_currentLocationDialog != null)
         {
            _currentLocationDialog.suspend(null);
         }
         if(param1 != app.user.username)
         {
            this.lastVirtualLocationID = 400;
         }
         else
         {
            this.lastVirtualLocationID = 300;
         }
         var _loc3_:LocationModelPrivateHouse = FactoryLocationModel.createSublocationModel(this._lastVirtualLocationID) as LocationModelPrivateHouse;
         _loc3_.setOwnerUsername(param1);
         _privateHouseDialog = FactoryLocation.createSublocation(this._lastVirtualLocationID,_loc3_) as LocationDialogPrivateHouse;
         if(worldMap != null)
         {
            worldMap.stopMapUpdate();
            worldMap.visible = false;
         }
         _privateHouseDialog.show();
      }
      
      public function enterClubArea() : void
      {
         if(_currentLocationDialog != null)
         {
            _currentLocationDialog.suspend(null);
         }
         var _loc1_:int = LocationConfig.CLUB_AREA.id;
         var _loc2_:LocationModel = FactoryLocationModel.createSublocationModel(_loc1_);
         if(_currentLocationDialog != null)
         {
            _loc2_.prevLocationID = _currentLocationDialog.locationModel.id;
         }
         _currentSublocationDialog = FactoryLocation.createSublocation(_loc1_,_loc2_);
         if(worldMap != null)
         {
            worldMap.stopMapUpdate();
            worldMap.visible = false;
         }
         _currentSublocationDialog.show();
      }
      
      public function get lastLocationId() : int
      {
         return this._lastLocationId;
      }
      
      public function set lastVirtualLocationID(param1:int) : void
      {
         this._lastVirtualLocationID = param1;
      }
      
      public function set lastLocationId(param1:int) : void
      {
         this._lastLocationId = param1;
      }
      
      public function exitVirtualLocationThroughDoor(param1:int) : void
      {
         var _loc2_:LocationModel = null;
         if(_currentLocationDialog == null)
         {
            _loc2_ = FactoryLocationModel.createLocationModel(param1);
            _currentLocationDialog = FactoryLocation.createLocation(param1,_loc2_);
         }
         _currentLocationDialog.show();
         var _loc3_:LocationModelOnVirtualWorld = currentLocationDialog.locationModel as LocationModelOnVirtualWorld;
         if(_loc3_ != null)
         {
            _loc3_.exitThroughTheDoor = true;
         }
         this.tryCloseVirtualLocation();
      }
      
      public function exitVirtualLocationViaMap() : void
      {
         if(_currentLocationDialog == null)
         {
            return;
         }
         var _loc1_:LocationModelOnVirtualWorld = currentLocationDialog.locationModel as LocationModelOnVirtualWorld;
         if(_loc1_ != null)
         {
            _loc1_.exitThroughTheDoor = false;
         }
         this.tryCloseVirtualLocation();
      }
      
      private function tryCloseVirtualLocation() : void
      {
         if(_privateHouseDialog != null)
         {
            _privateHouseDialog.close();
            _privateHouseDialog = null;
         }
         else if(_currentSublocationDialog != null)
         {
            _currentSublocationDialog.close();
            _currentSublocationDialog = null;
         }
      }
      
      public function enterToLocationAfterLeavingVirtual() : void
      {
         if(_worldMap == null)
         {
            return;
         }
         _worldMap.stopMapUpdate();
         FishaoSoundManager.stopCurrentAmbientMusic();
         if(_currentLocationDialog != null)
         {
            _currentLocationDialog.wakeUp();
            this.needSetPositionAfterExitVirtualLocation = true;
            this.setPositionAfterExitVirtualLocation();
         }
         if(_worldMap.parent != null)
         {
            _worldMap.parent.removeChild(_worldMap);
         }
         _worldMap.deactivate();
      }
      
      public function setPositionAfterExitVirtualLocation() : void
      {
         _currentLocationDialog.setPositionAfterExitVirtualLocation(this._lastVirtualLocationID);
      }
      
      public function stopBoosterEffect(param1:String, param2:Boolean) : void
      {
         var _loc3_:uint = 0;
         if(!app.user.isInfluencedOf(param1))
         {
            return;
         }
         app.user.setIsInfluencedOf(param1,false);
         var _loc4_:int = ResourceType.getBoosterResourceID(param1);
         tryRemoveWidget(_loc4_);
         if(param1 == EBoosterType.EBT_RADAR)
         {
            radarType = 0;
            if(_currentSublocationDialog != null)
            {
               _currentSublocationDialog.removeFishingZones();
            }
            if(_currentLocationDialog != null)
            {
               _currentLocationDialog.removeFishingZones();
            }
            if(_privateHouseDialog != null)
            {
               _privateHouseDialog.removeFishingZones();
            }
         }
         if(param2)
         {
            _loc3_ = EPlingType.getBoosterEndPlingType(param1);
            FishaoFscModelManager.useItemsExtension.showPlingEndBooster(_loc3_);
         }
         GameSwf.instance.managerBoosters.removeBoosterByType(param1);
      }
      
      public function getOpenedPopup(param1:Class) : FishaoBaseSwfDialog
      {
         var _loc2_:FishaoBaseSwfDialog = null;
         var _loc3_:FishaoBaseSwfDialog = null;
         for each(_loc2_ in this._openedPopups)
         {
            if(_loc2_ is param1)
            {
               _loc3_ = _loc2_;
               break;
            }
         }
         return _loc3_;
      }
      
      private function tryCleanupManagers() : void
      {
         var _loc1_:ManagerBase = null;
         if(this._managers == null)
         {
            return;
         }
         for each(_loc1_ in this._managers)
         {
            _loc1_.cleanup();
         }
         this._managers = null;
      }
   }
}

