package com.ax3.fishao.view.dialogs
{
   import com.ax3.fishao.FishaoFscModelManager;
   import com.ax3.fishao.display.dialogs.MessageDialog;
   import com.ax3.fishao.model.SettingsModel;
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.vars.app;
   import com.ax3.jss.requests.server.ServerResp;
   import flash.events.MouseEvent;
   import protocol.sr.RegisterErrorResp;
   import protocol.sr.activation.SendActivationMailResp;
   
   public class EmailActivationSwfDialog extends EmailActivationSwfDialogAsset
   {
      
      private var _gameSettings:SettingsModel;
      
      public function EmailActivationSwfDialog()
      {
         super();
      }
      
      override protected function onAssetCreationComplete() : void
      {
         titleLabel.text = I18n.getUpper("email_activation_dialog_title");
         headLabel.text = I18n.get("email_activation_dialog_text").replace("#USERNAME#",app.user.username);
         mailLabel.text = I18n.get("email_activation_dialog_youremail");
         this._gameSettings = GameSwf.instance.gameSettings;
         mailField.text = "";
         confirmMailButton.label = I18n.getUpper("email_activation_dialog_button");
         confirmMailButton.handler = this.onConfirmMailClick;
         closeButton.handler = this.onCloseClick;
         super.onAssetCreationComplete();
      }
      
      override public function activate() : void
      {
         super.activate();
      }
      
      private function onConfirmMailClick(param1:MouseEvent) : void
      {
         confirmMailButton.disable();
         FishaoFscModelManager.profileExtension.sendActivationEmail(mailField.text,this.onSendActivationMailResponse);
      }
      
      private function onSendActivationMailResponse(param1:ServerResp) : void
      {
         var _loc2_:MessageDialog = null;
         if(param1 is RegisterErrorResp)
         {
            confirmMailButton.enable();
            _loc2_ = app.dialogFactory.getMessageDialog();
            _loc2_.setText(I18n.get("reg_error_" + RegisterErrorResp(param1).descr),false);
            _loc2_.buttons = MessageDialog.CLOSE_BUTTON | MessageDialog.OK_BUTTON;
            _loc2_.closeOnOk = true;
            _loc2_.show();
         }
         else if(param1 is SendActivationMailResp)
         {
            if((param1 as SendActivationMailResp).mailSent)
            {
               GameSwf.instance.gameSettings.email = mailField.text;
               this.showMessage(I18n.get("email_activation_dialog_sent"));
               close();
            }
         }
      }
      
      private function showMessage(param1:String) : void
      {
         var _loc2_:MessageDialog = app.dialogFactory.getMessageDialog();
         _loc2_.setText(param1);
         _loc2_.buttons = MessageDialog.CLOSE_BUTTON | MessageDialog.OK_BUTTON;
         _loc2_.closeOnOk = true;
         _loc2_.show();
      }
      
      override public function show() : void
      {
         if(mailField != null)
         {
            mailField.text = "";
         }
         if(confirmMailButton != null)
         {
            confirmMailButton.enable();
         }
         super.show();
      }
      
      private function onCloseClick(param1:MouseEvent) : void
      {
         close();
      }
   }
}

