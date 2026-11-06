package com.ax3.fishao.tutorial.simple.change_character
{
   import com.ax3.fishao.display.Gui;
   import com.ax3.fishao.display.settings.ViewButtonSettings;
   import com.ax3.fishao.locations.base.LocationDialog;
   import com.ax3.fishao.tutorial.TutorialHelpers;
   import com.ax3.fishao.tutorial.helpers.TutorialHelperArrow;
   import com.ax3.fishao.tutorial.helpers.TutorialHelperMask;
   import com.ax3.fishao.tutorial.helpers.TutorialHelperPopup;
   import com.ax3.fishao.tutorial.simple.base.TutorialInfoSimple;
   import com.ax3.fishao.tutorial.views.dialogs.settings.DialogSettingsTutorial;
   import com.ax3.fishao.utils.I18n;
   import flash.display.DisplayObject;
   import flash.geom.Point;
   
   public class TutorialInfoChangeCharacter extends TutorialInfoSimple
   {
      
      public function TutorialInfoChangeCharacter()
      {
         super();
      }
      
      private function onStep1Complete() : void
      {
         this.disableGui();
         var _loc1_:TutorialHelpers = this.tutorialHelpers;
         var _loc2_:Gui = this.gui;
         var _loc3_:ViewButtonSettings = _loc2_.controllerSettings.viewSettings.buttonSettings;
         var _loc4_:DisplayObject = _loc3_.source;
         _loc3_.isEnabled = true;
         var _loc5_:TutorialHelperPopup = prepareAndGetPopup();
         _loc5_.showOnlyTextBig(I18n.get("tutorialPopup_clickOnSettings"));
         _loc5_.alignToTop(50);
         _loc1_.helperArrow.showTutorialArrow(TutorialHelperArrow.getArrowPositionFor(_loc4_,new Point(_loc4_.width / 2,100)),180);
         _loc1_.helperMask.needUpdateButtonSettings = false;
         _loc1_.helperMask.addMaskRectangle(TutorialHelperMask.getPositionForView(_loc4_,new Point(-_loc4_.width / 2,-_loc4_.height / 2)),TutorialHelperMask.getSizeForView(_loc4_));
      }
      
      private function onStep2Complete() : void
      {
         var _loc1_:DialogSettingsTutorial = _gameSwf.getOpenedPopup(DialogSettingsTutorial) as DialogSettingsTutorial;
         if(_loc1_ == null)
         {
            return;
         }
         _loc1_.setFocusOnButtonEditor();
         var _loc2_:TutorialHelperPopup = prepareAndGetPopup();
         _loc2_.showOnlyTextBig(I18n.get("tutorialPopup_customizeCharacter"));
         _loc2_.alignToBottom(-50);
      }
      
      private function onStep3Complete() : void
      {
      }
      
      override protected function initHandlers() : void
      {
         super.initHandlers();
         _stepsHandlersMap[1] = this.onStep1Complete;
         _stepsHandlersMap[2] = this.onStep2Complete;
         _stepsHandlersMap[3] = this.onStep3Complete;
      }
      
      override public function start() : void
      {
         super.start();
         this.stepCurrent = 1;
         var _loc1_:LocationDialog = GameSwf.currentLocationDialog;
         if(_loc1_ == null || this.gui == null)
         {
            this.stepCurrent = _stepsTotal;
            onStepComplete();
         }
         else
         {
            onStepComplete();
         }
      }
   }
}

