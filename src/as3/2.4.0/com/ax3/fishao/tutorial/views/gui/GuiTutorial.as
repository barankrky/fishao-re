package com.ax3.fishao.tutorial.views.gui
{
   import com.ax3.fishao.FishaoFscModelManager;
   import com.ax3.fishao.display.Gui;
   import com.ax3.fishao.locations.base.LocationDialog;
   import com.ax3.fishao.tutorial.ManagerTutorial;
   import com.ax3.fishao.tutorial.TutorialInfo;
   import flash.events.KeyboardEvent;
   import flash.ui.Keyboard;
   
   public class GuiTutorial extends Gui
   {
      
      private var _managerTutorial:ManagerTutorial;
      
      public function GuiTutorial(param1:LocationDialog)
      {
         super(param1);
         this._managerTutorial = GameSwf.instance.managerTutorial;
         var _loc2_:TutorialInfo = this._managerTutorial.tutorialInProgress;
         if(_loc2_ != null && _loc2_.needHideGui)
         {
            this.visible = false;
         }
      }
      
      override protected function onKeyPress(param1:KeyboardEvent) : void
      {
         if(this._managerTutorial.isTutorialCommonComplete)
         {
            super.onKeyPress(param1);
            return;
         }
         if(param1.keyCode != Keyboard.ESCAPE)
         {
            super.onKeyPress(param1);
         }
      }
      
      override protected function sendMessage(param1:KeyboardEvent) : void
      {
         if(this._managerTutorial.isTutorialCommonComplete)
         {
            super.sendMessage(param1);
            return;
         }
         var _loc2_:String = mainMenu.chatPanel.flushMessage();
         if(_loc2_.length != 0)
         {
            hideChatPanel(param1);
            if(mainMenu.chatPanel.canSendChatMessage)
            {
               FishaoFscModelManager.chatFscExtension.sendPublicMessage(_loc2_);
               this._managerTutorial.tutorialInProgress.onSendChatMessage();
            }
         }
         else
         {
            mainMenu.showChat();
         }
      }
   }
}

