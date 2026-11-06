package com.ax3.fishao.view.dialogs.moneyTree
{
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.display.popups.TextFieldAutofitWrapper;
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.view.dialogs.base.DialogBase;
   import com.ax3.fishao.view.dialogs.string.EStringType;
   import flash.display.DisplayObjectContainer;
   import flash.text.TextField;
   
   public class DialogMoneyTreeDialog extends DialogBase
   {
      
      protected var _viewText:TextFieldAutofitWrapper;
      
      public function DialogMoneyTreeDialog()
      {
         super("moneyTree.swf");
      }
      
      override protected function onAssetCreationComplete() : void
      {
         super.onAssetCreationComplete();
         var _loc1_:DisplayObjectContainer = Debug.assertProperty(_asset,"viewText",DisplayObjectContainer);
         this._viewText = new TextFieldAutofitWrapper(Debug.assertProperty(_loc1_,"label",TextField));
         this._viewText.text = I18n.get(EStringType.EST_DIALOG_MONEY_TREE_TEXT);
      }
   }
}

