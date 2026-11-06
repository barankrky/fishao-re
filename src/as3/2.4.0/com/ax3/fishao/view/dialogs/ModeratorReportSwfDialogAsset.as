package com.ax3.fishao.view.dialogs
{
   import com.ax3.display.dialog.DialogState;
   import com.ax3.display.dialog.SWFDialogConfig;
   import com.ax3.display.wrappers.impl.MiddleTextFieldWrapper;
   import com.ax3.display.wrappers.impl.ModeratorReportUserPanelWrapper;
   import com.ax3.display.wrappers.impl.ScrollTextWrapper;
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.view.wrappers.impl.FishaoButtonWrapper;
   import com.ax3.fishao.view.wrappers.impl.FrameButtonWrapper;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   
   public class ModeratorReportSwfDialogAsset extends FishaoBaseSwfDialog
   {
      
      public static const STATE_NEW_REPORT:String = "new_report_state";
      
      public static const STATE_VIEW_REPORT:String = "view_report_state";
      
      private var _reportState:String = "new_report_state";
      
      public var closeButton:FishaoButtonWrapper;
      
      public var reporterPanel:ModeratorReportUserPanelWrapper;
      
      public var abuserPanel:ModeratorReportUserPanelWrapper;
      
      public var descriptionLabel:MiddleTextFieldWrapper;
      
      public var directBanDesc:MiddleTextFieldWrapper;
      
      public var abuseThemeLabel:TextField;
      
      public var lastChatMessagesLabel:TextField;
      
      public var cancelButton:FrameButtonWrapper;
      
      public var processButton:FrameButtonWrapper;
      
      public var scrollText:ScrollTextWrapper;
      
      public var scrollTextBg:MovieClip;
      
      private var _descriptionText:String;
      
      public var lastChatMessagesList:ScrollTextWrapper;
      
      private var _chatMessagesText:String;
      
      public function ModeratorReportSwfDialogAsset()
      {
         var _loc1_:SWFDialogConfig = new SWFDialogConfig();
         _loc1_.swfFileName = "moderator_report_dialog.swf";
         super(_loc1_);
      }
      
      override protected function onAssetCreationComplete() : void
      {
         this.closeButton.handler = this.onCloseButtonClick;
         this.cancelButton.handler = this.onCloseButtonClick;
         this.reporterPanel.title = I18n.get("reporterLabel");
         this.reporterPanel.username = "";
         this.abuserPanel.title = I18n.get("abuserLabel");
         this.abuserPanel.username = "";
         this.cancelButton.label = I18n.get("buttonCancel");
         this.processButton.label = I18n.get("buttonProcess");
         this.abuseThemeLabel.text = "#Abuse subject";
         this.lastChatMessagesLabel.text = I18n.get("reportLastChatMessagesLabel");
         this.descriptionLabel.text = "#Ban description";
         this.directBanDesc.mouseEnabled = false;
         super.onAssetCreationComplete();
         this.update();
      }
      
      protected function update() : void
      {
         this.reportState = this._reportState;
         this.descriptionText = this._descriptionText;
         this.chatMessagesText = this._chatMessagesText;
      }
      
      private function onCloseButtonClick(param1:MouseEvent) : void
      {
         close();
      }
      
      public function set reportState(param1:String) : void
      {
         this._reportState = param1;
         if(_state == DialogState.READY)
         {
            if(this._reportState == STATE_NEW_REPORT)
            {
               this.reporterPanel.title = I18n.get("reporterLabel");
               this.descriptionLabel.visible = false;
               this.abuserPanel.visible = true;
            }
            else
            {
               this.reporterPanel.title = I18n.get("targetUserLabel");
               this.descriptionLabel.visible = true;
               this.abuserPanel.visible = false;
            }
         }
      }
      
      public function set descriptionText(param1:String) : void
      {
         if(param1 == null)
         {
            param1 = "";
         }
         this._descriptionText = param1;
         this.updateDescriptionText();
      }
      
      public function set chatMessagesText(param1:String) : void
      {
         if(param1 == null)
         {
            param1 = "";
         }
         this._chatMessagesText = param1;
         this.updateChatMessagesText();
      }
      
      private function updateDescriptionText() : void
      {
         if(_state == DialogState.READY)
         {
            this.scrollText.text = this._descriptionText;
         }
      }
      
      private function updateChatMessagesText() : void
      {
         if(_state == DialogState.READY)
         {
            this.lastChatMessagesList.htmlText = this._chatMessagesText;
         }
      }
   }
}

