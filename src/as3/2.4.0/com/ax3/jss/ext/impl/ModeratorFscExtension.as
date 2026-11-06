package com.ax3.jss.ext.impl
{
   import com.ax3.jss.FscConnection;
   import com.ax3.jss.ext.BaseFscExtension;
   import com.ax3.jss.ext.IFscExtension;
   import com.ax3.jss.model.IFscModel;
   import com.ax3.utils.empty;
   import flash.events.IEventDispatcher;
   import protocol.cr.moderating.ApplyPenaltyReq;
   import protocol.cr.moderating.CloseOpenReportReq;
   import protocol.cr.moderating.GetBannedUsersListReq;
   import protocol.cr.moderating.GetReportListReq;
   import protocol.cr.moderating.OpenPenaltyReq;
   import protocol.cr.moderating.OpenReportReq;
   
   public class ModeratorFscExtension extends BaseFscExtension implements IFscExtension
   {
      
      public function ModeratorFscExtension()
      {
         super();
      }
      
      override public function init(param1:IEventDispatcher, param2:FscConnection, param3:IFscModel) : void
      {
         super.init(param1,param2,param3);
      }
      
      public function getActiveReports(param1:Boolean, param2:int = 0, param3:String = "", param4:Function = null) : void
      {
         var _loc5_:GetReportListReq = new GetReportListReq();
         _loc5_.onlyNew = param1;
         _loc5_.page = param2;
         _loc5_.lang = param3;
         _connection.send(_loc5_,param4);
      }
      
      public function openReportInfo(param1:String, param2:Function) : void
      {
         var _loc3_:OpenReportReq = new OpenReportReq(param1);
         _connection.send(_loc3_,param2);
      }
      
      public function getReportInfo(param1:String, param2:Function) : void
      {
         var _loc3_:OpenPenaltyReq = new OpenPenaltyReq(param1);
         _connection.send(_loc3_,param2);
      }
      
      public function ignoreCurrentReport() : void
      {
         var _loc1_:CloseOpenReportReq = new CloseOpenReportReq();
         _connection.send(_loc1_,null);
      }
      
      public function applyPenalty(param1:String, param2:String, param3:String, param4:String, param5:String, param6:String, param7:Function) : void
      {
         var _loc8_:ApplyPenaltyReq = new ApplyPenaltyReq();
         _loc8_.punishebleLogin = param3;
         _loc8_.banType = param4;
         _loc8_.banPeriod = param5;
         _loc8_.descr = param6;
         _loc8_.reportKey = param1;
         _loc8_.penaltyKey = param2;
         _connection.send(_loc8_,param7);
      }
      
      public function getBannedUsers(param1:Function, param2:String = null, param3:int = 0) : void
      {
         var _loc4_:GetBannedUsersListReq = new GetBannedUsersListReq();
         _loc4_.pageId = param3;
         if(!empty(param2))
         {
            _loc4_.loginFilter = param2;
         }
         _connection.send(_loc4_,param1);
      }
   }
}

