package com.ax3.fishao.display.dialogs
{
   import com.ax3.fishao.FishaoFscModelManager;
   import com.ax3.fishao.model.events.ModeratorModelEvent;
   import com.ax3.fishao.model.types.ReportStatusType;
   import com.ax3.fishao.model.vo.ModeratorUserItemVO;
   import com.ax3.fishao.model.vo.ReportItemVO;
   import com.ax3.fishao.utils.Preloader;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs.ModeratorSwfDialogAsset;
   import com.ax3.fishao.view.dialogs.ProfileSwfDialog;
   import com.ax3.jss.requests.server.ServerResp;
   import com.ax3.utils.empty;
   import com.junkbyte.console.Cc;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import protocol.sr.ErrorResp;
   import protocol.sr.UpdateResp;
   import protocol.sr.moderating.BannedUsersListResp;
   import protocol.sr.moderating.PenaltyDataResp;
   import protocol.sr.moderating.ReportDataResp;
   import protocol.sr.moderating.ReportListResp;
   
   public class ModeratorSwfDialog extends ModeratorSwfDialogAsset
   {
      
      private var _lastReport:ReportItemVO;
      
      private var _reportDialog:ModeratorReportSwfDialog;
      
      public function ModeratorSwfDialog()
      {
         super();
      }
      
      override protected function onAssetCreationComplete() : void
      {
         super.onAssetCreationComplete();
         activeReportsTab.activateReportHandler = this.onActiveReportSelect;
         activeReportsTab.list.removeAll();
         historyReportsTab.activateReportHandler = this.onActiveReportSelect;
         historyReportsTab.prevPageClickHandler = this.onHistoryPrevPageClick;
         historyReportsTab.nextPageClickHandler = this.onHistoryNextPageClick;
         historyReportsTab.list.removeAll();
         usersTab.searchButton.handler = this.onSearchButtonClick;
         usersTab.prevPageClickHandler = this.onUsersPrevPageClick;
         usersTab.nextPageClickHandler = this.onUsersNextPageClick;
         usersTab.list.removeAll();
         usersTab.activateUserHandler = this.onUserReportSelect;
         _languageDropdownMediator.addEventListener(Event.CHANGE,this.onActiveLanguageChange);
         tabChildren = false;
      }
      
      private function onHistoryNextPageClick() : void
      {
         if(app.moderatorModel.historyReportsPage + 1 < app.moderatorModel.historyReportsTotalPage)
         {
            FishaoFscModelManager.moderatorFscExtension.getActiveReports(false,app.moderatorModel.historyReportsPage + 1,null,Preloader.waitForResponse(this.onHistoryReportListUpdate));
         }
      }
      
      private function onHistoryPrevPageClick() : void
      {
         if(app.moderatorModel.historyReportsPage - 1 >= 0)
         {
            FishaoFscModelManager.moderatorFscExtension.getActiveReports(false,app.moderatorModel.historyReportsPage - 1,null,Preloader.waitForResponse(this.onHistoryReportListUpdate));
         }
      }
      
      private function onUsersNextPageClick() : void
      {
         if(app.moderatorModel.usersPage + 1 < app.moderatorModel.usersTotalPage)
         {
            app.moderatorModel.getBannedUsers(Preloader.waitForResponse(this.onUsersListResp),usersTab.searchField.text,app.moderatorModel.usersPage + 1);
         }
      }
      
      private function onUsersPrevPageClick() : void
      {
         if(app.moderatorModel.usersPage - 1 >= 0)
         {
            app.moderatorModel.getBannedUsers(Preloader.waitForResponse(this.onUsersListResp),usersTab.searchField.text,app.moderatorModel.usersPage - 1);
         }
      }
      
      private function onActiveReportSelect(param1:ReportItemVO) : void
      {
         if(tabs.currentTab == _activeReportsTabIndex && param1.status != ReportStatusType.PROCESSING)
         {
            this._lastReport = param1;
            app.moderatorModel.currentReport = param1;
            FishaoFscModelManager.moderatorFscExtension.openReportInfo(param1.reportKey,Preloader.waitForResponse(this.onGetReportInfo));
         }
         if(tabs.currentTab == _historyReportsTabIndex)
         {
            this._lastReport = param1;
            app.moderatorModel.currentReport = param1;
            FishaoFscModelManager.moderatorFscExtension.getReportInfo(param1.key,Preloader.waitForResponse(this.onGetReportInfo));
         }
      }
      
      private function onUserReportSelect(param1:ModeratorUserItemVO) : void
      {
         var _loc2_:ProfileSwfDialog = null;
         if(param1 != null && !empty(param1.username))
         {
            app.dialogFactory.getProfileDialog();
            _loc2_ = app.dialogFactory.getProfileDialog();
            _loc2_.initData(param1.username);
            _loc2_.show();
         }
      }
      
      private function onGetReportInfo(param1:ServerResp) : void
      {
         var _loc2_:ReportItemVO = null;
         if(param1 is ReportDataResp)
         {
            _loc2_ = app.moderatorModel.updateCurrentReportInfo(ReportDataResp(param1));
            if(_loc2_ != null)
            {
               this._reportDialog = app.dialogFactory.getModeratorReportSwfDialog();
               this._reportDialog.processReportHandler = this.onReportProcess;
               this._reportDialog.addCloseCallback(this.reportDialogClosed);
               this._reportDialog.showReport(_loc2_);
            }
         }
         else if(param1 is PenaltyDataResp)
         {
            _loc2_ = app.moderatorModel.updateReportInfoByPenaltyDataResp(PenaltyDataResp(param1));
            if(_loc2_ != null)
            {
               this._reportDialog = app.dialogFactory.getModeratorReportSwfDialog();
               this._reportDialog.processReportHandler = this.onReportProcess;
               this._reportDialog.showReport(_loc2_);
            }
         }
         else if(param1 is ErrorResp)
         {
            this._lastReport.status = ReportStatusType.PROCESSING;
            activeReportsTab.list.updateData();
         }
      }
      
      private function reportDialogClosed() : void
      {
         this._reportDialog = null;
         if(tabs.currentTab == _activeReportsTabIndex)
         {
            FishaoFscModelManager.moderatorFscExtension.getActiveReports(true,0,_languageDropdownMediator.currentLangID,Preloader.waitForResponse(this.onActiveReportListUpdate));
         }
         else if(tabs.currentTab == _historyReportsTabIndex)
         {
            FishaoFscModelManager.moderatorFscExtension.getActiveReports(false,0,_languageDropdownMediator.currentLangID,Preloader.waitForResponse(this.onActiveReportListUpdate));
         }
      }
      
      private function onReportProcess() : void
      {
         this.switchTab(tabs.currentTab);
      }
      
      override public function activate() : void
      {
         super.activate();
         tabs.activateTab(_activeReportsTabIndex,false);
         this.switchTab(_activeReportsTabIndex,true);
         app.moderatorModel.addEventListener(ModeratorModelEvent.CHANGE_REPORT_STATE,this.onChangeReportState);
      }
      
      private function onChangeReportState(param1:ModeratorModelEvent) : void
      {
         if(tabs.currentTab == _activeReportsTabIndex)
         {
            activeReportsTab.list.updateData();
         }
      }
      
      private function onActiveReportListUpdate(param1:ServerResp) : void
      {
         if(param1 is ReportListResp)
         {
            app.moderatorModel.parseActiveReportListResp(ReportListResp(param1));
         }
         setActiveReports(app.moderatorModel.activeReports);
      }
      
      private function onHistoryReportListUpdate(param1:ServerResp) : void
      {
         if(param1 is ReportListResp)
         {
            app.moderatorModel.parseHistoryReportListResp(ReportListResp(param1));
         }
         setHistoryReports(app.moderatorModel.historyReports,app.moderatorModel.historyReportsPage,app.moderatorModel.historyReportsTotalPage);
      }
      
      private function onUsersListResp(param1:ServerResp) : void
      {
         if(param1 is BannedUsersListResp)
         {
            app.moderatorModel.parseUsersListResp(BannedUsersListResp(param1));
         }
         setUsers(app.moderatorModel.users,app.moderatorModel.usersPage,app.moderatorModel.usersTotalPage);
      }
      
      override protected function switchTab(param1:int, param2:Boolean = false) : void
      {
         super.switchTab(param1,param2);
         FishaoFscModelManager.fscModel.removeRequestHandler(UpdateResp,this.onUpdateResp);
         switch(param1)
         {
            case _activeReportsTabIndex:
               FishaoFscModelManager.fscModel.addRequestHandler(UpdateResp,this.onUpdateResp);
               FishaoFscModelManager.moderatorFscExtension.getActiveReports(true,0,_languageDropdownMediator.currentLangID,Preloader.waitForResponse(this.onActiveReportListUpdate));
               break;
            case _historyReportsTabIndex:
               FishaoFscModelManager.moderatorFscExtension.getActiveReports(false,0,null,Preloader.waitForResponse(this.onHistoryReportListUpdate));
               break;
            case _usersTabIndex:
               app.moderatorModel.getBannedUsers(Preloader.waitForResponse(this.onUsersListResp),usersTab.searchField.text,app.moderatorModel.usersPage);
         }
      }
      
      private function onUpdateResp(param1:UpdateResp) : void
      {
         var resp:UpdateResp = param1;
         try
         {
            if(resp.hasDataProperty("amountOfNewReports") && this._reportDialog == null)
            {
               FishaoFscModelManager.moderatorFscExtension.getActiveReports(true,0,_languageDropdownMediator.currentLangID,Preloader.waitForResponse(this.onActiveReportListUpdate));
            }
         }
         catch(e:Error)
         {
            Cc.log(resp);
            Cc.error("ModeratorSwfDialog.onUpdateResp ERROR",e);
            Cc.error(e.getStackTrace());
            GameSwf.sendReportToServer("updateResp");
         }
      }
      
      private function onSearchButtonClick(param1:MouseEvent) : void
      {
         app.moderatorModel.usersPage = 0;
         app.moderatorModel.getBannedUsers(Preloader.waitForResponse(this.onUsersListResp),usersTab.searchField.text,app.moderatorModel.usersPage);
      }
      
      override public function deactivate() : void
      {
         super.deactivate();
         FishaoFscModelManager.fscModel.removeRequestHandler(UpdateResp,this.onUpdateResp);
      }
      
      private function onActiveLanguageChange(param1:*) : void
      {
         FishaoFscModelManager.moderatorFscExtension.getActiveReports(true,0,_languageDropdownMediator.currentLangID,Preloader.waitForResponse(this.onActiveReportListUpdate));
      }
   }
}

