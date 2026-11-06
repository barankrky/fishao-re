package com.ax3.fishao.tutorial
{
   import com.ax3.fishao.display.Gui;
   import com.ax3.fishao.tutorial.helpers.TutorialHelperArrow;
   import com.ax3.fishao.tutorial.helpers.TutorialHelperMask;
   import com.ax3.fishao.tutorial.helpers.TutorialHelperPopup;
   
   public class TutorialHelpers
   {
      
      private var _helperMask:TutorialHelperMask;
      
      private var _helperArrow:TutorialHelperArrow;
      
      private var _helperPopup:TutorialHelperPopup;
      
      public function TutorialHelpers()
      {
         super();
         this.init();
      }
      
      public function get helperMask() : TutorialHelperMask
      {
         return this._helperMask;
      }
      
      public function get helperArrow() : TutorialHelperArrow
      {
         return this._helperArrow;
      }
      
      public function get helperPopup() : TutorialHelperPopup
      {
         return this._helperPopup;
      }
      
      private function get gui() : Gui
      {
         var _loc1_:Gui = null;
         if(GameSwf.currentLocationDialog != null)
         {
            _loc1_ = GameSwf.currentLocationDialog.gui;
         }
         return _loc1_;
      }
      
      private function init() : void
      {
         this._helperMask = new TutorialHelperMask();
         this._helperArrow = new TutorialHelperArrow();
         this._helperPopup = new TutorialHelperPopup();
      }
      
      public function update() : void
      {
         this._helperArrow.updateArrow();
         this._helperMask.updateMask();
      }
      
      public function enableGui() : void
      {
         var _loc1_:Gui = this.gui;
         if(_loc1_ == null)
         {
            return;
         }
         _loc1_.unlockPanelActions();
         if(_loc1_.dailyQuestManWidget != null)
         {
            _loc1_.dailyQuestManWidget.enable();
         }
         if(_loc1_.missionsUncleSamWidget != null)
         {
            _loc1_.missionsUncleSamWidget.enable();
         }
         if(_loc1_.collectionsGirlWidget != null)
         {
            _loc1_.collectionsGirlWidget.enable();
         }
         _loc1_.controllerSettings.activateInTutorial = true;
         _loc1_.controllerBoosters.activateInTutorial = true;
         _loc1_.fishcoinsIndicator.addButton.enable();
         _loc1_.fishbucksIndicator.addButton.enable();
         _loc1_.energyIndicator.addButton.enable();
      }
      
      public function disableGui() : void
      {
         var _loc1_:Gui = this.gui;
         if(_loc1_ == null)
         {
            return;
         }
         _loc1_.lockPanelActions();
         if(_loc1_.dailyQuestManWidget != null)
         {
            _loc1_.dailyQuestManWidget.disable();
         }
         if(_loc1_.missionsUncleSamWidget != null)
         {
            _loc1_.missionsUncleSamWidget.disable();
         }
         if(_loc1_.collectionsGirlWidget != null)
         {
            _loc1_.collectionsGirlWidget.disable();
         }
         _loc1_.controllerSettings.activateInTutorial = false;
         _loc1_.controllerBoosters.activateInTutorial = false;
         _loc1_.fishcoinsIndicator.addButton.disable();
         _loc1_.fishbucksIndicator.addButton.disable();
         _loc1_.energyIndicator.addButton.disable();
      }
   }
}

