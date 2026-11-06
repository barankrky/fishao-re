package com.ax3.fishao.tutorial.common.common_a
{
   import com.ax3.fishao.Config;
   import com.ax3.fishao.utils.UtilsArray;
   
   public class TutorialInfoCommonAGuest extends TutorialInfoCommonA
   {
      
      public function TutorialInfoCommonAGuest()
      {
         super();
      }
      
      override public function get canChatWithPlayers() : Boolean
      {
         return false;
      }
      
      override protected function onStep21Complete() : void
      {
         forceSkipToStep(_stepUserStats);
      }
      
      override protected function onStep31Complete() : void
      {
         this.gui.centerToRect(0,0,Config.SCREEN_WIDTH,Config.SCREEN_HEIGHT);
         forceSkipToStep(_stepFindSam);
      }
      
      override protected function initStepsToSave() : void
      {
         super.initStepsToSave();
         UtilsArray.removeValue(_stepsForResume,_stepShowProfile);
         UtilsArray.removeValue(_stepsForResume,_stepChatWithUsers);
      }
   }
}

