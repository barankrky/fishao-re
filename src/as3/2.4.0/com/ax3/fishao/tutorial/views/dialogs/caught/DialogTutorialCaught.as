package com.ax3.fishao.tutorial.views.dialogs.caught
{
   import com.ax3.display.wrappers.IAssetWrappersProcessor;
   import com.ax3.fishao.control.managers.FishaoSoundManager;
   import com.ax3.fishao.model.FishInfo;
   import com.ax3.fishao.tutorial.ManagerTutorial;
   import com.ax3.fishao.tutorial.TutorialHelpers;
   import com.ax3.fishao.tutorial.helpers.TutorialHelperArrow;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs.FishdexSwfDialog;
   import com.ax3.fishao.view.dialogs.caught.DialogCaught;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   
   public class DialogTutorialCaught extends DialogCaught
   {
      
      private var _managerTutorial:ManagerTutorial;
      
      private var _isFocusOnButtonClose:Boolean;
      
      private var _isFocusOnButtonFishdex:Boolean;
      
      public function DialogTutorialCaught()
      {
         super();
         this._managerTutorial = GameSwf.instance.managerTutorial;
      }
      
      override public function get canClosedByEsc() : Boolean
      {
         return false;
      }
      
      override protected function onCloseButtonClick(param1:Event) : void
      {
         if(this._isFocusOnButtonFishdex)
         {
            return;
         }
         if(this._isFocusOnButtonClose)
         {
            super.onCloseButtonClick(param1);
            this._isFocusOnButtonClose = false;
            this._managerTutorial.tutorialInProgress.onStepComplete();
         }
         else
         {
            super.onCloseButtonClick(param1);
         }
      }
      
      override protected function onViewFishdex(param1:MouseEvent) : void
      {
         if(this._isFocusOnButtonClose)
         {
            return;
         }
         viewInFishdexButton.disable();
         FishaoSoundManager.play(FishaoSoundManager.SFX_051_UI_Open_menu);
         _needDispatchClose = false;
         close();
         var _loc2_:FishdexSwfDialog = app.dialogFactory.getFishdexSwfDialogTutorial();
         FishdexSwfDialog.showFishId = _fishId;
         _loc2_.show();
      }
      
      override public function init(param1:IAssetWrappersProcessor) : void
      {
         super.init(param1);
      }
      
      override public function showWithData(param1:FishInfo, param2:int, param3:Boolean, param4:Boolean) : void
      {
         super.showWithData(param1,param2,param3,param4);
         this._managerTutorial.tutorialInProgress.onStepComplete();
      }
      
      public function setFocusOnButtonFishdex() : void
      {
         this._isFocusOnButtonFishdex = true;
         this.updateButtonsVisibility();
         var _loc1_:TutorialHelpers = this._managerTutorial.tutorialHelpers;
         _loc1_.helperArrow.showTutorialArrow(TutorialHelperArrow.getArrowPositionFor(viewInFishdexButton,new Point(viewInFishdexButton.width / 2,-50)),0);
      }
      
      public function setFocusOnButtonClose() : void
      {
         this._isFocusOnButtonClose = true;
         this.updateButtonsVisibility();
         var _loc1_:TutorialHelpers = this._managerTutorial.tutorialHelpers;
         _loc1_.helperArrow.showTutorialArrow(TutorialHelperArrow.getArrowPositionFor(closeButton,new Point(-40,80)),225);
      }
      
      private function updateButtonsVisibility() : void
      {
         closeButton.visible = this._isFocusOnButtonClose;
         viewInFishdexButton.visible = this._isFocusOnButtonFishdex;
      }
      
      override public function centerToRect(param1:int, param2:int, param3:int, param4:int) : void
      {
         super.centerToRect(param1,param2,param3,param4);
      }
   }
}

