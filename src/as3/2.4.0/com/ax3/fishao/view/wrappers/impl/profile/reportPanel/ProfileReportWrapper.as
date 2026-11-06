package com.ax3.fishao.view.wrappers.impl.profile.reportPanel
{
   import com.ax3.display.wrappers.IAssetWrapperRecursive;
   import com.ax3.display.wrappers.impl.SwfFactoryWrapper;
   import com.ax3.fishao.display.dialogs.MessageDialog;
   import com.ax3.fishao.model.profile.reportPanelData.ReportPanelData;
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.view.wrappers.impl.BigTextFieldWrapper;
   import com.ax3.fishao.view.wrappers.impl.FishaoDropdownListBaseItem;
   import com.ax3.fishao.view.wrappers.impl.FishaoDropdownProfilerWrapper;
   import com.ax3.fishao.view.wrappers.impl.FrameButtonWrapper;
   import com.ax3.fishao.view.wrappers.impl.profile.*;
   import com.ax3.jss.requests.server.ServerResp;
   import flash.events.Event;
   import flash.text.TextField;
   import protocol.sr.profile.ProfileReportSuccessResp;
   
   public class ProfileReportWrapper extends ProfilePanelWrapper implements IAssetWrapperRecursive
   {
      
      public var sendReportButton:FrameButtonWrapper;
      
      public var banButton:FrameButtonWrapper;
      
      public var descriptionText:TextField;
      
      public var wrongQuestionText:TextField;
      
      public var explanationLabelText:TextField;
      
      public var explanationInputText:BigTextFieldWrapper;
      
      public var doingTypePicker:FishaoDropdownProfilerWrapper;
      
      private var _panelData:ReportPanelData;
      
      public function ProfileReportWrapper()
      {
         super();
      }
      
      override public function onAssetProcessComplete() : void
      {
         var _loc1_:SwfFactoryWrapper = new SwfFactoryWrapper(_app.resourceManager,_swfFileName,FishaoDropdownListBaseItem);
         this.doingTypePicker.setItemFactory(_loc1_);
         this._panelData = new ReportPanelData();
         this.initStaticData();
      }
      
      private function initStaticData() : void
      {
         this.descriptionText.text = I18n.get("profileReportDescription");
         this.wrongQuestionText.text = I18n.get("profileReportWrongQuestionText");
         this.explanationLabelText.text = I18n.get("profileReportExplanation");
         this.sendReportButton.label = I18n.getUpper("profileReportSendReport");
         this.sendReportButton.handler = this.onSendReportButtonClick;
         this.banButton.label = I18n.getUpper("profileReportBanButton");
      }
      
      private function setPanelData() : void
      {
         this.doingTypePicker.create(this._panelData.doingList);
         this.doingTypePicker.text = this._panelData.doingList[0];
         callUpdateCallback();
      }
      
      private function onSendReportButtonClick(param1:Event) : void
      {
         if(this.explanationInputText.text != "")
         {
            this._panelData.sendReport(_login,this.doingTypePicker.displayValue,this.explanationInputText.text,this.onSendReportComplete);
         }
      }
      
      override public function update(param1:Function) : void
      {
         super.update(param1);
         this.setPanelData();
         this.explanationInputText.text = "";
      }
      
      private function onSendReportComplete(param1:ServerResp) : void
      {
         var _loc2_:MessageDialog = null;
         if(param1 is ProfileReportSuccessResp)
         {
            _loc2_ = new MessageDialog();
            _loc2_.setText(I18n.get("reportHasBeenSend"));
            _loc2_.buttons = MessageDialog.OK_BUTTON;
            _loc2_.closeOnOk = true;
            _loc2_.show();
            this.update(null);
         }
      }
   }
}

