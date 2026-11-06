package com.ax3.fishao.display
{
   import com.ax3.events.Listeners;
   import com.ax3.events.VariableChangeEvent;
   import com.ax3.fishao.FishaoFscModelManager;
   import com.ax3.fishao.ResourceType;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.display.panels.CollectionsGirlWidget;
   import com.ax3.fishao.display.panels.DailyQuestManWidget;
   import com.ax3.fishao.display.panels.InfluencingItemWidget;
   import com.ax3.fishao.display.panels.MissionsUncleSamWidget;
   import com.ax3.fishao.display.panels.PlingPanel;
   import com.ax3.fishao.display.settings.ViewArrow;
   import com.ax3.fishao.locations.base.LocationDialog;
   import com.ax3.fishao.tutorial.TutorialInfo;
   import com.ax3.fishao.utils.UtilsArray;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs.CommunicationSwfDialog;
   import com.ax3.fishao.view.dialogs.FishdexSwfDialog;
   import com.ax3.fishao.view.dialogs.base.controllers.implementations.countdown.DialogCountdown;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces.EControllerUpdate;
   import com.ax3.fishao.view.dialogs.base.views.implementations.countdown.ECountdownType;
   import com.ax3.fishao.view.dialogs.maintenance.ManagerMaintenance;
   import com.ax3.fishao.view.dialogs.sales.ManagerSales;
   import com.ax3.fishao.view.dialogs.sales.model.SaleBase;
   import com.ax3.fishao.view.dialogs.string.EStringType;
   import com.ax3.fishao.view.dialogs.tournaments.models.TournamentInfo;
   import com.ax3.fishao.view.states.GuiState;
   import com.ax3.jss.requests.server.ServerResp;
   import com.ax3.utils.removeAllChildren;
   import com.ax3.utils.removeFromParent;
   import flash.desktop.NativeApplication;
   import flash.display.DisplayObject;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.ui.Keyboard;
   import protocol.api.base.ResponseError;
   
   public class Gui extends GuiAsset
   {
      
      private const WIGET_ICON_GAP:int = 25;
      
      public var dailyQuestManWidget:DailyQuestManWidget;
      
      public var missionsUncleSamWidget:MissionsUncleSamWidget;
      
      public var collectionsGirlWidget:CollectionsGirlWidget;
      
      public var isTournament:Boolean;
      
      private var _countdownList:Array = [];
      
      private var _fishcoinsFishbucksSpacing:Number = 0;
      
      private var _fishbucksEnergySpacing:Number = 0;
      
      private var _energyLevelSpacing:Number = 0;
      
      private var _indicatorsFullWidth:Number = 0;
      
      private var _influencingItemWidgets:Array = [];
      
      private var _lastScreenRect:Rectangle = new Rectangle();
      
      private var _controllerGui:ControllerGui;
      
      private var _viewArrowSale:ViewArrow;
      
      private var _state:GuiState;
      
      public function Gui(param1:LocationDialog)
      {
         super(param1);
         this._state = GameSwf.guiState;
         if(this._state == null)
         {
            this._state = new GuiState();
            GameSwf.guiState = this._state;
         }
         this.name = "gui";
         this.isTournament = _locationDialog.locationModel.isTournament;
         this.alpha = 0;
         this.onAssetCreationComplete();
      }
      
      public function onTournamentIconClick(param1:MouseEvent = null) : void
      {
         if(GameSwf.inspectGuestLockedAction() || !mainMenu.tournamentIcon.enabled)
         {
            return;
         }
         mainMenu.tournamentIcon.disable();
         GameSwf.instance.managerTournaments.establishRelevantTournament(this.onRelevantTournamentEstablished);
      }
      
      private function onRelevantTournamentEstablished(param1:ServerResp) : void
      {
         var _loc2_:ResponseError = param1 as ResponseError;
         if(_loc2_ != null)
         {
            mainMenu.tournamentIcon.enable();
            return;
         }
         this.onTournamentCurrentReceived(GameSwf.instance.managerTournaments.tournamentCurrent);
      }
      
      private function onTournamentCurrentReceived(param1:TournamentInfo) : void
      {
         if(param1.isPlayerSignedUp)
         {
            GameSwf.instance.managerTournaments.changeWorldAndEnter();
         }
         else
         {
            app.dialogFactory.getDialogTournamentSignUp().show();
            mainMenu.tournamentIcon.enable();
         }
      }
      
      override protected function onAssetCreationComplete() : void
      {
         this._fishcoinsFishbucksSpacing = fishbucksIndicator.x - fishcoinsIndicator.x;
         this._fishbucksEnergySpacing = energyIndicator.x - fishbucksIndicator.x;
         this._energyLevelSpacing = levelIndicator.x - energyIndicator.x;
         this._indicatorsFullWidth = levelIndicator.x + levelIndicator.width - fishcoinsIndicator.x;
         mainMenu.chatPanel.stage = _stage;
         mainMenu.isTournament = this.isTournament;
         mainMenu.tournamentIcon.enabled = !this.isTournament;
         energyIndicator.visible = !this.isTournament;
         plingPanel = new PlingPanel(this);
         this.onPlayerAtBoatChange();
         this.restoreFromState(this._state);
         this._controllerGui = new ControllerGui();
         this._viewArrowSale = new ViewArrow(this._controllerGui,new gViewArrowSale(),EStringType.EST_UI_BUTTON_SALE_ARROW);
         addChild(this._viewArrowSale.source);
         this.updateSaleArrow();
      }
      
      public function restoreFromState(param1:GuiState) : void
      {
         if(param1 == null)
         {
            param1 = new GuiState();
            GameSwf.guiState = param1;
         }
         mainMenu.restoreFromState(param1);
      }
      
      private function addListeners() : void
      {
         Listeners.addEventListener(this,app.user.inFishingProcess,VariableChangeEvent.CHANGE,this.onPlayerLockChange);
         Listeners.addEventListener(this,app.user.inTalkWithNPC,VariableChangeEvent.CHANGE,this.onPlayerLockChange);
         Listeners.addEventListener(this,app.user.atTheBoat,VariableChangeEvent.CHANGE,this.onPlayerAtBoatChange);
         mainMenu.fishdexIcon.handler = this.onFishdexClick;
         mainMenu.inventoryIcon.handler = this.onInventoryClick;
         mainMenu.mapIcon.handler = this.onMapClick;
         mainMenu.exitIcon.handler = this.onExitClick;
         mainMenu.tournamentIcon.handler = this.onTournamentIconClick;
         mainMenu.communicationIcon.handler = this.onCommunicationIconClick;
         mainMenu.rankingsIcon.handler = this.onRankingsIconClick;
         mainMenu.shopIcon.handler = this.onShopIconClick;
         energyIndicator.addButton.handler = GameSwf.instance.showBuyEnergyWindow;
         Listeners.addEventListener(this,_stage,KeyboardEvent.KEY_UP,this.onKeyPress);
         Listeners.addEventListener(this,_stage,KeyboardEvent.KEY_DOWN,this.onKeyDown);
         Listeners.addEventListener(this,this,Event.REMOVED_FROM_STAGE,this.onRemove);
         mainMenu.chatPanel.addListeners();
      }
      
      private function removeListeners() : void
      {
         Listeners.removeEventListener(this,app.user.inFishingProcess,VariableChangeEvent.CHANGE,this.onPlayerLockChange);
         Listeners.removeEventListener(this,app.user.inTalkWithNPC,VariableChangeEvent.CHANGE,this.onPlayerLockChange);
         Listeners.removeEventListener(this,app.user.atTheBoat,VariableChangeEvent.CHANGE,this.onPlayerAtBoatChange);
         mainMenu.fishdexIcon.handler = null;
         mainMenu.inventoryIcon.handler = null;
         mainMenu.mapIcon.handler = null;
         mainMenu.exitIcon.handler = null;
         mainMenu.tournamentIcon.handler = null;
         mainMenu.communicationIcon.handler = null;
         mainMenu.rankingsIcon.handler = null;
         mainMenu.shopIcon.handler = null;
         fishcoinsIndicator.addButton.handler = null;
         fishbucksIndicator.addButton.handler = null;
         energyIndicator.addButton.handler = null;
         Listeners.removeEventListener(this,_stage,KeyboardEvent.KEY_UP,this.onKeyPress);
         Listeners.removeEventListener(this,_stage,KeyboardEvent.KEY_DOWN,this.onKeyDown);
         Listeners.removeEventListener(this,this,Event.REMOVED_FROM_STAGE,this.onRemove);
         mainMenu.chatPanel.removeListeners();
      }
      
      private function onExitClick(param1:MouseEvent) : void
      {
         app.user.inLogountProcess = true;
         FishaoFscModelManager.fscModel.disconnect();
         NativeApplication.nativeApplication.exit();
      }
      
      private function onMapClick(param1:MouseEvent) : void
      {
         GameSwf.instance.managerTutorial.onPlayerClickedOnMap();
         GameSwf.instance.exitFromAllLocations();
         GameSwf.instance.managerWorlds.returnToDefaultWorld(this.onDefaultWorldConnected);
         mainMenu.mapIcon.disable();
      }
      
      private function onDefaultWorldConnected(param1:ServerResp) : void
      {
         mainMenu.mapIcon.enable();
      }
      
      private function onRemove(param1:Event) : void
      {
         this.removeListeners();
      }
      
      private function onInventoryClick(param1:MouseEvent) : void
      {
         GameSwf.instance.showInventoryWindow();
      }
      
      private function onCommunicationIconClick(param1:MouseEvent) : void
      {
         if(GameSwf.inspectGuestLockedAction())
         {
            return;
         }
         this.showCommunicationDialog();
      }
      
      private function onRankingsIconClick(param1:MouseEvent) : void
      {
         if(GameSwf.inspectGuestLockedAction())
         {
            return;
         }
         this.showRankingsDialog();
      }
      
      private function showCommunicationDialog() : void
      {
         var _loc1_:CommunicationSwfDialog = app.dialogFactory.getCommunicationSwfDialog();
         _loc1_.show();
      }
      
      private function showRankingsDialog() : void
      {
         GameSwf.showRankingsDialog();
      }
      
      private function onShopIconClick(param1:MouseEvent) : void
      {
         GameSwf.instance.showShopDialog();
      }
      
      private function onKeyDown(param1:KeyboardEvent) : void
      {
         if(param1.keyCode == Keyboard.ESCAPE && mainMenu.isShowedChat())
         {
            param1.preventDefault();
         }
      }
      
      protected function onKeyPress(param1:KeyboardEvent) : void
      {
         if((param1.keyCode == Keyboard.ENTER || param1.keyCode == Keyboard.NUMPAD_ENTER) && (stage.focus is TextField == false || stage.focus == mainMenu.chatPanel.textField))
         {
            if(!mainMenu.isShowedChat())
            {
               mainMenu.showChat();
            }
            else if(!mainMenu.chatPanel.chatBlocked)
            {
               this.sendMessage(param1);
            }
            else
            {
               this.hideChatPanel(param1);
            }
         }
         if(param1.keyCode == Keyboard.ESCAPE)
         {
            this.hideChatPanel(param1);
         }
      }
      
      protected function sendMessage(param1:KeyboardEvent) : void
      {
         var _loc2_:String = this.hideChatPanel(param1);
         if(_loc2_.length != 0)
         {
            if(mainMenu.chatPanel.canSendChatMessage)
            {
               FishaoFscModelManager.chatFscExtension.sendPublicMessage(_loc2_);
            }
         }
      }
      
      protected function hideChatPanel(param1:Event) : String
      {
         if(param1 is KeyboardEvent && KeyboardEvent(param1).keyCode == Keyboard.ESCAPE)
         {
            return mainMenu.hideChatManual();
         }
         return mainMenu.hideChatAuto();
      }
      
      private function onFishdexClick(param1:MouseEvent) : void
      {
         if(GameSwf.inspectGuestLockedAction())
         {
            return;
         }
         var _loc2_:FishdexSwfDialog = app.dialogFactory.getFishdexSwfDialog();
         _loc2_.show();
      }
      
      public function centerToRect(param1:int, param2:int, param3:int, param4:int) : void
      {
         this._lastScreenRect = new Rectangle(param1,param2,param3,param4);
         this.x = param1;
         this.y = param2;
         mainMenu.x = int((param3 - mainMenu.width) * 0.5);
         mainMenu.y = int(param4 - mainMenu.height);
         var _loc5_:DisplayObject = _controllerSettings.view.source;
         _loc5_.x = param3 - _loc5_.width + 20;
         var _loc6_:DisplayObject = _controllerBoosters.view.source;
         _loc6_.x = _loc5_.x + 9;
         _loc6_.y = _loc5_.y + 41;
         var _loc7_:int = _loc5_.x;
         fishcoinsIndicator.x = (_loc7_ - this._indicatorsFullWidth) * 0.5;
         fishbucksIndicator.x = fishcoinsIndicator.x + this._fishcoinsFishbucksSpacing;
         this._viewArrowSale.source.x = fishcoinsIndicator.x + 110;
         this._viewArrowSale.source.y = fishcoinsIndicator.y + 22;
         energyIndicator.x = fishbucksIndicator.x + this._fishbucksEnergySpacing;
         energyIndicator.label.text = app.user.energy.value;
         levelIndicator.x = energyIndicator.x + this._energyLevelSpacing;
         if(this.isTournament)
         {
            levelIndicator.x = energyIndicator.x;
         }
         var _loc8_:DisplayObject = controllerButtonFishingLine.view.source;
         _loc8_.x = param3 - _loc8_.width - 10;
         _loc8_.y = param4 - _loc8_.height - 5;
         baitInformer.x = _loc8_.x;
         baitInformer.y = _loc8_.y - baitInformer.height - 10;
         informerRod.x = _loc8_.x;
         informerRod.y = baitInformer.y - informerRod.height - 10;
         plingPanel.x = param3 - 280;
         plingPanel.y = 88;
         if(this.getChildByName("tutorialArrowStep_2") != null)
         {
            this.getChildByName("tutorialArrowStep_2").x = param3 - informerRod.width / 2 - 10 - this.getChildByName("tutorialArrowStep_2").width / 2;
            this.getChildByName("tutorialArrowStep_2").y = param4 - informerRod.height - baitInformer.height - 15 - informerRod.height / 2;
         }
         if(this.getChildByName("tutorialArrowStep_3") != null)
         {
            this.getChildByName("tutorialArrowStep_3").x = param3 - baitInformer.width / 2 - 10 - this.getChildByName("tutorialArrowStep_3").width / 2;
            this.getChildByName("tutorialArrowStep_3").y = param4 - baitInformer.height - 5 - baitInformer.height / 2;
         }
         if(this.getChildByName("tutorialArrowStep_5") != null)
         {
            this.getChildByName("tutorialArrowStep_5").x = param3 - baitInformer.width / 2 - 10 - this.getChildByName("tutorialArrowStep_5").width / 2;
            this.getChildByName("tutorialArrowStep_5").y = param4 - baitInformer.height - 5 - baitInformer.height / 2;
         }
         boatPanel.x = param3 / 2 - boatPanel.width / 2;
         boatPanel.y = 85;
         this.fishWidgetsVerticallyAlign();
      }
      
      public function fishWidgetsVerticallyAlign() : void
      {
         var _loc1_:int = 0;
         var _loc2_:DisplayObject = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:DisplayObject = null;
         var _loc6_:DailyQuestManWidget = getChildByName("DailyQuestWidget") as DailyQuestManWidget;
         var _loc7_:CollectionsGirlWidget = getChildByName("CollWidget") as CollectionsGirlWidget;
         var _loc8_:MissionsUncleSamWidget = getChildByName("MissionsWidget") as MissionsUncleSamWidget;
         var _loc9_:int = 0;
         var _loc10_:Array = [_loc8_,_loc7_,_loc6_];
         _loc1_ = 0;
         for each(_loc2_ in _loc10_)
         {
            if(_loc2_ != null && _loc2_.visible && _loc2_.alpha > 0)
            {
               _loc1_++;
               _loc9_ += this.getItemHeight(_loc2_);
            }
         }
         _loc3_ = _loc9_ + Math.max(0,_loc1_ - 1) * this.WIGET_ICON_GAP;
         _loc4_ = this._lastScreenRect.height / 2 - _loc3_ / 2;
         for each(_loc5_ in _loc10_)
         {
            if(_loc5_ != null && _loc5_.visible && _loc5_.alpha > 0)
            {
               _loc5_.y = _loc4_;
               _loc4_ += this.getItemHeight(_loc5_) + this.WIGET_ICON_GAP;
            }
         }
      }
      
      private function getItemHeight(param1:DisplayObject) : Number
      {
         return param1.height;
      }
      
      private function onPlayerAtBoatChange(param1:VariableChangeEvent = null) : void
      {
         if(app.user.atTheBoat.value == true)
         {
            boatPanel.visible = true;
            boatPanel.isBoatControlActivated = true;
         }
         else
         {
            boatPanel.visible = false;
         }
      }
      
      private function onPlayerLockChange(param1:VariableChangeEvent) : void
      {
         var _loc2_:TutorialInfo = GameSwf.instance.managerTutorial.tutorialInProgress;
         var _loc3_:Boolean = _loc2_ != null && _loc2_.needLockGui;
         if(app.user.inFishingProcess.value == true || app.user.inTalkWithNPC.value == true || _loc3_)
         {
            this.lockPanelActions();
         }
         else
         {
            this.unlockPanelActions();
         }
      }
      
      public function lockPanelActions() : void
      {
         mainMenu.lock();
         controllerButtonFishingLine.isLocked = true;
         informerRod.lock();
         baitInformer.lock();
      }
      
      public function unlockPanelActions() : void
      {
         mainMenu.unlock();
         controllerButtonFishingLine.isLocked = false;
         informerRod.unlock();
         baitInformer.unlock();
      }
      
      public function addInfluencingItemWidget(param1:int, param2:int, param3:int) : void
      {
         var _loc4_:InfluencingItemWidget = null;
         var _loc5_:InfluencingItemWidget = null;
         for each(_loc4_ in this._influencingItemWidgets)
         {
            if(_loc4_.itemId == param2)
            {
               return;
            }
         }
         _controllerBoosters.updateButtonBooster(param1,param2);
         _loc5_ = new InfluencingItemWidget(param1,param2);
         this._influencingItemWidgets.push(_loc5_);
      }
      
      public function removeAllInfluencingWidget() : void
      {
         this.removeWidgetByType(ResourceType.LUCK_POTION.id);
         this.removeWidgetByType(ResourceType.FISH_RADAR.id);
         this.removeWidgetByType(ResourceType.MAGIC_WATCH.id);
         this.removeWidgetByType(ResourceType.EXP_BOOSTER.id);
         this.removeWidgetByType(ResourceType.SHINY_POTION.id);
         this.removeWidgetByType(ResourceType.POWER_BOOSTER.id);
      }
      
      public function get influencingItemWidgets() : Array
      {
         return this._influencingItemWidgets;
      }
      
      public function removeWidgetByType(param1:int) : void
      {
         var _loc2_:InfluencingItemWidget = null;
         _controllerBoosters.disableButtonBooster(param1);
         for each(_loc2_ in this._influencingItemWidgets)
         {
            if(_loc2_.itemTypeId == param1)
            {
               UtilsArray.removeValue(this._influencingItemWidgets,_loc2_);
               break;
            }
         }
      }
      
      public function privateHouseEditingMode(param1:Boolean) : void
      {
         fishcoinsIndicator.visible = param1;
         fishbucksIndicator.visible = param1;
         energyIndicator.visible = param1;
         levelIndicator.visible = param1;
         controllerButtonFishingLine.view.source.visible = param1;
         informerRod.visible = param1;
         baitInformer.visible = param1;
         _controllerSettings.buttonsIsVisible = param1;
      }
      
      public function get isMenuLocked() : Boolean
      {
         return mainMenu.isLocked();
      }
      
      public function displayMaintenanceTime(param1:uint) : void
      {
         if(param1 < 1)
         {
            ManagerMaintenance.showMaintenanceInProgressDialog();
         }
         this.addCountdownDialog(param1,600,ECountdownType.ECT_MAINTANENCE,this.handleMaintenanceTime);
      }
      
      public function addCountdownDialog(param1:int, param2:int, param3:String, param4:Function = null, param5:String = null) : DialogCountdown
      {
         var _loc6_:DialogCountdown = this.getCountdownDialogByType(param3);
         if(_loc6_ != null)
         {
            return _loc6_;
         }
         _loc6_ = new DialogCountdown(param1,param2);
         _loc6_.controllerCountdown.type = param3;
         _loc6_.controllerCountdown.onCompleteFunction = param4;
         _loc6_.controllerCountdown.membersScoreType = param5;
         _loc6_.x = 100;
         _loc6_.y = 100 + this._countdownList.length * 280;
         this._countdownList.push(_loc6_);
         addChild(_loc6_);
         return _loc6_;
      }
      
      public function getCountdownDialogByType(param1:String) : DialogCountdown
      {
         var _loc2_:DialogCountdown = null;
         var _loc3_:DialogCountdown = null;
         for each(_loc2_ in this._countdownList)
         {
            if(_loc2_.controllerCountdown.type == param1)
            {
               _loc3_ = _loc2_;
               break;
            }
         }
         return _loc3_;
      }
      
      public function removeCountdownDialogByType(param1:String) : void
      {
         var _loc2_:DialogCountdown = null;
         var _loc3_:int = 0;
         while(_loc3_ < this._countdownList.length)
         {
            _loc2_ = this._countdownList[_loc3_];
            if(_loc2_.controllerCountdown.type == param1)
            {
               this._countdownList.splice(_loc3_,1);
               _loc2_.destroy();
               break;
            }
            _loc3_++;
         }
      }
      
      private function handleMaintenanceTime() : void
      {
         ManagerMaintenance.showMaintenanceInProgressDialog();
      }
      
      public function update(param1:String) : void
      {
         switch(param1)
         {
            case EControllerUpdate.ECU_FISHING_LINE_COLOR:
               controllerButtonFishingLine.update(param1);
               break;
            case EControllerUpdate.ECU_FISHING_LINE_LEVEL:
               controllerButtonFishingLine.update(param1);
               break;
            case EControllerUpdate.ECU_EVENTS_EVENT_END:
            case EControllerUpdate.ECU_EVENTS_EVENT_START:
            case EControllerUpdate.ECU_EVENTS_EVENT_SHOWN:
               controllerSettings.update(param1);
               break;
            case EControllerUpdate.ECU_SALES_SALE_END:
            case EControllerUpdate.ECU_SALES_SALE_START:
            case EControllerUpdate.ECU_SALES_SALE_SHOWN:
            case EControllerUpdate.ECU_TUTORIAL_COMMON_COMPLETE:
               this.updateSaleArrow();
               break;
            case EControllerUpdate.ECU_SHINY_STATE:
               controllerBoosters.update(param1);
               break;
            default:
               Debug.assert(false);
         }
      }
      
      private function updateSaleArrow() : void
      {
         var _loc1_:ManagerSales = GameSwf.instance.managerSales;
         var _loc2_:SaleBase = _loc1_.getFishcoinsSaleIfAvailable();
         if(_loc2_ == null || _loc2_.isShown || !GameSwf.instance.managerTutorial.isTutorialCommonComplete)
         {
            this._viewArrowSale.hide();
         }
         else
         {
            this._viewArrowSale.show();
         }
      }
      
      override public function destroy() : void
      {
         var _loc1_:DialogCountdown = null;
         _controllerSettings.cleanup();
         _controllerSettings = null;
         _controllerBoosters.cleanup();
         _controllerBoosters = null;
         for each(_loc1_ in this._countdownList)
         {
            _loc1_.destroy();
         }
         this._countdownList = [];
         this.deactivate();
         removeAllChildren(this);
         removeFromParent(this);
         this.removeListeners();
         Listeners.destroyAllSubscriptions(this);
         super.destroy();
      }
      
      public function activate() : void
      {
         _controllerSettings.isActive = true;
         this.addListeners();
         plingPanel.activate();
         if(this.dailyQuestManWidget != null && !DailyQuestManWidget.dailyQuestsModel.prizeIsCollect)
         {
            this.dailyQuestManWidget.enable();
         }
         if(this.missionsUncleSamWidget != null)
         {
            this.missionsUncleSamWidget.enable();
         }
         if(this.collectionsGirlWidget != null)
         {
            this.collectionsGirlWidget.enable();
         }
      }
      
      public function deactivate() : void
      {
         if(_controllerSettings != null)
         {
            _controllerSettings.isActive = false;
         }
         this.removeListeners();
         if(this.dailyQuestManWidget != null)
         {
            this.dailyQuestManWidget.deactivate();
         }
         if(this.missionsUncleSamWidget != null)
         {
            this.missionsUncleSamWidget.deactivate();
         }
         if(this.collectionsGirlWidget != null)
         {
            this.collectionsGirlWidget.deactivate();
         }
         if(plingPanel != null)
         {
            plingPanel.deactivate();
         }
      }
   }
}

