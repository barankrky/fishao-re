package com.ax3.fishao.view.dialogs.notCaughtFish
{
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.view.dialogs.simple.DialogSimpleWithoutButtons;
   import com.ax3.fishao.view.dialogs.string.EStringType;
   
   public class DialogImproveSkills extends DialogSimpleWithoutButtons
   {
      
      public function DialogImproveSkills()
      {
         super();
         this.init();
      }
      
      private function init() : void
      {
         this.title = I18n.getUpper(EStringType.EST_DIALOG_IMPROVE_SKILLS_TITLE);
         this.description = I18n.get(EStringType.EST_DIALOG_IMPROVE_SKILLS_DESCRIPTION);
      }
   }
}

