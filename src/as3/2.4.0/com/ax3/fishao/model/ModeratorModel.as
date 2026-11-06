package com.ax3.fishao.model
{
   import com.ax3.fishao.FishaoFscModelManager;
   import com.ax3.fishao.model.events.ModeratorModelEvent;
   import com.ax3.fishao.model.types.BanPeriod;
   import com.ax3.fishao.model.types.BanType;
   import com.ax3.fishao.model.types.ReportStatusType;
   import com.ax3.fishao.model.vo.ModeratorUserItemVO;
   import com.ax3.fishao.model.vo.ReportItemVO;
   import com.ax3.utils.BindableVariable;
   import com.ax3.utils.empty;
   import flash.events.EventDispatcher;
   import protocol.sr.moderating.BannedUsersListResp;
   import protocol.sr.moderating.PenaltyDataResp;
   import protocol.sr.moderating.ReportChangeStateResp;
   import protocol.sr.moderating.ReportDataResp;
   import protocol.sr.moderating.ReportListResp;
   
   public class ModeratorModel extends EventDispatcher
   {
      
      public var amountOfNewReports:BindableVariable = new BindableVariable(0);
      
      public var activeReports:Vector.<ReportItemVO> = new Vector.<ReportItemVO>();
      
      public var historyReports:Vector.<ReportItemVO> = new Vector.<ReportItemVO>();
      
      public var users:Vector.<ModeratorUserItemVO> = new Vector.<ModeratorUserItemVO>();
      
      public var usersPage:int = 0;
      
      public var usersTotalPage:int = 1;
      
      public var historyReportsPage:int = 0;
      
      public var historyReportsTotalPage:int = 1;
      
      public var currentReport:ReportItemVO;
      
      private var _searchUsername:String = null;
      
      public function ModeratorModel()
      {
         super();
      }
      
      private static function sortReportsByDate(param1:ReportItemVO, param2:ReportItemVO) : int
      {
         if(param1.timeAgoSec > param2.timeAgoSec)
         {
            return 1;
         }
         if(param1.timeAgoSec < param2.timeAgoSec)
         {
            return -1;
         }
         return 0;
      }
      
      private static function sortBannedUsers(param1:ModeratorUserItemVO, param2:ModeratorUserItemVO) : int
      {
         if(param1.timeLeftSec > param2.timeLeftSec)
         {
            return 1;
         }
         if(param1.timeLeftSec < param2.timeLeftSec)
         {
            return -1;
         }
         return 0;
      }
      
      public function parseActiveReportListResp(param1:ReportListResp) : void
      {
         var _loc2_:Object = null;
         var _loc3_:ReportItemVO = null;
         this.activeReports.length = 0;
         var _loc4_:String = param1.list;
         var _loc5_:Array = JSON.parse(_loc4_) as Array;
         for each(_loc2_ in _loc5_)
         {
            _loc3_ = new ReportItemVO();
            _loc3_.readFromResponse(_loc2_);
            this.activeReports.push(_loc3_);
         }
         this.activeReports.sort(sortReportsByDate);
      }
      
      public function parseHistoryReportListResp(param1:ReportListResp) : void
      {
         var _loc2_:Object = null;
         var _loc3_:ReportItemVO = null;
         this.historyReports.length = 0;
         var _loc4_:String = param1.list;
         var _loc5_:Array = JSON.parse(_loc4_) as Array;
         for each(_loc2_ in _loc5_)
         {
            _loc3_ = new ReportItemVO();
            _loc3_.readFromResponse(_loc2_);
            this.historyReports.push(_loc3_);
         }
         this.historyReportsPage = param1.pageId;
         this.historyReportsTotalPage = param1.maxPageId + 1;
         this.historyReports.sort(sortReportsByDate);
      }
      
      public function parseUsersListResp(param1:BannedUsersListResp) : void
      {
         var _loc2_:Object = null;
         var _loc3_:ModeratorUserItemVO = null;
         this.users.length = 0;
         var _loc4_:String = param1.list;
         this.usersPage = param1.pageId;
         this.usersTotalPage = param1.maxPageId + 1;
         var _loc5_:Array = JSON.parse(_loc4_) as Array;
         for each(_loc2_ in _loc5_)
         {
            _loc3_ = new ModeratorUserItemVO();
            _loc3_.readFromResponse(_loc2_);
            this.users.push(_loc3_);
         }
         if(empty(this._searchUsername))
         {
            this.users.sort(sortBannedUsers);
         }
         else
         {
            this.users.sort(Array.CASEINSENSITIVE);
         }
      }
      
      public function updateCurrentReportInfo(param1:ReportDataResp) : ReportItemVO
      {
         if(this.currentReport != null)
         {
            this.currentReport.readFromResponse(param1);
            return this.currentReport;
         }
         return this.updateReportInfo(param1);
      }
      
      public function updateReportInfo(param1:ReportDataResp) : ReportItemVO
      {
         var _loc2_:ReportItemVO = this.findReportByKey(param1.reportKey);
         if(_loc2_ != null)
         {
            _loc2_.readFromResponse(param1);
         }
         return _loc2_;
      }
      
      public function updateReportInfoByPenaltyDataResp(param1:PenaltyDataResp) : ReportItemVO
      {
         var _loc2_:ReportItemVO = this.findReportByKey(param1.penaltyKey);
         if(_loc2_ != null)
         {
            _loc2_.readFromResponse(param1);
         }
         return _loc2_;
      }
      
      private function findReportByKey(param1:String) : ReportItemVO
      {
         var _loc2_:ReportItemVO = null;
         for each(_loc2_ in this.activeReports)
         {
            if(_loc2_.key == param1)
            {
               return _loc2_;
            }
         }
         for each(_loc2_ in this.historyReports)
         {
            if(_loc2_.key == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      private function findActiveReportByReportKey(param1:String) : ReportItemVO
      {
         var _loc2_:ReportItemVO = null;
         for each(_loc2_ in this.activeReports)
         {
            if(_loc2_.reportKey == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function ignoreReport(param1:String) : void
      {
         var _loc2_:ReportItemVO = this.findReportByKey(param1);
         _loc2_.status = ReportStatusType.OPEN;
         FishaoFscModelManager.moderatorFscExtension.ignoreCurrentReport();
      }
      
      public function parseReportChangeStateResp(param1:ReportChangeStateResp) : void
      {
         this.amountOfNewReports.value = param1.amountOfNewReports;
         var _loc2_:ReportItemVO = this.findActiveReportByReportKey(param1.reportKey);
         if(_loc2_ != null)
         {
            _loc2_.readFromResponse(param1);
         }
         dispatchEvent(new ModeratorModelEvent(ModeratorModelEvent.CHANGE_REPORT_STATE));
      }
      
      public function getBannedUsers(param1:Function, param2:String = null, param3:int = 0) : void
      {
         this._searchUsername = param2;
         FishaoFscModelManager.moderatorFscExtension.getBannedUsers(param1,param2,param3);
      }
      
      public function applyPenalty(param1:String, param2:String, param3:String, param4:BanType, param5:BanPeriod, param6:String, param7:Function) : void
      {
         var _loc8_:String = param5 ? param5.name : null;
         var _loc9_:String = param4 ? param4.name : null;
         FishaoFscModelManager.moderatorFscExtension.applyPenalty(param1,param2,param3,_loc9_,_loc8_,param6,param7);
      }
   }
}

