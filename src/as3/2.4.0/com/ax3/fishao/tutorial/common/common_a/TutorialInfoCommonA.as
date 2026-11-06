package com.ax3.fishao.tutorial.common.common_a
{
   import com.ax3.fishao.Config;
   import com.ax3.fishao.EResourceID;
   import com.ax3.fishao.ResourceType;
   import com.ax3.fishao.display.Gui;
   import com.ax3.fishao.display.dialogs.ShopSwfDialogAsset;
   import com.ax3.fishao.display.panels.BaitInformer;
   import com.ax3.fishao.display.panels.RodInformer;
   import com.ax3.fishao.entries.LocationUser;
   import com.ax3.fishao.locations.base.LocationConfig;
   import com.ax3.fishao.locations.base.LocationDialog;
   import com.ax3.fishao.locations.entries.PlayerChar;
   import com.ax3.fishao.locations.entries.PlayerCharTutorialCommon;
   import com.ax3.fishao.locations.npc.base.ENpcName;
   import com.ax3.fishao.locations.npc.base.NPC;
   import com.ax3.fishao.model.ShopItemColor;
   import com.ax3.fishao.model.pling.EPlingType;
   import com.ax3.fishao.resources.EResourceType;
   import com.ax3.fishao.tutorial.TutorialHelpers;
   import com.ax3.fishao.tutorial.common.base.TutorialInfoCommon;
   import com.ax3.fishao.tutorial.helpers.TutorialHelperArrow;
   import com.ax3.fishao.tutorial.helpers.TutorialHelperBase;
   import com.ax3.fishao.tutorial.helpers.TutorialHelperMask;
   import com.ax3.fishao.tutorial.helpers.TutorialHelperPopup;
   import com.ax3.fishao.tutorial.views.dialogs.bite.TutorialBiteExplanationSwfDialog;
   import com.ax3.fishao.tutorial.views.dialogs.caught.DialogTutorialCaught;
   import com.ax3.fishao.tutorial.views.dialogs.inventory.DialogInventoryTutorial;
   import com.ax3.fishao.tutorial.views.dialogs.shop.DialogShopTutorial;
   import com.ax3.fishao.tutorial.views.dialogs.story.StorySwfDialog;
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.vars.app;
   import com.brokenfunction.json.encodeJson;
   import com.junkbyte.console.Cc;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.geom.Point;
   import flash.text.TextField;
   import flash.utils.getTimer;
   import protocol.api.plings.receive.ResponsePlingReceive;
   
   public class TutorialInfoCommonA extends TutorialInfoCommon
   {
      
      private var _privateHouseExitPosition:Point;
      
      private var _canChatWithPlayers:Boolean;
      
      protected var _stepLeavePrivateHouse:int;
      
      protected var _stepRodSelected:int;
      
      protected var _stepWormsPurchased:int;
      
      protected var _stepBaitSelected:int;
      
      protected var _stepFishingLast:int;
      
      protected var _stepShowProfile:int;
      
      protected var _stepUserStats:int;
      
      protected var _stepChatWithUsers:int;
      
      protected var _stepFindSam:int;
      
      public function TutorialInfoCommonA()
      {
         super();
         this._privateHouseExitPosition = new Point(303,1375);
      }
      
      private static function get randomPointOnRiver() : Point
      {
         var _loc1_:Number = NaN;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Point = null;
         var _loc5_:Array = [2390,2540,2684,2950];
         var _loc6_:Array = [1313,1355,1399,1590];
         var _loc7_:int = Math.round(Math.random() * 3);
         var _loc8_:int = Math.round(Math.random() * 3);
         if(_loc7_ == _loc8_)
         {
            _loc4_ = new Point(_loc5_[_loc7_],_loc6_[_loc7_]);
         }
         else
         {
            _loc1_ = (_loc6_[_loc8_] - _loc6_[_loc7_]) / (_loc5_[_loc8_] - _loc5_[_loc7_]);
            _loc2_ = (-_loc5_[_loc7_] * _loc6_[_loc8_] + _loc6_[_loc7_] * _loc5_[_loc8_]) / (_loc5_[_loc8_] - _loc5_[_loc7_]);
            _loc3_ = Math.random() * (_loc5_[_loc8_] - _loc5_[_loc7_]) + _loc5_[_loc7_];
            _loc4_ = new Point(_loc3_,_loc1_ * _loc3_ + _loc2_);
         }
         return _loc4_;
      }
      
      override public function get needHideGui() : Boolean
      {
         return this.stepCurrent == 1;
      }
      
      override public function get canChatWithPlayers() : Boolean
      {
         return this._canChatWithPlayers;
      }
      
      override public function onChatShown() : void
      {
         onStepComplete();
      }
      
      override public function onLocationChangeStart() : void
      {
         super.onLocationChangeStart();
         var _loc1_:LocationDialog = GameSwf.currentLocationDialog;
         switch(this.stepCurrent)
         {
            case 3:
               if(_loc1_.locationModel.locationConfig == LocationConfig.PRIVATE_HOUSE)
               {
                  onStepComplete();
               }
         }
      }
      
      override public function onLocationChanged() : void
      {
         var _loc1_:StorySwfDialog = null;
         super.onLocationChanged();
         var _loc2_:LocationDialog = GameSwf.currentLocationDialog;
         var _loc3_:Boolean = true;
         switch(this.stepCurrent)
         {
            case 1:
               _loc3_ = false;
               gui.visible = false;
               setPlayerPosition(new Point(300,LocationDialog.PRIVATE_HOUSE_GARDEN_HEIGHT + 300));
               _loc1_ = app.dialogFactory.getStorySwfDialog();
               _loc1_.show();
               break;
            case this._stepLeavePrivateHouse:
               if(_loc2_.locationModel.locationConfig == LocationConfig.LOCATION_2_RIO)
               {
                  _loc3_ = false;
                  setPlayerPosition(new Point(2940,300));
                  this.onStep4Start();
               }
               break;
            case this._stepRodSelected:
               tryMovePlayerToTheRiver(randomPointOnRiver);
               disableGui();
               break;
            case this._stepWormsPurchased:
               checkBaitWorms();
               tryMovePlayerToTheRiver(randomPointOnRiver);
               disableGui();
               break;
            case this._stepBaitSelected:
               checkBaitWorms();
               tryMovePlayerToTheRiver(randomPointOnRiver);
               preparePlayerForFishing();
               disableGui();
               break;
            case this._stepFishingLast:
            case this._stepShowProfile:
            case this._stepUserStats:
            case this._stepChatWithUsers:
               app.user.canMove = false;
               disableGui();
               break;
            case this._stepFindSam:
               app.user.canMove = true;
               disableGui();
               break;
            default:
               Cc.warn("tutorial a.onLocationChangeStart. undefined behaviour step: " + this.stepCurrent);
         }
         if(_loc3_)
         {
            restartCurrentStep();
         }
         if(this.stepCurrent < this._stepRodSelected)
         {
            selectRod(EResourceID.ER_ROD_EMPTY);
         }
         else
         {
            selectRod(EResourceID.ER_ROD_BAMBOO,ShopItemColor.BROWN);
         }
         if(this.stepCurrent < this._stepBaitSelected)
         {
            selectBait(EResourceID.ER_BAIT_EMPTY);
         }
         else
         {
            selectBait(EResourceID.ER_BAIT_WORMS);
         }
      }
      
      private function onStep1Complete() : void
      {
         var _loc1_:StorySwfDialog = _gameSwf.getOpenedPopup(StorySwfDialog) as StorySwfDialog;
         if(_loc1_ != null)
         {
            _loc1_.showTutorialArrow();
         }
      }
      
      private function onStep2Complete() : void
      {
         var _loc1_:TutorialHelpers = this.tutorialHelpers;
         _loc1_.helperMask.addMaskCircle(_loc1_.helperMask.getPositionPlayer(),105,TutorialHelperBase.getConstantPoint(this._privateHouseExitPosition));
         var _loc2_:TutorialHelperPopup = prepareAndGetPopup();
         _loc2_.textBig = I18n.get("tutorialPopup_walkOutside");
         _loc2_.alignToTop(50);
         (_loc2_.navigation.getChildByName("textOr") as TextField).text = I18n.get("loading_or");
         _loc2_.navigation.visible = true;
      }
      
      private function onStep4Start() : void
      {
         var _loc1_:TutorialHelpers = this.tutorialHelpers;
         disableGui();
         (GameSwf.currentLocationDialog.player as PlayerCharTutorialCommon).searchRiver = true;
         _loc1_.helperMask.addMaskCircle(_loc1_.helperMask.getPositionPlayer(),105,TutorialHelperBase.getConstantPoint(randomPointOnRiver),null,50);
         var _loc2_:TutorialHelperPopup = prepareAndGetPopup();
         _loc2_.textBig = I18n.get("tutorialPopup_goFindRiver");
         _loc2_.textSmall = I18n.get("tutorialPopup_followArrow");
         _loc2_.alignToTop(50);
      }
      
      private function onStep4Complete() : void
      {
         (GameSwf.currentLocationDialog.player as PlayerCharTutorialCommon).searchRiver = false;
         app.user.canMove = false;
         var _loc1_:Gui = this.gui;
         var _loc2_:TutorialHelpers = this.tutorialHelpers;
         var _loc3_:RodInformer = _loc1_.informerRod;
         _loc3_.unlock();
         _loc2_.helperArrow.showTutorialArrow(TutorialHelperArrow.getArrowPositionFor(_loc3_),-45);
         _loc2_.helperMask.addMaskCircle(TutorialHelperMask.getPositionForView(_loc3_),Math.sqrt(_loc3_.width * _loc3_.width + _loc3_.height * _loc3_.height) / 2);
         var _loc4_:TutorialHelperPopup = prepareAndGetPopup();
         _loc4_.showOnlyTextBig(I18n.get("tutorialPopup_selectRod"));
         _loc4_.alignToTop(50);
      }
      
      private function onStep5Complete() : void
      {
         disableGui();
         var _loc1_:DialogInventoryTutorial = _gameSwf.getOpenedPopup(DialogInventoryTutorial) as DialogInventoryTutorial;
         if(_loc1_ != null)
         {
            _loc1_.setFocusForItem(ResourceType.ROD,EResourceID.ER_ROD_BAMBOO);
         }
         else
         {
            Cc.error("onStep5Complete. dialogInventory is null");
         }
      }
      
      private function onStep6Complete() : void
      {
         var _loc1_:DialogInventoryTutorial = _gameSwf.getOpenedPopup(DialogInventoryTutorial) as DialogInventoryTutorial;
         _loc1_.setFocusOnButtonSelect();
      }
      
      private function onStep7Complete() : void
      {
         var _loc1_:TutorialHelpers = this.tutorialHelpers;
         var _loc2_:Gui = this.gui;
         _loc2_.mainMenu.shopIcon.enable();
         var _loc3_:Sprite = _loc2_.mainMenu.shopIcon;
         _loc1_.helperArrow.showTutorialArrow(TutorialHelperArrow.getArrowPositionFor(_loc3_,new Point(_loc3_.width / 2,-_loc3_.height)),0);
         _loc1_.helperMask.addMaskCircle(TutorialHelperMask.getPositionForView(_loc3_),50);
         var _loc4_:TutorialHelperPopup = prepareAndGetPopup();
         _loc4_.textBig = I18n.get("tutorialPopup_buyWorms");
         _loc4_.textSmall = I18n.get("tutorialPopup_letsGo");
         _loc4_.alignToTop(50);
      }
      
      private function onStep8Complete() : void
      {
         var _loc1_:DialogShopTutorial = _gameSwf.getOpenedPopup(DialogShopTutorial) as DialogShopTutorial;
         _loc1_.setFocusOnTab(ShopSwfDialogAsset.TAB_ID_BAIT);
      }
      
      private function onStep9Complete() : void
      {
         var _loc1_:DialogShopTutorial = _gameSwf.getOpenedPopup(DialogShopTutorial) as DialogShopTutorial;
         _loc1_.setFocusOnItem(ResourceType.BAIT,EResourceID.ER_BAIT_WORMS);
      }
      
      private function onStep10Complete() : void
      {
         var _loc1_:Gui = this.gui;
         var _loc2_:TutorialHelpers = this.tutorialHelpers;
         var _loc3_:BaitInformer = _loc1_.baitInformer;
         _loc3_.unlock();
         _loc2_.helperArrow.showTutorialArrow(TutorialHelperArrow.getArrowPositionFor(_loc3_),-45);
         _loc2_.helperMask.addMaskCircle(TutorialHelperMask.getPositionForView(_loc3_),Math.sqrt(_loc3_.width * _loc3_.width + _loc3_.height * _loc3_.height) / 2);
         var _loc4_:TutorialHelperPopup = prepareAndGetPopup();
         _loc4_.showOnlyTextBig(I18n.get("tutorialPopup_selectWorms"));
         _loc4_.alignToTop(50);
      }
      
      private function onStep11Complete() : void
      {
         disableGui();
         var _loc1_:DialogInventoryTutorial = _gameSwf.getOpenedPopup(DialogInventoryTutorial) as DialogInventoryTutorial;
         _loc1_.setFocusForItem(ResourceType.BAIT,EResourceID.ER_BAIT_WORMS);
      }
      
      private function onStep12Complete() : void
      {
         var _loc1_:DialogInventoryTutorial = _gameSwf.getOpenedPopup(DialogInventoryTutorial) as DialogInventoryTutorial;
         _loc1_.setFocusOnButtonSelect();
      }
      
      private function onStep13Complete() : void
      {
         var _loc1_:TutorialHelpers = this.tutorialHelpers;
         var _loc2_:TutorialHelperPopup = prepareAndGetPopup();
         _loc2_.textBig = I18n.get("tutorialPopup_startFishing");
         _loc2_.textSmall = I18n.get("tutorialPopup_throwIn");
         _loc2_.alignToTop(50);
         _loc1_.helperMask.addMaskCircle(TutorialHelperMask.getCloserPointToLake(),65);
         _loc1_.helperArrow.showTutorialArrow(TutorialHelperMask.getCloserPointToLake(new Point(-75,-75)),-45);
         var _loc3_:LocationUser = GameSwf.currentLocationDialog.locationModel.getLocationUser(app.user.username);
         (_loc3_.fieldChar as PlayerCharTutorialCommon).disableHideRod = true;
         preparePlayerForFishing();
      }
      
      private function onStep14Complete() : void
      {
         var _loc1_:LocationUser = GameSwf.currentLocationDialog.locationModel.getLocationUser(app.user.username);
         (_loc1_.fieldChar as PlayerCharTutorialCommon).disableHideRod = false;
         var _loc2_:TutorialBiteExplanationSwfDialog = app.dialogFactory.getTutorialBiteExplanationDialog();
         _loc2_.show();
      }
      
      private function onStep15Complete() : void
      {
         var _loc1_:LocationUser = GameSwf.currentLocationDialog.locationModel.getLocationUser(app.user.username);
         (_loc1_.fieldChar as PlayerChar).showBitePanel();
      }
      
      private function onStep16Complete() : void
      {
         var _loc1_:TutorialHelperPopup = null;
         disableFishing();
         var _loc2_:DialogTutorialCaught = GameSwf.currentLocationDialog.caughtDialog as DialogTutorialCaught;
         if(_loc2_ != null)
         {
            _loc2_.setFocusOnButtonFishdex();
            _loc1_ = prepareAndGetPopup();
            _loc1_.textBig = I18n.get("tutorialPopup_goodJob").replace("#FISH_NAME#",_loc2_.fishName);
            _loc1_.textSmall = I18n.get("tutorialPopup_letsCheck");
            _loc1_.alignToTop(50);
         }
      }
      
      private function onStep17Complete() : void
      {
         saveStep(19);
      }
      
      private function onStep18Complete() : void
      {
         var _loc1_:Object = {
            "resType":ResourceType.OTHER.id,
            "resId":EResourceID.ER_FISHING_LICENCE,
            "quantity":1
         };
         var _loc2_:ResponsePlingReceive = new ResponsePlingReceive();
         _loc2_.timestampSec = getTimer();
         _loc2_.type = EPlingType.RESOURCE_RECEIVED;
         _loc2_.params = encodeJson(_loc1_);
         app.plings.onPlingResp(_loc2_);
         var _loc3_:TutorialHelpers = this.tutorialHelpers;
         var _loc4_:Gui = this.gui;
         _loc4_.mainMenu.inventoryIcon.enable();
         var _loc5_:Sprite = _loc4_.mainMenu.inventoryIcon;
         _loc3_.helperArrow.showTutorialArrow(TutorialHelperArrow.getArrowPositionFor(_loc5_,new Point(_loc5_.width / 2,-_loc5_.height)),0);
         _loc3_.helperMask.addMaskCircle(TutorialHelperMask.getPositionForView(_loc5_),50);
         var _loc6_:TutorialHelperPopup = prepareAndGetPopup();
         _loc6_.textBig = I18n.get("tutorialPopup_fishingLicenseReceived");
         _loc6_.textSmall = I18n.get("tutorialPopup_becauseYouKnow");
         _loc6_.alignToTop(50);
      }
      
      private function onStep19Complete() : void
      {
         disableGui();
         var _loc1_:DialogInventoryTutorial = _gameSwf.getOpenedPopup(DialogInventoryTutorial) as DialogInventoryTutorial;
         if(_loc1_ != null)
         {
            _loc1_.setFocusOnTab(EResourceType.OTHER_NAME);
         }
      }
      
      private function onStep20Complete() : void
      {
         var _loc1_:DialogInventoryTutorial = _gameSwf.getOpenedPopup(DialogInventoryTutorial) as DialogInventoryTutorial;
         if(_loc1_ != null)
         {
            _loc1_.setFocusOnButtonClose();
         }
      }
      
      protected function onStep21Complete() : void
      {
         var _loc1_:LocationDialog = GameSwf.currentLocationDialog;
         var _loc2_:TutorialHelpers = this.tutorialHelpers;
         _loc2_.helperMask.addMaskCircle(_loc2_.helperMask.getPositionPlayer(),105);
         _loc2_.helperArrow.showTutorialArrow(TutorialHelperArrow.getArrowPositionFor(_loc1_.player.graphic,new Point(0,-120)),0);
         var _loc3_:TutorialHelperPopup = prepareAndGetPopup();
         _loc3_.textBig = I18n.get("tutorialPopup_viewProfile");
         _loc3_.textSmall = I18n.get("tutorialPopup_checkProfile");
         _loc3_.alignToTop(50);
         allowInteractWithChar(app.user.username);
      }
      
      private function onStep22Complete() : void
      {
         clearAllowedChars();
      }
      
      private function onStep23Complete() : void
      {
      }
      
      protected function onStep24Complete() : void
      {
         var _loc1_:TutorialHelperPopup = prepareAndGetPopup();
         _loc1_.showButtonNext();
         _loc1_.textBig = I18n.get("tutorialPopup_fishcoins");
         _loc1_.textSmall = I18n.get("tutorialPopup_fishcoinsDescription");
         _loc1_.alignToCenter(0);
         this.addFocusToViewGui(this.gui.fishcoinsIndicator.asset);
         this.addArrowForViewGui(this.gui.fishcoinsIndicator.asset);
      }
      
      private function onStep25Complete() : void
      {
         var _loc1_:TutorialHelperPopup = prepareAndGetPopup();
         _loc1_.showButtonNext();
         _loc1_.textBig = I18n.get("tutorialPopup_fishbucks");
         _loc1_.textSmall = I18n.get("tutorialPopup_fishbucksDescription");
         _loc1_.alignToCenter(0);
         this.addFocusToViewGui(this.gui.fishbucksIndicator.asset);
         this.addArrowForViewGui(this.gui.fishbucksIndicator.asset);
      }
      
      private function onStep26Complete() : void
      {
         var _loc1_:TutorialHelperPopup = prepareAndGetPopup();
         _loc1_.showButtonNext();
         _loc1_.textBig = I18n.get("tutorialPopup_energy");
         _loc1_.textSmall = I18n.get("tutorialPopup_energyDescription");
         _loc1_.alignToCenter(0);
         this.addFocusToViewGui(this.gui.energyIndicator.asset);
         this.addArrowForViewGui(this.gui.energyIndicator.asset);
      }
      
      private function onStep27Complete() : void
      {
         var _loc1_:TutorialHelperPopup = prepareAndGetPopup();
         _loc1_.showButtonNext();
         _loc1_.textBig = I18n.get("tutorialPopup_level");
         _loc1_.textSmall = I18n.get("tutorialPopup_levelDescription");
         _loc1_.alignToCenter(0);
         this.addFocusToViewGui(this.gui.levelIndicator.asset);
         this.addArrowForViewGui(this.gui.levelIndicator.asset);
      }
      
      private function onStep28Complete() : void
      {
         var _loc1_:TutorialHelperPopup = prepareAndGetPopup();
         _loc1_.showButtonNext();
         _loc1_.textBig = I18n.get("tutorialPopup_worldMap");
         _loc1_.textSmall = I18n.get("tutorialPopup_worldMapDescription");
         _loc1_.alignToCenter(0);
         this.addFocusToViewGui(this.gui.mainMenu.mapIcon);
         this.addArrowForViewGui(this.gui.mainMenu.mapIcon,false);
      }
      
      private function onStep29Complete() : void
      {
         var _loc1_:TutorialHelperPopup = prepareAndGetPopup();
         _loc1_.showButtonNext();
         _loc1_.textBig = I18n.get("tutorialPopup_tournaments");
         _loc1_.textSmall = I18n.get("tutorialPopup_tournamentsDescription");
         _loc1_.alignToCenter(0);
         this.addFocusToViewGui(this.gui.mainMenu.tournamentIcon);
         this.addArrowForViewGui(this.gui.mainMenu.tournamentIcon,false);
      }
      
      private function onStep30Complete() : void
      {
         var _loc1_:TutorialHelperPopup = prepareAndGetPopup();
         _loc1_.showButtonNext();
         _loc1_.textBig = I18n.get("tutorialPopup_fishline");
         _loc1_.textSmall = I18n.get("tutorialPopup_fishlineDescription");
         _loc1_.alignToCenter(0);
         this.addFocusToViewGui(this.gui.controllerButtonFishingLine.view.source);
         this.addArrowForViewGui(this.gui.controllerButtonFishingLine.view.source,false);
      }
      
      protected function onStep31Complete() : void
      {
         this.gui.centerToRect(0,0,Config.SCREEN_WIDTH,Config.SCREEN_HEIGHT);
         this._canChatWithPlayers = true;
         this.gui.mainMenu.chatButton.enable();
         var _loc1_:TutorialHelperPopup = prepareAndGetPopup();
         _loc1_.showViewButtonEnter();
         _loc1_.textBig = I18n.get("tutorialPopup_chat");
         _loc1_.textSmall = I18n.get("tutorialPopup_chatDescription1");
         _loc1_.alignToCenter(0);
         var _loc2_:DisplayObject = this.gui.mainMenu.chatButton.button;
         var _loc3_:Point = new Point(-_loc2_.width / 2,-_loc2_.height / 2);
         this.tutorialHelpers.helperMask.addMaskRectangle(TutorialHelperMask.getPositionForView(_loc2_,_loc3_),TutorialHelperBase.getConstantPoint(new Point(80,60)));
      }
      
      private function onStep32Complete() : void
      {
         this._canChatWithPlayers = false;
         var _loc1_:TutorialHelpers = this.tutorialHelpers;
         var _loc2_:DisplayObject = this.gui.mainMenu.chatPanel.child;
         _loc1_.helperMask.addMaskRectangle(TutorialHelperMask.getPositionForView(_loc2_,new Point(-_loc2_.width / 2,-75)),TutorialHelperBase.getConstantPoint(new Point(_loc2_.width,55)));
         _loc1_.helperArrow.showTutorialArrow(TutorialHelperArrow.getArrowPositionFor(_loc2_,new Point(_loc2_.width / 2,-70)),0);
         var _loc3_:TutorialHelperPopup = prepareAndGetPopup();
         _loc3_.textBig = I18n.get("tutorialPopup_chat");
         _loc3_.textSmall = I18n.get("tutorialPopup_chatDescription2");
         _loc3_.alignToTop(0);
      }
      
      private function onStep33Complete() : void
      {
         app.user.canMove = true;
         var _loc1_:TutorialHelpers = this.tutorialHelpers;
         var _loc2_:LocationUser = GameSwf.currentLocationDialog.locationModel.getLocationUser(ENpcName.ENN_SAM);
         _loc1_.helperMask.addMaskCircle(_loc1_.helperMask.getPositionPlayer(),105,TutorialHelperMask.getPositionForView(_loc2_.fieldChar.graphic,null,false),onStepComplete,90);
         _loc1_.helperMask.addMaskCircle(TutorialHelperMask.getPositionForView(_loc2_.fieldChar.graphic,new Point(-30,-70)),105);
         var _loc3_:TutorialHelperPopup = prepareAndGetPopup();
         _loc3_.textBig = I18n.get("tutorialPopup_talkWithNpc");
         _loc3_.textSmall = I18n.get("tutorialPopup_computerPlayers");
         _loc3_.alignToBottom(-50);
      }
      
      private function onStep34Complete() : void
      {
         allowInteractWithChar(ENpcName.ENN_SAM);
         var _loc1_:TutorialHelpers = this.tutorialHelpers;
         var _loc2_:LocationUser = GameSwf.currentLocationDialog.locationModel.getLocationUser(ENpcName.ENN_SAM);
         (_loc2_.fieldChar as NPC).canMove = false;
         _loc1_.helperMask.addMaskCircle(TutorialHelperMask.getPositionForView(_loc2_.fieldChar.graphic,new Point(-30,-70)),105);
         var _loc3_:TutorialHelperPopup = prepareAndGetPopup();
         _loc3_.textBig = I18n.get("tutorialPopup_talkWithUncleSam");
         _loc3_.textSmall = I18n.get("tutorialPopup_clickOnUncleSam");
         _loc3_.alignToBottom(-50);
      }
      
      private function onStep35Complete() : void
      {
         clearAllowedChars();
         var _loc1_:TutorialHelpers = this.tutorialHelpers;
         var _loc2_:LocationUser = GameSwf.currentLocationDialog.locationModel.getLocationUser(ENpcName.ENN_SAM);
         var _loc3_:NPC = _loc2_.fieldChar as NPC;
         var _loc4_:DisplayObject = _loc3_.npcDialog;
         _loc1_.helperArrow.showTutorialArrow(TutorialHelperArrow.getArrowPositionFor(_loc4_,new Point(_loc4_.width - 30,-30)),0);
         var _loc5_:TutorialHelperPopup = prepareAndGetPopup();
         _loc5_.showOnlyTextBig(I18n.get("tutorialPopup_clickToProceed"));
         _loc5_.alignToBottom(-50);
      }
      
      private function onStep36Complete() : void
      {
         enableFishing();
         GameSwf.currentLocationDialog.locationModel.removeUserFromLocation(ENpcName.ENN_SAM);
      }
      
      override protected function initHandlers() : void
      {
         super.initHandlers();
         _stepsHandlersMap[1] = this.onStep1Complete;
         _stepsHandlersMap[2] = this.onStep2Complete;
         _stepsHandlersMap[3] = null;
         _stepsHandlersMap[4] = this.onStep4Complete;
         _stepsHandlersMap[5] = this.onStep5Complete;
         _stepsHandlersMap[6] = this.onStep6Complete;
         _stepsHandlersMap[7] = this.onStep7Complete;
         _stepsHandlersMap[8] = this.onStep8Complete;
         _stepsHandlersMap[9] = this.onStep9Complete;
         _stepsHandlersMap[10] = this.onStep10Complete;
         _stepsHandlersMap[11] = this.onStep11Complete;
         _stepsHandlersMap[12] = this.onStep12Complete;
         _stepsHandlersMap[13] = this.onStep13Complete;
         _stepsHandlersMap[14] = this.onStep14Complete;
         _stepsHandlersMap[15] = this.onStep15Complete;
         _stepsHandlersMap[16] = this.onStep16Complete;
         _stepsHandlersMap[17] = this.onStep17Complete;
         _stepsHandlersMap[18] = this.onStep18Complete;
         _stepsHandlersMap[19] = this.onStep19Complete;
         _stepsHandlersMap[20] = this.onStep20Complete;
         _stepsHandlersMap[21] = this.onStep21Complete;
         _stepsHandlersMap[22] = this.onStep22Complete;
         _stepsHandlersMap[23] = this.onStep23Complete;
         _stepsHandlersMap[24] = this.onStep24Complete;
         _stepsHandlersMap[25] = this.onStep25Complete;
         _stepsHandlersMap[26] = this.onStep26Complete;
         _stepsHandlersMap[27] = this.onStep27Complete;
         _stepsHandlersMap[28] = this.onStep28Complete;
         _stepsHandlersMap[29] = this.onStep29Complete;
         _stepsHandlersMap[30] = this.onStep30Complete;
         _stepsHandlersMap[31] = this.onStep31Complete;
         _stepsHandlersMap[32] = this.onStep32Complete;
         _stepsHandlersMap[33] = this.onStep33Complete;
         _stepsHandlersMap[34] = this.onStep34Complete;
         _stepsHandlersMap[35] = this.onStep35Complete;
         _stepsHandlersMap[36] = this.onStep36Complete;
      }
      
      override protected function initStepsToSave() : void
      {
         super.initStepsToSave();
         this._stepLeavePrivateHouse = 4;
         this._stepRodSelected = 8;
         this._stepWormsPurchased = 11;
         this._stepBaitSelected = 14;
         this._stepFishingLast = 19;
         this._stepShowProfile = 22;
         this._stepUserStats = 25;
         this._stepChatWithUsers = 32;
         this._stepFindSam = 34;
         _stepsForResume.push(this._stepLeavePrivateHouse);
         _stepsForResume.push(this._stepRodSelected);
         _stepsForResume.push(this._stepWormsPurchased);
         _stepsForResume.push(this._stepBaitSelected);
         _stepsForResume.push(this._stepFishingLast);
         _stepsForResume.push(this._stepShowProfile);
         _stepsForResume.push(this._stepUserStats);
         _stepsForResume.push(this._stepChatWithUsers);
         _stepsForResume.push(this._stepFindSam);
      }
      
      override public function start() : void
      {
         super.start();
         if(this.stepCurrent < 3)
         {
            _gameSwf.enterPrivateHouse(app.user.username,true);
         }
         else
         {
            setLocation(LocationConfig.LOCATION_2_RIO.id);
         }
      }
      
      private function addArrowForViewGui(param1:DisplayObject, param2:Boolean = true) : void
      {
         var _loc3_:int = param2 ? 180 : 0;
         var _loc4_:Point = param2 ? new Point(param1.width / 2,100) : new Point(param1.width / 2,-70);
         this.tutorialHelpers.helperArrow.showTutorialArrow(TutorialHelperArrow.getArrowPositionFor(param1,_loc4_),_loc3_);
      }
      
      private function addFocusToViewGui(param1:DisplayObject) : void
      {
         this.gui.centerToRect(0,0,Config.SCREEN_WIDTH,Config.SCREEN_HEIGHT);
         this.tutorialHelpers.helperMask.focusOnView(param1);
         if(param1.hasOwnProperty("filters"))
         {
            param1["filters"] = [];
         }
      }
   }
}

