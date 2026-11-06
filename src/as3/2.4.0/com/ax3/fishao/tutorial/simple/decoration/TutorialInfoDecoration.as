package com.ax3.fishao.tutorial.simple.decoration
{
   import com.ax3.fishao.EResourceID;
   import com.ax3.fishao.ResourceType;
   import com.ax3.fishao.display.Gui;
   import com.ax3.fishao.locations.base.LocationConfig;
   import com.ax3.fishao.locations.base.LocationDialog;
   import com.ax3.fishao.locations.entries.PlayerChar;
   import com.ax3.fishao.locations.privateHouse.LocationDialogPrivateHouse;
   import com.ax3.fishao.locations.privateHouse.interior.controller.ControllerInteriorFurnitureTutorial;
   import com.ax3.fishao.locations.privateHouse.interior.controller.ControllerInteriorItem;
   import com.ax3.fishao.model.info.UserDecoration;
   import com.ax3.fishao.resources.EResourceType;
   import com.ax3.fishao.tutorial.TutorialHelpers;
   import com.ax3.fishao.tutorial.helpers.ETutorialPopupSize;
   import com.ax3.fishao.tutorial.helpers.TutorialHelperArrow;
   import com.ax3.fishao.tutorial.helpers.TutorialHelperBase;
   import com.ax3.fishao.tutorial.helpers.TutorialHelperMask;
   import com.ax3.fishao.tutorial.helpers.TutorialHelperPopup;
   import com.ax3.fishao.tutorial.simple.base.TutorialInfoSimple;
   import com.ax3.fishao.tutorial.views.dialogs.inventory.DialogInventoryTutorial;
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.vars.app;
   import com.junkbyte.console.Cc;
   import flash.display.Sprite;
   import flash.geom.Point;
   import flash.utils.setTimeout;
   
   public class TutorialInfoDecoration extends TutorialInfoSimple
   {
      
      private var _stepOnMap:int;
      
      private var _stepInsideRio:int;
      
      private var _stepInsidePrivateHouse:int;
      
      private var _positionPlayerInPrivateHouse:Point;
      
      public function TutorialInfoDecoration()
      {
         super();
         this._stepOnMap = 3;
         this._stepInsideRio = 4;
         this._stepInsidePrivateHouse = 5;
         this._positionPlayerInPrivateHouse = new Point(300,900);
      }
      
      private function getCurrentInteriorItem(param1:Function) : void
      {
         var _loc2_:ControllerInteriorFurnitureTutorial = null;
         if(param1 == null)
         {
            return;
         }
         var _loc3_:LocationDialogPrivateHouse = GameSwf.currentLocationDialog as LocationDialogPrivateHouse;
         if(_loc3_ == null)
         {
            setTimeout(this.getCurrentInteriorItem,250,param1);
            return;
         }
         _loc2_ = _loc3_.controllerInterior.selectedItem as ControllerInteriorFurnitureTutorial;
         if(_loc2_ == null)
         {
            setTimeout(this.getCurrentInteriorItem,250,param1);
            return;
         }
         param1(_loc2_);
      }
      
      override public function onPlayerClickedOnMap() : void
      {
         super.onPlayerClickedOnMap();
         switch(this.stepCurrent)
         {
            case 2:
               onStepComplete();
               break;
            default:
               Cc.warn("decoration  tutorial.onPlayerClickedOnMap. undefined behaviour step: " + this.stepCurrent);
         }
      }
      
      override public function onLocationChangeStart() : void
      {
         super.onLocationChangeStart();
         var _loc1_:LocationDialog = GameSwf.currentLocationDialog;
         switch(this.stepCurrent)
         {
            case this._stepOnMap:
               if(_loc1_.locationModel.locationConfig == LocationConfig.LOCATION_2_RIO)
               {
                  tryRemoveTutorialHelpers();
               }
               else if(_loc1_.locationModel.locationConfig == LocationConfig.PRIVATE_HOUSE)
               {
                  tryRemoveTutorialHelpers();
               }
               else
               {
                  Cc.warn("decoration tutorial.onLocationChangeStart. undefined behaviour step: " + this.stepCurrent + "and location id is " + _loc1_.locationModel.id);
               }
               break;
            case this._stepInsideRio:
               if(_loc1_.locationModel.locationConfig == LocationConfig.PRIVATE_HOUSE)
               {
                  tryRemoveTutorialHelpers();
               }
               else
               {
                  Cc.warn("decoration tutorial.onLocationChangeStart. undefined behaviour step: " + this.stepCurrent + "and location id is " + _loc1_.locationModel.id);
               }
               break;
            default:
               Cc.warn("decoration  tutorial.onLocationChangeStart. undefined behaviour step: " + this.stepCurrent);
         }
      }
      
      override public function onLocationChanged() : void
      {
         super.onLocationChanged();
         switch(this.stepCurrent)
         {
            case this._stepOnMap:
               if(GameSwf.currentLocationDialog.locationModel.locationConfig == LocationConfig.LOCATION_2_RIO)
               {
                  onStepComplete();
               }
               else
               {
                  Cc.warn("decoration  tutorial.onLocationChanged. undefined behaviour step: " + this.stepCurrent + " and location id is " + GameSwf.currentLocationDialog.locationModel.id);
               }
               break;
            case this._stepInsideRio:
               if(GameSwf.currentLocationDialog.locationModel.locationConfig == LocationConfig.PRIVATE_HOUSE)
               {
                  this.tryResetDecorationsToDefault();
                  onStepComplete();
               }
               else
               {
                  Cc.warn("decoration  tutorial.onLocationChanged. undefined behaviour step: " + this.stepCurrent + " and location id is " + GameSwf.currentLocationDialog.locationModel.id);
               }
               break;
            default:
               Cc.warn("tutorial decoration.onLocationChangeStart. undefined behaviour step: " + this.stepCurrent);
         }
      }
      
      private function onStep1Complete() : void
      {
         app.user.canMove = false;
         focusOnMapIcon("tutorialPopup_goToRioTropical");
      }
      
      private function onStep2Complete() : void
      {
         GameSwf.worldMap.setFocusOnArea(LocationConfig.LOCATION_2_RIO.id,"tutorialPopup_selectRioTropical");
      }
      
      private function onStep3Complete() : void
      {
         app.user.canMove = true;
         var _loc1_:TutorialHelpers = this.tutorialHelpers;
         var _loc2_:Point = new Point(2940,220);
         _loc1_.helperMask.addMaskCircle(_loc1_.helperMask.getPositionPlayer(),105,TutorialHelperBase.getConstantPoint(_loc2_),null,90);
         _loc1_.helperMask.addMaskCircle(TutorialHelperBase.getPointOnLocation(_loc2_),50);
         _loc1_.helperArrow.showTutorialArrow(TutorialHelperBase.getPointOnLocation(_loc2_,new Point(0,-70)),0);
      }
      
      private function onStep4Complete() : void
      {
         disableGui();
         var _loc1_:PlayerChar = GameSwf.currentLocationDialog.player;
         _loc1_.forceMoveTo(this._positionPlayerInPrivateHouse.x,this._positionPlayerInPrivateHouse.y,this.onStep4CompleteInternal);
      }
      
      private function onStep4CompleteInternal() : void
      {
         var _loc1_:PlayerChar = GameSwf.currentLocationDialog.player;
         _loc1_.rotateByPoint(0,1);
         app.user.canMove = false;
         var _loc2_:Gui = this.gui;
         _loc2_.mainMenu.inventoryIcon.enable();
         var _loc3_:Sprite = _loc2_.mainMenu.inventoryIcon;
         tutorialHelpers.helperArrow.showTutorialArrow(TutorialHelperArrow.getArrowPositionFor(_loc3_,new Point(_loc3_.width / 2,-_loc3_.height)),0);
         tutorialHelpers.helperMask.addMaskCircle(TutorialHelperMask.getPositionForView(_loc3_),50);
         var _loc4_:TutorialHelperPopup = this.prepareAndGetPopup();
         _loc4_.textBig = I18n.get("tutorialDecorationsPopup_1_1_label").replace("#USERNAME#",app.user.username);
         _loc4_.textSmall = I18n.get("tutorialDecorationsPopup_1_1_text");
         _loc4_.alignToCenter(0);
      }
      
      private function onStep5Complete() : void
      {
         disableGui();
         var _loc1_:DialogInventoryTutorial = _gameSwf.getOpenedPopup(DialogInventoryTutorial) as DialogInventoryTutorial;
         if(_loc1_ == null)
         {
            return;
         }
         _loc1_.switchToTab(EResourceType.DECORATION_NAME);
         _loc1_.setFocusForItem(ResourceType.DECORATION,EResourceID.ER_DECORATION_SIMPLE_WALL_2);
         var _loc2_:String = I18n.get("decoration_" + EResourceID.ER_DECORATION_SIMPLE_WALL_2);
         var _loc3_:TutorialHelperPopup = this.prepareAndGetPopup();
         _loc3_.showOnlyTextBig(I18n.get("tutorialDecorationsPopup_1_2_label").replace("#SIMPLE_WALL_NAME#",_loc2_));
         _loc3_.alignToTop(100);
      }
      
      private function onStep6Complete() : void
      {
         var _loc1_:DialogInventoryTutorial = GameSwf.instance.getOpenedPopup(DialogInventoryTutorial) as DialogInventoryTutorial;
         _loc1_.setFocusOnButtonSelect();
         var _loc2_:TutorialHelperPopup = this.prepareAndGetPopup();
         _loc2_.showOnlyTextBig(I18n.get("tutorialDecorationsPopup_1_3_label"));
         _loc2_.alignToTop(100);
      }
      
      private function onStep7Complete() : void
      {
         var _loc1_:Gui = this.gui;
         _loc1_.mainMenu.inventoryIcon.enable();
         var _loc2_:Sprite = _loc1_.mainMenu.inventoryIcon;
         tutorialHelpers.helperArrow.showTutorialArrow(TutorialHelperArrow.getArrowPositionFor(_loc2_,new Point(_loc2_.width / 2,-_loc2_.height)),0);
         tutorialHelpers.helperMask.addMaskCircle(TutorialHelperMask.getPositionForView(_loc2_),50);
         var _loc3_:TutorialHelperPopup = this.prepareAndGetPopup();
         _loc3_.showOnlyTextBig(I18n.get("tutorialDecorationsPopup_3_1_label"));
         _loc3_.alignToTop(50);
      }
      
      private function onStep8Complete() : void
      {
         disableGui();
         var _loc1_:DialogInventoryTutorial = GameSwf.instance.getOpenedPopup(DialogInventoryTutorial) as DialogInventoryTutorial;
         if(_loc1_ == null)
         {
            return;
         }
         _loc1_.switchToTab(EResourceType.DECORATION_NAME);
         _loc1_.setFocusForItem(ResourceType.DECORATION,EResourceID.ER_DECORATION_SIMPLE_TABLE);
         var _loc2_:TutorialHelperPopup = this.prepareAndGetPopup();
         _loc2_.showOnlyTextBig(I18n.get("tutorialDecorationsPopup_3_1_label"));
         _loc2_.alignToTop(50);
      }
      
      private function onStep9Complete() : void
      {
         var _loc1_:DialogInventoryTutorial = GameSwf.instance.getOpenedPopup(DialogInventoryTutorial) as DialogInventoryTutorial;
         _loc1_.setFocusOnButtonSelect();
      }
      
      private function onStep10Complete(param1:ControllerInteriorFurnitureTutorial) : void
      {
         var _loc2_:TutorialHelperPopup = null;
         if(param1 != null)
         {
            param1.changeButtonsStates(false);
            param1.setFocusOnChangePosition();
            _loc2_ = this.prepareAndGetPopup();
            _loc2_.showOnlyTextBig(I18n.get("tutorialDecorationsPopup_3_2_label"));
            _loc2_.alignToTop(50);
         }
      }
      
      private function onStep11Complete(param1:ControllerInteriorFurnitureTutorial) : void
      {
         param1.changeButtonsStates(false);
         param1.setFocusOnButtonsRotate();
         var _loc2_:TutorialHelperPopup = this.prepareAndGetPopup();
         _loc2_.showOnlyTextBig(I18n.get("tutorialDecorationsPopup_3_3_label"));
         _loc2_.alignToTop(50);
      }
      
      private function onStep12Complete(param1:ControllerInteriorFurnitureTutorial) : void
      {
         param1.changeButtonsStates(false);
         param1.setFocusOnButtonOk();
         var _loc2_:TutorialHelperPopup = this.prepareAndGetPopup();
         _loc2_.showOnlyTextBig(I18n.get("tutorialDecorationsPopup_3_4_label"));
         _loc2_.alignToTop(50);
      }
      
      private function onStep13Complete(param1:ControllerInteriorFurnitureTutorial) : void
      {
         param1.changeButtonsStates(false);
         param1.setFocusOnItem();
         var _loc2_:TutorialHelperPopup = this.prepareAndGetPopup();
         _loc2_.showOnlyTextBig(I18n.get("tutorialDecorationsPopup_3_5_label"));
         _loc2_.alignToTop(50);
      }
      
      private function onStep14Complete(param1:ControllerInteriorFurnitureTutorial) : void
      {
         param1.changeButtonsStates(false);
         param1.setFocusOnButtonRemove();
         var _loc2_:TutorialHelperPopup = this.prepareAndGetPopup();
         _loc2_.showOnlyTextBig(I18n.get("tutorialDecorationsPopup_3_5_label"));
         _loc2_.alignToTop(50);
      }
      
      private function onStep15Complete() : void
      {
         var _loc1_:TutorialHelperPopup = this.prepareAndGetPopup();
         _loc1_.showButtonOk();
         _loc1_.textBig = I18n.get("tutorialDecorationsPopup_3_6_label");
         _loc1_.alignToCenter(0);
      }
      
      private function onStep16Complete() : void
      {
         app.user.canMove = true;
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
         _stepsHandlersMap[10] = this.handlerWrapperWithWaitingForBuildItem(this.onStep10Complete);
         _stepsHandlersMap[11] = this.handlerWrapperWithWaitingForBuildItem(this.onStep11Complete);
         _stepsHandlersMap[12] = this.handlerWrapperWithWaitingForBuildItem(this.onStep12Complete);
         _stepsHandlersMap[13] = this.handlerWrapperWithWaitingForBuildItem(this.onStep13Complete);
         _stepsHandlersMap[14] = this.handlerWrapperWithWaitingForBuildItem(this.onStep14Complete);
         _stepsHandlersMap[15] = this.onStep15Complete;
         _stepsHandlersMap[16] = this.onStep16Complete;
      }
      
      private function handlerWrapperWithWaitingForBuildItem(param1:Function) : Function
      {
         var callback:Function = param1;
         var result:Function = function():void
         {
            getCurrentInteriorItem(callback);
         };
         return result;
      }
      
      override protected function prepareAndGetPopup() : TutorialHelperPopup
      {
         var _loc1_:TutorialHelperPopup = super.prepareAndGetPopup();
         _loc1_.sizeLabel = ETutorialPopupSize.ETPS_SMALL;
         return _loc1_;
      }
      
      override public function start() : void
      {
         super.start();
         this.stepCurrent = 1;
         var _loc1_:LocationDialog = GameSwf.currentLocationDialog;
         if(_loc1_ == null)
         {
            this.stepCurrent = _stepsTotal;
            onStepComplete();
         }
         else if(_loc1_.locationModel.locationConfig == LocationConfig.LOCATION_2_RIO)
         {
            this.stepCurrent = this._stepInsideRio;
            restartCurrentStep();
         }
         else if(_loc1_.locationModel.locationConfig == LocationConfig.PRIVATE_HOUSE)
         {
            this.tryResetDecorationsToDefault();
            this.stepCurrent = this._stepInsidePrivateHouse;
            restartCurrentStep();
         }
         else
         {
            onStepComplete();
         }
      }
      
      private function tryResetDecorationsToDefault() : void
      {
         var _loc1_:UserDecoration = null;
         var _loc2_:ControllerInteriorItem = null;
         var _loc3_:Object = null;
         var _loc4_:Object = null;
         var _loc5_:LocationDialogPrivateHouse = GameSwf.currentLocationDialog as LocationDialogPrivateHouse;
         var _loc6_:* = int(_loc5_.controllerInterior.items.length - 1);
         while(_loc6_ >= 0)
         {
            _loc2_ = _loc5_.controllerInterior.items[_loc6_];
            _loc2_.removeItem();
            _loc6_--;
         }
         var _loc7_:Vector.<UserDecoration> = app.user.inventory.decoration;
         var _loc8_:UserDecoration = null;
         var _loc9_:UserDecoration = null;
         for each(_loc1_ in _loc7_)
         {
            if(_loc1_.decoId == EResourceID.ER_DECORATION_SIMPLE_WALL_1 && _loc8_ == null)
            {
               _loc8_ = _loc1_;
            }
            else if(_loc1_.decoId == EResourceID.ER_DECORATION_SIMPLE_FLOOR_2 && _loc9_ == null)
            {
               _loc9_ = _loc1_;
            }
            else if(_loc9_ != null && _loc8_ != null)
            {
               break;
            }
         }
         if(_loc8_ != null)
         {
            _loc3_ = _loc5_.controllerInterior.currentWall;
            if(_loc3_ == null)
            {
               _loc5_.addDecorationFromInventory(_loc8_.id,_loc8_.infoId);
            }
            else if(_loc3_.id == _loc8_.id && _loc3_.itemId == _loc8_.infoId)
            {
               app.user.inventory.removeResource(_loc8_);
            }
            else
            {
               _loc5_.addDecorationFromInventory(_loc8_.id,_loc8_.infoId);
            }
         }
         if(_loc9_ != null)
         {
            _loc4_ = _loc5_.controllerInterior.currentFloor;
            if(_loc4_ == null)
            {
               _loc5_.addDecorationFromInventory(_loc9_.id,_loc9_.infoId);
            }
            else if(_loc4_.id == _loc9_.id && _loc4_.itemId == _loc9_.infoId)
            {
               app.user.inventory.removeResource(_loc9_);
            }
            else
            {
               _loc5_.addDecorationFromInventory(_loc9_.id,_loc9_.infoId);
            }
         }
      }
   }
}

