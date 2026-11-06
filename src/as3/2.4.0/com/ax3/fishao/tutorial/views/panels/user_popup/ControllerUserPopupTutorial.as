package com.ax3.fishao.tutorial.views.panels.user_popup
{
   import com.ax3.fishao.locations.entries.FieldChar;
   import com.ax3.fishao.tutorial.ManagerTutorial;
   import com.ax3.fishao.tutorial.TutorialHelpers;
   import com.ax3.fishao.tutorial.helpers.TutorialHelperArrow;
   import com.ax3.fishao.tutorial.helpers.TutorialHelperMask;
   import com.ax3.fishao.tutorial.views.dialogs.profile.DialogProfileTutorial;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.panels.user_popup.ControllerUserPopup;
   import flash.display.DisplayObject;
   import flash.geom.Point;
   
   public class ControllerUserPopupTutorial extends ControllerUserPopup
   {
      
      private var _managerTutorial:ManagerTutorial;
      
      public function ControllerUserPopupTutorial(param1:FieldChar)
      {
         super(param1);
         this._managerTutorial = GameSwf.instance.managerTutorial;
         _view.buttonCloseVisible = false;
      }
      
      override protected function onButtonProfileClicked() : void
      {
         if(this._managerTutorial.isTutorialCommonComplete)
         {
            super.onButtonProfileClicked();
            return;
         }
         var _loc1_:DialogProfileTutorial = app.dialogFactory.getProfileDialogTutorial();
         _loc1_.initData(_entity.locationUser.username);
         _loc1_.show();
         GameSwf.profileSwfDialog = _loc1_;
         hide();
      }
      
      override public function show() : void
      {
         if(this._managerTutorial.isTutorialCommonComplete)
         {
            super.show();
            return;
         }
         super.showInternal();
         tryCleanupTimeoutShow();
         GameSwf.instance.managerTutorial.tutorialInProgress.onStepComplete();
         var _loc1_:TutorialHelpers = GameSwf.instance.managerTutorial.tutorialHelpers;
         var _loc2_:DisplayObject = _view.currentView.source;
         _loc1_.helperMask.addMaskRectangle(TutorialHelperMask.getPositionForView(_loc2_,new Point(-_loc2_.width,-_loc2_.height * 1.5)),TutorialHelperMask.getSizeForView(_loc2_));
         var _loc3_:DisplayObject = _view.currentView.buttonProfile;
         _loc1_.helperArrow.showTutorialArrow(TutorialHelperArrow.getArrowPositionFor(_loc3_,new Point(_loc3_.width / 2,-60)),0);
      }
   }
}

