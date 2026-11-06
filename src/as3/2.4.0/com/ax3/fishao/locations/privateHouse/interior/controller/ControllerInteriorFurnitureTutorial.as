package com.ax3.fishao.locations.privateHouse.interior.controller
{
   import com.ax3.fishao.locations.privateHouse.interior.model.InteriorItemFurniture;
   import com.ax3.fishao.tutorial.ManagerTutorial;
   import com.ax3.fishao.tutorial.TutorialInfo;
   import com.ax3.fishao.tutorial.helpers.TutorialHelperArrow;
   import com.ax3.fishao.tutorial.helpers.TutorialHelperMask;
   import flash.display.DisplayObject;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   
   public class ControllerInteriorFurnitureTutorial extends ControllerInteriorFurniture
   {
      
      private var _managerTutorial:ManagerTutorial;
      
      private var _isFocusOnButtonOk:Boolean;
      
      private var _isFocusOnButtonRemove:Boolean;
      
      private var _isFocusOnButtonsRotate:Boolean;
      
      private var _isFocusOnChangePosition:Boolean;
      
      private var _isFocusOnItem:Boolean;
      
      public function ControllerInteriorFurnitureTutorial(param1:InteriorItemFurniture, param2:ControllerInterior)
      {
         super(param1,param2);
         this.init();
      }
      
      override public function set isSelected(param1:Boolean) : void
      {
         super.isSelected = param1;
         if(this._isFocusOnButtonRemove || this._isFocusOnButtonsRotate || this._isFocusOnButtonOk || this._isFocusOnChangePosition)
         {
            return;
         }
         if(this._isFocusOnItem && param1)
         {
            this._isFocusOnItem = false;
            _editorPanel.show();
            this.tryIncrementTutorialStep();
         }
      }
      
      override protected function dragStop(param1:MouseEvent = null) : void
      {
         if(this._isFocusOnButtonRemove || this._isFocusOnButtonsRotate || this._isFocusOnButtonOk || this._isFocusOnItem)
         {
            return;
         }
         if(this._isFocusOnChangePosition)
         {
            this._isFocusOnChangePosition = false;
            super.dragStop(param1);
            this.tryIncrementTutorialStep();
         }
         else
         {
            super.dragStop(param1);
         }
      }
      
      override public function onButtonClickConfirm(param1:Event = null) : void
      {
         if(this._isFocusOnButtonRemove || this._isFocusOnButtonsRotate || this._isFocusOnChangePosition || this._isFocusOnItem)
         {
            return;
         }
         if(this._isFocusOnButtonOk)
         {
            this._isFocusOnButtonOk = false;
            this.tryIncrementTutorialStep();
         }
         super.onButtonClickConfirm(param1);
      }
      
      override protected function onButtonClickRotateRight(param1:Event) : void
      {
         if(this._isFocusOnButtonRemove || this._isFocusOnButtonOk || this._isFocusOnChangePosition || this._isFocusOnItem)
         {
            return;
         }
         if(this._isFocusOnButtonsRotate)
         {
            this._isFocusOnButtonsRotate = false;
            super.onButtonClickRotateRight(param1);
            if(isLandingPossibleByPosition(_entity.position))
            {
               this.tryIncrementTutorialStep();
            }
            else
            {
               this._isFocusOnButtonsRotate = true;
            }
         }
         else
         {
            super.onButtonClickRotateRight(param1);
         }
      }
      
      override protected function onButtonClickRotateLeft(param1:Event) : void
      {
         if(this._isFocusOnButtonRemove || this._isFocusOnButtonOk || this._isFocusOnChangePosition || this._isFocusOnItem)
         {
            return;
         }
         if(this._isFocusOnButtonsRotate)
         {
            this._isFocusOnButtonsRotate = false;
            super.onButtonClickRotateLeft(param1);
            if(isLandingPossibleByPosition(_entity.position))
            {
               this.tryIncrementTutorialStep();
            }
            else
            {
               this._isFocusOnButtonsRotate = true;
            }
         }
         else
         {
            super.onButtonClickRotateLeft(param1);
         }
      }
      
      override public function onButtonClickRemove(param1:Event = null) : void
      {
         if(this._isFocusOnButtonsRotate || this._isFocusOnButtonOk || this._isFocusOnChangePosition || this._isFocusOnItem)
         {
            return;
         }
         if(this._isFocusOnButtonRemove)
         {
            this._isFocusOnButtonRemove = false;
            this.tryIncrementTutorialStep();
            this.changeButtonsStates(true);
         }
         super.onButtonClickRemove(param1);
      }
      
      private function init() : void
      {
         this._managerTutorial = GameSwf.instance.managerTutorial;
      }
      
      private function tryIncrementTutorialStep() : void
      {
         var _loc1_:TutorialInfo = this._managerTutorial.tutorialInProgress;
         if(_loc1_ != null)
         {
            _loc1_.onStepComplete();
         }
      }
      
      public function setFocusOnChangePosition() : void
      {
         this._isFocusOnChangePosition = true;
         var _loc1_:DisplayObject = _view.currentView.iso.source;
         this._managerTutorial.tutorialHelpers.helperArrow.showTutorialArrow(TutorialHelperArrow.getArrowPositionFor(_loc1_,new Point(-60,0)),-90);
         super.isSelected = true;
      }
      
      public function setFocusOnButtonOk() : void
      {
         this._isFocusOnButtonOk = true;
         this._managerTutorial.tutorialHelpers.helperArrow.showTutorialArrow(TutorialHelperArrow.getArrowPositionFor(_editorPanel.confirmPlacing,new Point(10,-60)),0);
         this._managerTutorial.tutorialHelpers.helperMask.addMaskCircle(TutorialHelperMask.getPositionForView(_editorPanel.confirmPlacing),25);
         _editorPanel.confirmPlacing.enable();
      }
      
      public function setFocusOnButtonRemove() : void
      {
         this._isFocusOnButtonRemove = true;
         this._managerTutorial.tutorialHelpers.helperArrow.showTutorialArrow(TutorialHelperArrow.getArrowPositionFor(_editorPanel.removeItem,new Point(10,-60)),0);
         this._managerTutorial.tutorialHelpers.helperMask.addMaskCircle(TutorialHelperMask.getPositionForView(_editorPanel.removeItem),25);
         _editorPanel.removeItem.enable();
      }
      
      public function setFocusOnButtonsRotate() : void
      {
         this._isFocusOnButtonsRotate = true;
         this._managerTutorial.tutorialHelpers.helperArrow.showTutorialArrow(TutorialHelperArrow.getArrowPositionFor(_editorPanel.clockwise,new Point(-5,-60)),0);
         this._managerTutorial.tutorialHelpers.helperMask.addMaskCircle(TutorialHelperMask.getPositionForView(_editorPanel.clockwise),25);
         this._managerTutorial.tutorialHelpers.helperMask.addMaskCircle(TutorialHelperMask.getPositionForView(_editorPanel.counterclockwise),25);
         _editorPanel.clockwise.enable();
         _editorPanel.counterclockwise.enable();
      }
      
      public function setFocusOnItem() : void
      {
         this._isFocusOnItem = true;
         var _loc1_:DisplayObject = _view.currentView.iso.source;
         this._managerTutorial.tutorialHelpers.helperArrow.showTutorialArrow(TutorialHelperArrow.getArrowPositionFor(_loc1_,new Point(_view.currentView.width / 2,-90)),0);
         _editorPanel.hide();
      }
      
      public function changeButtonsStates(param1:Boolean) : void
      {
         if(param1)
         {
            _editorPanel.clockwise.enable();
         }
         else
         {
            _editorPanel.clockwise.disable();
         }
         if(param1)
         {
            _editorPanel.counterclockwise.enable();
         }
         else
         {
            _editorPanel.counterclockwise.disable();
         }
         if(param1)
         {
            _editorPanel.confirmPlacing.enable();
         }
         else
         {
            _editorPanel.confirmPlacing.disable();
         }
         if(param1)
         {
            _editorPanel.removeItem.enable();
         }
         else
         {
            _editorPanel.removeItem.disable();
         }
      }
   }
}

