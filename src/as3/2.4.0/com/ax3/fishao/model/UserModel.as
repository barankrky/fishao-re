package com.ax3.fishao.model
{
   import com.ax3.events.VariableChangeEvent;
   import com.ax3.fishao.Config;
   import com.ax3.fishao.EResourceID;
   import com.ax3.fishao.FishaoFscModelManager;
   import com.ax3.fishao.control.managers.FishaoSoundManager;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.locations.EBoosterType;
   import com.ax3.fishao.locations.base.LocationDialog;
   import com.ax3.fishao.locations.chars.CharStateType;
   import com.ax3.fishao.model.info.UserBait;
   import com.ax3.fishao.model.info.UserRod;
   import com.ax3.fishao.view.dialogs.PopupManager;
   import com.ax3.fishao.view.dialogs.base.EDialogType;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces.EControllerUpdate;
   import com.ax3.fishao.view.dialogs.fishingLine.model.EFishingLineColor;
   import com.ax3.utils.BindableVariable;
   import com.ax3.utils.SingleActivator;
   import com.ax3.utils.math.limit;
   import com.ax3.utils.sound.SoundFile;
   import com.ax3.utils.timer.SingleAlarm;
   import com.junkbyte.console.Cc;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.external.ExternalInterface;
   import flash.utils.getTimer;
   import protocol.api.fishingLine.data.FishingLineLevelInfo;
   import protocol.api.moneyTree.data.MoneyTreeLevelInfo;
   import protocol.sr.IncomingPMResp;
   
   public class UserModel extends EventDispatcher
   {
      
      public static const ROD_TYPE_CHANGE:String = "rod_type_change_event";
      
      public static const BAIT_TYPE_CHANGE:String = "bait_type_change_event";
      
      public static const ROD_COUNT_CHANGE:String = "rod_count_change_event";
      
      public static const BAIT_COUNT_CHANGE:String = "bait_count_change_event";
      
      private const ROD_TYPE_CHANGE_EVENT:Event = new Event(ROD_TYPE_CHANGE);
      
      private const BAIT_TYPE_CHANGE_EVENT:Event = new Event(BAIT_TYPE_CHANGE);
      
      private const ROD_COUNT_CHANGE_EVENT:Event = new Event(ROD_COUNT_CHANGE);
      
      private const BAIT_COUNT_CHANGE_EVENT:Event = new Event(BAIT_COUNT_CHANGE);
      
      private var _userRodId:int = -1;
      
      private var _baitInfoId:int = 0;
      
      private var _fishingLine:FishingLineLevelInfo;
      
      private var _fishingLineColor:String;
      
      private var _moneyTree:MoneyTreeLevelInfo;
      
      private var _rodCount:int = 0;
      
      private var _baitCount:int = 0;
      
      private var _canMove:Boolean = true;
      
      public var energy:BindableVariable = new BindableVariable(0);
      
      private var _userLevel:BindableVariable;
      
      private var _userSpendings:BindableVariable;
      
      private var _experience:BindableVariable;
      
      private var _prevExpLimit:BindableVariable;
      
      private var _nextExpLimit:BindableVariable;
      
      private var _newLevelData:Object;
      
      public var completedMissionData:Vector.<Object> = new Vector.<Object>();
      
      private var _fishcoins:BindableVariable;
      
      private var _fishbucks:BindableVariable;
      
      public var needToShowDailyQuestsComplete:Boolean = false;
      
      public var username:String;
      
      public var isGuest:Boolean = false;
      
      public var isModerator:Boolean = false;
      
      public var isFirstLoginAfterRegistration:Boolean = false;
      
      public var inventory:InventoryModel = new InventoryModel();
      
      private var _isInfluencedOfLuckPotion:BindableVariable;
      
      private var _isInfluencedOfMagicWatch:BindableVariable;
      
      private var _isInfluencedOfFishRadar:BindableVariable;
      
      private var _isInfluencedOfExpBooster:BindableVariable;
      
      private var _isInfluencedOfShinyPotion:BindableVariable;
      
      private var _isInfluencedOfPowerBooster:BindableVariable;
      
      public var isTalkingWithNPC:BindableVariable;
      
      public var charState:BindableVariable = new BindableVariable(CharStateType.NORMAL);
      
      public var atTheBoat:BindableVariable = new BindableVariable(false);
      
      public var inFishingProcess:BindableVariable = new BindableVariable(false);
      
      public var inTalkWithNPC:BindableVariable = new BindableVariable(false);
      
      public var country:String = "UKR";
      
      private var seq:Vector.<SoundFile> = new Vector.<SoundFile>(0);
      
      public var emailActivation:int = 0;
      
      public var currentLuckPotionTimeMark:TimerMark;
      
      public var currentMagicWatchTimeMark:TimerMark;
      
      public var currentFishRadarTimeMark:TimerMark;
      
      public var currentExpBoosterTimeMark:TimerMark;
      
      public var currentShinyPotionTimeMark:TimerMark;
      
      public var currentPowerBoosterTimeMark:TimerMark;
      
      public var luckPotionAlarm:SingleAlarm;
      
      public var magicWatchAlarm:SingleAlarm;
      
      public var fishRadarAlarm:SingleAlarm;
      
      public var expBoosterAlarm:SingleAlarm;
      
      public var shinyPotionAlarm:SingleAlarm;
      
      public var powerBoosterAlarm:SingleAlarm;
      
      private var _oldLevel:int = 1;
      
      public var useCampaignLeadClicktag:SingleActivator = new SingleActivator();
      
      private var _unreadPMNumber:int = 0;
      
      public var emailActivationSent:Boolean = false;
      
      public var hasSeenNewMissions:Boolean = false;
      
      private var _inLogoutProcess:Boolean;
      
      public function UserModel()
      {
         super();
         this.inventory.addEventListener(InventoryModel.RODS_CHANGE,this.onRodsChange);
         this.inventory.addEventListener(InventoryModel.BAITS_CHANGE,this.onBaitsChange);
         this.inFishingProcess.addEventListener(VariableChangeEvent.CHANGE,this.onFishingProcessChange);
         this._userLevel = new BindableVariable(1);
         this._userSpendings = new BindableVariable(0);
         this._fishcoins = new BindableVariable(0);
         this._fishbucks = new BindableVariable(0);
         this._experience = new BindableVariable(0);
         this._nextExpLimit = new BindableVariable(1);
         this._prevExpLimit = new BindableVariable(0);
         this._isInfluencedOfLuckPotion = new BindableVariable(false);
         this._isInfluencedOfMagicWatch = new BindableVariable(false);
         this._isInfluencedOfFishRadar = new BindableVariable(false);
         this._isInfluencedOfExpBooster = new BindableVariable(false);
         this._isInfluencedOfShinyPotion = new BindableVariable(false);
         this._isInfluencedOfPowerBooster = new BindableVariable(false);
         this.isTalkingWithNPC = new BindableVariable(false);
         this.addExpChangeListener(this.onExperienceChange);
         this._inLogoutProcess = false;
         FishaoFscModelManager.fscModel.addRequestHandler(IncomingPMResp,this.onIncomingPrivateMessage);
      }
      
      public function set fishingLineColor(param1:String) : void
      {
         if(this._fishingLineColor == param1)
         {
            return;
         }
         this._fishingLineColor = param1;
         PopupManager.getInstance().tryUpdateCurrentDialog(EControllerUpdate.ECU_FISHING_LINE_COLOR,EDialogType.EDT_FISHING_LINE);
         GameSwf.tryUpdateGUI(EControllerUpdate.ECU_FISHING_LINE_COLOR);
         this.tryUpdateRopeColor();
      }
      
      public function get fishingLineColor() : String
      {
         return this._fishingLineColor;
      }
      
      public function set fishingLine(param1:FishingLineLevelInfo) : void
      {
         if(this._fishingLine == param1)
         {
            return;
         }
         this._fishingLine = param1;
         GameSwf.tryUpdateGUI(EControllerUpdate.ECU_FISHING_LINE_LEVEL);
      }
      
      public function get fishingLine() : FishingLineLevelInfo
      {
         return this._fishingLine;
      }
      
      public function set moneyTree(param1:MoneyTreeLevelInfo) : void
      {
         if(this._moneyTree == param1)
         {
            return;
         }
         this._moneyTree = param1;
      }
      
      public function get moneyTree() : MoneyTreeLevelInfo
      {
         return this._moneyTree;
      }
      
      public function get isEventsAvailable() : Boolean
      {
         return this._userLevel.value >= 5;
      }
      
      public function set inLogountProcess(param1:Boolean) : void
      {
         this._inLogoutProcess = param1;
      }
      
      public function get inLogoutProcess() : Boolean
      {
         return this._inLogoutProcess;
      }
      
      public function onUserLoginedAsGuest() : void
      {
         this.isGuest = true;
         Config.IS_GUEST = true;
      }
      
      public function onUserLoginedAsRegistered() : void
      {
         this.isGuest = false;
         Config.IS_GUEST = false;
      }
      
      public function onRegistrationSuccess() : void
      {
         if(this.isGuest)
         {
            this.useCampaignLeadClicktag.activate();
            this.inspectCampaignLeadClicktag();
         }
         this.isFirstLoginAfterRegistration = true;
         this.isGuest = false;
         Config.IS_GUEST = false;
      }
      
      private function onIncomingPrivateMessage(param1:*) : void
      {
         ++this.unreadPMNumber;
         Cc.log("unread pm increased");
      }
      
      public function get unreadPMNumber() : int
      {
         return this._unreadPMNumber;
      }
      
      public function set unreadPMNumber(param1:int) : void
      {
         if(param1 < 0)
         {
            this._unreadPMNumber = 0;
         }
         else
         {
            this._unreadPMNumber = param1;
         }
         var _loc2_:LocationDialog = GameSwf.currentLocationDialog;
         if(_loc2_ != null)
         {
            _loc2_.gui.mainMenu.communicationIcon.amount = this._unreadPMNumber;
         }
      }
      
      private function onFishingProcessChange(param1:VariableChangeEvent) : void
      {
         Cc.log("inFishingProcess=",this.inFishingProcess != null ? this.inFishingProcess.value : "null");
      }
      
      private function onExperienceChange(param1:VariableChangeEvent) : void
      {
         var _loc2_:* = int(limit(Number(param1.newValue) - Number(param1.oldValue),0,3));
         if(_loc2_ > 0 && param1.oldValue > 0)
         {
            this.seq = new Vector.<SoundFile>(0);
            while(_loc2_-- > 0)
            {
               this.seq.push(FishaoSoundManager.SFX_059_UI_Level_increase_count);
            }
         }
      }
      
      public function playExpSound() : void
      {
      }
      
      private function onBaitsChange(param1:Event) : void
      {
         var _loc2_:UserBait = this.inventory.getBait(this.baitInfoId);
         if(_loc2_ != null)
         {
            this.baitCount = _loc2_.quantity;
         }
         else
         {
            this.baitCount = 0;
         }
      }
      
      private function onRodsChange(param1:Event) : void
      {
         var _loc2_:UserRod = this.inventory.getRod(this.userRodId);
         if(_loc2_ != null)
         {
            this.rodCount = _loc2_.quantity;
         }
         else if(this.userRodId == EResourceID.ER_ROD_EMPTY)
         {
            this.rodCount = -1;
         }
         else
         {
            this.rodCount = 0;
         }
      }
      
      public function setUserLevel(param1:Number) : void
      {
         this._userLevel.value = param1;
      }
      
      public function get level() : Number
      {
         return this._userLevel.value;
      }
      
      public function set level(param1:Number) : void
      {
         this._userLevel.value = param1;
      }
      
      public function set spendings(param1:Number) : void
      {
         this._userSpendings.value = param1;
      }
      
      public function get spendings() : Number
      {
         return this._userSpendings.value;
      }
      
      public function get userRodId() : int
      {
         return this._userRodId;
      }
      
      public function set userRodId(param1:int) : void
      {
         if(this._userRodId == param1)
         {
            return;
         }
         this._userRodId = param1;
         dispatchEvent(this.ROD_TYPE_CHANGE_EVENT);
         this.inventory.dispatchRodChange();
      }
      
      public function get baitInfoId() : int
      {
         return this._baitInfoId;
      }
      
      public function set baitInfoId(param1:int) : void
      {
         if(this._baitInfoId != param1)
         {
            this._baitInfoId = param1;
            this.inventory.dispatchBaitChange();
         }
         dispatchEvent(this.BAIT_TYPE_CHANGE_EVENT);
      }
      
      public function get rodCount() : int
      {
         return this._rodCount;
      }
      
      public function set rodCount(param1:int) : void
      {
         if(this._rodCount != param1)
         {
            this._rodCount = param1;
            dispatchEvent(this.ROD_COUNT_CHANGE_EVENT);
         }
      }
      
      public function get baitCount() : int
      {
         return this._baitCount;
      }
      
      public function set baitCount(param1:int) : void
      {
         if(this._baitCount != param1)
         {
            this._baitCount = param1;
            dispatchEvent(this.BAIT_COUNT_CHANGE_EVENT);
         }
      }
      
      public function get canMove() : Boolean
      {
         return this._canMove;
      }
      
      public function set canMove(param1:Boolean) : void
      {
         this._canMove = param1;
      }
      
      public function get fishcoins() : int
      {
         return int(this._fishcoins.value);
      }
      
      public function set fishcoins(param1:int) : void
      {
         if(param1 < this._fishcoins.value)
         {
            FishaoSoundManager.play(FishaoSoundManager.SFX_054_UI_Buy_click);
         }
         this._fishcoins.value = param1;
      }
      
      public function get fishbucks() : int
      {
         return int(this._fishbucks.value);
      }
      
      public function set fishbucks(param1:int) : void
      {
         if(param1 < this._fishbucks.value)
         {
            FishaoSoundManager.play(FishaoSoundManager.SFX_054_UI_Buy_click);
         }
         this._fishbucks.value = param1;
      }
      
      public function onFishcoinsChange(param1:Function) : void
      {
         this._fishcoins.addEventListener(VariableChangeEvent.CHANGE,param1);
      }
      
      public function removeOnFishcoinsChange(param1:Function) : void
      {
         this._fishcoins.removeEventListener(VariableChangeEvent.CHANGE,param1);
      }
      
      public function onFishbucksChange(param1:Function) : void
      {
         this._fishbucks.addEventListener(VariableChangeEvent.CHANGE,param1);
      }
      
      public function removeOnFishbucksChange(param1:Function) : void
      {
         this._fishbucks.removeEventListener(VariableChangeEvent.CHANGE,param1);
      }
      
      public function get experience() : int
      {
         return int(this._experience.value);
      }
      
      public function set experience(param1:int) : void
      {
         this._experience.value = param1;
      }
      
      public function get prevExpLimit() : int
      {
         return int(this._prevExpLimit.value);
      }
      
      public function set prevExpLimit(param1:int) : void
      {
         this._prevExpLimit.value = param1;
      }
      
      public function get nextExpLimit() : int
      {
         return int(this._nextExpLimit.value);
      }
      
      public function set nextExpLimit(param1:int) : void
      {
         this._nextExpLimit.value = param1;
      }
      
      public function get newLevelData() : Object
      {
         return this._newLevelData;
      }
      
      public function set newLevelData(param1:Object) : void
      {
         if(this._newLevelData != param1)
         {
            this._newLevelData = param1;
         }
      }
      
      public function isInfluencedOf(param1:String) : Boolean
      {
         return this.getIsInfluencedOfBoosterValue(param1).value;
      }
      
      public function setIsInfluencedOf(param1:String, param2:Boolean) : void
      {
         var _loc3_:BindableVariable = this.getIsInfluencedOfBoosterValue(param1);
         _loc3_.value = param2;
      }
      
      private function getIsInfluencedOfBoosterValue(param1:String) : BindableVariable
      {
         var _loc2_:BindableVariable = null;
         switch(param1)
         {
            case EBoosterType.EBT_EXP:
               _loc2_ = this._isInfluencedOfExpBooster;
               break;
            case EBoosterType.EBT_LUCKY_POTION:
               _loc2_ = this._isInfluencedOfLuckPotion;
               break;
            case EBoosterType.EBT_MAGIC_WATCH:
               _loc2_ = this._isInfluencedOfMagicWatch;
               break;
            case EBoosterType.EBT_RADAR:
               _loc2_ = this._isInfluencedOfFishRadar;
               break;
            case EBoosterType.EBT_SHINY_POTION:
               _loc2_ = this._isInfluencedOfShinyPotion;
               break;
            case EBoosterType.EBT_POWER_BOOSTER:
               _loc2_ = this._isInfluencedOfPowerBooster;
               break;
            default:
               Debug.assert(false);
         }
         return _loc2_;
      }
      
      public function get isInfluencedOfLuckPotion() : Boolean
      {
         return this._isInfluencedOfLuckPotion.value;
      }
      
      public function get isInfluencedOfMagicWatch() : Boolean
      {
         return this._isInfluencedOfMagicWatch.value;
      }
      
      public function get isInfluencedOfFishRadar() : Boolean
      {
         return this._isInfluencedOfFishRadar.value;
      }
      
      public function get isInfluencedOfExpBooster() : Boolean
      {
         return this._isInfluencedOfExpBooster.value;
      }
      
      public function get isInfluencedOfShinyPotion() : Boolean
      {
         return this._isInfluencedOfShinyPotion.value;
      }
      
      public function get isInfluencedOfPowerBooster() : Boolean
      {
         return this._isInfluencedOfPowerBooster.value;
      }
      
      public function get oldLevel() : int
      {
         return this._oldLevel;
      }
      
      public function set oldLevel(param1:int) : void
      {
         this._oldLevel = param1;
      }
      
      public function onLevelChange(param1:Function) : void
      {
         this._userLevel.addEventListener(VariableChangeEvent.CHANGE,param1);
      }
      
      public function removeOnLevelChange(param1:Function) : void
      {
         this._userLevel.removeEventListener(VariableChangeEvent.CHANGE,param1);
      }
      
      public function onFlagInfluencedOfLuckPotionChange(param1:Function) : void
      {
         this._isInfluencedOfLuckPotion.addEventListener(VariableChangeEvent.CHANGE,param1);
      }
      
      public function removeOnFlagInfluencedOfLuckPotionChange(param1:Function) : void
      {
         this._isInfluencedOfLuckPotion.removeEventListener(VariableChangeEvent.CHANGE,param1);
      }
      
      public function onFlagInfluencedOfMagicWatchChange(param1:Function) : void
      {
         this._isInfluencedOfMagicWatch.addEventListener(VariableChangeEvent.CHANGE,param1);
      }
      
      public function removeOnFlagInfluencedOfMagicWatchChange(param1:Function) : void
      {
         this._isInfluencedOfMagicWatch.removeEventListener(VariableChangeEvent.CHANGE,param1);
      }
      
      public function onFlagInfluencedOfFishRadarChange(param1:Function) : void
      {
         this._isInfluencedOfFishRadar.addEventListener(VariableChangeEvent.CHANGE,param1);
      }
      
      public function removeOnFlagInfluencedOfFishRadarChange(param1:Function) : void
      {
         this._isInfluencedOfFishRadar.removeEventListener(VariableChangeEvent.CHANGE,param1);
      }
      
      public function onFlagInfluencedOfExpBoosterChange(param1:Function) : void
      {
         this._isInfluencedOfExpBooster.addEventListener(VariableChangeEvent.CHANGE,param1);
      }
      
      public function removeOnFlagInfluencedOfExpBoosterChange(param1:Function) : void
      {
         this._isInfluencedOfExpBooster.removeEventListener(VariableChangeEvent.CHANGE,param1);
      }
      
      public function onFlagInfluencedOfShinyPotionChange(param1:Function) : void
      {
         this._isInfluencedOfShinyPotion.addEventListener(VariableChangeEvent.CHANGE,param1);
      }
      
      public function removeOnFlagInfluencedOfShinyPotionChange(param1:Function) : void
      {
         this._isInfluencedOfShinyPotion.removeEventListener(VariableChangeEvent.CHANGE,param1);
      }
      
      public function onFlagInfluencedOfPowerBoosterChange(param1:Function) : void
      {
         this._isInfluencedOfShinyPotion.addEventListener(VariableChangeEvent.CHANGE,param1);
      }
      
      public function removeOnFlagInfluencedOfPowerBoosterChange(param1:Function) : void
      {
         this._isInfluencedOfShinyPotion.removeEventListener(VariableChangeEvent.CHANGE,param1);
      }
      
      public function onIsTalkingWithNPCChange(param1:Function) : void
      {
         this.isTalkingWithNPC.addEventListener(VariableChangeEvent.CHANGE,param1);
      }
      
      public function removeOnIsTalkingWithNPCChange(param1:Function) : void
      {
         this.isTalkingWithNPC.removeEventListener(VariableChangeEvent.CHANGE,param1);
      }
      
      public function addExpChangeListener(param1:Function) : void
      {
         this._experience.addEventListener(VariableChangeEvent.CHANGE,param1);
      }
      
      public function removeOnExpChange(param1:Function) : void
      {
         this._experience.removeEventListener(VariableChangeEvent.CHANGE,param1);
      }
      
      public function onPrevExpLimChange(param1:Function) : void
      {
         this._prevExpLimit.addEventListener(VariableChangeEvent.CHANGE,param1);
      }
      
      public function removeOnPrevExpLimChange(param1:Function) : void
      {
         this._prevExpLimit.removeEventListener(VariableChangeEvent.CHANGE,param1);
      }
      
      public function onNextExpLimChange(param1:Function) : void
      {
         this._nextExpLimit.addEventListener(VariableChangeEvent.CHANGE,param1);
      }
      
      public function removeOnNextExpLimChange(param1:Function) : void
      {
         this._nextExpLimit.removeEventListener(VariableChangeEvent.CHANGE,param1);
      }
      
      public function getRealLeftSec(param1:TimerMark) : int
      {
         if(param1 != null)
         {
            return param1.getLeftSec(getTimer());
         }
         return -1;
      }
      
      public function inspectCampaignLeadClicktag() : void
      {
         if(Boolean(Config.CAMPAIGN_REC_ID) && Boolean(this.useCampaignLeadClicktag.isActive()) && !this.isGuest)
         {
            this.useCampaignLeadClicktag.markAsUsed();
            if(ExternalInterface.available)
            {
               ExternalInterface.call("addClickTag",Config.CAMPAIGN_REC_ID);
            }
         }
      }
      
      public function handleCharViewDataIsNewStatus(param1:Boolean) : void
      {
         if(param1)
         {
            this.isFirstLoginAfterRegistration = true;
         }
      }
      
      private function tryUpdateRopeColor() : void
      {
         var _loc1_:LocationDialog = GameSwf.currentLocationDialog;
         if(_loc1_ == null || _loc1_.player == null || _loc1_.player.rod == null)
         {
            return;
         }
         GameSwf.currentLocationDialog.player.rod.onRopeColorChanged(EFishingLineColor.getColor(this._fishingLineColor));
      }
   }
}

