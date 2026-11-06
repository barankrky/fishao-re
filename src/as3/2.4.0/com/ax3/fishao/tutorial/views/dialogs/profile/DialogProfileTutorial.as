package com.ax3.fishao.tutorial.views.dialogs.profile
{
   import com.ax3.fishao.tutorial.TutorialHelpers;
   import com.ax3.fishao.tutorial.helpers.TutorialHelperArrow;
   import com.ax3.fishao.tutorial.helpers.TutorialHelperMask;
   import com.ax3.fishao.view.dialogs.ProfileSwfDialog;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   
   public class DialogProfileTutorial extends ProfileSwfDialog
   {
      
      public function DialogProfileTutorial()
      {
         super();
         _canClosedByEsc = false;
      }
      
      override protected function onAssetCreationComplete() : void
      {
         super.onAssetCreationComplete();
         var _loc1_:TutorialHelpers = GameSwf.instance.managerTutorial.tutorialHelpers;
         _loc1_.helperMask.addMaskRectangle(TutorialHelperMask.getPositionForView(this,new Point(-this.width / 2,-this.height / 2)),TutorialHelperMask.getSizeForView(this));
         _loc1_.helperArrow.showTutorialArrow(TutorialHelperArrow.getArrowPositionFor(closeBtn,new Point(-40,80)),225);
      }
      
      override protected function onButtonCloseClicked(param1:MouseEvent) : void
      {
         super.onButtonCloseClicked(param1);
         GameSwf.instance.managerTutorial.tutorialInProgress.onStepComplete();
      }
      
      override public function activate() : void
      {
         super.activate();
         GameSwf.instance.managerTutorial.tutorialInProgress.onStepComplete();
      }
   }
}

