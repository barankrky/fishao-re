package com.ax3.jss.ext.impl
{
   import com.ax3.jss._30b7fef66889ed3a5e0f6633;
   import com.ax3.jss.ext._af553da4b23e7233e6fbc19c;
   import com.ax3.jss.ext._d23481b750999df4f0e00416;
   import com.ax3.jss.model._8037b27a84f7a4943b0eb5f7;
   import com.ax3.utils.empty;
   import flash.events.IEventDispatcher;
   import protocol.cr.moderating.ApplyPenaltyReq;
   import protocol.cr.moderating.CloseOpenReportReq;
   import protocol.cr.moderating.GetBannedUsersListReq;
   import protocol.cr.moderating.GetReportListReq;
   import protocol.cr.moderating.OpenPenaltyReq;
   import protocol.cr.moderating.OpenReportReq;
   
   public class _f38e0abe962b06e30c4ebfc9 extends _d23481b750999df4f0e00416 implements _af553da4b23e7233e6fbc19c
   {
      
      public function _f38e0abe962b06e30c4ebfc9()
      {
         super();
      }
      
      override public function init(param1:IEventDispatcher, param2:_30b7fef66889ed3a5e0f6633, param3:_8037b27a84f7a4943b0eb5f7) : void
      {
         super.init(param1,param2,param3);
      }
      
      public function _1ac784c9620542837d9d3422(param1:Boolean, param2:int = 0, param3:String = "", param4:Function = null) : void
      {
         var _loc5_:GetReportListReq = new GetReportListReq();
         _loc5_.onlyNew = param1;
         _loc5_.page = param2;
         _loc5_.lang = param3;
         _connection.send(_loc5_,param4);
      }
      
      public function _5d35ee082b4d5bdfa0fbc506(param1:String, param2:Function) : void
      {
         var _loc3_:OpenReportReq = new OpenReportReq(param1);
         _connection.send(_loc3_,param2);
      }
      
      public function _58b9dc1f3839e0c23701ac41(param1:String, param2:Function) : void
      {
         var _loc3_:OpenPenaltyReq = new OpenPenaltyReq(param1);
         _connection.send(_loc3_,param2);
      }
      
      public function _140c89253592fbb6bafd14ea() : void
      {
         var _loc1_:CloseOpenReportReq = new CloseOpenReportReq();
         _connection.send(_loc1_,null);
      }
      
      public function _1acd900dad3c29322932e068(param1:String, param2:String, param3:String, param4:String, param5:String, param6:String, param7:Function) : void
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
      
      public function _b94baa52af179b8f0fb53e98(param1:Function, param2:String = null, param3:int = 0) : void
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

