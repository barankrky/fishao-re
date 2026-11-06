package com.ax3.fishao.display.dialogs
{
   import assets.common.ReloadDialogAsset;
   import com.ax3.display.dialog.BaseDialog;
   import com.ax3.display.wrappers.impl.MiddleTextFieldWrapper;
   import com.ax3.fishao.FishaoFscModelManager;
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.wrappers.impl.FrameButtonWrapper;
   import flash.desktop.NativeApplication;
   import flash.events.MouseEvent;
   
   public class ReloadDialog extends BaseDialog
   {
      
      public var reloadButton:FrameButtonWrapper;
      
      public var message:MiddleTextFieldWrapper;
      
      private var _asset:ReloadDialogAsset = new ReloadDialogAsset();
      
      public function ReloadDialog(param1:String = "reload_dialog_message")
      {
         super();
         addChild(this._asset);
         app.dialogManager.assetWrappersProcessor.process(this._asset,this);
         this.reloadButton.handler = this.onReloadClick;
         this.reloadButton.label = I18n.get("Reload");
         this.message.text = I18n.getUpper(param1);
         _canClosedByEsc = false;
      }
      
      private function onReloadClick(param1:MouseEvent) : void
      {
         app.user.inLogountProcess = true;
         FishaoFscModelManager.fscModel.disconnect();
         NativeApplication.nativeApplication.exit();
      }
      
      override public function showByDialogManager() : void
      {
         app.dialogManager.showPopup(this);
      }
   }
}

