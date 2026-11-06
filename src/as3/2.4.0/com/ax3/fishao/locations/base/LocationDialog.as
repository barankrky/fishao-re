package com.ax3.fishao.locations.base
{
   import com.ax3.AnimatedCharacterLoader;
   import com.ax3.display.dialog.IBaseDialog;
   import com.ax3.events.Listeners;
   import com.ax3.events.VariableChangeEvent;
   import com.ax3.fishao.Config;
   import com.ax3.fishao.EResourceID;
   import com.ax3.fishao.FishaoFscModelManager;
   import com.ax3.fishao.ResourceType;
   import com.ax3.fishao.control.managers.FishaoSoundManager;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.debug.Watch;
   import com.ax3.fishao.display.Gui;
   import com.ax3.fishao.display.dialogs.FriendsHouseListSwfDialog;
   import com.ax3.fishao.display.dialogs.LoadingScreen;
   import com.ax3.fishao.display.dialogs.MessageDialog;
   import com.ax3.fishao.display.dialogs.ReloadDialog;
   import com.ax3.fishao.display.panels.CollectionsGirlWidget;
   import com.ax3.fishao.display.panels.DailyQuestManWidget;
   import com.ax3.fishao.display.panels.MissionsUncleSamWidget;
   import com.ax3.fishao.entries.LocationUser;
   import com.ax3.fishao.events.CharManagerEvent;
   import com.ax3.fishao.events.LocationDialogEvent;
   import com.ax3.fishao.events.LocationModelEvent;
   import com.ax3.fishao.locations.*;
   import com.ax3.fishao.locations.base.daycycle.EDayCycleState;
   import com.ax3.fishao.locations.base.daycycle.LocationDayCycleLayers;
   import com.ax3.fishao.locations.chars.BoatMoveStrategy;
   import com.ax3.fishao.locations.chars.CharStateType;
   import com.ax3.fishao.locations.chars.ForceMoveStrategy;
   import com.ax3.fishao.locations.chars.KeyboardMoveStrategy;
   import com.ax3.fishao.locations.chars.commands.ReelInFishingCommand;
   import com.ax3.fishao.locations.decorationMarket.LocationDialogDecorationMarket;
   import com.ax3.fishao.locations.entries.FieldChar;
   import com.ax3.fishao.locations.entries.PlayerChar;
   import com.ax3.fishao.locations.items.LocationItems;
   import com.ax3.fishao.locations.npc.base.NPC;
   import com.ax3.fishao.locations.objects.FrozenLake;
   import com.ax3.fishao.locations.objects.boat.Boat;
   import com.ax3.fishao.locations.privateHouse.LocationDialogPrivateHouse;
   import com.ax3.fishao.locations.privateHouse.LocationModelPrivateHouse;
   import com.ax3.fishao.locations.sublocation.SublocationEnter;
   import com.ax3.fishao.locations.sublocation.SublocationModel;
   import com.ax3.fishao.locations.weather.WeatherType;
   import com.ax3.fishao.managers.PerformanceManager;
   import com.ax3.fishao.model.FishInfo;
   import com.ax3.fishao.model.TimerMark;
   import com.ax3.fishao.model.character.CharViewConfig;
   import com.ax3.fishao.model.info.BuildConfig;
   import com.ax3.fishao.model.missions.Mission;
   import com.ax3.fishao.tutorial.TutorialHelpers;
   import com.ax3.fishao.tutorial.views.dialogs.caught.DialogTutorialCaught;
   import com.ax3.fishao.tutorial.views.gui.GuiTutorial;
   import com.ax3.fishao.utils.ErrorManager;
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.utils.Preloader;
   import com.ax3.fishao.utils.Utils;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs.BreederRexFishSwfDialog;
   import com.ax3.fishao.view.dialogs.FishaoBaseDialog;
   import com.ax3.fishao.view.dialogs.FishdexSwfDialog;
   import com.ax3.fishao.view.dialogs.NewLevelSwfDialog;
   import com.ax3.fishao.view.dialogs.PopupManager;
   import com.ax3.fishao.view.dialogs.TopPlayersSwfDialog;
   import com.ax3.fishao.view.dialogs.base.controllers.implementations.countdown.DialogCountdown;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces.EControllerUpdate;
   import com.ax3.fishao.view.dialogs.base.views.implementations.countdown.ECountdownType;
   import com.ax3.fishao.view.dialogs.caught.DialogCaught;
   import com.ax3.fishao.view.dialogs.holidays.model.ManagerHolidays;
   import com.ax3.fishao.view.dialogs.holidays.model.base.EHolidayItemType;
   import com.ax3.fishao.view.dialogs.holidays.model.base.EHolidayType;
   import com.ax3.fishao.view.dialogs.holidays.model.base.HolidayItems;
   import com.ax3.fishao.view.dialogs.holidays.model.christmas.HolidayChristmas;
   import com.ax3.fishao.view.dialogs.holidays.model.halloween.HolidayHalloween;
   import com.ax3.fishao.view.dialogs.maintenance.ManagerMaintenance;
   import com.ax3.fishao.view.dialogs.missions.MissionCompletedSwfDialog;
   import com.ax3.fishao.view.dialogs.moneyTree.DialogMoneyTree;
   import com.ax3.fishao.view.dialogs.string.EStringType;
   import com.ax3.fishao.view.dialogs.tournaments.DialogTournamentResults;
   import com.ax3.fishao.watercraft.Raft;
   import com.ax3.geom.GraphPoint;
   import com.ax3.jss.model.FishaoFscModel;
   import com.ax3.jss.requests.server.ServerResp;
   import com.ax3.managers.GridManagerObject;
   import com.ax3.net.BinaryLoaderRepeatable;
   import com.ax3.net.LoadingIndicator;
   import com.ax3.utils.AverageNumber;
   import com.ax3.utils.Callback;
   import com.ax3.utils.Input;
   import com.ax3.utils.TimeConverter;
   import com.ax3.utils.emptyVector;
   import com.ax3.utils.math.limit;
   import com.ax3.utils.removeAllChildren;
   import com.ax3.utils.removeFromParent;
   import com.ax3.utils.timer.IUpdate;
   import com.ax3.utils.timer.SingleAlarm;
   import com.ax3.utils.timer.UpdateGroup;
   import com.ax3.utils.timer.UpdateManager;
   import com.inkora.tween.TweenCube;
   import com.junkbyte.console.Cc;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.TimerEvent;
   import flash.filters.BitmapFilterQuality;
   import flash.filters.GlowFilter;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.net.URLRequest;
   import flash.text.TextField;
   import flash.ui.Keyboard;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   import flash.utils.getTimer;
   import flash.utils.setTimeout;
   import flashx.textLayout.formats.TextAlign;
   import protocol.api.base.ResponseWithData;
   import protocol.api.boat.enter.ResponseBoatEnter;
   import protocol.api.boat.move.ResponseBoatMove;
   import protocol.api.boat.release.ResponseBoatRelease;
   import protocol.api.npc.talk.ResponseNpcTalk;
   import protocol.cr.debugging.GetFishBlockAtLakesReq;
   import protocol.sr.DamianActionResp;
   import protocol.sr.EnterRaftResp;
   import protocol.sr.EnterSublocationSuccessResp;
   import protocol.sr.IglooListResp;
   import protocol.sr.LeaveSublocationResp;
   import protocol.sr.UpdateResp;
   import protocol.sr.debugging.FishBlocksAtLakesDataResp;
   
   public class LocationDialog extends FishaoBaseDialog implements IBaseDialog, IUpdate
   {
      
      public static const CLOSED_CAUGHT_DIALOG:String = "closedCaughtDialog";
      
      public static const END_EXP_TWEEN:String = "endExpTween";
      
      private static const SPECIAL_WALL_EXIT:Point = new Point(3430,340);
      
      private static const KEY_LAND_EXIT:Point = new Point(3670,1300);
      
      private static const MOVE_TO_ADAM:Point = new Point(1950,350);
      
      private static const MOVE_TO_SETH:Point = new Point(1300,900);
      
      private static const MOVE_TO_EXIT_FROM_PRIVATE_HOUSE:Point = new Point(2940,350);
      
      private static const MOVE_TO_SUBLOCATION:Array = [new Point(1800,100),new Point(3576,1170),new Point(1957,270),new Point(1060,760),new Point(2510,980),new Point(915,1750),new Point(300,1250),new Point(10,2425),new Point(155,220),new Point(1050,65),new Point(1380,1530),new Point(0,0),new Point(2475,605)];
      
      private static const MOVE_FROM_SUBLOCATION:Array = [new Point(1800,350),new Point(3576,1270),new Point(1957,370),new Point(1240,910),new Point(2510,1200),new Point(915,1880),new Point(300,1410),new Point(1395,1700),new Point(255,300),new Point(1600,1100),new Point(1450,1620),new Point(0,0),new Point(2475,705)];
      
      private static const MOVE_UP_IN_SUBLOCATION:int = 50;
      
      private static const MOVE_DOWN_OUT_SUBLOCATION:int = 100;
      
      public static const PRIVATE_HOUSE_HEIGHT_WITH_WALL:int = 800;
      
      public static const PRIVATE_HOUSE_GARDEN_HEIGHT:int = 800;
      
      public static const PRIVATE_HOUSE_HEIGHT_WITHOUT_WALL:int = 600;
      
      public static const PRIVATE_HOUSE_WALL_HEIGHT:int = PRIVATE_HOUSE_HEIGHT_WITH_WALL - PRIVATE_HOUSE_HEIGHT_WITHOUT_WALL;
      
      public static const PRIVATE_HOUSE_CENTER_DOOR_X_MIN:int = 240;
      
      public static var DEBUG_LAYER:Sprite = new Sprite();
      
      public static var isFishMarketOpen:Boolean = false;
      
      private static const GOOD_FISHING_SPOTS:Array = [74,75,76,77,78,79,80,81,82,63,64,45,26,7,11,30,48,65,66,83,84,85,86,87,88,89,90,91];
      
      public static const SCREEN_PADDING:int = 30;
      
      private static var globalInstanceId:int = 0;
      
      private static const MINIMAL_SUBLOCATION_ENTER_TIME_SEC:int = 1;
      
      public static var _d_charPositionLayer:Sprite = new Sprite();
      
      public static var NEW_MOVEMENT:int = 0;
      
      protected var _tutorialHelpers:TutorialHelpers;
      
      protected var _locationLoadComplete:Boolean;
      
      private var _missionsUncleSamWidget:MissionsUncleSamWidget;
      
      private var _collectionsGirlWidget:CollectionsGirlWidget;
      
      private var _dailyQuestManWidget:DailyQuestManWidget;
      
      public var locationModel:LocationModel;
      
      protected var _loadingIndicator:LoadingIndicator;
      
      private var _loader:BinaryLoaderRepeatable;
      
      protected var _locationLayersBase:LocationLayers;
      
      protected var _obstacleMap:BitmapData;
      
      protected var _lakeObstacleMap:BitmapData;
      
      private var _soundMap:BitmapData;
      
      private var _landingMap:BitmapData;
      
      protected var _charList:Dictionary;
      
      protected var _gui:Gui;
      
      protected var _playerChar:PlayerChar;
      
      private const POSITION_UPDATE_DELAY_MS:int = 500;
      
      private var _lastPositionChangeTimestampMS:int = 0;
      
      protected var _scrollRect:Rectangle;
      
      private var _animatedCharacter:AnimatedCharacterLoader;
      
      private var listenerCount:int = 0;
      
      private var _showFishBlocks:Boolean = false;
      
      protected var _animatedCharacterIsLoaded:Boolean = false;
      
      private var _energyRestoreTimer:Timer = new Timer(1000);
      
      private var _energyRestoreTimeLeft:int = 0;
      
      private var _lastPositionInspectionMS:uint;
      
      private var _lastSublocationEnter:SublocationEnter;
      
      private var _lastSublocationEnterFix:SublocationEnter;
      
      protected var _playerMakeAnyMove:Boolean = false;
      
      private var instanceId:int;
      
      private var _steveMinigameCountdown:DialogCountdown;
      
      private var _bobsMinigameAlarm:SingleAlarm;
      
      private var _topPlayers:Array;
      
      private var _restrictEnterToSublocation:Array = [];
      
      protected var _programmedCharMoveTarget:Point;
      
      protected var _programmedCharMoveTargetNPC:NPC;
      
      private var _sublocationID:int;
      
      private var _moveToSublocation:Boolean;
      
      private var _firstMoveInSublocation:Boolean;
      
      private var _isOpenFriendsDoor:Boolean = false;
      
      private var _needSendRotation:Boolean = false;
      
      protected var _waitForViewLoadUsernames:Array = [];
      
      private var _pointSounds:Vector.<PositionSoundMediator>;
      
      private var _active:Boolean;
      
      private var _countdownDialog:DialogCountdown;
      
      protected var _needToShowMissionCompletedDialog:Boolean = false;
      
      private var _needToShowNewLevelDialog:Boolean = false;
      
      private var _needToAddExp:Boolean = false;
      
      private var _needUpdateLevelInLevelIndicator:Boolean = false;
      
      private var _currentExp:int;
      
      private var _currentLevel:int;
      
      private var _fishMarketTimer:SingleAlarm;
      
      private var _decorMarketTimer:SingleAlarm;
      
      private var _dynamicGraphicsLoaded:Boolean;
      
      private var _loadObstacleMapsCallback:Function;
      
      private var _lastCreateTsMs:int = 0;
      
      public var declineEntrence:Boolean;
      
      protected var isNeedCenteredGui:Boolean = true;
      
      private var _caughtDialog:DialogCaught;
      
      public var fishdexDialog:FishdexSwfDialog;
      
      public var breederDialog:BreederRexFishSwfDialog;
      
      public var moneyTreeDialog:DialogMoneyTree;
      
      private var _loading:Boolean;
      
      private const MAX_OBSTACLE_COLLISION_MS:int = 3000;
      
      private var _lastObstacleCollisionTimestampMS:int;
      
      private var _avgTimeCoef:AverageNumber = new AverageNumber(0,5);
      
      private var _avgTimeCoefOrig:AverageNumber = new AverageNumber(0,30);
      
      private var _acceleration:Boolean = false;
      
      private const FISHBLOCK_UPDATE_MS:int = 15000;
      
      private var _lastFishblockUpdateTsMs:int = 0;
      
      private var _trackerFramesElapsed:int = 0;
      
      private var _trackerFireAtFrame:int = 600;
      
      private var _needUpdateTutorialHelper:Boolean;
      
      protected var _locationItems:LocationItems;
      
      private var _timeCollectFishbox:Number;
      
      private var _dayCycle:LocationDayCycleLayers;
      
      private var _managerHolidays:ManagerHolidays;
      
      private var _holidayItems:HolidayItems;
      
      public function LocationDialog(param1:LocationModel)
      {
         super();
         this._timeCollectFishbox = 0;
         this._charList = new Dictionary();
         this.instanceId = globalInstanceId++;
         if(getTimer() - this._lastCreateTsMs < 1000)
         {
            GameSwf.sendReportToServer("doubleLocation");
         }
         this._lastCreateTsMs = getTimer();
         tabChildren = false;
         if(Config.SYNC_DEBUG)
         {
            _d_charPositionLayer.name = "_d_charPositionLayer";
            _d_charPositionLayer.visible = true;
            _d_charPositionLayer.mouseEnabled = false;
            _d_charPositionLayer.mouseChildren = false;
         }
         this.locationModel = param1;
         param1.dialog = this;
         param1.floatInWaterManager.hitTestBoats = this.hitTestBoats;
         Listeners.addEventListener(this,app.performanceManager,PerformanceManager.WEATHER_OFF,this.onWeatherOff);
         if(GameSwf.instance.managerTutorial.isTutorialCommonComplete)
         {
            this._gui = new Gui(this);
         }
         else
         {
            this._gui = new GuiTutorial(this);
         }
         addChild(this._gui);
         this._dayCycle = new LocationDayCycleLayers();
         this._dayCycle.state = EDayCycleState.EDCS_DAY;
         this._dayCycle.isEnabled = param1.dayCycleEnabled;
         UpdateManager.getInstance().getGroup(UpdateGroup.TIMER_1S).addFunction(this.update1S);
         this._animatedCharacter = GameSwf.instance.animatedCharacter;
         Cc.addSlashCommand("fog",this.__fog);
         Cc.addSlashCommand("heavyRain",this.__heavyRain);
         Cc.addSlashCommand("rain",this.__rain);
         Cc.addSlashCommand("sandstorm",this.__sandstorm);
         Cc.addSlashCommand("snow",this.__snow);
         Cc.addSlashCommand("sunny",this.__sunny);
         Cc.addSlashCommand("charPositions",changeCharPositionVisibility);
         if(!BuildConfig.isProd())
         {
            Cc.addSlashCommand("loadObstacleMaps",this.loadObstacleMaps,"Reload obstacle maps from gif images");
            Cc.addSlashCommand("obstacleMapsAlpha",this.obstacleMapsAlpha,"Set obstacle maps alpha from 0 to 1 (0.5 = 50%). Default - 0.25");
            Cc.addSlashCommand("moveCase",this.moveCase);
            Cc.addSlashCommand("moveCaseInsp",this.inspect);
            Cc.addSlashCommand("moveCase2",this.moveCase2);
            Cc.addSlashCommand("setPosition",this.setPosition);
         }
         this.energy = 15;
         this.energyRestoreLeftTime = 0;
         this._gui.levelIndicator.userExp = app.user.experience;
         this._gui.levelIndicator.nextExpLim = app.user.nextExpLimit;
         this._gui.mainMenu.communicationIcon.amount = app.user.unreadPMNumber;
         this._tutorialHelpers = GameSwf.instance.managerTutorial.tutorialHelpers;
         this._managerHolidays = GameSwf.instance.managerHolidays;
         this._locationLoadComplete = false;
         this._locationItems = new LocationItems(this);
         this._holidayItems = new HolidayItems();
      }
      
      public static function isGraphPositionEqual(param1:GraphPoint, param2:GraphPoint) : Boolean
      {
         return param1.x == param2.x && param1.y == param2.y && equalRotationByDegrees(param1.rotation,param2.rotation);
      }
      
      public static function equalRotationByDegrees(param1:Number, param2:int) : Boolean
      {
         var _loc3_:int = param1 / (360 / 8);
         var _loc4_:int = param2 / (360 / 8);
         return _loc3_ == _loc4_;
      }
      
      private static function onLuckPotionAlarmComplete() : void
      {
         GameSwf.instance.stopBoosterEffect(EBoosterType.EBT_LUCKY_POTION,true);
      }
      
      public static function onMagicWatchAlarmComplete() : void
      {
         GameSwf.instance.stopBoosterEffect(EBoosterType.EBT_MAGIC_WATCH,true);
      }
      
      public static function onFishRadarAlarmComplete() : void
      {
         GameSwf.instance.stopBoosterEffect(EBoosterType.EBT_RADAR,true);
      }
      
      public static function onExpBoosterAlarmComplete() : void
      {
         GameSwf.instance.stopBoosterEffect(EBoosterType.EBT_EXP,true);
      }
      
      public static function onShinyPotionAlarmComplete() : void
      {
         GameSwf.instance.stopBoosterEffect(EBoosterType.EBT_SHINY_POTION,true);
      }
      
      private static function onPowerBoosterAlarmComplete() : void
      {
         GameSwf.instance.stopBoosterEffect(EBoosterType.EBT_POWER_BOOSTER,true);
      }
      
      private static function changeCharPositionVisibility(param1:int) : void
      {
         if(!Config.SYNC_DEBUG)
         {
            return;
         }
         _d_charPositionLayer.visible = param1 != 0;
      }
      
      private static function showNewLevelDialog(param1:Object) : void
      {
         if(GameSwf.instance.managerTutorial.isAnyTutorialInProgress)
         {
            return;
         }
         if(param1 == null)
         {
            param1 = {};
         }
         var _loc2_:NewLevelSwfDialog = app.dialogFactory.getNewLevelSwfDialog();
         param1.level = app.user.level;
         _loc2_.setData(param1);
         _loc2_.show();
      }
      
      public function set needUpdateTutorialHelper(param1:Boolean) : void
      {
         this._needUpdateTutorialHelper = param1;
      }
      
      public function get caughtDialog() : DialogCaught
      {
         return this._caughtDialog;
      }
      
      public function set caughtDialog(param1:DialogCaught) : void
      {
         this._caughtDialog = param1;
      }
      
      protected function get dynamicGraphicsProgress() : Number
      {
         return 1;
      }
      
      public function get player() : PlayerChar
      {
         return this._playerChar;
      }
      
      public function get scrollrect() : Rectangle
      {
         return this._scrollRect;
      }
      
      public function set fishcoins(param1:int) : void
      {
         if(this._gui == null)
         {
            return;
         }
         this._gui.fishcoinsIndicator.setFishCoins = param1;
      }
      
      public function get locationLayersBase() : LocationLayers
      {
         return this._locationLayersBase;
      }
      
      public function set fishbucks(param1:int) : void
      {
         if(this._gui == null)
         {
            return;
         }
         this._gui.fishbucksIndicator.setFishBucks = param1;
      }
      
      public function set energy(param1:int) : void
      {
         app.user.energy.value = param1;
         if(this._gui != null)
         {
            this._gui.energyIndicator.label.text = param1.toString();
         }
      }
      
      public function set energyRestoreLeftTime(param1:int) : void
      {
         this._energyRestoreTimeLeft = param1;
         this.redrawEnergyTimer();
      }
      
      public function set level(param1:int) : void
      {
         this._gui.levelIndicator.setLevel(param1);
      }
      
      public function setUserExp(param1:int, param2:Boolean = false) : void
      {
         if(this._needUpdateLevelInLevelIndicator)
         {
            this._needUpdateLevelInLevelIndicator = false;
            this.level = this._currentLevel;
         }
         this._gui.levelIndicator.setValue(param1,app.user.prevExpLimit,app.user.nextExpLimit,param2);
      }
      
      protected function get locationFullWidth() : Number
      {
         return this._locationLayersBase != null ? this._locationLayersBase.fullWidth : 0;
      }
      
      protected function get locationFullHeight() : Number
      {
         return this._locationLayersBase != null ? this._locationLayersBase.fullHeight : 0;
      }
      
      private function get isPrivateHouseDialog() : Boolean
      {
         return this is LocationDialogPrivateHouse || this is LocationDialogDecorationMarket;
      }
      
      public function get raftRectangle() : Rectangle
      {
         return this._locationLayersBase.raftRectangle;
      }
      
      public function get raft() : Raft
      {
         return this._locationLayersBase.raft;
      }
      
      public function get gui() : Gui
      {
         return this._gui;
      }
      
      public function get dailyQuestManWidget() : DailyQuestManWidget
      {
         return this._dailyQuestManWidget;
      }
      
      public function isPlayerAbleToTalkWithNpc() : Boolean
      {
         var _loc1_:Boolean = true;
         if(this._playerChar == null || this._playerChar.boat != null || this._playerChar.moveStrategy is BoatMoveStrategy || this._playerChar.isMovingToRaft || this._playerChar.moveStrategy is ForceMoveStrategy || !this._playerChar.isCanMove())
         {
            _loc1_ = false;
         }
         return _loc1_;
      }
      
      public function isActive() : Boolean
      {
         return this._active;
      }
      
      public function get locationLoadComplete() : Boolean
      {
         return this._locationLoadComplete;
      }
      
      public function onFishdexClosed() : void
      {
         this.onCloseCaughtDialog();
      }
      
      public function onTutorialStarted() : void
      {
         this._needUpdateTutorialHelper = true;
         this.updateSamWidgetVisibility();
      }
      
      public function onTutorialCompleted() : void
      {
         this._needUpdateTutorialHelper = GameSwf.instance.managerTutorial.isAnyTutorialInProgress;
         this.updateSamWidgetVisibility();
      }
      
      override public function onShowStart() : void
      {
         super.onShowStart();
         GameSwf.instance.managerTutorial.onLocationChangeStart();
      }
      
      override public function onShowComplete() : void
      {
         super.onShowComplete();
         GameSwf.instance.managerTutorial.onLocationChanged();
         GameSwf.instance.managerAnnouncements.tryShowDialogAnnouncements();
      }
      
      protected function onAddNewCharToLocation(param1:LocationModelEvent) : void
      {
         this.processLocationUser(LocationUser(param1.data));
      }
      
      protected function onStartTalkWithNpc(param1:NPC) : void
      {
         if(this._playerChar == null)
         {
            return;
         }
         this._playerChar.startTalkWithNpc(param1);
         param1.rotateToChar(this._playerChar);
         this._needSendRotation = true;
      }
      
      private function onCharViewUpdate(param1:CharManagerEvent) : void
      {
         var _loc2_:String = param1.data;
         if(this._animatedCharacter.isLoaded)
         {
            GameSwf.charsManager.getViewForCallback(_loc2_,this.updateCharView,_loc2_);
         }
         else if(this._waitForViewLoadUsernames.indexOf(_loc2_) == -1)
         {
            this._waitForViewLoadUsernames.push(_loc2_);
         }
      }
      
      private function onRaftReturnToDock() : void
      {
         var _loc1_:FieldChar = null;
         if(this._locationLayersBase != null && this._locationLayersBase.raft != null && this._locationLayersBase.raft.charOnBoard != null)
         {
            for each(_loc1_ in this._locationLayersBase.raft.charOnBoard)
            {
               _loc1_.addCommand(new ReelInFishingCommand(_loc1_));
               _loc1_.hideRodAndShowChar();
            }
         }
         if(this._playerChar != null && this._playerChar.onRaft)
         {
            this._playerChar.cancelFishing();
            this._playerChar.clearRodCircle();
            this._playerChar.hideRodAndShowChar();
         }
      }
      
      private function onEnterRaft(param1:EnterRaftResp) : void
      {
         if(param1.login == app.user.username)
         {
            this._gui.addCountdownDialog(param1.timeToStartSec,param1.fullTimeSec,ECountdownType.ECT_RAFT_WAITING);
         }
      }
      
      private function onEnergyTimer(param1:TimerEvent) : void
      {
         --this._energyRestoreTimeLeft;
         this.redrawEnergyTimer();
      }
      
      private function onAnimatedCharacterLoadingComplete(param1:Event) : void
      {
         Listeners.removeEventListener(this,this._animatedCharacter,Event.COMPLETE,this.onAnimatedCharacterLoadingComplete);
         this._animatedCharacterIsLoaded = true;
         this.create();
      }
      
      private function onFishcoinsChange(param1:VariableChangeEvent) : void
      {
         this.fishcoins = int(param1.newValue);
      }
      
      private function onFishbucksChange(param1:VariableChangeEvent) : void
      {
         this.fishbucks = int(param1.newValue);
      }
      
      private function onLevelChange(param1:VariableChangeEvent) : void
      {
         this._currentLevel = int(param1.newValue);
         this._needUpdateLevelInLevelIndicator = true;
         this._needToShowNewLevelDialog = true;
      }
      
      private function onExpChange(param1:VariableChangeEvent) : void
      {
         this._needToAddExp = true;
         this._currentExp = int(param1.newValue);
      }
      
      private function onPrevExpLimChange(param1:VariableChangeEvent) : void
      {
         this._needToAddExp = true;
         this._currentExp = app.user.experience;
      }
      
      private function onNextExpLimChange(param1:VariableChangeEvent) : void
      {
         this._needToAddExp = true;
         this._currentExp = app.user.experience;
      }
      
      private function onUpdateObstacleMap(param1:LocationDialogEvent = null) : void
      {
         this._obstacleMap = this._locationLayersBase.getObstacleMap();
         this.updateCharacterMaps();
         this.inspectLoadObstacleMaps();
      }
      
      private function onUpdateLakeObstacleMap(param1:LocationDialogEvent = null) : void
      {
         this._lakeObstacleMap = this._locationLayersBase.lakeObstacleMap;
         this.updateCharacterMaps();
         this.inspectLoadObstacleMaps();
      }
      
      protected function onLocationLayersParsingComplete(param1:Event) : void
      {
         var event:Event = param1;
         if(this._locationLoadComplete)
         {
            return;
         }
         Debug.log("onLocationLayersParsingComplete",true);
         try
         {
            Listeners.removeEventListener(this,this._locationLayersBase,Event.COMPLETE,this.onLocationLayersParsingComplete);
            this._locationLayersBase.weather = this.locationModel.weather;
            this._dayCycle.updateDayCycle();
            addChildAt(this._locationLayersBase,1);
            if(Config.DEBUG_DRAW_LOCATION)
            {
               DEBUG_LAYER.name = "locationDEBUG_LAYER";
               if(Config.SYNC_DEBUG)
               {
                  DEBUG_LAYER.addChild(_d_charPositionLayer);
               }
               addChild(DEBUG_LAYER);
            }
            this.updateCenterToRect();
            this.inspectAnimationCharacterLoading();
            this.gui.restoreFromState(GameSwf.guiState);
         }
         catch(e:Error)
         {
            Debug.log("onLocationLayersParsingComplete error");
            Cc.error(e.getStackTrace());
            GameSwf.sendReportToServer("location");
         }
         Debug.log("onLocationLayersParsingComplete");
         if(Debug.AUTO_SELECT_PRIVATE_HOUSE && !(this is LocationDialogPrivateHouse))
         {
            setTimeout(function():void
            {
               GameSwf.instance.enterPrivateHouse(app.user.username);
            },1000);
         }
         if(Debug.AUTO_OPEN_DIALOG)
         {
            Debug.AUTO_OPEN_DIALOG = false;
            GameSwf.instance.managerFurnitureFactory.getInfo();
         }
         this._locationLoadComplete = true;
         Debug.logEnd("onLocationLayersParsingComplete");
         this.addHolidayItems();
      }
      
      private function onBoatMove(param1:ResponseBoatMove) : void
      {
         var _loc2_:Boat = this._locationLayersBase.getBoatByIndex(param1.boatId);
         if(_loc2_ == null)
         {
            return;
         }
         var _loc3_:FieldChar = this.getCharByUsername(_loc2_.lastFieldCharUsername);
         var _loc4_:Boolean = _loc3_ != null;
         var _loc5_:Boolean = _loc3_.locationUser.username != app.user.username;
         if(_loc4_ && _loc5_)
         {
            _loc3_.moveBoatToByResponse(param1.x,param1.y,param1.rotation);
         }
      }
      
      private function onEndExp() : void
      {
         if(!this._active || this._gui == null || this._gui.levelIndicator == null || !this._needToShowNewLevelDialog)
         {
            return;
         }
         this._needToShowNewLevelDialog = false;
         showNewLevelDialog(app.user.newLevelData);
      }
      
      private function onWeatherOff(param1:Event) : void
      {
         this._locationLayersBase.weather = WeatherType.SUNNY;
      }
      
      private function onMoneyTreeClose(param1:Event = null) : void
      {
         this.moneyTreeDialog = null;
         this.showMissionCompletedDialog();
      }
      
      protected function onActionWithResp(param1:ResponseNpcTalk) : void
      {
         if(param1.name == "Kaskae" && (param1.message == "Kaskae_no_success" || param1.message == "Kaskae_success") && this.locationModel.locationConfig == LocationConfig.SUBLOCATION_6_SIBIRI)
         {
            this._locationLayersBase.setBestPlayerVisibility(true);
         }
      }
      
      private function onLoadLocationItems(param1:LocationModelEvent) : void
      {
         var _loc2_:Object = null;
         var _loc3_:int = -1;
         var _loc4_:Array = param1.data as Array;
         if(_loc4_.length > 0)
         {
            _loc3_ = LocationItems.parse(_loc4_[0]).resourceType;
            this._locationItems.removeAllWithType(_loc3_);
         }
         for each(_loc2_ in _loc4_)
         {
            this.onAddItem(_loc2_);
         }
      }
      
      private function onAddLocationItem(param1:LocationModelEvent) : void
      {
         this.onAddItem(param1.data);
      }
      
      private function onRemoveLocationItem(param1:LocationModelEvent) : void
      {
         this.onRemoveItem(param1.data);
      }
      
      protected function onAddItem(param1:Object) : void
      {
         this._locationItems.parseAndAdd(param1);
      }
      
      protected function onRemoveItem(param1:Object) : void
      {
         this._locationItems.parseAndRemove(param1);
      }
      
      private function moveCase() : void
      {
         this._playerChar.setPosition(1660,1340,-30);
         this._playerChar.onMouseClick(2125,1315);
      }
      
      private function inspect() : void
      {
         this._playerChar.inspectCurrentCharPosition();
      }
      
      private function moveCase2() : void
      {
         this._playerChar.onMouseClick(3093,1037);
      }
      
      private function setPosition(param1:int, param2:int) : void
      {
         this._playerChar.setPosition(param1,param2);
      }
      
      private function removeAllShells() : void
      {
         this._locationLayersBase.removeAllShells();
      }
      
      private function reorder() : void
      {
         this._locationLayersBase.reorder();
      }
      
      private function freezeLake(param1:int) : void
      {
         if(param1 == 1)
         {
            this._locationLayersBase.frozenLake.freeze();
         }
         else
         {
            this._locationLayersBase.frozenLake.thawOut();
         }
      }
      
      private function forceMove(param1:int, param2:int) : void
      {
         this._playerChar.forceMoveTo(param1,param2);
      }
      
      private function onBoatEnter(param1:ResponseBoatEnter) : void
      {
         var _loc2_:FieldChar = this.getCharByUsername(param1.login);
         if(_loc2_ != null)
         {
            this.moveToBoat(_loc2_,param1.boatId);
         }
      }
      
      private function onBoatRelease(param1:ResponseBoatRelease) : void
      {
         var _loc2_:Boat = this._locationLayersBase.getBoatByIndex(param1.boatId);
         if(_loc2_ != null)
         {
            if(_loc2_.fieldChar is PlayerChar)
            {
               app.user.atTheBoat.value = false;
            }
            _loc2_.release();
         }
      }
      
      protected function getCharByUsername(param1:String) : FieldChar
      {
         var _loc2_:FieldChar = null;
         if(this._charList != null && param1 in this._charList)
         {
            _loc2_ = this._charList[param1];
         }
         return _loc2_;
      }
      
      private function onUpdateMaintenanceTime(param1:LocationModelEvent) : void
      {
         Listeners.removeEventListener(this,this.locationModel,LocationModelEvent.UPDATE_MAINTENANCE_TIME,this.onUpdateMaintenanceTime);
         this.onMaintenanceHandler();
      }
      
      private function onLeaveSublocationResp(param1:LeaveSublocationResp) : void
      {
         if(this.locationModel == null)
         {
            return;
         }
         if(param1.desc == "time_out" && this.locationModel.isSublocation)
         {
            LocationDialogStatic.closeSublocationDialog();
         }
      }
      
      private function __sunny() : void
      {
         this._locationLayersBase.weather = WeatherType.SUNNY;
      }
      
      private function __snow() : void
      {
         this._locationLayersBase.weather = WeatherType.SNOW;
      }
      
      private function __sandstorm() : void
      {
         this._locationLayersBase.weather = WeatherType.SANDSTORM;
      }
      
      private function __rain() : void
      {
         this._locationLayersBase.weather = WeatherType.RAIN;
      }
      
      private function __heavyRain() : void
      {
         this._locationLayersBase.weather = WeatherType.HEAVY_RAIN;
      }
      
      private function __fog() : void
      {
         this._locationLayersBase.weather = WeatherType.FOG;
      }
      
      private function onWeatherChange(param1:VariableChangeEvent) : void
      {
         if(this._locationLayersBase == null)
         {
            return;
         }
         this._locationLayersBase.weather = this.locationModel.weather;
      }
      
      private function onRemoveCharFromLocation(param1:LocationModelEvent) : void
      {
         var _loc2_:LocationUser = LocationUser(param1.data);
         if(_loc2_ == null)
         {
            return;
         }
         var _loc3_:String = _loc2_.username;
         this.removeCharFromLocation(_loc3_);
      }
      
      private function onMaintenanceHandler() : void
      {
         var _loc1_:ManagerMaintenance = GameSwf.instance.managerMaintanence;
         if(_loc1_.maintenanceTime > 0)
         {
            this._gui.displayMaintenanceTime(_loc1_.maintenanceIn);
         }
      }
      
      private function redrawEnergyTimer() : void
      {
         if(this._gui == null)
         {
            return;
         }
         if(this._energyRestoreTimeLeft > 0)
         {
            this._gui.energyIndicator.moreInText = I18n.get("moreIn").replace("#TIME#",TimeConverter.toTime(this._energyRestoreTimeLeft * 1000,TimeConverter.MINUTE_SECOND_TYPE));
            if(!this._energyRestoreTimer.running)
            {
               this._energyRestoreTimer.start();
            }
         }
         else
         {
            this._gui.energyIndicator.moreInText = null;
            if(this._energyRestoreTimer.running)
            {
               this._energyRestoreTimer.stop();
            }
         }
      }
      
      private function changeFishmarketState(param1:Object) : void
      {
         if(this._fishMarketTimer == null)
         {
            this._fishMarketTimer = new SingleAlarm();
         }
         else
         {
            this._fishMarketTimer.destroy();
         }
         var _loc2_:int = int(param1);
         var _loc3_:Boolean = _loc2_ >= 0;
         LocationDialog.isFishMarketOpen = _loc3_;
         this._locationLayersBase.setMarketDoorOpen(_loc3_);
         this._fishMarketTimer.activateInSec(Math.abs(_loc2_),new Callback(_loc3_ ? this.onFishMarketTimeClose : this.onFishMarketTimeOpen));
      }
      
      protected function onUpdateResp(param1:UpdateResp) : void
      {
         var response:UpdateResp = param1;
         var needOpen:Boolean = false;
         var needToLeave:Boolean = false;
         var decorMarketTime:Object = null;
         var decorMarketChangeSec:int = 0;
         var mission:Object = null;
         var users:Object = null;
         var username:String = null;
         var userData:Object = null;
         var fieldChar:FieldChar = null;
         var viewConfig:String = null;
         var charViewConfig:CharViewConfig = null;
         var userLevel:int = 0;
         var dialog:ReloadDialog = null;
         var raft:Object = null;
         var fishObject:Object = null;
         var fishInfo:FishInfo = null;
         var experiance:int = 0;
         var isRecord:Boolean = false;
         var isNew:Boolean = false;
         var state:Object = null;
         var respNeedTime:Object = null;
         var s:String = null;
         var data:Object = null;
         var respBoughtTime:Object = null;
         try
         {
            this.locationModel.updateHandler(response);
            this.locationModel.wasLoadedFirstResp = true;
            this.onMaintenanceHandler();
            if(response.hasDataProperty("isOpenFriendsDoor"))
            {
               needOpen = Boolean(response.getJsonData("isOpenFriendsDoor"));
               if(needOpen)
               {
                  this.openFriendsHouseDoor();
               }
               else
               {
                  this.closeFriendsHouseDoor();
               }
            }
            if(response.hasDataProperty("leaveFriendHouse"))
            {
               needToLeave = Boolean(response.getJsonData("leaveFriendHouse"));
               if(needToLeave == true && GameSwf.currentLocationDialog.locationModel is LocationModelPrivateHouse)
               {
                  if(GameSwf.profileSwfDialog != null)
                  {
                     GameSwf.profileSwfDialog.close();
                     GameSwf.profileSwfDialog = null;
                  }
                  GameSwf.instance.exitVirtualLocationThroughDoor(LocationConfig.LOCATION_2_RIO.id);
                  return;
               }
            }
            this.tryUpdateFishMarket(response);
            this.tryUpdateEnergy(response);
            if(response.hasDataProperty("decorationMarketTime"))
            {
               decorMarketTime = response.getJsonData("decorationMarketTime");
               if(this._decorMarketTimer == null)
               {
                  this._decorMarketTimer = new SingleAlarm();
               }
               else
               {
                  this._decorMarketTimer.destroy();
               }
               decorMarketChangeSec = int(decorMarketTime);
               if(decorMarketChangeSec >= 0)
               {
                  this._locationLayersBase.changeDecorationMarketDoorState(false);
                  this._decorMarketTimer.activateInSec(Math.abs(decorMarketChangeSec),new Callback(this.onDecorMarketTimeClose));
               }
               else
               {
                  this._locationLayersBase.changeDecorationMarketDoorState(true);
                  this._decorMarketTimer.activateInSec(Math.abs(decorMarketChangeSec),new Callback(this.onDecorMarketTimeOpen));
               }
            }
         }
         catch(e:Error)
         {
            Cc.log(response);
            Cc.error("LocationDialog.onUpdateResp 1 ERROR",e);
            Cc.error(e.getStackTrace());
            GameSwf.sendReportToServer("updateResp");
         }
         try
         {
            if(response.hasDataProperty("missionComplete"))
            {
               mission = response.getJsonData("missionComplete");
               app.user.completedMissionData.push(mission);
               Cc.log("app.user.inTalkWithNPC : " + app.user.inTalkWithNPC);
               Cc.log("app.user.inTalkWithNPC.value : " + app.user.inTalkWithNPC.value);
               Cc.log("app.user.inFishingProcess : " + app.user.inFishingProcess);
               Cc.log("app.user.inFishingProcess.value : " + app.user.inFishingProcess.value);
               Cc.log("_caughtDialog : " + this._caughtDialog);
               Cc.log("breederDialog : " + this.breederDialog);
               Cc.log("GameSwf.instance.tradeDialog : " + GameSwf.instance.tradeDialog);
               if(Boolean(app.user.inTalkWithNPC.value || app.user.inFishingProcess.value || this._caughtDialog != null || this.moneyTreeDialog != null || this.breederDialog != null || GameSwf.instance.tradeDialog != null) || Boolean(response.hasDataProperty("fish_caught")) || this.gui == null)
               {
                  this._needToShowMissionCompletedDialog = true;
               }
               else
               {
                  this._needToShowMissionCompletedDialog = true;
                  this.showMissionCompletedDialog();
               }
            }
         }
         catch(e:Error)
         {
            Cc.log(response);
            Cc.error("LocationDialog.onUpdateResp 2 ERROR",e);
            Cc.error(e.getStackTrace());
            GameSwf.sendReportToServer("updateResp");
         }
         try
         {
            if(response.hasDataProperty("userUpdates"))
            {
               users = response.getJsonData("userUpdates");
               for(username in users)
               {
                  if(username in this._charList)
                  {
                     userData = null;
                     if(users.hasOwnProperty(username))
                     {
                        userData = users[username];
                     }
                     fieldChar = null;
                     if(this._charList.hasOwnProperty(username))
                     {
                        fieldChar = this._charList[username];
                     }
                     if(userData.hasOwnProperty("state"))
                     {
                        if(userData.state == "didntCatch")
                        {
                           this.showMissionCompletedDialog();
                        }
                        fieldChar.readServerState(userData.state,userData);
                        if(fieldChar is PlayerChar)
                        {
                           fieldChar.inspectCurrentCharPosition();
                        }
                     }
                     else if(userData.hasOwnProperty("view"))
                     {
                        viewConfig = userData["view"];
                        charViewConfig = CharViewConfig.fromObject(viewConfig);
                        this.locationModel.setUserView(username,charViewConfig);
                        fieldChar.updateSpeedMultiplier(charViewConfig.shoes.type);
                        GameSwf.charsManager.loadCharViews(Vector.<String>([username]));
                     }
                     else if(userData.hasOwnProperty("fishMarketTime"))
                     {
                        this.changeFishmarketState(userData["fishMarketTime"]);
                     }
                     if(userData.hasOwnProperty("level"))
                     {
                        userLevel = int(userData["level"]);
                        GameSwf.charsManager.setCharLevelConfigByUsername("level",userLevel,username);
                        fieldChar.level = userLevel;
                        if(username == app.user.username)
                        {
                           app.user.newLevelData = {};
                           if(userData.hasOwnProperty("newLocations"))
                           {
                              app.user.newLevelData.newLocations = String(userData["newLocations"]);
                           }
                           if(userData.hasOwnProperty("newClothes"))
                           {
                              app.user.newLevelData.newClothes = String(userData["newClothes"]);
                           }
                           if(userData.hasOwnProperty("energy"))
                           {
                              app.user.newLevelData.energy = String(userData["energy"]);
                           }
                           if(userData.hasOwnProperty("trading"))
                           {
                              app.user.newLevelData.trading = String(userData["trading"]);
                           }
                           app.user.level = userLevel;
                           app.user.experience = int(userData["experience"]);
                           app.user.prevExpLimit = int(userData["prevExpLimit"]);
                           app.user.nextExpLimit = int(userData["nextExpLimit"]);
                           this.handleUserLevelUp();
                           if(userData.hasOwnProperty("adminArbitrariness") || userData.hasOwnProperty("manualLevelup"))
                           {
                              this._needToAddExp = true;
                              this._needUpdateLevelInLevelIndicator = true;
                              this._needToShowNewLevelDialog = true;
                              this.onCloseCaughtDialog();
                           }
                        }
                     }
                     if(userData.hasOwnProperty("prevExpLimit" && userData.hasOwnProperty("nextExpLimit")))
                     {
                        GameSwf.charsManager.setCharLevelConfigByUsername("prevExpLimit",int(userData["prevExpLimit"]),username);
                        GameSwf.charsManager.setCharLevelConfigByUsername("nextExpLimit",int(userData["nextExpLimit"]),username);
                        if(username == app.user.username)
                        {
                           app.user.prevExpLimit = int(userData["prevExpLimit"]);
                           app.user.nextExpLimit = int(userData["nextExpLimit"]);
                        }
                     }
                     if(userData.hasOwnProperty("experience"))
                     {
                        GameSwf.charsManager.setCharLevelConfigByUsername("experience",int(userData["experience"]),username);
                        if(username == app.user.username)
                        {
                           app.user.experience = int(userData["experience"]);
                        }
                     }
                     if(userData.hasOwnProperty("country"))
                     {
                        if(username == app.user.username)
                        {
                           GameSwf.settings.updateByResponse(userData);
                        }
                     }
                     if(userData.hasOwnProperty("language"))
                     {
                        dialog = new ReloadDialog();
                        dialog.show();
                     }
                     if(userData.hasOwnProperty("floatId"))
                     {
                        LocationUser(this.locationModel.locationUserByUsername[username]).fieldChar.setFloat(String(userData["floatId"]));
                     }
                     if(userData.hasOwnProperty("prizeIsCollect"))
                     {
                        if(username == app.user.username && !app.user.isGuest)
                        {
                           if(int(userData["prizeIsCollect"]) == 0)
                           {
                              DailyQuestManWidget.dailyQuestsModel.prizeIsCollect = false;
                              this._dailyQuestManWidget.enable();
                           }
                           else
                           {
                              DailyQuestManWidget.dailyQuestsModel.prizeIsCollect = true;
                              this._dailyQuestManWidget.disable();
                           }
                        }
                     }
                  }
               }
            }
         }
         catch(e:Error)
         {
            Cc.log(response);
            Cc.error("LocationDialog.onUpdateResp 2 ERROR",e);
            Cc.error(e.getStackTrace());
            GameSwf.sendReportToServer("updateResp");
         }
         try
         {
            if(response.hasDataProperty("raft"))
            {
               raft = response.getJsonData("raft");
               if(raft.hasOwnProperty("state"))
               {
                  switch(raft.state)
                  {
                     case Raft.SAILED:
                        this._locationLayersBase.raft.sail(raft.totalTime,raft.hasOwnProperty("timeLeft") ? int(raft.timeLeft) : 0);
                        break;
                     case Raft.BACK:
                        this._locationLayersBase.raft.returnToDock(raft.totalTime,raft.hasOwnProperty("timeLeft") ? int(raft.timeLeft) : 0);
                        this.onRaftReturnToDock();
                        break;
                     default:
                        this._locationLayersBase.raft.state = raft.state;
                  }
               }
            }
            if(response.hasDataProperty("timeLeft"))
            {
               this.manageTimeLeftProperty(response.getJsonData("timeLeft"));
            }
            if(response.hasDataProperty("fish_caught"))
            {
               fishObject = response.getJsonData("fish_caught");
               if(fishObject != null)
               {
                  fishInfo = new FishInfo();
                  fishInfo.deserialize(fishObject);
                  if(GameSwf.instance.managerTutorial.isAnyTutorialInProgress)
                  {
                     this.caughtDialog = new DialogTutorialCaught();
                  }
                  else
                  {
                     this.caughtDialog = new DialogCaught();
                  }
                  experiance = response.getIntData("experience");
                  isRecord = response.getIntData("is_record") == 1;
                  isNew = response.getIntData("is_new") == 1;
                  this.caughtDialog.showWithData(fishInfo,experiance,isRecord,isNew);
                  this.caughtDialog.addEventListener(CLOSED_CAUGHT_DIALOG,this.onCloseCaughtDialog);
                  this._caughtDialog = this.caughtDialog;
               }
            }
            if(response.hasDataProperty("ice") && this._locationLayersBase.frozenLake != null)
            {
               state = response.getJsonData("ice");
               switch(state.state)
               {
                  case FrozenLake.ICE:
                     this._locationLayersBase.frozenLake.makeFrozen();
                     break;
                  case FrozenLake.WATER:
                     this._locationLayersBase.frozenLake.makeUnfrozen();
                     break;
                  case FrozenLake.FREEZING:
                     this._locationLayersBase.frozenLake.freeze();
                     break;
                  case FrozenLake.MELTING:
                     this._locationLayersBase.frozenLake.thawOut();
               }
            }
            if(response.hasDataProperty("sublocationNeedTime"))
            {
               respNeedTime = response.getJsonData("sublocationNeedTime");
               for(s in respNeedTime)
               {
                  data = respNeedTime[s];
                  this._restrictEnterToSublocation[respNeedTime[s]["timerType"]] = !(data.hasOwnProperty("timerType") && data.hasOwnProperty("timeLeftSec") && data["timeLeftSec"] >= MINIMAL_SUBLOCATION_ENTER_TIME_SEC);
               }
            }
            if(response.hasDataProperty("boughtTime"))
            {
               respBoughtTime = response.getJsonData("boughtTime");
               if(Boolean(respBoughtTime["type"] != null) && Boolean(respBoughtTime["timeLeftSec"]) && respBoughtTime["timeLeftSec"] >= MINIMAL_SUBLOCATION_ENTER_TIME_SEC)
               {
                  this._restrictEnterToSublocation[respBoughtTime["type"]] = false;
               }
            }
            this.tryHandleBoosterUpdate(response,EBoosterType.EBT_EXP);
            this.tryHandleBoosterUpdate(response,EBoosterType.EBT_RADAR);
            this.tryHandleBoosterUpdate(response,EBoosterType.EBT_MAGIC_WATCH);
            this.tryHandleBoosterUpdate(response,EBoosterType.EBT_LUCKY_POTION);
            this.tryHandleBoosterUpdate(response,EBoosterType.EBT_SHINY_POTION);
            this.tryHandleBoosterUpdate(response,EBoosterType.EBT_POWER_BOOSTER);
         }
         catch(e:Error)
         {
            Cc.log(response);
            Cc.error("LocationDialog.onUpdateResp 3 ERROR",e);
            Cc.error(e.getStackTrace());
            GameSwf.sendReportToServer("updateResp");
         }
         try
         {
            if((this._lastSublocationEnter != null || this._lastSublocationEnterFix != null) && this._playerChar != null && response.isEnterSublocationResponse())
            {
               if(this._lastSublocationEnterFix != null)
               {
                  this._programmedCharMoveTarget = MOVE_FROM_SUBLOCATION[this._lastSublocationEnterFix.id - 1];
                  this._lastSublocationEnterFix = null;
               }
               if(this._lastSublocationEnter != null)
               {
                  this._programmedCharMoveTarget = MOVE_FROM_SUBLOCATION[this._lastSublocationEnter.id - 1];
               }
               this._playerChar.programmedMove = true;
               if(this._programmedCharMoveTarget != null)
               {
                  this._playerChar.onMouseClick(this._programmedCharMoveTarget.x,this._programmedCharMoveTarget.y);
               }
            }
            if(this._dynamicGraphicsLoaded == false && !this.locationModel.isSublocation && response.hasDataProperty("usersAtLoc"))
            {
               this.loadDynamicGraphics(response);
            }
         }
         catch(e:Error)
         {
            Cc.log(response);
            Cc.error("LocationDialog.onUpdateResp 4 ERROR",e);
            Cc.error(e.getStackTrace());
            GameSwf.sendReportToServer("updateResp");
         }
      }
      
      protected function handleUserLevelUp() : void
      {
      }
      
      private function tryUpdateEnergy(param1:UpdateResp) : void
      {
         if(!param1.hasDataProperty("energy"))
         {
            return;
         }
         var _loc2_:Object = param1.getJsonData("energy");
         this.energy = _loc2_.energy;
         this.energyRestoreLeftTime = _loc2_.incLeftSec;
      }
      
      private function tryUpdateFishMarket(param1:UpdateResp) : void
      {
         var _loc2_:Object = null;
         if(app.user.level < 3)
         {
            LocationDialog.isFishMarketOpen = false;
            this._locationLayersBase.setMarketDoorOpen(false);
         }
         else if(param1.hasDataProperty("fishMarketTime"))
         {
            _loc2_ = param1.getJsonData("fishMarketTime");
            this.changeFishmarketState(_loc2_);
         }
      }
      
      protected function loadDynamicGraphics(param1:ServerResp) : void
      {
         this.onLoadDynamicGraphicsComplete();
      }
      
      public function onLoadInteriorComplete() : void
      {
         this.onLoadDynamicGraphicsComplete();
      }
      
      protected function onLoadDynamicGraphicsComplete() : void
      {
         this._dynamicGraphicsLoaded = true;
         addChildAt(this._locationLayersBase,1);
         if(Config.DEBUG_DRAW_LOCATION)
         {
            DEBUG_LAYER.name = "locationDEBUG_LAYER";
            if(Config.SYNC_DEBUG)
            {
               DEBUG_LAYER.addChild(_d_charPositionLayer);
            }
            addChild(DEBUG_LAYER);
         }
         this.updateCenterToRect();
      }
      
      private function manageTimeLeftProperty(param1:Object) : void
      {
         var _loc2_:String = null;
         var _loc3_:* = undefined;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:String = null;
         Cc.logch(this,".manageTimeLeftProperty(): timeLeft=" + param1);
         for(_loc2_ in param1)
         {
            if(param1.hasOwnProperty(_loc2_))
            {
               _loc3_ = param1[_loc2_];
               if(_loc3_ is Number || _loc3_ is int)
               {
                  _loc4_ = _loc3_;
                  _loc5_ = _loc3_;
               }
               else
               {
                  _loc4_ = int(_loc3_.leftSec);
                  _loc5_ = int(_loc3_.totalSec);
               }
               if(this.isAvailableTimer(_loc2_))
               {
                  switch(_loc2_)
                  {
                     case "trout_farm":
                        _loc6_ = ECountdownType.ECT_TROUT_FARM;
                        break;
                     case "pyramid":
                        _loc6_ = ECountdownType.ECT_PYRAMID;
                        break;
                     case "boat":
                        _loc6_ = ECountdownType.ECT_BOAT;
                        break;
                     case "raft":
                        _loc6_ = ECountdownType.ECT_RAFT_WAITING;
                        break;
                     case "raftFishing":
                        _loc6_ = ECountdownType.ECT_RAFT_FISHING;
                        break;
                     default:
                        Debug.assert(false,"Unsupported timer key on manageTimeLeftProperty method of LocationDialog: " + _loc2_);
                  }
                  this._gui.addCountdownDialog(_loc4_,_loc5_,_loc6_);
               }
            }
         }
      }
      
      private function isAvailableTimer(param1:String) : Boolean
      {
         var _loc2_:Boolean = false;
         if(param1 == Config.RAFT_TIMER_NAME)
         {
            _loc2_ = this._playerChar != null && this._playerChar.onRaft;
         }
         else if(param1 == Config.FISH_CAUGHT_TIMER_NAME || param1 == Config.FISH_DIDNT_CAUGHT_TIMER_NAME)
         {
            _loc2_ = Config.showFishingTimes;
         }
         else
         {
            _loc2_ = true;
         }
         return _loc2_;
      }
      
      override public function centerToRect(param1:int, param2:int, param3:int, param4:int) : void
      {
         var _loc5_:Number = NaN;
         this.createBackgroundForLocationLayers(param3,param4);
         var _loc6_:Rectangle = new Rectangle(param1,param2,param3,param4);
         scrollRect = _loc6_;
         if(this._gui != null)
         {
            if(this.isNeedCenteredGui)
            {
               this._gui.centerToRect(param1,param2,param3,param4);
            }
            else
            {
               this.isNeedCenteredGui = true;
            }
         }
         if(this._locationLayersBase != null)
         {
            Watch.change("locationSize",this._locationLayersBase.fullWidth + "x" + this._locationLayersBase.fullHeight);
         }
         if(stage)
         {
            Watch.change("stage",stage.stageWidth + "x" + stage.stageHeight);
         }
         if(Boolean(this._loadingIndicator) && this._loadingIndicator.isCompleted())
         {
            if(this._playerChar != null && _loc6_ != null)
            {
               _loc6_.x = limit(this._playerChar.position.x - param3 / 2,0,int(this._locationLayersBase.fullWidth - param3));
               _loc6_.y = limit(this._playerChar.position.y - param4 / 2,0,int(this._locationLayersBase.fullHeight - param4));
               _loc6_.width = param3;
               _loc6_.height = param4;
               _loc6_ = this.inspectRectByLocationLayersSize(_loc6_);
               this._locationLayersBase.scrollRect = _loc6_;
               FieldChar.mapOffset.x = -_loc6_.x;
               FieldChar.mapOffset.y = -_loc6_.y;
            }
         }
         else
         {
            if(this._locationLayersBase != null)
            {
               if(this.isPrivateHouseDialog && param4 >= PRIVATE_HOUSE_HEIGHT_WITH_WALL)
               {
                  _loc5_ = PRIVATE_HOUSE_HEIGHT_WITHOUT_WALL;
               }
               else
               {
                  _loc5_ = this._locationLayersBase.fullHeight;
               }
               _loc6_.x = this._locationLayersBase.fullWidth / 2 - param3 / 2;
               _loc6_.y = _loc5_ / 2 - param4 / 2;
               _loc6_.width = param3;
               _loc6_.height = param4;
               _loc6_ = this.inspectRectByLocationLayersSize(_loc6_);
               this._locationLayersBase.scrollRect = _loc6_;
            }
            this._scrollRect = _loc6_;
         }
         this.moveCameraToChar(1);
      }
      
      protected function inspectRectByLocationLayersSize(param1:Rectangle) : Rectangle
      {
         var _loc2_:Number = this._locationLayersBase.fullHeight;
         if(this._locationLayersBase.fullWidth <= scrollRect.width)
         {
            this._locationLayersBase.x = Math.round((scrollRect.width - this._locationLayersBase.fullWidth) / 2);
            param1.x = 0;
            param1.width = this._locationLayersBase.fullWidth;
         }
         else
         {
            this._locationLayersBase.x = 0;
         }
         if(_loc2_ <= scrollRect.height)
         {
            this._locationLayersBase.y = Math.round((scrollRect.height - _loc2_) / 2);
            param1.y = 0;
            param1.height = _loc2_;
         }
         else
         {
            this._locationLayersBase.y = 0;
         }
         return param1;
      }
      
      private function createBackgroundForLocationLayers(param1:int, param2:int) : void
      {
         if(this._locationLayersBase == null || this._locationLayersBase.parent == null)
         {
            return;
         }
         graphics.clear();
         graphics.beginFill(0);
         graphics.drawRect(0,0,param1,param2);
         graphics.endFill();
      }
      
      override public function show() : void
      {
         Cc.log("show location " + this.toString());
         try
         {
            app.dialogManager.showAt(PopupManager.GAME_FIELD_LAYER,this);
            this.createLoadingIndicator();
            this.startLoadLocation();
         }
         catch(e:Error)
         {
            Cc.error("location show error",e);
            Cc.error(e.getStackTrace());
            GameSwf.sendReportToServer("location");
         }
      }
      
      private function loadingProgress() : Number
      {
         var _loc1_:Number = 0;
         if(this._loader != null)
         {
            if(this._loader.isLoaded())
            {
               _loc1_ = 1;
            }
            else if(this._loader.bytesTotal > 0)
            {
               _loc1_ = this._loader.bytesLoaded / this._loader.bytesTotal;
            }
         }
         var _loc2_:Number = 0;
         if(this._locationLayersBase != null)
         {
            _loc2_ = this._locationLayersBase.progress;
         }
         var _loc3_:Number = this._animatedCharacter ? this._animatedCharacter.progress : 0;
         var _loc4_:Number = this.dynamicGraphicsProgress;
         return _loc1_ * 0.3 + _loc2_ * 0.2 + _loc3_ * 0.2 + _loc4_ * 0.3;
      }
      
      public function startLoadLocation() : void
      {
         if(this._loader != null || this._loading)
         {
            return;
         }
         this._loader = new BinaryLoaderRepeatable(0);
         this._loading = true;
         var _loc1_:URLRequest = new URLRequest(this.locationModel.locationConfig.getLocationSwfUrl());
         Listeners.addEventListener(this,this._loader.contentLoaderInfo,Event.COMPLETE,this.onLocationLoadingComplete);
         Listeners.addEventListener(this,this._loader.contentLoaderInfo,IOErrorEvent.IO_ERROR,this.onIoError);
         Listeners.addEventListener(this,this._loader.contentLoaderInfo,SecurityErrorEvent.SECURITY_ERROR,this.onSecurityError);
         this._loader.load(_loc1_);
      }
      
      private function onSecurityError(param1:SecurityErrorEvent) : void
      {
         this.removeEventListenersFromLoader();
         ErrorManager.handleCriticalSecurityError(param1);
      }
      
      private function onIoError(param1:IOErrorEvent) : void
      {
         this.removeEventListenersFromLoader();
         ErrorManager.handleCriticalIoError(param1);
      }
      
      protected function onLocationLoadingComplete(param1:Event) : void
      {
         var event:Event = param1;
         try
         {
            this.removeEventListenersFromLoader();
            this._locationLayersBase = this.createLocationLayers();
            this._locationItems.locationLayers = this._locationLayersBase;
            this._holidayItems.locationLayers = this._locationLayersBase;
            this.loadObstacleMaps(this.onAllMapLoading);
         }
         catch(e:Error)
         {
            Cc.error("location onLocationLoadingComplete error",e);
            Cc.error(e.getStackTrace());
            GameSwf.sendReportToServer("location");
         }
         this.locationModel.onLocationLoadingComplete();
      }
      
      protected function createLocationLayers() : LocationLayers
      {
         var _loc1_:LocationLayers = null;
         if(this.locationModel.isSublocation || this.locationModel.isTournament || this.locationModel is LocationModelPrivateHouse)
         {
            _loc1_ = FactoryLocationLayers.createSublocationLayers(this.locationModel.id);
         }
         else
         {
            _loc1_ = FactoryLocationLayers.createLocationLayers(this.locationModel.id);
         }
         _loc1_.dayCycle = this._dayCycle;
         return _loc1_;
      }
      
      private function removeEventListenersFromLoader() : void
      {
         Listeners.removeEventListener(this,this._loader.contentLoaderInfo,Event.COMPLETE,this.onLocationLoadingComplete);
         Listeners.removeEventListener(this,this._loader.contentLoaderInfo,IOErrorEvent.IO_ERROR,this.onIoError);
         Listeners.removeEventListener(this,this._loader.contentLoaderInfo,SecurityErrorEvent.SECURITY_ERROR,this.onSecurityError);
      }
      
      private function loadObstacleMaps(param1:Function) : void
      {
         this._loadObstacleMapsCallback = param1;
         Listeners.addEventListener(this,this._locationLayersBase,LocationDialogEvent.UPDATE_OBSTACLE_MAP,this.onUpdateObstacleMap);
         Listeners.addEventListener(this,this._locationLayersBase,LocationDialogEvent.UPDATE_LAKE_OBSTACLE_MAP,this.onUpdateLakeObstacleMap);
         Listeners.addEventListener(this,this._locationLayersBase,LocationDialogEvent.UPDATE_SOUND_MAP,this.onUpdateSoundMap);
         this._locationLayersBase.loadObstacleMap(this.locationModel.locationConfig.getLocationObstacleUrl());
         this._locationLayersBase.loadLakeObstacleMap(this.locationModel.locationConfig.getLocationLakeObstacleUrl());
         this._locationLayersBase.loadSoundMap(this.locationModel.locationConfig.getLocationSoundMapUrl());
      }
      
      private function onUpdateSoundMap(param1:LocationDialogEvent = null) : void
      {
         this._soundMap = this._locationLayersBase.soundMapBitmapData;
         this.inspectLoadObstacleMaps();
      }
      
      private function inspectLoadObstacleMaps() : void
      {
         if(this._loadObstacleMapsCallback == null || this._obstacleMap == null || this._lakeObstacleMap == null || this._soundMap == null)
         {
            return;
         }
         this._loadObstacleMapsCallback();
         this._loadObstacleMapsCallback = null;
      }
      
      private function onAllMapLoading() : void
      {
         try
         {
            Listeners.addEventListener(this,this._locationLayersBase,Event.COMPLETE,this.onLocationLayersParsingComplete);
            this._locationLayersBase.parseLocationAsset(MovieClip(this._loader.content),new Point(this._loader.contentLoaderInfo.width,this._loader.contentLoaderInfo.height),this._loader.contentLoaderInfo.applicationDomain);
         }
         catch(e:Error)
         {
            Cc.error("location onAllMapLoading error",e);
            Cc.error(e.getStackTrace());
            GameSwf.sendReportToServer("location");
         }
      }
      
      private function createLoadingIndicator() : void
      {
         this.tryCleanupLoadingIndicator();
         var _loc1_:String = this.locationModel.absoluteId >= 100 ? LoadingScreen.TYPE_BUBBLES : LoadingScreen.TYPE_TIPS;
         this._loadingIndicator = new LoadingIndicator(_loc1_);
         this._loadingIndicator.progressHandler = this.loadingProgress;
         this._loadingIndicator.start();
         Preloader.addIndicator(this._loadingIndicator);
      }
      
      protected function tryCleanupLoadingIndicator(param1:Boolean = false) : void
      {
         if(this._loadingIndicator == null)
         {
            return;
         }
         if(param1)
         {
            if(!this._loadingIndicator.isCompleted())
            {
               return;
            }
         }
         Preloader.removeIndicator(this._loadingIndicator);
         this._loadingIndicator.stop();
         this._loadingIndicator.destroy();
         this._loadingIndicator = null;
      }
      
      private function obstacleMapsAlpha(param1:Number) : void
      {
         this._locationLayersBase.setObstacleMapsAlpha(param1);
      }
      
      private function soundMapAlpha(param1:Number) : void
      {
         this._locationLayersBase.setSoundMapAlpha(param1);
      }
      
      private function moveToBoat(param1:FieldChar, param2:int = 3) : void
      {
         var _loc3_:Boat = this._locationLayersBase.getBoatByIndex(param2);
         param1.hideRodAndShowChar();
         param1.clearCommandQueue();
         param1.moveToBoat(_loc3_);
      }
      
      public function updateCenterToRect() : void
      {
         var _loc1_:Rectangle = this.scrollRect;
         if(_loc1_ == null)
         {
            return;
         }
         this.centerToRect(_loc1_.x,_loc1_.y,_loc1_.width,_loc1_.height);
      }
      
      private function updateCharacterMaps() : void
      {
         var _loc1_:FieldChar = null;
         var _loc2_:BitmapData = this._locationLayersBase.getBoatObstacleMap();
         for each(_loc1_ in this._charList)
         {
            _loc1_.setObstacleMaps(this._obstacleMap,this._lakeObstacleMap,this.locationFullWidth,this.locationFullHeight);
            _loc1_.boatObstacleMap = _loc2_;
            _loc1_.boats = this._locationLayersBase.boats;
         }
      }
      
      private function inspectAnimationCharacterLoading() : void
      {
         if(this._animatedCharacter == null)
         {
            setTimeout(this.inspectAnimationCharacterLoading,100);
            return;
         }
         if(this._animatedCharacter.isLoaded)
         {
            this._animatedCharacterIsLoaded = true;
            this.create();
         }
         else
         {
            Listeners.addEventListener(this,this._animatedCharacter,Event.COMPLETE,this.onAnimatedCharacterLoadingComplete,false,2);
         }
         this._dayCycle.updateDayCycle();
      }
      
      protected function create() : void
      {
         var _loc1_:String = null;
         this.createFieldChars();
         Listeners.addEventListener(this,this._locationLayersBase,MouseEvent.CLICK,this.onClick);
         Listeners.addEventListener(this,this._locationLayersBase,MouseEvent.MOUSE_MOVE,this.onMove);
         Listeners.addEventListener(this,this._locationLayersBase,MouseEvent.DOUBLE_CLICK,this.onDoubleClick);
         if(this._scrollRect != null)
         {
            this._scrollRect = this.inspectRectByLocationLayersSize(this._scrollRect);
            this._locationLayersBase.scrollRect = this._scrollRect;
         }
         TweenCube.to(this._gui,1,{"alpha":1});
         this._scrollRect = null;
         if(this._waitForViewLoadUsernames != null && this._waitForViewLoadUsernames.length > 0)
         {
            for each(_loc1_ in this._waitForViewLoadUsernames)
            {
               GameSwf.charsManager.getViewForCallback(_loc1_,this.updateCharView,_loc1_);
            }
            this._waitForViewLoadUsernames = [];
         }
         Listeners.addEventListener(this,this.locationModel,LocationModelEvent.ENTER_TO_LOCATION,this.onEnterLocationResponse);
         Listeners.addEventListener(this,this.locationModel,LocationModelEvent.UPDATE_MAINTENANCE_TIME,this.onUpdateMaintenanceTime);
         if(this._locationLayersBase)
         {
            this.activateLocation();
            this.locationModel.sendEnterToLocation();
         }
         this.tryCleanupLoadingIndicator(true);
      }
      
      protected function createFieldChars() : void
      {
         var _loc1_:FieldChar = null;
         for each(_loc1_ in this._charList)
         {
            this.createFieldChar(_loc1_);
         }
      }
      
      protected function createFieldChar(param1:FieldChar) : void
      {
         param1.setObstacleMaps(this._obstacleMap,this._lakeObstacleMap,this.locationFullWidth,this.locationFullHeight);
         param1.boatObstacleMap = this._locationLayersBase.getBoatObstacleMap();
         param1.boats = this._locationLayersBase.boats;
         param1.setLakeCells(this._locationLayersBase.getLakeCells());
         param1.setLocationSize(this._locationLayersBase.fullWidth,this._locationLayersBase.fullHeight);
         param1.locationLayers = this._locationLayersBase;
         this._locationLayersBase.addChar(param1.graphic);
         if(param1 is NPC)
         {
            NPC(param1).onStartTalk = this.onStartTalkWithNpc;
         }
      }
      
      protected function onEnterLocationResponse(param1:LocationModelEvent) : void
      {
         Listeners.removeEventListener(this,this.locationModel,LocationModelEvent.ENTER_TO_LOCATION,this.onEnterLocationResponse);
         this.onMaintenanceHandler();
         dispatchEvent(new Event(Event.COMPLETE));
         if(this.locationModel.isSublocation && this.locationModel.locationConfig == LocationConfig.SUBLOCATION_6_SIBIRI)
         {
            FishaoFscModelManager.locationExtension.getSibiriTopUsers(this.onSibiriTopUsersReceived);
         }
         this.updateWidgets();
         this._gui.mainMenu.communicationIcon.amount = app.user.unreadPMNumber;
      }
      
      private function updateWidgets() : void
      {
         if(this._missionsUncleSamWidget == null)
         {
            this._missionsUncleSamWidget = new MissionsUncleSamWidget();
            this._gui.missionsUncleSamWidget = this._missionsUncleSamWidget;
            this._gui.addChild(this._missionsUncleSamWidget);
            this.updateSamWidgetVisibility();
         }
         if(this._collectionsGirlWidget == null && !app.user.isGuest)
         {
            this._collectionsGirlWidget = new CollectionsGirlWidget();
            this._gui.collectionsGirlWidget = this._collectionsGirlWidget;
            this._gui.addChild(this._collectionsGirlWidget);
         }
         if(this._dailyQuestManWidget == null && !app.user.isGuest)
         {
            this._dailyQuestManWidget = new DailyQuestManWidget();
            this._gui.dailyQuestManWidget = this._dailyQuestManWidget;
            this._gui.addChild(this._dailyQuestManWidget);
         }
         this._gui.fishWidgetsVerticallyAlign();
      }
      
      private function onSibiriTopUsersReceived(param1:IglooListResp) : void
      {
         if(!this._active)
         {
            return;
         }
         var _loc2_:Array = JSON.parse(param1.list) as Array;
         if(_loc2_.length > 0)
         {
            _loc2_.sortOn("length",Array.DESCENDING | Array.NUMERIC);
            if(this._locationLayersBase.bestPlayer != null)
            {
               this._locationLayersBase.setBestPlayer((_loc2_[0].login as String).toUpperCase(),I18n.getUpper("fish_" + _loc2_[0].fishId),I18n.formatDistance(_loc2_[0].length));
            }
            if(this._locationLayersBase.topPlayerBoard != null)
            {
               this._topPlayers = _loc2_;
            }
         }
         else
         {
            TextField(this._locationLayersBase.bestPlayer.getChildByName("bestPlayerName")).text = "";
            TextField(this._locationLayersBase.bestPlayer.getChildByName("bestFishName")).text = "";
            TextField(this._locationLayersBase.bestPlayer.getChildByName("bestFishSize")).text = "";
         }
         var _loc3_:MovieClip = this._locationLayersBase.topPlayerBoard;
         _loc3_.useHandCursor = true;
         _loc3_.alpha = 0;
         _loc3_.buttonMode = true;
         _loc3_.mouseEnabled = true;
         _loc3_.mouseChildren = false;
      }
      
      public function showTopPlayerDialog(param1:MouseEvent = null) : void
      {
         var _loc2_:TopPlayersSwfDialog = null;
         var _loc3_:MessageDialog = null;
         if(this._topPlayers != null && this._topPlayers.length > 0)
         {
            _loc2_ = app.dialogFactory.getTopPlayersSwfDialog();
            _loc2_.setData(this._topPlayers);
            _loc2_.show();
         }
         else
         {
            _loc3_ = app.dialogFactory.getMessageDialog();
            _loc3_.buttons = MessageDialog.OK_BUTTON | MessageDialog.CLOSE_BUTTON;
            _loc3_.closeOnOk = true;
            _loc3_.setText(I18n.get("topPlayer_list_empty"),false);
            _loc3_.show();
         }
      }
      
      protected function onMove(param1:MouseEvent) : void
      {
         Watch.change("Cursor",new Point(mouseX + FieldChar.mapOffset.x,mouseY + FieldChar.mapOffset.y));
         if(this._playerChar == null)
         {
            return;
         }
         if(this._playerChar.circleSprite.parent == null)
         {
            this._locationLayersBase.setRodRound(this._playerChar.circleSprite);
         }
         var _loc2_:int = stage.mouseX;
         var _loc3_:int = stage.mouseY;
         if(this._locationLayersBase.scrollRect != null)
         {
            _loc2_ += this._locationLayersBase.scrollRect.x - this._locationLayersBase.x;
            _loc3_ += this._locationLayersBase.scrollRect.y - this._locationLayersBase.y;
         }
         if(this._playerChar.isRodVisible)
         {
            this._playerChar.redrawCircle(_loc2_,_loc3_);
         }
      }
      
      public function updateWithType(param1:String) : void
      {
         var _loc2_:String = null;
         var _loc3_:MessageDialog = null;
         var _loc4_:DialogTournamentResults = null;
         var _loc5_:Number = NaN;
         switch(param1)
         {
            case EControllerUpdate.ECU_TOURNAMENTS_TOURNAMENT_END:
               if(GameSwf.instance.managerTournaments.endDataIsNotEnoughMembers)
               {
                  _loc2_ = I18n.template(EStringType.EST_DIALOG_TOURNAMENT_RESULT_CANCELED,{"username":app.user.username});
                  _loc3_ = new MessageDialog();
                  _loc3_.setText(_loc2_);
                  _loc3_.textAlign = TextAlign.CENTER;
                  _loc3_.buttons = MessageDialog.OK_BUTTON;
                  _loc3_.closeOnOk = true;
                  _loc3_.show();
                  FishaoSoundManager.playAndLowerBgSound(FishaoSoundManager.SFX_067_MUS_Tournament_lose);
               }
               else
               {
                  _loc4_ = app.dialogFactory.getDialogTournamentResults();
                  _loc4_.show();
               }
               break;
            case EControllerUpdate.ECU_HOLIDAY_UPDATE:
               _loc5_ = 2;
               this.updateSantaBalloon(_loc5_);
               this.updatePumpkinHeads(_loc5_);
         }
      }
      
      public function update(param1:uint, param2:uint) : void
      {
         var _loc3_:FieldChar = null;
         if(!this._active || !this._locationLoadComplete)
         {
            return;
         }
         ++this._trackerFramesElapsed;
         if(this._trackerFramesElapsed == this._trackerFireAtFrame)
         {
            this._trackerFramesElapsed = 0;
         }
         app.performanceManager.controlFPS(param1,param2);
         if(Config.SYNC_DEBUG)
         {
            this.drawSync();
         }
         var _loc4_:Number = param2 / UpdateManager.frameTimeMs;
         var _loc5_:Number = 1;
         if(NEW_MOVEMENT == 0)
         {
            _loc4_ = Math.min(_loc4_,3);
            this._avgTimeCoefOrig.push(_loc4_);
            _loc5_ = this._avgTimeCoefOrig.value;
         }
         else
         {
            if(NEW_MOVEMENT == 1)
            {
               _loc5_ = _loc4_;
            }
            if(NEW_MOVEMENT == 2)
            {
               this._avgTimeCoef.push(_loc4_);
               _loc5_ = this._avgTimeCoef.value;
            }
            if(NEW_MOVEMENT == 3)
            {
               _loc5_ = 1;
            }
            _loc5_ = Math.min(_loc5_,3);
         }
         Watch.change("timeCoef",_loc5_);
         for each(_loc3_ in this._charList)
         {
            _loc3_.update(param1,param2,_loc5_);
         }
         if(this._playerChar != null && stage != null)
         {
            this.tryCleanupLoadingIndicator();
         }
         this.handleKeyPressed();
         this.moveCameraToChar(1);
         if(this._needUpdateTutorialHelper && this._tutorialHelpers != null)
         {
            this._tutorialHelpers.update();
         }
         this._locationLayersBase.update(param1,param2);
         if(this._playerChar != null && param1 - this._lastPositionInspectionMS > 250)
         {
            this._lastPositionInspectionMS = param1;
            this.inspectPlayerSurfaceType();
            this.inspectPlayersSurfaceType();
            if(!(this is LocationDialogPrivateHouse))
            {
               this.inspectPlayerPosition();
            }
         }
      }
      
      protected function handleKeyPressed() : void
      {
         var _loc1_:* = 0;
         var _loc2_:* = 0;
         if(this._playerChar != null && stage != null && this._playerChar.isCanMove())
         {
            if(PopupManager.isDialogLayerHasChild() == false)
            {
               _loc1_ = 0;
               _loc2_ = 0;
               if(Input.isKeyDown(Keyboard.UP) || Input.isKeyDown(Keyboard.W) && !this._gui.mainMenu.chatPanel.isShowed())
               {
                  _loc2_--;
               }
               if(Input.isKeyDown(Keyboard.DOWN) || Input.isKeyDown(Keyboard.S) && !this._gui.mainMenu.chatPanel.isShowed())
               {
                  _loc2_ += 1;
               }
               if(Input.isKeyDown(Keyboard.RIGHT) || Input.isKeyDown(Keyboard.D) && !this._gui.mainMenu.chatPanel.isShowed())
               {
                  _loc1_ += 1;
               }
               if(Input.isKeyDown(Keyboard.LEFT) || Input.isKeyDown(Keyboard.A) && !this._gui.mainMenu.chatPanel.isShowed())
               {
                  _loc1_--;
               }
               if(_loc1_ > 0 && this._playerChar.position.x + _loc1_ >= this._locationLayersBase.fullWidth - SCREEN_PADDING)
               {
                  _loc1_ = 0;
               }
               if(_loc1_ < 0 && this._playerChar.position.x + _loc1_ <= SCREEN_PADDING)
               {
                  _loc1_ = 0;
               }
               if(_loc2_ > 0 && this._playerChar.position.y + _loc2_ >= this._locationLayersBase.fullHeight)
               {
                  _loc2_ = 0;
               }
               if(_loc2_ < 0 && this._playerChar.position.y + _loc2_ <= SCREEN_PADDING)
               {
                  _loc2_ = 0;
               }
               if(!this._playerChar.programmedMove)
               {
                  this._playerChar.moveByKeyboard(_loc1_,_loc2_);
               }
               if((_loc1_ != 0 || _loc2_ != 0) && this._playerChar.state == CharStateType.NORMAL)
               {
                  this._playerMakeAnyMove = true;
                  this._playerChar.startMoveAnimation();
                  this._playerChar.clearRodCircle();
                  if(this._lastPositionChangeTimestampMS == 0)
                  {
                     this._lastPositionChangeTimestampMS = getTimer();
                  }
               }
            }
            else
            {
               this._playerChar.moveByKeyboard(0,0);
            }
         }
         else if(this._playerChar != null && this._playerChar.moveStrategy is KeyboardMoveStrategy)
         {
            this._playerChar.moveByKeyboard(0,0);
         }
         if(this._showFishBlocks && getTimer() - this._lastFishblockUpdateTsMs > this.FISHBLOCK_UPDATE_MS)
         {
            this._lastFishblockUpdateTsMs = getTimer();
            FishaoFscModelManager.fscModel.sendRequest(new GetFishBlockAtLakesReq());
         }
         if(this._playerChar != null)
         {
            Watch.change("player",this._playerChar.position.x + ", " + this._playerChar.position.y);
            Watch.change("playerGraphic",this._playerChar.graphic.x + ", " + this._playerChar.graphic.y);
         }
         if(this._playerChar != null && this._playerChar.isNeedMove() == false && this._needSendRotation)
         {
            this._needSendRotation = false;
         }
         if(this._playerChar != null && this._playerChar.moveStrategy is ForceMoveStrategy && this._lastPositionChangeTimestampMS == 0)
         {
            this._lastPositionChangeTimestampMS = 1;
         }
         if(this._lastPositionChangeTimestampMS != 0 && getTimer() - this._lastPositionChangeTimestampMS > this.POSITION_UPDATE_DELAY_MS)
         {
            this._lastPositionChangeTimestampMS = 0;
            this._needSendRotation = false;
         }
      }
      
      private function drawSync() : void
      {
         removeAllChildren(_d_charPositionLayer);
         this.drawUsers();
         this.drawBoats();
      }
      
      private function drawUsers() : void
      {
         var _loc1_:LocationUser = null;
         var _loc2_:Point = null;
         var _loc3_:Vector.<LocationUser> = this.locationModel.getLocationUsers();
         for each(_loc1_ in _loc3_)
         {
            _loc1_.positionPoint.x = _loc1_.position.x - FieldChar.mapOffset.x;
            _loc1_.positionPoint.y = _loc1_.position.y - FieldChar.mapOffset.y;
            _loc1_.positionPoint.rotation = 360 + (_loc1_.position.rotation + 90);
            _d_charPositionLayer.addChild(_loc1_.positionPoint);
            if(_loc1_.fieldChar != null && _loc1_.fieldChar.boat != null)
            {
               _loc2_ = _loc1_.fieldChar.boat.transformPosition(int(_loc1_.position.x + 0.5),int(_loc1_.position.y + 0.5));
               _loc1_.boatTransPositionPoint.x = _loc2_.x - FieldChar.mapOffset.x;
               _loc1_.boatTransPositionPoint.y = _loc2_.y - FieldChar.mapOffset.y;
               _d_charPositionLayer.addChild(_loc1_.boatTransPositionPoint);
            }
         }
         _d_charPositionLayer.x = this._locationLayersBase.x;
         _d_charPositionLayer.y = this._locationLayersBase.y;
      }
      
      private function drawBoats() : void
      {
         var _loc1_:* = undefined;
         var _loc2_:Boat = null;
         if(this._locationLayersBase == null || this._locationLayersBase.boatByIndex == null)
         {
            return;
         }
         for(_loc1_ in this._locationLayersBase.boatByIndex)
         {
            _loc2_ = this._locationLayersBase.boatByIndex[_loc1_];
            _loc2_.positionPoint.x = _loc2_.graphic.position.x - FieldChar.mapOffset.x;
            _loc2_.positionPoint.y = _loc2_.graphic.position.y - FieldChar.mapOffset.y;
            _loc2_.positionPoint.rotation = _loc2_.graphic.position.rotation * 22.5;
            _loc2_.lastSendPositionPoint.x = _loc2_.lastSendPosition.x - FieldChar.mapOffset.x;
            _loc2_.lastSendPositionPoint.y = _loc2_.lastSendPosition.y - FieldChar.mapOffset.y;
            _d_charPositionLayer.addChild(_loc2_.positionPoint);
            _d_charPositionLayer.addChild(_loc2_.lastSendPositionPoint);
            Watch.change("b_" + _loc1_,"{x:" + int(_loc2_.graphic.position.x) + ", y:" + int(_loc2_.graphic.position.y) + ", r:" + int(_loc2_.graphic.position.rotation) + "}");
         }
      }
      
      private function inspectPlayerSurfaceType() : void
      {
         var _loc1_:BitmapData = this._locationLayersBase.soundMapBitmapData;
         if(_loc1_ == null || this._playerChar == null)
         {
            return;
         }
         var _loc2_:uint = uint.MAX_VALUE;
         var _loc3_:Number = Math.min(this._playerChar.position.x,this._locationLayersBase.fullWidth);
         var _loc4_:Number = Math.min(this._playerChar.position.y,this._locationLayersBase.fullHeight);
         if(_loc3_ > 0 && _loc4_ > 0 && _loc3_ <= _loc1_.width && _loc4_ <= _loc1_.height)
         {
            _loc2_ = _loc1_.getPixel32(_loc3_ - 1,_loc4_ - 1);
         }
         this._playerChar.currentSurface = SurfaceType.findByColor(_loc2_);
      }
      
      private function inspectPlayersSurfaceType() : void
      {
         var _loc1_:FieldChar = null;
         var _loc2_:BitmapData = null;
         var _loc3_:uint = 0;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:SurfaceType = null;
         for each(_loc1_ in this._charList)
         {
            if(_loc1_.graphic.visible)
            {
               _loc2_ = this._locationLayersBase.soundMapBitmapData;
               if(_loc2_ != null)
               {
                  _loc3_ = uint.MAX_VALUE;
                  _loc4_ = Math.min(_loc1_.position.x,this._locationLayersBase.fullWidth);
                  _loc5_ = Math.min(_loc1_.position.y,this._locationLayersBase.fullHeight);
                  if(_loc4_ > 0 && _loc5_ > 0 && _loc4_ <= _loc2_.width && _loc5_ <= _loc2_.height)
                  {
                     _loc3_ = _loc2_.getPixel32(_loc4_ - 1,_loc5_ - 1);
                  }
                  _loc6_ = SurfaceType.findByColor(_loc3_);
                  _loc1_.distanceToPlayer = Point.distance(this._playerChar.position,_loc1_.position);
                  _loc1_.currentSurface = _loc6_;
               }
            }
            if(_loc1_ is NPC && _loc1_.position.x < 0)
            {
               this.removeCharFromLocation(_loc1_.locationUser.username);
            }
         }
      }
      
      protected function inspectTournamentFinish() : void
      {
      }
      
      protected function inspectPlayerPosition() : void
      {
         var _loc1_:Vector.<LocationUser> = null;
         var _loc2_:int = 0;
         var _loc3_:LocationUser = null;
         var _loc4_:FieldChar = null;
         if(this._playerChar == null)
         {
            return;
         }
         var _loc5_:GridManagerObject = this._locationLayersBase.getShellAt(this._playerChar.graphic.x,this._playerChar.graphic.y,4);
         if(_loc5_ != null)
         {
            LocationDialogStatic.collectShell(_loc5_);
         }
         this.tryCollectFishbox();
         this.inspectObstacleCollision();
         this.inspectTournamentFinish();
         this.inspectSublocationEntrance();
         if(this._pointSounds != null && FishaoSoundManager.isEnabled(FishaoSoundManager.GROUP_AMBIENT_SFX))
         {
            this.inspectPositionSounds();
         }
         if(this.locationModel != null && this.locationModel.npcList != null)
         {
            _loc1_ = this.locationModel.npcList;
            if(_loc1_ != null && _loc1_.length > 0 && !this._playerChar.isTalkingWithNpc() && !this._playerChar.isInForceMovement())
            {
               _loc2_ = 0;
               while(_loc2_ < _loc1_.length)
               {
                  _loc3_ = _loc1_[_loc2_];
                  if(_loc3_ != null)
                  {
                     _loc4_ = _loc3_.fieldChar;
                     if(_loc4_ != null)
                     {
                        NPC(_loc4_).tryTalk(this._playerChar.position);
                     }
                  }
                  _loc2_++;
               }
            }
         }
         this.inspectWallButtonActivation();
         this.inspectBobsMinigame();
         this.inspectDailyQuestMinigame();
         if(this._playerChar != null && this._playerChar.programmedMove)
         {
            if(this._programmedCharMoveTarget == null || this._programmedCharMoveTarget != null && Point.distance(this._playerChar.position,this._programmedCharMoveTarget) <= 3)
            {
               this.onProgramMoveFinished();
            }
         }
      }
      
      protected function onProgramMoveFinished() : void
      {
         this._playerChar.programmedMove = false;
         this._programmedCharMoveTarget = null;
         if(this._programmedCharMoveTargetNPC != null)
         {
            this._programmedCharMoveTargetNPC.onClick();
            this._programmedCharMoveTargetNPC = null;
         }
         else if(this._moveToSublocation)
         {
            this._moveToSublocation = false;
            this._playerChar.sendCurrentPlayerPosition(true);
            GameSwf.instance.enterToSublocation(this._sublocationID,this.locationModel.id);
         }
      }
      
      private function inspectSublocationEntrance() : void
      {
         var _loc1_:Point = null;
         var _loc2_:SublocationEnter = this._locationLayersBase.getSublocationAt(this._playerChar.position.x,this._playerChar.position.y);
         if(this.declineEntrence)
         {
            this.movePlayerCharTo(new Point(this._playerChar.position.x,this._playerChar.position.y + MOVE_DOWN_OUT_SUBLOCATION));
            this.declineEntrence = false;
         }
         else if(this.locationModel.isSublocation && !this._firstMoveInSublocation)
         {
            _loc1_ = new Point(0,0);
            if(this.locationModel.id == 6)
            {
               _loc1_.y = -110;
            }
            else if(this.locationModel.id == 1)
            {
               _loc1_.y = -200;
            }
            else if(this.locationModel.absoluteId == LocationConfig.SUBLOCATION_7_LOST_VALLEY.id)
            {
               _loc1_.x = -100;
            }
            else
            {
               _loc1_.y = -MOVE_UP_IN_SUBLOCATION;
            }
            this._firstMoveInSublocation = true;
            this._lastSublocationEnter = _loc2_;
            this.movePlayerCharTo(new Point(this._playerChar.position.x + _loc1_.x,this._playerChar.position.y + _loc1_.y));
         }
         else if(LocationDialogStatic.isDifferentSublocationEnter(_loc2_,this._lastSublocationEnter))
         {
            this._lastSublocationEnter = _loc2_;
            if(_loc2_ != null)
            {
               this._lastSublocationEnterFix = _loc2_;
            }
            if(this._lastSublocationEnter != null && this._playerMakeAnyMove)
            {
               this.enterToSublocation(this._lastSublocationEnter.id);
            }
            else if(this._lastSublocationEnter != null)
            {
               if(this._lastSublocationEnter.id == 4)
               {
                  if(this._charList.hasOwnProperty("Seth"))
                  {
                     this._programmedCharMoveTarget = MOVE_TO_SETH;
                  }
               }
               else if(this._lastSublocationEnter.id == 300)
               {
                  this._programmedCharMoveTarget = MOVE_TO_EXIT_FROM_PRIVATE_HOUSE;
               }
               else if(this._lastSublocationEnter.id == 400)
               {
                  this._programmedCharMoveTarget = new Point(3320,350);
               }
               else
               {
                  this._programmedCharMoveTarget = MOVE_FROM_SUBLOCATION[this._lastSublocationEnter.id - 1];
               }
               this.movePlayerCharTo(this._programmedCharMoveTarget);
            }
         }
      }
      
      private function inspectBobsMinigame() : void
      {
         if(this._locationLayersBase == null || this._playerChar == null)
         {
            return;
         }
         var _loc1_:GridManagerObject = this._locationLayersBase.getBobsMinigameFishCoinAt(this._playerChar.graphic.x,this._playerChar.graphic.y,4);
         if(_loc1_ != null)
         {
            this.collectBobsMinigame(_loc1_);
         }
      }
      
      private function collectBobsMinigame(param1:GridManagerObject) : void
      {
         FishaoSoundManager.play(FishaoSoundManager.SFX_060_UI_Fish_coin);
         var _loc2_:FieldBobsMinigameFishCoin = FieldBobsMinigameFishCoin(param1.data);
         var _loc3_:GraphPoint = new GraphPoint(_loc2_.position.x,_loc2_.position.y);
         FishaoFscModelManager.locationExtension.collectFishCoinAt(_loc3_);
         this._locationLayersBase.removeBobsMinigameFishCoin(param1);
         if(this._locationLayersBase.bobsMinigameFishCoinsLength == 0)
         {
            this.endOfBobsMinigame();
         }
      }
      
      private function inspectDailyQuestMinigame() : void
      {
         if(this._locationLayersBase == null || this._playerChar == null)
         {
            return;
         }
         var _loc1_:GridManagerObject = this._locationLayersBase.getDailyQuestMinigameFishboneAt(this._playerChar.graphic.x,this._playerChar.graphic.y,4);
         if(_loc1_ != null)
         {
            this.collectDailyQuestFishbone(_loc1_);
         }
      }
      
      private function inspectObstacleCollision() : void
      {
         if(this._playerChar == null || this._playerChar.raft != null || this._playerChar.boat != null || this._playerChar.moveStrategy is BoatMoveStrategy || this._playerChar.isFreezed)
         {
            return;
         }
         var _loc1_:int = getTimer();
         if(this._playerChar.isAtObstacle())
         {
            if(_loc1_ - this._lastObstacleCollisionTimestampMS > this.MAX_OBSTACLE_COLLISION_MS)
            {
               this._lastObstacleCollisionTimestampMS = _loc1_ + 5 * 1000;
               this._playerChar.putToFirstFreePoint();
            }
         }
         else
         {
            this._lastObstacleCollisionTimestampMS = _loc1_;
         }
      }
      
      public function inspectPositionSounds(param1:Boolean = false) : void
      {
         var _loc2_:PositionSoundMediator = null;
         if(this._playerChar == null)
         {
            return;
         }
         for each(_loc2_ in this._pointSounds)
         {
            _loc2_.handlePlayerPosition(this._playerChar.graphicPosition,param1);
         }
      }
      
      private function inspectWallButtonActivation() : void
      {
         var _loc1_:FieldChar = null;
         var _loc2_:int = 0;
         var _loc3_:WallButtonEnter = null;
         if(this._locationLayersBase == null)
         {
            return;
         }
         if(this._locationLayersBase.wallButtonEnters.length > 0)
         {
            _loc2_ = 0;
            for each(_loc3_ in this._locationLayersBase.wallButtonEnters)
            {
               _loc3_.activatedBySomebody = false;
            }
            for each(_loc1_ in this._charList)
            {
               for each(_loc3_ in this._locationLayersBase.wallButtonEnters)
               {
                  if(_loc3_.hitTestPoint(_loc1_.position.x,_loc1_.position.y))
                  {
                     if(!_loc3_.activatedBySomebody)
                     {
                        _loc3_.activatedBySomebody = true;
                        _loc2_++;
                     }
                  }
               }
            }
            for each(_loc3_ in this._locationLayersBase.wallButtonEnters)
            {
               _loc3_.activated = _loc2_ == this._locationLayersBase.wallButtonEnters.length || _loc2_ > 1;
               _loc3_.update();
            }
            if(_loc2_ == this._locationLayersBase.wallButtonEnters.length || _loc2_ > 1)
            {
               if(this._locationLayersBase.specialWall != null)
               {
                  this._locationLayersBase.specialWall.open();
               }
            }
            else if(this._locationLayersBase.specialWall != null)
            {
               if(this._locationLayersBase.specialWall.close())
               {
                  for each(_loc1_ in this._charList)
                  {
                     this.inspectPlayerPositionBySpecialWall(_loc1_);
                  }
               }
               if(this.locationModel.id == 9)
               {
                  if(this.isInSpecialWall(this.player.position.x,this.player.position.y,this.player) && _loc2_ < this._locationLayersBase.wallButtonEnters.length && _loc2_ <= 1)
                  {
                     Cc.error("Wrong in speciall wall       username = " + app.user.username + ";  activated = " + _loc2_ + ";  _locationLayers.specialWall = " + this._locationLayersBase.specialWall + "; _locationLayers.wallButtonEnters.length = " + this._locationLayersBase.wallButtonEnters.length);
                     GameSwf.sendReportToServer("wrongInSpecialWall");
                  }
               }
            }
         }
      }
      
      private function inspectPlayerPositionByKeyRoad(param1:FieldChar) : void
      {
         if(!this.isInSpecialWall(param1.position.x,param1.position.y,param1))
         {
            return;
         }
         param1.position.x = KEY_LAND_EXIT.x;
         param1.position.y = KEY_LAND_EXIT.y;
         param1.cancelFishing();
      }
      
      protected function inspectPlayerPositionBySpecialWall(param1:FieldChar) : void
      {
         if(!this.isInSpecialWall(param1.position.x,param1.position.y,param1))
         {
            return;
         }
         param1.position.x = SPECIAL_WALL_EXIT.x;
         param1.position.y = SPECIAL_WALL_EXIT.y;
         param1.cancelFishing();
      }
      
      private function removeShell(param1:GridManagerObject) : void
      {
         this._locationLayersBase.removeShell(param1);
      }
      
      private function tryCollectFishbox() : void
      {
         var _loc1_:GridManagerObject = this._locationLayersBase.getFishboxAt(this._playerChar.graphic.x,this._playerChar.graphic.y,4);
         if(_loc1_ == null || !this.locationModel.hasFishbox)
         {
            return;
         }
         var _loc2_:int = getTimer();
         if(this._timeCollectFishbox == 0 || this._timeCollectFishbox - _loc2_ > 3000)
         {
            FishaoFscModelManager.locationExtension.collectItem(ResourceType.FISHBOX.id,EResourceID.ER_FISHBOX);
            this._timeCollectFishbox = _loc2_;
         }
      }
      
      private function collectDailyQuestFishbone(param1:GridManagerObject) : void
      {
         FishaoSoundManager.play(FishaoSoundManager.SFX_061_UI_Seashell_collect);
         var _loc2_:FieldFishbone = FieldFishbone(param1.data);
         var _loc3_:GraphPoint = new GraphPoint(_loc2_.position.x,_loc2_.position.y);
         FishaoFscModelManager.locationExtension.collectFishboneAt(_loc3_,this.locationModel.id);
         this._locationLayersBase.removeDailyQuestMinigameFishbone(param1);
      }
      
      protected function enterToSublocation(param1:int) : void
      {
         var _loc2_:String = null;
         var _loc3_:NPC = null;
         var _loc4_:FriendsHouseListSwfDialog = null;
         if(this.locationModel.locationConfig == LocationConfig.LOCATION_8_SEAGULL_HARBOR)
         {
            _loc2_ = "sailor_" + param1;
            if(this._charList.hasOwnProperty(_loc2_))
            {
               _loc3_ = this._charList[_loc2_];
               this._programmedCharMoveTarget = new Point(_loc3_.position.x - 50,_loc3_.position.y + 15);
               this._programmedCharMoveTargetNPC = _loc3_;
            }
            if(this._programmedCharMoveTarget != null && this._playerChar.moveStrategy is BoatMoveStrategy == false)
            {
               this._playerChar.programmedMove = true;
               this._playerChar.onMouseClick(this._programmedCharMoveTarget.x,this._programmedCharMoveTarget.y);
            }
         }
         else if(Boolean(param1 == 1) && Boolean(this._restrictEnterToSublocation["TROUT_FARM"]) || Boolean(param1 == 4) && Boolean(this._restrictEnterToSublocation["PYRAMID"]))
         {
            if(this._charList.hasOwnProperty("Adam"))
            {
               this._programmedCharMoveTarget = MOVE_TO_ADAM;
               this._programmedCharMoveTargetNPC = this._charList["Adam"];
            }
            if(this._charList.hasOwnProperty("Seth"))
            {
               this._programmedCharMoveTarget = MOVE_TO_SETH;
               this._programmedCharMoveTargetNPC = this._charList["Seth"];
            }
            this.movePlayerCharTo(this._programmedCharMoveTarget);
         }
         else if(param1 == 300)
         {
            this.movePlayerCharTo(new Point(2940,220));
            GameSwf.instance.enterPrivateHouse(app.user.username);
         }
         else if(param1 == 400)
         {
            this.movePlayerCharTo(this._programmedCharMoveTarget);
            _loc4_ = app.dialogFactory.getFriendsHouseListSwfDialog();
            _loc4_.show();
         }
         else if(param1 != -1)
         {
            this._moveToSublocation = true;
            this._sublocationID = param1;
            this.movePlayerCharTo(MOVE_TO_SUBLOCATION[param1 - 1]);
         }
         else
         {
            if(this._playerChar != null)
            {
               this._playerChar.sendCurrentPlayerPosition(true);
            }
            GameSwf.instance.enterToSublocation(param1,this.locationModel.id);
         }
      }
      
      protected function movePlayerCharTo(param1:Point) : void
      {
         if(param1 == null)
         {
            return;
         }
         this._programmedCharMoveTarget = param1;
         this._playerChar.programmedMove = true;
         this._playerChar.onMouseClick(this._programmedCharMoveTarget.x,this._programmedCharMoveTarget.y);
      }
      
      public function moveCameraToChar(param1:Number) : void
      {
         var _loc2_:Rectangle = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Rectangle = null;
         if(this._locationLayersBase != null)
         {
            _loc2_ = this._locationLayersBase.scrollRect;
         }
         if(this._playerChar != null && _loc2_ != null)
         {
            _loc3_ = scrollRect.width / 2;
            _loc4_ = scrollRect.height / 2;
            _loc5_ = 0;
            if(this._playerChar.graphic.x > _loc3_ && this._playerChar.graphic.x < this._locationLayersBase.fullWidth - _loc3_)
            {
               _loc5_ = this._playerChar.graphic.x - (_loc2_.x + _loc3_);
            }
            else if(_loc2_.x > 0 && _loc2_.x + _loc2_.width < this._locationLayersBase.fullWidth)
            {
               _loc5_ = this._playerChar.graphic.x - (_loc2_.x + _loc3_);
            }
            _loc6_ = 0;
            if(this._playerChar.graphic.y > _loc4_ && this._playerChar.graphic.y < this._locationLayersBase.fullHeight - _loc4_)
            {
               _loc6_ = this._playerChar.graphic.y - (_loc2_.y + _loc4_);
            }
            else if(_loc2_.y > 0 && _loc2_.y + _loc2_.height < this._locationLayersBase.fullHeight)
            {
               _loc6_ = this._playerChar.graphic.y - (_loc2_.y + _loc4_);
            }
            if(_loc5_ * _loc5_ + _loc6_ * _loc6_ > 500 * 500)
            {
               if(this._playerChar != null && _loc2_ != null)
               {
                  _loc2_.x = Math.round(limit(this._playerChar.graphic.x - _loc3_,0,this._locationLayersBase.fullWidth - scrollRect.width));
                  _loc2_.y = Math.round(limit(this._playerChar.graphic.y - _loc4_,0,this._locationLayersBase.fullHeight - scrollRect.height));
                  _loc2_.width = scrollRect.width;
                  _loc2_.height = scrollRect.height;
                  _loc2_ = this.inspectRectByLocationLayersSize(_loc2_);
                  this._locationLayersBase.scrollRect = _loc2_;
                  FieldChar.mapOffset.x = _loc2_.x;
                  FieldChar.mapOffset.y = _loc2_.y;
               }
            }
            else
            {
               _loc5_ = int(_loc5_ * (0.1 * param1));
               _loc6_ = int(_loc6_ * (0.1 * param1));
               if(_loc5_ != 0 || _loc6_ != 0)
               {
                  _loc2_.x += _loc5_;
                  _loc2_.y += _loc6_;
                  _loc2_.x = Math.round(limit(_loc2_.x,0,this._locationLayersBase.fullWidth - scrollRect.width));
                  _loc2_.y = Math.round(limit(_loc2_.y,0,this._locationLayersBase.fullHeight - scrollRect.height));
                  _loc2_ = this.inspectRectByLocationLayersSize(_loc2_);
                  this._locationLayersBase.scrollRect = _loc2_;
                  FieldChar.mapOffset.x = _loc2_.x;
                  FieldChar.mapOffset.y = _loc2_.y;
               }
            }
         }
         if(this._locationLayersBase != null && this._locationLayersBase.scrollRect != null)
         {
            _loc7_ = this._locationLayersBase.scrollRect;
            FieldChar.mapOffset.x = _loc7_.x;
            FieldChar.mapOffset.y = _loc7_.y;
         }
      }
      
      protected function onClick(param1:MouseEvent) : void
      {
         if(this._playerChar == null || this._playerChar.programmedMove || this._playerChar.moveStrategy is ForceMoveStrategy)
         {
            return;
         }
         var _loc2_:int = stage.mouseX - this._locationLayersBase.x;
         var _loc3_:int = stage.mouseY - this._locationLayersBase.y;
         if(this._locationLayersBase.topPlayerBoard != null && this._locationLayersBase.topPlayerBoard.hitTestPoint(stage.mouseX,stage.mouseY))
         {
            this.showTopPlayerDialog();
         }
         else if(this._playerChar != null)
         {
            if(this._locationLayersBase.scrollRect != null)
            {
               _loc2_ += this._locationLayersBase.scrollRect.x;
               _loc3_ += this._locationLayersBase.scrollRect.y;
            }
            if(_loc2_ > this._locationLayersBase.fullWidth - SCREEN_PADDING)
            {
               _loc2_ = this._locationLayersBase.fullWidth - SCREEN_PADDING;
            }
            else if(_loc2_ < SCREEN_PADDING)
            {
               _loc2_ = SCREEN_PADDING;
            }
            this._playerChar.onMouseClick(_loc2_,_loc3_);
            this._needSendRotation = true;
            this._lastPositionChangeTimestampMS = 0;
            this._playerMakeAnyMove = true;
         }
      }
      
      protected function onDoubleClick(param1:MouseEvent) : void
      {
      }
      
      override public function activate() : void
      {
         Cc.log("activate() " + this.toString());
         super.activate();
         try
         {
            Listeners.addEventListener(this,GameSwf.charsManager,CharManagerEvent.UPDATE_CHAR_VIEW,this.onCharViewUpdate);
            Listeners.addEventListener(this,this.locationModel,LocationModelEvent.ADD_NEW_CHAR,this.onAddNewCharToLocation);
            Listeners.addEventListener(this,this.locationModel,LocationModelEvent.REMOVE_CHAR,this.onRemoveCharFromLocation);
            Listeners.addEventListener(this,this.locationModel,LocationModelEvent.START_BOBS_MINIGAME,this.onStartBobsMinigame);
            Listeners.addEventListener(this,this.locationModel,LocationModelEvent.STOP_BOBS_MINIGAME,this.onStopBobsMinigame);
            Listeners.addEventListener(this,this.locationModel,LocationModelEvent.START_STEVE_MINIGAME,this.onStartSteveMinigame);
            Listeners.addEventListener(this,this.locationModel,LocationModelEvent.PUT_CHAR_TO_BOAT,this.onPutCharToBoat);
            Listeners.addEventListener(this,this.locationModel.weatherVariable,VariableChangeEvent.CHANGE,this.onWeatherChange);
            Listeners.addEventListener(this,this.locationModel,LocationModelEvent.LOAD_LOCATION_ITEMS,this.onLoadLocationItems);
            Listeners.addEventListener(this,this.locationModel,LocationModelEvent.ADD_LOCATION_ITEM,this.onAddLocationItem);
            Listeners.addEventListener(this,this.locationModel,LocationModelEvent.REMOVE_LOCATION_ITEM,this.onRemoveLocationItem);
            Listeners.addEventListener(this,this.locationModel,LocationModelEvent.ADD_FISHBOX,this.onAddFishbox);
            Listeners.addEventListener(this,this.locationModel,LocationModelEvent.REMOVE_FISHBOX,this.onRemoveFishbox);
            Listeners.addEventListener(this,this.locationModel,LocationModelEvent.DESTROY_FISHBOX,this.onDestroyFishbox);
            Listeners.addEventListener(this,this.locationModel,LocationModelEvent.UPDATE_SHELLS,this.onUpdateShells);
            Listeners.addEventListener(this,this.locationModel,LocationModelEvent.REMOVE_SHELL,this.onRemoveShell);
            Listeners.addEventListener(this,this.locationModel,LocationModelEvent.ADD_SHELL,this.onAddShell);
            Listeners.addEventListener(this,this.locationModel,LocationModelEvent.ADD_DAILY_QUEST_FISHBONES,this.onAddDailyQuestFishbones);
         }
         catch(e:Error)
         {
            Cc.error("Add listeners error",e);
            Cc.error(e.getStackTrace());
            GameSwf.sendReportToServer("location");
         }
         try
         {
            this.loadLocationUsers();
         }
         catch(e:Error)
         {
            Cc.error("loadLocationUsers error",e);
            Cc.error(e.getStackTrace());
            GameSwf.sendReportToServer("location");
         }
      }
      
      protected function activateLocation() : void
      {
         Cc.log("activateLocation() " + this.toString());
         this._active = true;
         Config.WATER_ANIMATION_EFFECT = true;
         this._acceleration = false;
         this._playerMakeAnyMove = false;
         if(this._playerChar != null)
         {
            this._playerChar.clearRodCircle();
         }
         Listeners.addEventListener(this,this._energyRestoreTimer,TimerEvent.TIMER,this.onEnergyTimer);
         this.redrawEnergyTimer();
         FishaoFscModelManager.fscModel.addRequestHandler(UpdateResp,this.onUpdateResp);
         FishaoFscModelManager.fscModel.addRequestHandler(EnterSublocationSuccessResp,this.onEnterSublocationSuccessResp);
         FishaoFscModelManager.fscModel.addRequestHandler(EnterRaftResp,this.onEnterRaft);
         FishaoFscModelManager.fscModel.addRequestHandler(LeaveSublocationResp,this.onLeaveSublocationResp);
         FishaoFscModelManager.fscModel.addRequestHandler(ResponseBoatEnter,this.onBoatEnter);
         FishaoFscModelManager.fscModel.addRequestHandler(ResponseBoatMove,this.onBoatMove);
         FishaoFscModelManager.fscModel.addRequestHandler(ResponseBoatRelease,this.onBoatRelease);
         FishaoFscModelManager.fscModel.addRequestHandler(DamianActionResp,this.onDamianActionResp);
         FishaoFscModelManager.fscModel.addRequestHandler(ResponseNpcTalk,this.onActionWithResp);
         app.user.onFishcoinsChange(this.onFishcoinsChange);
         app.user.onFishbucksChange(this.onFishbucksChange);
         app.user.onLevelChange(this.onLevelChange);
         app.user.addExpChangeListener(this.onExpChange);
         app.user.onNextExpLimChange(this.onNextExpLimChange);
         app.user.onPrevExpLimChange(this.onPrevExpLimChange);
         this.fishcoins = app.user.fishcoins;
         this.fishbucks = app.user.fishbucks;
         this.level = app.user.level;
         this.setUserExp(app.user.experience,true);
         this._locationLayersBase.activate();
         UpdateManager.getInstance().getGroup(UpdateGroup.ENTER_FRAME).add(this);
         if(this._playerChar != null)
         {
            this._playerChar.activate();
         }
         if(this._collectionsGirlWidget != null)
         {
            this._collectionsGirlWidget.enable();
         }
         if(this._dailyQuestManWidget != null)
         {
            if(DailyQuestManWidget.dailyQuestsModel.prizeIsCollect)
            {
               this._dailyQuestManWidget.disable();
            }
            else
            {
               this._dailyQuestManWidget.enable();
            }
         }
         FishaoSoundManager.playForLocation(this.locationModel.absoluteId);
         FishaoSoundManager.playAmbientForLocation(this.locationModel.absoluteId);
         this._gui.activate();
         this.startPositionSounds();
         this.locationModel.floatInWaterManager.boats = this._locationLayersBase.boats;
      }
      
      private function onEnterSublocationSuccessResp(param1:EnterSublocationSuccessResp) : void
      {
         var response:EnterSublocationSuccessResp = param1;
         var energyData:Object = null;
         var sublocationModel:SublocationModel = this.locationModel as SublocationModel;
         sublocationModel.onEnterSublocation(response);
         if(response.hasDataProperty("energy"))
         {
            try
            {
               energyData = response.getJsonData("energy");
               this.energy = energyData.energy;
               this.energyRestoreLeftTime = energyData.incLeftSec;
               this.locationModel.wasLoadedFirstResp = true;
            }
            catch(e:Error)
            {
               Cc.error("onEnterSublocationSuccessResp energy");
               Cc.error(e.toString());
               Cc.error(e.getStackTrace());
            }
         }
         if(response.hasDataProperty("timeLeft"))
         {
            this.manageTimeLeftProperty(response.getJsonData("timeLeft"));
         }
         this.tryHandleBoosterUpdate(response,EBoosterType.EBT_MAGIC_WATCH);
         this.tryHandleBoosterUpdate(response,EBoosterType.EBT_LUCKY_POTION);
         this.tryHandleBoosterUpdate(response,EBoosterType.EBT_SHINY_POTION);
         this.tryHandleBoosterUpdate(response,EBoosterType.EBT_EXP);
         this.tryHandleBoosterUpdate(response,EBoosterType.EBT_RADAR);
         this.tryHandleBoosterUpdate(response,EBoosterType.EBT_POWER_BOOSTER);
         try
         {
            this.loadDynamicGraphics(response);
         }
         catch(e:Error)
         {
            Cc.error("onEnterSublocationSuccessResp load dynamic graphics");
            Cc.error(e.toString());
            Cc.error(e.getStackTrace());
         }
      }
      
      private function tryHandleBoosterUpdate(param1:ResponseWithData, param2:String) : void
      {
         var _loc3_:Object = LocationDialogStatic.tryGetBoosterData(param1,param2);
         if(_loc3_ == null)
         {
            LocationDialogStatic.tryDisableBooster(param1,param2);
            return;
         }
         app.user.setIsInfluencedOf(param2,true);
         var _loc4_:int = Debug.assertProperty(_loc3_,"type");
         var _loc5_:int = Debug.assertProperty(_loc3_,"timeLeftSec");
         switch(_loc4_)
         {
            case ResourceType.ID_SHINY_POTION_1:
            case ResourceType.ID_SHINY_POTION_2:
               app.user.currentShinyPotionTimeMark = new TimerMark(_loc5_ * 1000,getTimer());
               app.user.shinyPotionAlarm = new SingleAlarm();
               app.user.shinyPotionAlarm.activateInSec(_loc5_,new Callback(onShinyPotionAlarmComplete));
               this._gui.addInfluencingItemWidget(ResourceType.SHINY_POTION.id,_loc4_,_loc5_);
               break;
            case ResourceType.ID_EXP_BOOSTER_X2:
            case ResourceType.ID_EXP_BOOSTER_X4:
               app.user.currentExpBoosterTimeMark = new TimerMark(_loc5_ * 1000,getTimer());
               app.user.expBoosterAlarm = new SingleAlarm();
               app.user.expBoosterAlarm.activateInSec(_loc5_,new Callback(onExpBoosterAlarmComplete));
               this._gui.addInfluencingItemWidget(ResourceType.EXP_BOOSTER.id,_loc4_,_loc5_);
               break;
            case ResourceType.ID_MAGIC_WATCH:
               app.user.currentMagicWatchTimeMark = new TimerMark(_loc5_ * 1000,getTimer());
               app.user.magicWatchAlarm = new SingleAlarm();
               app.user.magicWatchAlarm.activateInSec(_loc5_,new Callback(onMagicWatchAlarmComplete));
               this._gui.addInfluencingItemWidget(ResourceType.MAGIC_WATCH.id,ResourceType.ID_MAGIC_WATCH,_loc5_);
               break;
            case ResourceType.ID_LUCK_POTION_2:
            case ResourceType.ID_LUCK_POTION_1:
               app.user.currentLuckPotionTimeMark = new TimerMark(_loc5_ * 1000,getTimer());
               app.user.luckPotionAlarm = new SingleAlarm();
               app.user.luckPotionAlarm.activateInSec(_loc5_,new Callback(onLuckPotionAlarmComplete));
               this._gui.addInfluencingItemWidget(ResourceType.LUCK_POTION.id,_loc4_,_loc5_);
               break;
            case ResourceType.ID_GREEN_FISH_RADAR:
            case ResourceType.ID_WHITE_FISH_RADAR:
            case ResourceType.ID_BLUE_FISH_RADAR:
               switch(_loc4_)
               {
                  case ResourceType.ID_GREEN_FISH_RADAR:
                     GameSwf.radarType = 1;
                     break;
                  case ResourceType.ID_WHITE_FISH_RADAR:
                     GameSwf.radarType = 2;
                     break;
                  case ResourceType.ID_BLUE_FISH_RADAR:
                     GameSwf.radarType = 3;
               }
               app.user.currentFishRadarTimeMark = new TimerMark(_loc5_ * 1000,getTimer());
               if(getTimer() >= app.user.isInfluencedOfFishRadar)
               {
                  if(app.user.fishRadarAlarm != null)
                  {
                     app.user.fishRadarAlarm.destroy();
                  }
                  app.user.fishRadarAlarm = new SingleAlarm();
                  app.user.fishRadarAlarm.activateInSec(_loc5_,new Callback(onFishRadarAlarmComplete));
                  FishaoFscModelManager.fscModel.sendRequest(new GetFishBlockAtLakesReq());
                  this._gui.addInfluencingItemWidget(ResourceType.FISH_RADAR.id,_loc4_,_loc5_);
               }
               break;
            case ResourceType.ID_POWER_BOOSTER_1:
            case ResourceType.ID_POWER_BOOSTER_2:
               app.user.currentPowerBoosterTimeMark = new TimerMark(_loc5_ * 1000,getTimer());
               app.user.powerBoosterAlarm = new SingleAlarm();
               app.user.powerBoosterAlarm.activateInSec(_loc5_,new Callback(onPowerBoosterAlarmComplete));
               this._gui.addInfluencingItemWidget(ResourceType.POWER_BOOSTER.id,_loc4_,_loc5_);
               break;
            default:
               Debug.assert(false);
         }
         GameSwf.instance.managerBoosters.addBoosterById(_loc4_);
      }
      
      private function startPositionSounds() : void
      {
         var _loc1_:PositionSoundMediator = null;
         var _loc2_:Vector.<PositionSoundMediator> = this.createPositionSounds();
         if(_loc2_ == null)
         {
            return;
         }
         this._pointSounds = _loc2_;
         for each(_loc1_ in this._pointSounds)
         {
            _loc1_.reset();
         }
      }
      
      protected function createPositionSounds() : Vector.<PositionSoundMediator>
      {
         var _loc1_:PositionSoundMediator = null;
         var _loc2_:Vector.<PositionSoundMediator> = null;
         var _loc3_:Vector.<PositionSoundMediator> = this.locationModel.locationConfig.pointSounds;
         if(_loc3_ != null)
         {
            _loc2_ = new Vector.<PositionSoundMediator>(0);
            for each(_loc1_ in _loc3_)
            {
               _loc2_.push(_loc1_);
            }
         }
         return _loc2_;
      }
      
      private function onDamianActionResp(param1:DamianActionResp) : void
      {
         var _loc2_:Sprite = null;
         var _loc3_:GlowFilter = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(param1.blocks.length == 0)
         {
            return;
         }
         var _loc6_:Array = [];
         var _loc7_:Array = JSON.parse(param1.blocks)[1];
         var _loc8_:int = 0;
         while(_loc8_ < _loc7_.length)
         {
            if(GOOD_FISHING_SPOTS.indexOf(_loc7_[_loc8_]) != -1)
            {
               _loc6_.push(_loc7_[_loc8_]);
            }
            _loc8_++;
         }
         var _loc9_:int = int(_loc6_[int(Math.random() * _loc6_.length)]);
         var _loc10_:DisplayObject = this._locationLayersBase.getLakeCells();
         if(_loc10_ == null)
         {
            _loc10_ = this._locationLayersBase.getLakeCells();
         }
         var _loc11_:DisplayObject = MovieClip(_loc10_).getChildByName("lake_1_" + (_loc9_ + 1));
         if(_loc11_ != null)
         {
            _loc2_ = new Sprite();
            _loc2_.x = _loc10_.x + _loc11_.x;
            _loc2_.y = _loc10_.x + _loc11_.y;
            _loc3_ = new GlowFilter();
            _loc3_.color = 16777215;
            _loc3_.alpha = 1;
            _loc3_.blurX = 25;
            _loc3_.blurY = 25;
            _loc3_.quality = BitmapFilterQuality.MEDIUM;
            _loc2_.graphics.beginFill(16777215);
            _loc2_.graphics.drawRect(0,0,200,200);
            _loc2_.graphics.endFill();
            _loc2_.filters = [_loc3_];
            _loc2_.name = "Glowed cell";
            TweenCube.to(_loc2_,1,{"alpha":0},{
               "yoyo":true,
               "loop":30,
               "onComplete":LocationDialogStatic.removeGlowCell,
               "onCompleteParams":[_loc2_]
            });
            _loc10_.parent.addChildAt(_loc2_,_loc10_.parent.getChildIndex(_loc10_));
            _loc4_ = _loc2_.x + _loc2_.width * 0.5;
            _loc5_ = _loc2_.y + _loc2_.height * 0.5;
            setTimeout(this.moveToGoodSpot,1000,_loc4_,_loc5_);
         }
      }
      
      private function moveToGoodSpot(param1:Number, param2:Number) : void
      {
         this._playerChar.stopTalkWithNpc();
         Cc.log("move from " + this._playerChar.position + " to " + param1 + ", " + param2);
         this._playerChar.forceMoveTo(param1,param2);
      }
      
      private function updateSamWidgetVisibility() : void
      {
         if(this._missionsUncleSamWidget != null)
         {
            this._missionsUncleSamWidget.visible = GameSwf.instance.managerTutorial.isTutorialCommonComplete;
         }
         if(this._gui != null)
         {
            this._gui.fishWidgetsVerticallyAlign();
         }
      }
      
      override public function deactivate() : void
      {
         super.deactivate();
         if(this._gui != null)
         {
            this._gui.removeAllInfluencingWidget();
         }
         Cc.log("Deactivate location " + this.toString());
         Listeners.removeEventListener(this,GameSwf.charsManager,CharManagerEvent.UPDATE_CHAR_VIEW,this.onCharViewUpdate);
         Listeners.removeEventListener(this,this.locationModel,LocationModelEvent.ADD_NEW_CHAR,this.onAddNewCharToLocation);
         Listeners.removeEventListener(this,this.locationModel,LocationModelEvent.REMOVE_CHAR,this.onRemoveCharFromLocation);
         if(this.locationModel != null && this.locationModel.weatherVariable != null)
         {
            Listeners.removeEventListener(this,this.locationModel.weatherVariable,VariableChangeEvent.CHANGE,this.onWeatherChange);
         }
         Listeners.removeEventListener(this,this.locationModel,LocationModelEvent.UPDATE_SHELLS,this.onUpdateShells);
         Listeners.removeEventListener(this,this.locationModel,LocationModelEvent.REMOVE_SHELL,this.onRemoveShell);
         Listeners.removeEventListener(this,this.locationModel,LocationModelEvent.ADD_SHELL,this.onAddShell);
         Listeners.removeEventListener(this,this.locationModel,LocationModelEvent.LOAD_LOCATION_ITEMS,this.onLoadLocationItems);
         Listeners.removeEventListener(this,this.locationModel,LocationModelEvent.ADD_LOCATION_ITEM,this.onAddLocationItem);
         Listeners.removeEventListener(this,this.locationModel,LocationModelEvent.REMOVE_LOCATION_ITEM,this.onRemoveLocationItem);
         Listeners.removeEventListener(this,this.locationModel,LocationModelEvent.START_BOBS_MINIGAME,this.onStartBobsMinigame);
         Listeners.removeEventListener(this,this.locationModel,LocationModelEvent.STOP_BOBS_MINIGAME,this.onStopBobsMinigame);
         Listeners.removeEventListener(this,this.locationModel,LocationModelEvent.START_STEVE_MINIGAME,this.onStartSteveMinigame);
         Listeners.removeEventListener(this,this.locationModel,LocationModelEvent.PUT_CHAR_TO_BOAT,this.onPutCharToBoat);
         Listeners.removeEventListener(this,this.locationModel,LocationModelEvent.ADD_FISHBOX,this.onAddFishbox);
         Listeners.removeEventListener(this,this.locationModel,LocationModelEvent.DESTROY_FISHBOX,this.onDestroyFishbox);
         Listeners.removeEventListener(this,this.locationModel,LocationModelEvent.REMOVE_FISHBOX,this.onRemoveFishbox);
         Listeners.removeEventListener(this,this.locationModel,LocationModelEvent.ADD_DAILY_QUEST_FISHBONES,this.onAddDailyQuestFishbones);
         this.deactivateLocation();
      }
      
      private function deactivateLocation() : void
      {
         var _loc1_:Boat = null;
         var _loc2_:FieldChar = null;
         this._active = false;
         this.stopPositionSounds();
         this.deactivateUser();
         if(this._energyRestoreTimer != null)
         {
            Listeners.removeEventListener(this,this._energyRestoreTimer,TimerEvent.TIMER,this.onEnergyTimer);
            this._energyRestoreTimer.stop();
         }
         Utils.safeRun(this.removeRequestHandlers);
         if(this._locationLayersBase != null && this._locationLayersBase.boats != null)
         {
            for each(_loc1_ in this._locationLayersBase.boats)
            {
               _loc1_.release();
            }
         }
         if(this.locationModel != null)
         {
            this.locationModel.deactivate();
         }
         if(this._gui != null)
         {
            this._gui.deactivate();
         }
         if(this._charList != null)
         {
            for each(_loc2_ in this._charList)
            {
               _loc2_.destroy();
            }
         }
         if(this._playerChar != null)
         {
            this._playerChar.deactivate();
         }
         this._charList = new Dictionary();
         if(this._playerChar != null)
         {
            this._playerChar.destroy();
            this._playerChar = null;
         }
         if(this._locationLayersBase != null)
         {
            this._locationLayersBase.removeAllShells();
            this._locationLayersBase.removeAllFishbones();
            this._locationLayersBase.removeAllFishboxes();
            this._locationLayersBase.deactivate();
         }
         UpdateManager.getInstance().getGroup(UpdateGroup.ENTER_FRAME).remove(this);
         FishaoSoundManager.stopAllLoopSounds();
         if(this.locationModel != null)
         {
            FishaoSoundManager.stopLocationMusic(this.locationModel.id);
         }
         FishaoSoundManager.stopCurrentAmbientMusic();
      }
      
      private function deactivateUser() : void
      {
         if(app.user == null)
         {
            return;
         }
         app.user.atTheBoat.value = false;
         app.user.inFishingProcess.value = false;
         app.user.removeOnFishcoinsChange(this.onFishcoinsChange);
         app.user.removeOnFishbucksChange(this.onFishbucksChange);
         app.user.removeOnLevelChange(this.onLevelChange);
         app.user.removeOnExpChange(this.onExpChange);
         app.user.removeOnNextExpLimChange(this.onNextExpLimChange);
         app.user.removeOnPrevExpLimChange(this.onPrevExpLimChange);
      }
      
      private function removeRequestHandlers() : void
      {
         var _loc1_:FishaoFscModel = FishaoFscModelManager.fscModel;
         _loc1_.removeRequestHandler(UpdateResp,this.onUpdateResp);
         _loc1_.removeRequestHandler(EnterSublocationSuccessResp,this.onEnterSublocationSuccessResp);
         _loc1_.removeRequestHandler(EnterRaftResp,this.onEnterRaft);
         _loc1_.removeRequestHandler(ResponseBoatEnter,this.onBoatEnter);
         _loc1_.removeRequestHandler(ResponseBoatMove,this.onBoatMove);
         _loc1_.removeRequestHandler(ResponseBoatRelease,this.onBoatRelease);
         _loc1_.removeRequestHandler(DamianActionResp,this.onDamianActionResp);
         _loc1_.removeRequestHandler(ResponseNpcTalk,this.onActionWithResp);
      }
      
      private function stopPositionSounds() : void
      {
         var _loc1_:PositionSoundMediator = null;
         if(this._pointSounds == null)
         {
            return;
         }
         for each(_loc1_ in this._pointSounds)
         {
            _loc1_.stop();
         }
      }
      
      private function removeCharFromLocation(param1:String) : void
      {
         var _loc2_:FieldChar = null;
         var _loc3_:LocationUser = this.locationModel.getLocationUser(param1);
         if(_loc3_ == null)
         {
            return;
         }
         this._locationLayersBase.removeChar(_loc3_.fieldChar.graphic);
         if(this._charList.hasOwnProperty(param1))
         {
            if(this._charList[param1] is FieldChar)
            {
               _loc2_ = this._charList[param1] as FieldChar;
               _loc2_.destroyFromLocation();
            }
            this._charList[param1] = null;
            delete this._charList[param1];
         }
         if(_loc3_.fieldChar is NPC)
         {
            NPC(_loc3_.fieldChar).onStartTalk = null;
            this.locationModel.removeNpcFromList(param1);
         }
         if(this._locationLayersBase.raft != null)
         {
            this._locationLayersBase.raft.removeChar(_loc3_.fieldChar);
         }
      }
      
      private function loadLocationUsers() : void
      {
         var _loc1_:LocationUser = null;
         var _loc2_:Vector.<LocationUser> = this.locationModel.getLocationUsers();
         for each(_loc1_ in _loc2_)
         {
            this.processLocationUser(_loc1_);
         }
      }
      
      protected function processLocationUser(param1:LocationUser) : void
      {
         var _loc2_:Boat = null;
         param1.fieldChar.update(0,0,1);
         if(param1.username == app.user.username)
         {
            this._playerChar = PlayerChar(param1.fieldChar);
            this._playerChar.activate();
            this._playerChar.bitePanelContainer = this._gui;
            this._playerChar.graphic.name = "playerChar";
            if(app.char.isFreeze)
            {
               this._playerChar.freeze();
            }
            this._playerChar.onMoveEnd();
            if(GameSwf.instance.needSetPositionAfterExitVirtualLocation)
            {
               GameSwf.instance.setPositionAfterExitVirtualLocation();
            }
         }
         else
         {
            _loc2_ = this._locationLayersBase.findBoatByUsername(param1.username);
            if(_loc2_ != null)
            {
               this.putCharToBoat(_loc2_.index,param1.username);
            }
         }
         this.addChar(param1.fieldChar,param1.username);
      }
      
      private function inspectBoat(param1:LocationUser) : void
      {
         var _loc2_:Boat = null;
         var _loc3_:Vector.<Boat> = this._locationLayersBase.boats;
         if(emptyVector(_loc3_))
         {
            return;
         }
         for each(_loc2_ in _loc3_)
         {
            if(_loc2_.lastFieldCharUsername == param1.username)
            {
               Cc.log("Put to boat by inspectBoat \'" + param1.username + "\' to boat_" + _loc2_.index);
               this.putCharToBoat(_loc2_.index,param1.username);
            }
         }
      }
      
      protected function addChar(param1:FieldChar, param2:String) : void
      {
         if(this._charList.hasOwnProperty(param2) && this._charList[param2] != null)
         {
            this._locationLayersBase.removeChar(this._charList[param2].graphic);
            if(this._charList[param2] is FieldChar)
            {
               (this._charList[param2] as FieldChar).destroy();
            }
         }
         param1.boatObstacleMap = this._locationLayersBase.getBoatObstacleMap();
         param1.boats = this._locationLayersBase.boats;
         param1.setObstacleMaps(this._obstacleMap,this._lakeObstacleMap,this.locationFullWidth,this.locationFullHeight);
         param1.setLakeCells(this._locationLayersBase.getLakeCells());
         param1.setLocationSize(this._locationLayersBase.fullWidth,this._locationLayersBase.fullHeight);
         param1.locationLayers = this._locationLayersBase;
         this._locationLayersBase.addChar(param1.graphic,!GameSwf.instance.needSetPositionAfterExitVirtualLocation);
         if(param1 is NPC)
         {
            NPC(param1).onStartTalk = this.onStartTalkWithNpc;
            if(param2 == "Thomas" && this._locationLayersBase.raft != null)
            {
               this._locationLayersBase.raft.addChar(param1);
            }
         }
         if(param2 == null)
         {
            Cc.error("username = null");
         }
         this._charList[param2] = param1;
         if(this._playerChar != null)
         {
            param1.distanceToPlayer = Point.distance(this._playerChar.position,param1.position);
         }
         this.inspectBoat(param1.locationUser);
         param1.inspectInitFishing();
         this.inspectPlayerPositionBySpecialWall(param1);
      }
      
      protected function updateCharView(param1:String, param2:CharViewConfig) : void
      {
         var _loc3_:LocationUser = this.locationModel.getLocationUser(param1);
         if(_loc3_ == null)
         {
            return;
         }
         _loc3_.updateView(param2);
      }
      
      public function removeNpcFromPlayer() : void
      {
         if(this._playerChar == null)
         {
            return;
         }
         this._playerChar.stopTalkWithNpc();
      }
      
      override public function destroy() : void
      {
         this.deactivate();
         Listeners.removeEventListener(this,this._locationLayersBase,LocationDialogEvent.UPDATE_OBSTACLE_MAP,this.onUpdateObstacleMap);
         Listeners.removeEventListener(this,this._locationLayersBase,LocationDialogEvent.UPDATE_LAKE_OBSTACLE_MAP,this.onUpdateLakeObstacleMap);
         Listeners.removeEventListener(this,this._locationLayersBase,MouseEvent.CLICK,this.onClick);
         Listeners.removeEventListener(this,this._locationLayersBase,MouseEvent.MOUSE_MOVE,this.onMove);
         Listeners.removeEventListener(this,this._locationLayersBase,MouseEvent.DOUBLE_CLICK,this.onDoubleClick);
         if(this._loader != null)
         {
            this.removeEventListenersFromLoader();
         }
         if(this._dayCycle != null)
         {
            this._dayCycle.cleanup();
            this._dayCycle = null;
         }
         if(Config.SYNC_DEBUG)
         {
            removeAllChildren(_d_charPositionLayer);
         }
         Listeners.removeEventListener(this,app.performanceManager,PerformanceManager.WEATHER_OFF,this.onWeatherOff);
         if(this._locationLayersBase != null)
         {
            this._locationLayersBase.destroy();
            this._locationLayersBase = null;
         }
         this.locationModel.destroy();
         this.locationModel = null;
         this._loader.destroyMcRecursive();
         this._loader.unloadAndStop(true);
         this._loader.destroy();
         this._loader = null;
         if(this._obstacleMap != null)
         {
            this._obstacleMap.dispose();
            this._obstacleMap = null;
         }
         if(this._lakeObstacleMap != null)
         {
            this._lakeObstacleMap.dispose();
            this._lakeObstacleMap = null;
         }
         if(this._soundMap != null)
         {
            this._soundMap.dispose();
            this._soundMap = null;
         }
         if(this._landingMap != null)
         {
            this._landingMap.dispose();
            this._landingMap = null;
         }
         if(this._dailyQuestManWidget != null)
         {
            this._dailyQuestManWidget.destroy();
            this._dailyQuestManWidget = null;
         }
         removeFromParent(DEBUG_LAYER,this);
         this._charList = null;
         removeFromParent(this._gui);
         this._gui.destroy();
         this._gui = null;
         this._playerChar = null;
         this._lastPositionChangeTimestampMS = 0;
         this._scrollRect = null;
         this._animatedCharacter = null;
         this._energyRestoreTimer = null;
         this._lastSublocationEnter = null;
         this._waitForViewLoadUsernames = null;
         if(this._countdownDialog != null)
         {
            this._countdownDialog.destroy();
            this._countdownDialog = null;
         }
         if(this._steveMinigameCountdown != null)
         {
            this._steveMinigameCountdown.destroy();
            this._steveMinigameCountdown = null;
         }
         if(this._decorMarketTimer != null)
         {
            this._decorMarketTimer.destroy();
            this._decorMarketTimer = null;
         }
         if(this._fishMarketTimer != null)
         {
            this._fishMarketTimer.destroy();
            this._fishMarketTimer = null;
         }
         removeAllChildren(this);
         if(this._bobsMinigameAlarm != null)
         {
            this._bobsMinigameAlarm.destroy();
            this._bobsMinigameAlarm = null;
         }
         this._topPlayers = null;
         this._restrictEnterToSublocation = null;
         this._programmedCharMoveTarget = null;
         this._programmedCharMoveTargetNPC = null;
         this._waitForViewLoadUsernames = null;
         this._pointSounds = null;
         if(app.user.luckPotionAlarm != null)
         {
            app.user.luckPotionAlarm.destroy();
         }
         if(app.user.magicWatchAlarm != null)
         {
            app.user.magicWatchAlarm.destroy();
         }
         if(app.user.fishRadarAlarm != null)
         {
            app.user.fishRadarAlarm.destroy();
         }
         if(app.user.expBoosterAlarm != null)
         {
            app.user.expBoosterAlarm.destroy();
         }
         if(app.user.shinyPotionAlarm != null)
         {
            app.user.shinyPotionAlarm.destroy();
         }
         UpdateManager.getInstance().getGroup(UpdateGroup.TIMER_1S).removeFunction(this.update1S);
         Cc.removeEqualSlashCommand("fog",this.__fog);
         Cc.removeEqualSlashCommand("heavyRain",this.__heavyRain);
         Cc.removeEqualSlashCommand("rain",this.__rain);
         Cc.removeEqualSlashCommand("sandstorm",this.__sandstorm);
         Cc.removeEqualSlashCommand("snow",this.__snow);
         Cc.removeEqualSlashCommand("sunny",this.__sunny);
         Cc.removeEqualSlashCommand("loadObstacleMaps",this.loadObstacleMaps);
         Cc.removeEqualSlashCommand("obstacleMapsAlpha",this.obstacleMapsAlpha);
         Cc.removeEqualSlashCommand("shoundMapAlpha",this.soundMapAlpha);
         Cc.removeEqualSlashCommand("charPositions",changeCharPositionVisibility);
         Cc.removeEqualSlashCommand("forceMove",this.forceMove);
         Cc.removeEqualSlashCommand("freezeLake",this.freezeLake);
         Cc.removeEqualSlashCommand("reorder",this.reorder);
         Cc.removeEqualSlashCommand("removeAllShells",this.removeAllShells);
         Listeners.destroyAllSubscriptions(this);
         app.memoryController.doForcedClean();
         this.tryCleanupLoadingIndicator();
      }
      
      override public function close() : void
      {
         if(parent != null)
         {
            parent.removeChild(this);
         }
         this.destroy();
      }
      
      public function get landingMap() : BitmapData
      {
         if(this._landingMap == null)
         {
            if(this._locationLayersBase.landingMap != null)
            {
               this._landingMap = new BitmapData(this._locationLayersBase.landingMap.width,this._locationLayersBase.landingMap.height,true,0);
               this._landingMap.draw(this._locationLayersBase.landingMap);
               this._locationLayersBase.landingMap.alpha = 0.25;
               LocationLayers.DEBUG_SPRITE.addChild(this._locationLayersBase.landingMap);
            }
            else
            {
               this._landingMap = new BitmapData(1,1);
            }
         }
         return this._landingMap;
      }
      
      public function suspend(param1:Function, ... rest) : void
      {
         var callback:Function = param1;
         var args:Array = rest;
         try
         {
            this.locationModel.suspend();
            this.deactivateLocation();
            visible = false;
         }
         catch(e:Error)
         {
            Cc.error("locationSuspend error",e);
            Cc.error(e.getStackTrace());
            GameSwf.sendReportToServer("location");
         }
         if(callback != null)
         {
            callback.apply(this,args);
         }
         if(this._playerChar != null)
         {
            this._playerChar.stopMoveAnimation();
         }
      }
      
      public function wakeUp() : void
      {
         if(this.locationModel == null)
         {
            return;
         }
         visible = true;
         this.locationModel.wakeUp();
         if(this._locationLayersBase)
         {
            this.activateLocation();
         }
         else
         {
            this.createLoadingIndicator();
         }
         visible = true;
         Listeners.addEventListener(this,this.locationModel,LocationModelEvent.ENTER_TO_LOCATION,this.onEnterLocationResponse);
         Listeners.addEventListener(this,this.locationModel,LocationModelEvent.UPDATE_MAINTENANCE_TIME,this.onUpdateMaintenanceTime);
         this.locationModel.sendEnterToLocation();
         this.gui.restoreFromState(GameSwf.guiState);
      }
      
      override public function toString() : String
      {
         return "LocationDialog(instanceId=" + this.instanceId + ", listenerCount=" + this.listenerCount + ")";
      }
      
      override public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         ++this.listenerCount;
         super.addEventListener(param1,param2,param3,param4,param5);
      }
      
      override public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         --this.listenerCount;
         super.removeEventListener(param1,param2,param3);
      }
      
      private function onUpdateShells(param1:LocationModelEvent) : void
      {
         var _loc2_:Point = null;
         for each(_loc2_ in this.locationModel.shells)
         {
            this._locationLayersBase.addShell(_loc2_);
         }
      }
      
      private function onRemoveShell(param1:LocationModelEvent) : void
      {
         var _loc2_:Point = param1.data;
         var _loc3_:GridManagerObject = this._locationLayersBase.getShellAt(_loc2_.x,_loc2_.y,4);
         if(_loc3_ != null)
         {
            this.removeShell(_loc3_);
         }
      }
      
      private function onAddShell(param1:LocationModelEvent) : void
      {
         if(this._locationLayersBase == null)
         {
            return;
         }
         var _loc2_:Point = param1.data;
         this._locationLayersBase.addShell(_loc2_);
      }
      
      private function onAddFishbox(param1:LocationModelEvent) : void
      {
         var _loc2_:Point = param1.data;
         this._locationLayersBase.addFishbox(_loc2_);
      }
      
      private function onRemoveFishbox(param1:LocationModelEvent) : void
      {
         var _loc2_:Point = param1.data;
         var _loc3_:GridManagerObject = this._locationLayersBase.getFishboxAt(_loc2_.x,_loc2_.y,4);
         if(_loc3_ != null)
         {
            this._locationLayersBase.removeFishbox(_loc3_);
         }
      }
      
      private function onDestroyFishbox(param1:LocationModelEvent) : void
      {
         var _loc2_:Point = param1.data;
         var _loc3_:GridManagerObject = this._locationLayersBase.getFishboxAt(_loc2_.x,_loc2_.y,4);
         if(_loc3_ != null)
         {
            this._locationLayersBase.destroyFishbox(_loc3_);
         }
      }
      
      private function onStartSteveMinigame(param1:LocationModelEvent) : void
      {
         var _loc2_:Object = param1.data;
         _loc2_.timeLeftSec = 120;
         this._steveMinigameCountdown = this._gui.addCountdownDialog(_loc2_.timeLeftSec,_loc2_.timeLeftSec,ECountdownType.ECT_MINIGAME_STEVE);
         if(this._locationLayersBase.keyRoad != null)
         {
            this._locationLayersBase.keyRoad.open();
            Listeners.addEventListener(this,this._steveMinigameCountdown,Event.REMOVED_FROM_STAGE,this.onEndSteveMiniGame,false,0,true);
         }
      }
      
      private function onEndSteveMiniGame(param1:Event) : void
      {
         var _loc2_:FieldChar = null;
         Listeners.removeEventListener(this,this._steveMinigameCountdown,Event.REMOVED_FROM_STAGE,this.onEndSteveMiniGame);
         if(this._locationLayersBase.keyRoad == null || this._locationLayersBase.keyRoad.close())
         {
            return;
         }
         for each(_loc2_ in this._charList)
         {
            this.inspectPlayerPositionByKeyRoad(_loc2_);
         }
      }
      
      private function onStartBobsMinigame(param1:LocationModelEvent) : void
      {
         var _loc2_:Object = null;
         var _loc3_:Object = param1.data;
         var _loc4_:Object = _loc3_.getPositions();
         for each(_loc2_ in _loc4_)
         {
            this._locationLayersBase.addBobsMinigameFishCoin(new Point(_loc2_.x,_loc2_.y));
         }
         this._gui.addCountdownDialog(_loc3_.timeLeftSec,_loc3_.timeLeftSec,ECountdownType.ECT_MINIGAME_BOB);
         this._bobsMinigameAlarm = new SingleAlarm();
         this._bobsMinigameAlarm.activateInSec(_loc3_.timeLeftSec,new Callback(this.endOfBobsMinigame));
      }
      
      private function onStopBobsMinigame(param1:LocationModelEvent) : void
      {
         this.endOfBobsMinigame();
      }
      
      private function onAddDailyQuestFishbones(param1:LocationModelEvent) : void
      {
         var _loc2_:Object = null;
         var _loc3_:Object = param1.data;
         for each(_loc2_ in _loc3_)
         {
            this._locationLayersBase.addDailyQuestMinigameFishbone(new Point(_loc2_.x,_loc2_.y));
         }
      }
      
      private function onPutCharToBoat(param1:LocationModelEvent) : void
      {
         var _loc2_:int = parseInt(param1.data.boatId);
         var _loc3_:String = param1.data.username;
         var _loc4_:GraphPoint = param1.data.boatPosition;
         this.putCharToBoat(_loc2_,_loc3_,_loc4_);
      }
      
      private function putCharToBoat(param1:int, param2:String, param3:GraphPoint = null) : void
      {
         Cc.logch(this,"putCharToBoat() {boatId: " + param1 + ", username: " + param2 + ", boatPosition: " + param3 + "}");
         var _loc4_:Boat = this._locationLayersBase.getBoatByIndex(param1);
         if(param3 != null)
         {
            _loc4_.putTo(param3);
         }
         var _loc5_:FieldChar = this.getCharByUsername(param2);
         if(_loc5_ != null)
         {
            Cc.logch(this,"putCharToBoat() fieldChar = " + _loc5_.locationUser.username + ";");
            _loc5_.putToBoat(_loc4_);
         }
      }
      
      private function endOfBobsMinigame() : void
      {
         this._locationLayersBase.removeBobsMinigameAll();
         if(this._gui.getCountdownDialogByType(ECountdownType.ECT_MINIGAME_BOB) != null)
         {
            this._gui.removeCountdownDialogByType(ECountdownType.ECT_MINIGAME_BOB);
         }
         if(this._bobsMinigameAlarm != null)
         {
            this._bobsMinigameAlarm.destroy();
         }
      }
      
      public function isInSpecialWall(param1:Number, param2:Number, param3:FieldChar = null) : Boolean
      {
         var _loc4_:Boolean = false;
         if(!(param3 is PlayerChar))
         {
            return _loc4_;
         }
         if(this._locationLayersBase == null)
         {
            return _loc4_;
         }
         if(Boolean(this._locationLayersBase.specialWall && this._locationLayersBase.specialWall.hitTest(param1,param2) || this._locationLayersBase.keyRoad != null && param3 == this._playerChar && this._locationLayersBase.keyRoad.hitTest(param1,param2) || this._locationLayersBase.landingWall && this._locationLayersBase.landingWall.hitTest(param1,param2,param3) || this._locationLayersBase.frozenLake && this._locationLayersBase.frozenLake.hitTest(param1,param2) || this.locationModel.id == 3 && this._locationLayersBase.isFishMarketOpen() == false && LocationLayers.hitTestFishMarketWall(param1,param2,param3) || this.locationModel.id == 1 && this._locationLayersBase.isDecorationMarketOpen == false && LocationLayers.hitTestDecorationMarketWall(param1,param2) && this.locationModel.isSublocation == false) || Boolean(this.locationModel.id == 2 && this._isOpenFriendsDoor == false && LocationLayers.hitTestFriendsHomesWall(param1,param2)) || this._holidayItems.isHitAny(param1,param2))
         {
            _loc4_ = true;
         }
         return _loc4_;
      }
      
      public function isHitSpecial(param1:Number, param2:Number) : Boolean
      {
         return false;
      }
      
      public function showMoneyTreeDialog() : void
      {
         this.moneyTreeDialog = app.dialogFactory.getMoneyTreeDialog();
         this.moneyTreeDialog.addCloseCallback(this.onMoneyTreeClose);
         this.moneyTreeDialog.show();
      }
      
      public function showMissionCompletedDialog() : void
      {
         var _loc1_:MissionCompletedSwfDialog = null;
         if(this._needToShowMissionCompletedDialog && app.user.completedMissionData.length > 0)
         {
            _loc1_ = app.dialogFactory.getMissionCompletedSwfDialog();
            _loc1_.setMission(new Mission(app.user.completedMissionData.pop()));
            _loc1_.show();
            app.user.hasSeenNewMissions = false;
            this.gui.missionsUncleSamWidget.notifierEnabled = true;
            this._needToShowMissionCompletedDialog = app.user.completedMissionData.length > 0;
         }
      }
      
      private function onCloseCaughtDialog(param1:Event = null) : void
      {
         if(this.caughtDialog == null)
         {
            return;
         }
         if(param1 != null)
         {
            DialogCaught(param1.target).removeEventListener(CLOSED_CAUGHT_DIALOG,this.onCloseCaughtDialog);
         }
         if(this._active)
         {
            if(this._needToAddExp)
            {
               this._needToAddExp = false;
               app.user.playExpSound();
               if(this._gui != null && this._gui.levelIndicator != null)
               {
                  this.onEndExp();
               }
               this.setUserExp(this._currentExp,false);
            }
            if(this._needToShowMissionCompletedDialog)
            {
               this.showMissionCompletedDialog();
            }
         }
         this.caughtDialog = null;
      }
      
      private function update1S(param1:uint, param2:uint) : void
      {
         if(Boolean(app.user.needToShowDailyQuestsComplete) && app.user.inFishingProcess.value == false && this._dailyQuestManWidget != null)
         {
            app.user.needToShowDailyQuestsComplete = false;
            this._dailyQuestManWidget.onMouseClick();
         }
      }
      
      private function onFishMarketTimeClose() : void
      {
         if(this._locationLayersBase == null)
         {
            return;
         }
         LocationDialog.isFishMarketOpen = false;
         this._locationLayersBase.setMarketDoorOpen(false);
         this._fishMarketTimer.destroy();
      }
      
      private function onFishMarketTimeOpen() : void
      {
         if(this._locationLayersBase == null)
         {
            return;
         }
         LocationDialog.isFishMarketOpen = true;
         this._locationLayersBase.setMarketDoorOpen(true);
         this._fishMarketTimer.destroy();
      }
      
      private function onDecorMarketTimeClose() : void
      {
         if(this._locationLayersBase == null)
         {
            return;
         }
         this._locationLayersBase.changeDecorationMarketDoorState(true);
         this._decorMarketTimer.destroy();
      }
      
      private function onDecorMarketTimeOpen() : void
      {
         if(this._locationLayersBase == null)
         {
            return;
         }
         this._locationLayersBase.changeDecorationMarketDoorState(false);
         this._decorMarketTimer.destroy();
      }
      
      public function removeFishingZones() : void
      {
         this._locationLayersBase.removeFishingZones();
      }
      
      public function showFishBlocks(param1:FishBlocksAtLakesDataResp, param2:uint) : void
      {
         if(this._locationLayersBase == null)
         {
            return;
         }
         this._locationLayersBase.showFishBlocks(param1,param2,[param2 + 1,param2 + 2]);
      }
      
      public function hitTestBoats(param1:Number, param2:Number, param3:Bitmap = null) : Boolean
      {
         var _loc4_:Point = null;
         var _loc5_:Boat = null;
         var _loc6_:Number = NaN;
         var _loc7_:Boolean = false;
         if(this._locationLayersBase.boats.length == 0)
         {
            return _loc7_;
         }
         var _loc8_:Point = new Point(param1,param2);
         if(param3 != null)
         {
            _loc4_ = new Point(0,0);
            _loc4_.x = param1 - param3.width / 2;
            _loc4_.y = param2 - param3.height / 2;
         }
         for each(_loc5_ in this._locationLayersBase.boats)
         {
            _loc6_ = (_loc5_.graphic.x - param1) * (_loc5_.graphic.x - param1) + (_loc5_.graphic.y - param2) * (_loc5_.graphic.y - param2);
            if(_loc6_ < 90000)
            {
               _loc7_ = param3 == null ? _loc5_.hitTestPoint(_loc8_) : _loc5_.hitTest(param3.bitmapData,_loc4_);
               if(_loc7_)
               {
                  break;
               }
            }
         }
         return _loc7_;
      }
      
      public function stopFishing() : void
      {
         if(this._playerChar == null)
         {
            return;
         }
         this._playerChar.reelIn();
      }
      
      public function openFriendsHouseDoor() : void
      {
         if(this._isOpenFriendsDoor || this.locationModel.id != 2)
         {
            return;
         }
         this._isOpenFriendsDoor = true;
         this._locationLayersBase.removeFriendHouseDoor();
      }
      
      public function closeFriendsHouseDoor() : void
      {
         if(!this._isOpenFriendsDoor || this.locationModel.id != 2)
         {
            return;
         }
         this._isOpenFriendsDoor = false;
         this._locationLayersBase.addFriendHouseDoor();
      }
      
      public function startFishBlockUpdate() : void
      {
         this._showFishBlocks = true;
      }
      
      public function setPositionAfterExitVirtualLocation(param1:int) : void
      {
         GameSwf.instance.needSetPositionAfterExitVirtualLocation = false;
      }
      
      public function userIsOnScreen(param1:LocationUser) : Boolean
      {
         return param1.fieldChar.graphic.x > this.locationLayersBase.scrollRect.x && param1.fieldChar.graphic.y > this.locationLayersBase.scrollRect.y && param1.fieldChar.graphic.x < this.locationLayersBase.scrollRect.x + this.locationLayersBase.scrollRect.width && param1.fieldChar.graphic.y < this.locationLayersBase.scrollRect.y + this.locationLayersBase.scrollRect.height;
      }
      
      private function addHolidayItems() : void
      {
         this.addSantaBalloon();
         this.addPumpkinHeads();
         this.updateSantaBalloon();
         this.updatePumpkinHeads();
      }
      
      private function addPumpkinHeads() : void
      {
         var _loc1_:HolidayHalloween = this._managerHolidays.getHoliday(EHolidayType.EHT_HALLOWEEN) as HolidayHalloween;
         this._holidayItems.addItems(_loc1_.pumpkinHeads,this.locationModel.absoluteId);
      }
      
      private function updatePumpkinHeads(param1:Number = 0) : void
      {
         var _loc2_:HolidayHalloween = this._managerHolidays.getHoliday(EHolidayType.EHT_HALLOWEEN) as HolidayHalloween;
         this._holidayItems.updateItemsState(EHolidayItemType.EHIT_PUMPKIN_HEAD,_loc2_.isActive,param1);
      }
      
      private function addSantaBalloon() : void
      {
         var _loc1_:HolidayChristmas = this._managerHolidays.getHoliday(EHolidayType.EHT_CHRISTMAS) as HolidayChristmas;
         this._holidayItems.addItems(_loc1_.balloons,this.locationModel.absoluteId);
      }
      
      private function updateSantaBalloon(param1:Number = 0) : void
      {
         var _loc2_:HolidayChristmas = this._managerHolidays.getHoliday(EHolidayType.EHT_CHRISTMAS) as HolidayChristmas;
         this._holidayItems.updateItemsState(EHolidayItemType.EHIT_SANTA_BALLOON,_loc2_.isActive,param1);
      }
   }
}

