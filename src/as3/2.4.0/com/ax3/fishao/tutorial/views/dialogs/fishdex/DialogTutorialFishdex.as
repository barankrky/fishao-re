package com.ax3.fishao.tutorial.views.dialogs.fishdex
{
   import com.ax3.fishao.tutorial.TutorialHelpers;
   import com.ax3.fishao.tutorial.helpers.TutorialHelperArrow;
   import com.ax3.fishao.view.dialogs.FishdexSwfDialog;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   
   public class DialogTutorialFishdex extends FishdexSwfDialog
   {
      
      public function DialogTutorialFishdex()
      {
         super();
         _canClosedByEsc = false;
      }
      
      override protected function onButtonClosedClicked(param1:MouseEvent) : void
      {
         super.onButtonClosedClicked(param1);
         GameSwf.instance.managerTutorial.tutorialInProgress.onStepComplete();
      }
      
      override protected function handleViewCatchInfoDialog(param1:MouseEvent) : void
      {
      }
      
      override public function activate() : void
      {
         super.activate();
         GameSwf.instance.managerTutorial.tutorialInProgress.onStepComplete();
         var _loc1_:TutorialHelpers = GameSwf.instance.managerTutorial.tutorialHelpers;
         _loc1_.helperArrow.showTutorialArrow(TutorialHelperArrow.getArrowPositionFor(closeBtn,new Point(-40,80)),225);
      }
   }
}

