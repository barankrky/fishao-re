package com.ax3.fishao.display.dialogs
{
   import com.ax3.display.dialog.DialogState;
   import com.ax3.fishao.model.types.BanType;
   import com.ax3.fishao.model.types.ReportStatusType;
   import com.ax3.fishao.model.vo.ReportItemVO;
   import com.ax3.fishao.utils.FishaoBitmapLoader;
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs.CommunicationSwfDialog;
   import com.ax3.fishao.view.dialogs.ModeratorReportSwfDialogAsset;
   import com.ax3.fishao.view.dialogs.ProfileSwfDialog;
   import flash.events.MouseEvent;
   
   public class ModeratorReportSwfDialog extends ModeratorReportSwfDialogAsset
   {
      
      private var _report:ReportItemVO;
      
      public var processReportHandler:Function;
      
      public function ModeratorReportSwfDialog()
      {
         super();
      }
      
      public function showReport(param1:ReportItemVO) : void
      {
         this._report = param1;
         show();
      }
      
      override public function activate() : void
      {
         super.activate();
         this.update();
      }
      
      override protected function onAssetCreationComplete() : void
      {
         super.onAssetCreationComplete();
         abuserPanel.viewProfileButton.handler = this.onViewAbuserProfileClick;
         abuserPanel.viewLogsButton.handler = this.onViewAbuserLogsClick;
         reporterPanel.viewProfileButton.handler = this.onViewReporterProfileClick;
         reporterPanel.viewLogsButton.handler = this.onViewReporterLogsClick;
         processButton.handler = this.onProcessButtonClick;
      }
      
      private function onProcessButtonClick(param1:MouseEvent) : void
      {
         var _loc2_:ModeratorActionSwfDialog = app.dialogFactory.getModeratorActionSwfDialog();
         _loc2_.handlerReportSuccess = this.onReportProcess;
         _loc2_.showReport(this._report);
      }
      
      private function onViewAbuserProfileClick(param1:MouseEvent) : void
      {
         var _loc2_:ProfileSwfDialog = app.dialogFactory.getProfileDialog();
         _loc2_.initData(this._report.abuserUsername);
         _loc2_.show();
      }
      
      private function onViewReporterProfileClick(param1:MouseEvent) : void
      {
         var _loc2_:ProfileSwfDialog = app.dialogFactory.getProfileDialog();
         if(this._report.status == ReportStatusType.CLOSED)
         {
            _loc2_.initData(this._report.abuserUsername);
         }
         else
         {
            _loc2_.initData(this._report.reporterUsername);
         }
         _loc2_.show();
      }
      
      private function onViewAbuserLogsClick(param1:MouseEvent) : void
      {
         var _loc2_:CommunicationSwfDialog = app.dialogFactory.getCommunicationSwfDialog();
         _loc2_.viewedByModerator = true;
         _loc2_.init(this._report.abuserUsername);
         _loc2_.show();
      }
      
      private function onViewReporterLogsClick(param1:MouseEvent) : void
      {
         var _loc2_:CommunicationSwfDialog = app.dialogFactory.getCommunicationSwfDialog();
         _loc2_.viewedByModerator = true;
         if(this._report.status == ReportStatusType.CLOSED)
         {
            _loc2_.init(this._report.abuserUsername);
         }
         else
         {
            _loc2_.init(this._report.reporterUsername);
         }
         _loc2_.show();
      }
      
      private function onReportProcess() : void
      {
         if(this.processReportHandler != null)
         {
            this.processReportHandler();
         }
         this.close();
      }
      
      override public function showByDialogManager() : void
      {
         _app.dialogManager.showDialogWithOverlay(this);
      }
      
      override public function close() : void
      {
         super.close();
         if(this._report != null && this._report.status == ReportStatusType.OPEN)
         {
            app.moderatorModel.ignoreReport(this._report.key);
         }
         this._report = null;
      }
      
      override protected function update() : void
      {
         var _loc1_:String = null;
         if(_state == DialogState.READY)
         {
            super.update();
            scrollText.visible = true;
            scrollTextBg.visible = true;
            abuseThemeLabel.visible = true;
            directBanDesc.visible = false;
            if(this._report.status == ReportStatusType.OPEN)
            {
               reportState = STATE_NEW_REPORT;
               abuserPanel.username = this._report.abuserUsername;
               app.resourceManager.replaceBitmapDataFromURL(abuserPanel.flag.image,FishaoBitmapLoader.getImageLanguageFlagURL(this._report.abuserLang));
               reporterPanel.username = this._report.reporterUsername;
               app.resourceManager.replaceBitmapDataFromURL(reporterPanel.flag.image,FishaoBitmapLoader.getImageLanguageFlagURL(this._report.reporterLang));
               descriptionText = this._report.description;
               abuseThemeLabel.text = this._report.subject;
               chatMessagesText = this._report.generateChatMessageText();
            }
            else if(this._report.status == ReportStatusType.CLOSED)
            {
               reportState = STATE_VIEW_REPORT;
               if(this._report.punishableSide == ReportItemVO.UNKNOWN_PUNISHABLE)
               {
                  reporterPanel.title = I18n.get("targetUserLabel");
               }
               else if(this._report.punishableSide == ReportItemVO.ABUSER_PUNISHABLE)
               {
                  reporterPanel.title = I18n.get("abuserLabel");
               }
               else if(this._report.punishableSide == ReportItemVO.REPORTER_PUNISHABLE)
               {
                  reporterPanel.title = I18n.get("reporterLabel");
               }
               reporterPanel.username = this._report.abuserUsername;
               app.resourceManager.replaceBitmapDataFromURL(reporterPanel.flag.image,FishaoBitmapLoader.getImageLanguageFlagURL(this._report.lang));
               if(this._report.subject == null || this._report.punishableSide == ReportItemVO.REPORTER_PUNISHABLE)
               {
                  scrollText.visible = false;
                  scrollTextBg.visible = false;
                  abuseThemeLabel.visible = false;
                  directBanDesc.visible = this._report.punishableSide != ReportItemVO.REPORTER_PUNISHABLE;
                  if(this._report.banType == BanType.DISMISS_REPORT)
                  {
                     directBanDesc.text = "";
                  }
                  else
                  {
                     directBanDesc.text = I18n.get("direct_report_" + this._report.banType.name);
                  }
               }
               else
               {
                  descriptionText = this._report.description;
                  abuseThemeLabel.text = this._report.subject;
               }
               chatMessagesText = this._report.generateChatMessageText();
               _loc1_ = I18n.template("ban_description",{
                  "moderator":this._report.reporterUsername,
                  "banType":I18n.get(this._report.banType.name)
               });
               if(this._report.banType.hasTime)
               {
                  if(this._report.timeAgoSec > 0)
                  {
                     _loc1_ += ", " + I18n.template("ban_description_time",{"timeLeft":I18n.formatTimestamp(this._report.timeAgoSec)});
                  }
                  else
                  {
                     _loc1_ += " " + I18n.get("ban_description_time_expired");
                  }
               }
               descriptionLabel.text = _loc1_;
               descriptionLabel.tooltipConfig = {"text":I18n.get("reasonLabel") + " " + this._report.penaltyDesc};
            }
         }
      }
   }
}

