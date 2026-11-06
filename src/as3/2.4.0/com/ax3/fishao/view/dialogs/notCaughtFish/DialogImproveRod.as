package com.ax3.fishao.view.dialogs.notCaughtFish
{
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs.InventorySwfDialog;
   import com.ax3.fishao.view.dialogs.simple.DialogSimpleWithTwoButtons;
   import com.ax3.fishao.view.dialogs.string.EStringType;
   
   public class DialogImproveRod extends DialogSimpleWithTwoButtons
   {
      
      public function DialogImproveRod()
      {
         super();
         this.init();
      }
      
      private function init() : void
      {
         this.title = I18n.getUpper(EStringType.EST_DIALOG_IMPROVE_ROD_TITLE);
         this.description = I18n.get(EStringType.EST_DIALOG_IMPROVE_ROD_DESCRIPTION);
         this.buttonActionLeft.label = I18n.getUpper(EStringType.EST_DIALOG_IMPROVE_ROD_BUTTON_ACTION_LEFT);
         this.buttonActionRight.label = I18n.getUpper(EStringType.EST_DIALOG_IMPROVE_ROD_BUTTON_ACTION_RIGHT);
         this.callbackButtonLeft = function():void
         {
            GameSwf.instance.showShopDialog();
         };
         this.callbackButtonRight = function():void
         {
            var _loc1_:InventorySwfDialog = app.dialogFactory.getInventorySwfDialog();
            _loc1_.show();
         };
      }
   }
}

