package com.ax3.fishao.tutorial.views.dialogs.settings
{
   import com.ax3.fishao.tutorial.TutorialHelpers;
   import com.ax3.fishao.tutorial.helpers.TutorialHelperArrow;
   import com.ax3.fishao.tutorial.helpers.TutorialHelperMask;
   import com.ax3.fishao.view.dialogs.SettingsSwfDialog;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   
   public class DialogSettingsTutorial extends SettingsSwfDialog
   {
      
      private var _isFocusOnButtonEditor:Boolean;
      
      public function DialogSettingsTutorial()
      {
         super();
         _canClosedByEsc = false;
      }
      
      override protected function onCharEditorButtonClick(param1:MouseEvent) : void
      {
         if(this._isFocusOnButtonEditor)
         {
            super.onCharEditorButtonClick(param1);
            this._isFocusOnButtonEditor = false;
            GameSwf.instance.managerTutorial.tutorialInProgress.onStepComplete();
         }
         else
         {
            super.onCharEditorButtonClick(param1);
         }
      }
      
      public function setFocusOnButtonEditor() : void
      {
         this._isFocusOnButtonEditor = true;
         var _loc1_:TutorialHelpers = GameSwf.instance.managerTutorial.tutorialHelpers;
         _loc1_.helperArrow.showTutorialArrow(TutorialHelperArrow.getArrowPositionFor(settingsCharEditorButton,new Point(-50,settingsCharEditorButton.height / 2)),270);
         _loc1_.helperMask.addMaskRectangle(TutorialHelperMask.getPositionForView(settingsCharEditorButton,new Point(-settingsCharEditorButton.width / 2,-settingsCharEditorButton.height / 2)),TutorialHelperMask.getSizeForView(settingsCharEditorButton));
      }
      
      override public function activate() : void
      {
         super.activate();
         GameSwf.instance.managerTutorial.tutorialInProgress.onStepComplete();
      }
   }
}

