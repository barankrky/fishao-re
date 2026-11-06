package com.ax3.fishao.tutorial.views.dialogs.bite
{
   import com.ax3.fishao.tutorial.TutorialHelpers;
   import com.ax3.fishao.tutorial.helpers.TutorialHelperArrow;
   import flash.geom.Point;
   
   public class TutorialBiteExplanationSwfDialog extends TutorialBiteExplanationSwfDialogAsset
   {
      
      public function TutorialBiteExplanationSwfDialog()
      {
         super();
      }
      
      override protected function onAssetCreationComplete() : void
      {
         super.onAssetCreationComplete();
         var _loc1_:TutorialHelpers = GameSwf.instance.managerTutorial.tutorialHelpers;
         _loc1_.helperArrow.showTutorialArrow(TutorialHelperArrow.getArrowPositionFor(startReelingbutton,new Point(startReelingbutton.width / 2,-startReelingbutton.height)),0);
         startReelingbutton.handler = this.onStartReelingButtonClick;
      }
      
      protected function onStartReelingButtonClick(param1:* = null) : void
      {
         startReelingbutton.disable();
         this.close();
         GameSwf.instance.managerTutorial.tutorialInProgress.onStepComplete();
      }
   }
}

