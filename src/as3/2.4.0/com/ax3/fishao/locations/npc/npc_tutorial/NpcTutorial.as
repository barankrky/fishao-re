package com.ax3.fishao.locations.npc.npc_tutorial
{
   import com.ax3.fishao.FishaoFscModelManager;
   import com.ax3.fishao.entries.LocationUser;
   import com.ax3.fishao.locations.FloatInWaterManager;
   import com.ax3.fishao.locations.npc.base.ENpcAnswer;
   import com.ax3.fishao.locations.npc.base.NPC;
   import com.ax3.fishao.tutorial.ManagerTutorial;
   import com.ax3.fishao.tutorial.TutorialInfo;
   import com.ax3.fishao.utils.Preloader;
   import com.ax3.fishao.vars.app;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class NpcTutorial extends NPC
   {
      
      private var _managerTutorial:ManagerTutorial;
      
      public function NpcTutorial(param1:LocationUser, param2:FloatInWaterManager)
      {
         super(param1,param2);
         this._managerTutorial = GameSwf.instance.managerTutorial;
      }
      
      override protected function onChatClose(param1:Event) : void
      {
         super.onChatClose(param1);
         this.tryIncrementTutorialStep();
      }
      
      override public function onClick(param1:MouseEvent = null) : void
      {
         if(app.user.inFishingProcess.value)
         {
            return;
         }
         if(param1 != null)
         {
            param1.stopImmediatePropagation();
         }
         if(!isLeaveLocation())
         {
            FishaoFscModelManager.locationExtension.talkWithNpc(npcName,position,_dialogStep,ENpcAnswer.ENA_NO,_dialogStep > -1 ? Preloader.waitForResponse() : null);
            tryCallOnStartTalk();
         }
      }
      
      override public function toChat(param1:String, param2:int) : void
      {
         super.toChat(param1,param2);
         this.tryIncrementTutorialStep();
      }
      
      protected function tryIncrementTutorialStep() : void
      {
         var _loc1_:TutorialInfo = this._managerTutorial.tutorialInProgress;
         if(_loc1_ != null)
         {
            _loc1_.onStepComplete();
         }
      }
   }
}

