package com.ax3.fishao.tutorial.common.common_b
{
   import com.ax3.fishao.EResourceID;
   import com.ax3.fishao.ResourceType;
   import com.ax3.fishao.display.Gui;
   import com.ax3.fishao.display.dialogs.ShopSwfDialogAsset;
   import com.ax3.fishao.display.panels.BaitInformer;
   import com.ax3.fishao.display.panels.RodInformer;
   import com.ax3.fishao.entries.LocationUser;
   import com.ax3.fishao.locations.base.LocationConfig;
   import com.ax3.fishao.locations.entries.PlayerChar;
   import com.ax3.fishao.locations.entries.PlayerCharTutorialCommon;
   import com.ax3.fishao.model.ShopItemColor;
   import com.ax3.fishao.tutorial.TutorialHelpers;
   import com.ax3.fishao.tutorial.common.base.TutorialInfoCommon;
   import com.ax3.fishao.tutorial.helpers.TutorialHelperArrow;
   import com.ax3.fishao.tutorial.helpers.TutorialHelperMask;
   import com.ax3.fishao.tutorial.helpers.TutorialHelperPopup;
   import com.ax3.fishao.tutorial.views.dialogs.bite.TutorialBiteExplanationSwfDialog;
   import com.ax3.fishao.tutorial.views.dialogs.caught.DialogTutorialCaught;
   import com.ax3.fishao.tutorial.views.dialogs.inventory.DialogInventoryTutorial;
   import com.ax3.fishao.tutorial.views.dialogs.shop.DialogShopTutorial;
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.utils.Utils;
   import com.ax3.fishao.vars.app;
   import com.junkbyte.console.Cc;
   import flash.display.Sprite;
   import flash.geom.Point;
   
   public class TutorialInfoCommonB extends TutorialInfoCommon
   {
      
      private var _stepFishCaught:int;
      
      private var _stepRodSelected:int;
      
      private var _stepWormsPurchased:int;
      
      public function TutorialInfoCommonB()
      {
         super();
      }
      
      private static function get randomPointOnRiver() : Point
      {
         var _loc1_:int = Utils.randomFromTo(1100,1130);
         var _loc2_:int = Utils.randomFromTo(770,1100);
         return new Point(_loc1_,_loc2_);
      }
      
      override public function onLocationChanged() : void
      {
         super.onLocationChanged();
         tryMovePlayerToTheRiver(randomPointOnRiver);
         var _loc1_:Boolean = true;
         switch(stepCurrent)
         {
            case 1:
               _loc1_ = false;
               onStepComplete();
               break;
            case this._stepFishCaught:
               disableGui();
               break;
            case this._stepRodSelected:
               disableGui();
               break;
            case this._stepWormsPurchased:
               disableGui();
               checkBaitWorms();
               break;
            default:
               Cc.warn("tutorial b.onLocationChangeStart. undefined behaviour step: " + this.stepCurrent);
         }
         if(this.stepCurrent < this._stepFishCaught || this.stepCurrent >= this._stepRodSelected)
         {
            selectRod(EResourceID.ER_ROD_BAMBOO,ShopItemColor.BROWN);
         }
         else
         {
            selectRod(EResourceID.ER_ROD_EMPTY);
         }
         if(this.stepCurrent < this._stepFishCaught)
         {
            selectBait(EResourceID.ER_BAIT_DOUGH);
         }
         else
         {
            selectBait(EResourceID.ER_BAIT_EMPTY);
         }
         if(this.stepCurrent >= this._stepRodSelected)
         {
            disableFishing();
         }
         if(_loc1_)
         {
            restartCurrentStep();
         }
      }
      
      override protected function onTutorialCompleted() : void
      {
         super.onTutorialCompleted();
         GameSwf.settings.music = true;
      }
      
      private function onStep1Complete() : void
      {
         disableGui();
         app.user.canMove = false;
         var _loc1_:TutorialHelpers = this.tutorialHelpers;
         var _loc2_:TutorialHelperPopup = prepareAndGetPopup();
         _loc2_.textBig = I18n.get("tutorialPopup_startFishing");
         _loc2_.textSmall = I18n.get("tutorialPopup_throwIn");
         _loc2_.alignToTop(50);
         _loc1_.helperMask.addMaskCircle(TutorialHelperMask.getCloserPointToLake(),65);
         _loc1_.helperArrow.showTutorialArrow(TutorialHelperMask.getCloserPointToLake(new Point(-75,-75)),-45);
         var _loc3_:LocationUser = GameSwf.currentLocationDialog.locationModel.getLocationUser(app.user.username);
         var _loc4_:PlayerCharTutorialCommon = _loc3_.fieldChar as PlayerCharTutorialCommon;
         var _loc5_:Point = _loc4_.getCloserPointToLake();
         _loc4_.rotateByPoint(_loc5_.x - _loc3_.fieldChar.position.x,_loc5_.y - _loc3_.fieldChar.position.y);
         _loc4_.disableHideRod = true;
         preparePlayerForFishing();
      }
      
      private function onStep2Complete() : void
      {
         var _loc1_:LocationUser = GameSwf.currentLocationDialog.locationModel.getLocationUser(app.user.username);
         var _loc2_:PlayerCharTutorialCommon = _loc1_.fieldChar as PlayerCharTutorialCommon;
         _loc2_.disableHideRod = false;
         var _loc3_:TutorialBiteExplanationSwfDialog = app.dialogFactory.getTutorialBiteExplanationDialog();
         _loc3_.show();
      }
      
      private function onStep3Complete() : void
      {
         var _loc1_:LocationUser = GameSwf.currentLocationDialog.locationModel.getLocationUser(app.user.username);
         (_loc1_.fieldChar as PlayerChar).showBitePanel();
      }
      
      private function onStep4Complete() : void
      {
         disableFishing();
         var _loc1_:DialogTutorialCaught = GameSwf.currentLocationDialog.caughtDialog as DialogTutorialCaught;
         if(_loc1_ != null)
         {
            _loc1_.setFocusOnButtonClose();
         }
      }
      
      private function onStep5Complete() : void
      {
         selectRod(EResourceID.ER_ROD_EMPTY);
         selectBait(EResourceID.ER_BAIT_EMPTY);
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
      
      private function onStep6Complete() : void
      {
         disableGui();
         var _loc1_:DialogInventoryTutorial = _gameSwf.getOpenedPopup(DialogInventoryTutorial) as DialogInventoryTutorial;
         _loc1_.setFocusForItem(ResourceType.ROD,EResourceID.ER_ROD_BAMBOO);
      }
      
      private function onStep7Complete() : void
      {
         var _loc1_:DialogInventoryTutorial = _gameSwf.getOpenedPopup(DialogInventoryTutorial) as DialogInventoryTutorial;
         _loc1_.setFocusOnButtonSelect();
      }
      
      private function onStep8Complete() : void
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
      
      private function onStep9Complete() : void
      {
         var _loc1_:DialogShopTutorial = _gameSwf.getOpenedPopup(DialogShopTutorial) as DialogShopTutorial;
         _loc1_.setFocusOnTab(ShopSwfDialogAsset.TAB_ID_BAIT);
      }
      
      private function onStep10Complete() : void
      {
         var _loc1_:DialogShopTutorial = _gameSwf.getOpenedPopup(DialogShopTutorial) as DialogShopTutorial;
         _loc1_.setFocusOnItem(ResourceType.BAIT,EResourceID.ER_BAIT_WORMS);
      }
      
      private function onStep11Complete() : void
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
      
      private function onStep12Complete() : void
      {
         disableGui();
         var _loc1_:DialogInventoryTutorial = _gameSwf.getOpenedPopup(DialogInventoryTutorial) as DialogInventoryTutorial;
         _loc1_.setFocusForItem(ResourceType.BAIT,EResourceID.ER_BAIT_WORMS);
      }
      
      private function onStep13Complete() : void
      {
         var _loc1_:DialogInventoryTutorial = _gameSwf.getOpenedPopup(DialogInventoryTutorial) as DialogInventoryTutorial;
         _loc1_.setFocusOnButtonSelect();
      }
      
      private function onStep14Complete() : void
      {
         app.user.canMove = true;
         enableFishing();
      }
      
      override protected function initHandlers() : void
      {
         super.initHandlers();
         _stepsHandlersMap[1] = this.onStep1Complete;
         _stepsHandlersMap[2] = this.onStep2Complete;
         _stepsHandlersMap[3] = this.onStep3Complete;
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
      }
      
      override protected function initStepsToSave() : void
      {
         super.initStepsToSave();
         this._stepFishCaught = 6;
         this._stepRodSelected = 9;
         this._stepWormsPurchased = 12;
         _stepsForResume.push(this._stepFishCaught);
         _stepsForResume.push(this._stepRodSelected);
         _stepsForResume.push(this._stepWormsPurchased);
      }
      
      override public function start() : void
      {
         super.start();
         GameSwf.settings.music = false;
         setLocation(LocationConfig.LOCATION_1_LAKETOWN.id);
      }
   }
}

