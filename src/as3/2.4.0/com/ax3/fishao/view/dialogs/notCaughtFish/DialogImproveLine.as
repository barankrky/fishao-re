package com.ax3.fishao.view.dialogs.notCaughtFish
{
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs.fishingLine.DialogFishingLine;
   import com.ax3.fishao.view.dialogs.simple.DialogSimpleWithButton;
   import com.ax3.fishao.view.dialogs.string.EStringType;
   
   public class DialogImproveLine extends DialogSimpleWithButton
   {
      
      public function DialogImproveLine()
      {
         super();
         this.init();
      }
      
      private function onButtonActionClicked() : void
      {
         var _loc1_:DialogFishingLine = app.dialogFactory.getFishingLineDialog();
         _loc1_.show();
      }
      
      private function init() : void
      {
         this.title = I18n.getUpper(EStringType.EST_DIALOG_IMPROVE_LINE_TITLE);
         this.description = I18n.get(EStringType.EST_DIALOG_IMPROVE_LINE_DESCRIPTION);
         this.buttonAction.label = I18n.getUpper(EStringType.EST_DIALOG_IMPROVE_LINE_BUTTON_ACTION);
         this.callback = this.onButtonActionClicked;
      }
   }
}

