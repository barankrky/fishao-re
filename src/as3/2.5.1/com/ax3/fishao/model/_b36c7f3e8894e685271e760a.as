package com.ax3.fishao.model
{
   import com.ax3.fishao._dfa25706e58a240c1e33e5c6;
   import com.ax3.fishao.model.events._08bb6ef4aa41ca0ac1e16f10;
   import com.ax3.fishao.model.types._262f244aaecbd05b76c0b35e;
   import com.ax3.fishao.model.types._3e150da9e23ba0916ccbf8e9;
   import com.ax3.fishao.model.types._5b7284c7fd381f8e2dcb8905;
   import com.ax3.fishao.model.vo._4958d20007bef43d6fa5624d;
   import com.ax3.fishao.model.vo._9cff77d5f188667f75b09b59;
   import com.ax3.utils._aa46d9061fb6637c5f30405a;
   import com.ax3.utils.empty;
   import flash.events.EventDispatcher;
   import protocol.sr.moderating.BannedUsersListResp;
   import protocol.sr.moderating.PenaltyDataResp;
   import protocol.sr.moderating.ReportChangeStateResp;
   import protocol.sr.moderating.ReportDataResp;
   import protocol.sr.moderating.ReportListResp;
   
   public class _b36c7f3e8894e685271e760a extends EventDispatcher
   {
      
      public var amountOfNewReports:_aa46d9061fb6637c5f30405a = new _aa46d9061fb6637c5f30405a(-824380795 ^ 0x48762399 ^ 0x226108B9 ^ -1530144347);
      
      public var activeReports:Vector.<_4958d20007bef43d6fa5624d> = new Vector.<_4958d20007bef43d6fa5624d>();
      
      public var historyReports:Vector.<_4958d20007bef43d6fa5624d> = new Vector.<_4958d20007bef43d6fa5624d>();
      
      public var users:Vector.<_9cff77d5f188667f75b09b59> = new Vector.<_9cff77d5f188667f75b09b59>();
      
      public var usersPage:int = 0;
      
      public var usersTotalPage:int = 1;
      
      public var historyReportsPage:int = 0;
      
      public var historyReportsTotalPage:int = 1;
      
      public var currentReport:_4958d20007bef43d6fa5624d;
      
      private var _ad618a4350bf4fc5da87123c:String = null;
      
      public function _b36c7f3e8894e685271e760a()
      {
         super();
      }
      
      private static function _672e03760eb13d11aa1d3772(param1:_4958d20007bef43d6fa5624d, param2:_4958d20007bef43d6fa5624d) : int
      {
         var _loc3_:int = -876224317 ^ 0x6335AA76 ^ -286397164 ^ 0x7BAD5272;
         loop0:
         while(true)
         {
            switch(_loc3_ ^ (-1764532950 ^ 0x618FEA2C ^ -1777697393 ^ 0x5CE63F5A))
            {
               case 0:
                  if(param1.timeAgoSec > param2.timeAgoSec)
                  {
                     _loc3_ = 0x179271FF ^ -643694316 ^ -1481450590 ^ 0x54325E99;
                  }
                  else
                  {
                     _loc3_ = -1686574371 ^ 0x6A6A1D71 ^ -1565379686 ^ 0x6E1031E4;
                  }
                  break;
               case 1:
                  if(param1.timeAgoSec < param2.timeAgoSec)
                  {
                     _loc3_ = 0x15DB84D1 ^ 0x028DBE71 ^ -647312649 ^ -208927354;
                  }
                  else
                  {
                     _loc3_ = 0x2E43A944 ^ 0x4B1FD4EF ^ -2090948548 ^ -609083328;
                  }
                  break;
               case 2:
                  return -1171412810 ^ -950504087 ^ 0x6A553555 ^ -388032651;
               case 3:
                  return 0x07A5D1A9 ^ -204662995 ^ 0x06ABB2C7 ^ -222071742;
               case 4:
                  return -915465721 ^ -932644331 ^ -2065816403 ^ -2049325889;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private static function _e27dde0dcafa17a7b025b6f9(param1:_9cff77d5f188667f75b09b59, param2:_9cff77d5f188667f75b09b59) : int
      {
         var _loc3_:int = -226424630 ^ 0x3A9DA7BB ^ 0x052454FC ^ 0x447DFC58;
         loop0:
         while(true)
         {
            switch(_loc3_ ^ (0x17F117B6 ^ -1374256493 ^ 0x02ED947A ^ 0x324F068E))
            {
               case 0:
                  return 0x14719D84 ^ 0x5E2EADBF ^ 0x48FD11C1 ^ 0x02A221FB;
               case 1:
                  return 0x2546613A ^ 0x09B387AD ^ -582801327 ^ 0x0E493139;
               case 2:
                  return 0x0F704544 ^ -893638781 ^ 0x4DCCAD42 ^ -2013212795;
               case 3:
                  if(param1.timeLeftSec < param2.timeLeftSec)
                  {
                     _loc3_ = -1971599812 ^ -868518210 ^ 0x4A4CEDC0 ^ -2058790254;
                  }
                  else
                  {
                     _loc3_ = -262354328 ^ 0x0D1C3104 ^ -1992796779 ^ -46290646;
                  }
                  break;
               case 4:
                  if(param1.timeLeftSec > param2.timeLeftSec)
                  {
                     _loc3_ = -331036999 ^ 0x2C7F34D5 ^ -704988005 ^ -1669052122;
                  }
                  else
                  {
                     _loc3_ = -1527562775 ^ 0x6BA1D202 ^ -129705691 ^ -1101844196;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function _ffa974b89134683393a004ec(param1:ReportListResp) : void
      {
         var _loc2_:Object = null;
         var _loc3_:_4958d20007bef43d6fa5624d = null;
         this.activeReports.length = 0x23798591 ^ -86611766 ^ 0x1BC71EF2 ^ -1033309271;
         var _loc4_:String = param1.list;
         var _loc5_:Array = JSON.parse(_loc4_) as Array;
         for each(_loc2_ in _loc5_)
         {
            _loc3_ = new _4958d20007bef43d6fa5624d();
            _loc3_._aa26310566acafc06106a99c(_loc2_);
            this.activeReports.push(_loc3_);
         }
         this.activeReports.sort(_672e03760eb13d11aa1d3772);
      }
      
      public function _c009b5bbc2b350174747d789(param1:ReportListResp) : void
      {
         var _loc2_:Object = null;
         var _loc3_:_4958d20007bef43d6fa5624d = null;
         this.historyReports.length = -1716795650 ^ 0x075C8AC4 ^ 0x1A75A676 ^ -2071795124;
         var _loc4_:String = param1.list;
         var _loc5_:Array = JSON.parse(_loc4_) as Array;
         for each(_loc2_ in _loc5_)
         {
            _loc3_ = new _4958d20007bef43d6fa5624d();
            _loc3_._aa26310566acafc06106a99c(_loc2_);
            this.historyReports.push(_loc3_);
         }
         this.historyReportsPage = param1.pageId;
         this.historyReportsTotalPage = param1.maxPageId + (-1150047276 ^ 0x700DE95A ^ -591774139 ^ 0x17C47CCA);
         this.historyReports.sort(_672e03760eb13d11aa1d3772);
      }
      
      public function _9ac00bbd1bccc25fbf81a896(param1:BannedUsersListResp) : void
      {
         var _loc2_:Object = null;
         var _loc3_:_9cff77d5f188667f75b09b59 = null;
         this.users.length = 0x336E995B ^ -1175632450 ^ -1661009999 ^ 0x167D2354;
         var _loc4_:String = param1.list;
         this.usersPage = param1.pageId;
         this.usersTotalPage = param1.maxPageId + (0x1E86835D ^ -249182157 ^ -1888535120 ^ 0x60CC76DF);
         var _loc5_:Array = JSON.parse(_loc4_) as Array;
         for each(_loc2_ in _loc5_)
         {
            _loc3_ = new _9cff77d5f188667f75b09b59();
            _loc3_._aa26310566acafc06106a99c(_loc2_);
            this.users.push(_loc3_);
         }
         if(empty(this._ad618a4350bf4fc5da87123c))
         {
            this.users.sort(_e27dde0dcafa17a7b025b6f9);
         }
         else
         {
            this.users.sort(Array.CASEINSENSITIVE);
         }
      }
      
      public function _3bde89a45a72887639933efe(param1:ReportDataResp) : _4958d20007bef43d6fa5624d
      {
         var _loc2_:int = 0x7472C873 ^ -1758294275 ^ 0x0B975F58 ^ -1063794171;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x36812675 ^ 0x0B42E7FE ^ -1497113774 ^ -1287599862))
            {
               case 0:
                  if(this.currentReport != null)
                  {
                     _loc2_ = 0x05869836 ^ 0x7D324F35 ^ 0x02675F23 ^ 0x52935BF2;
                  }
                  else
                  {
                     _loc2_ = -1219158979 ^ -338026391 ^ -1405560768 ^ -654886971;
                  }
                  break;
               case 1:
                  this.currentReport._aa26310566acafc06106a99c(param1);
                  return this.currentReport;
               case 2:
                  return this._e68723bfd7a36201c1b3edbd(param1);
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function _e68723bfd7a36201c1b3edbd(param1:ReportDataResp) : _4958d20007bef43d6fa5624d
      {
         var _loc2_:_4958d20007bef43d6fa5624d = this._5ebb6d7fcea5c68db25e63f9(param1.reportKey);
         if(_loc2_ != null)
         {
            _loc2_._aa26310566acafc06106a99c(param1);
         }
         return _loc2_;
      }
      
      public function _db1a75b1ebd17cc0e0816c2e(param1:PenaltyDataResp) : _4958d20007bef43d6fa5624d
      {
         var _loc2_:_4958d20007bef43d6fa5624d = this._5ebb6d7fcea5c68db25e63f9(param1.penaltyKey);
         if(_loc2_ != null)
         {
            _loc2_._aa26310566acafc06106a99c(param1);
         }
         return _loc2_;
      }
      
      private function _5ebb6d7fcea5c68db25e63f9(param1:String) : _4958d20007bef43d6fa5624d
      {
         var _loc2_:_4958d20007bef43d6fa5624d = null;
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
      
      private function _bee22e9ad3e891c7a553e817(param1:String) : _4958d20007bef43d6fa5624d
      {
         var _loc2_:_4958d20007bef43d6fa5624d = null;
         for each(_loc2_ in this.activeReports)
         {
            if(_loc2_.reportKey == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function _a72a6703134c2589bed6226e(param1:String) : void
      {
         var _loc2_:_4958d20007bef43d6fa5624d = this._5ebb6d7fcea5c68db25e63f9(param1);
         _loc2_.status = _5b7284c7fd381f8e2dcb8905.OPEN;
         _dfa25706e58a240c1e33e5c6.moderatorFscExtension._140c89253592fbb6bafd14ea();
      }
      
      public function _700ebdcaa0365f0a7e1f303d(param1:ReportChangeStateResp) : void
      {
         this.amountOfNewReports.value = param1.amountOfNewReports;
         var _loc2_:_4958d20007bef43d6fa5624d = this._bee22e9ad3e891c7a553e817(param1.reportKey);
         if(_loc2_ != null)
         {
            _loc2_._aa26310566acafc06106a99c(param1);
         }
         dispatchEvent(new _08bb6ef4aa41ca0ac1e16f10(_08bb6ef4aa41ca0ac1e16f10.CHANGE_REPORT_STATE));
      }
      
      public function _b94baa52af179b8f0fb53e98(param1:Function, param2:String = null, param3:int = 0) : void
      {
         this._ad618a4350bf4fc5da87123c = param2;
         _dfa25706e58a240c1e33e5c6.moderatorFscExtension._b94baa52af179b8f0fb53e98(param1,param2,param3);
      }
      
      public function _1acd900dad3c29322932e068(param1:String, param2:String, param3:String, param4:_3e150da9e23ba0916ccbf8e9, param5:_262f244aaecbd05b76c0b35e, param6:String, param7:Function) : void
      {
         var _loc8_:String = param5 ? param5.name : null;
         var _loc9_:String = param4 ? param4.name : null;
         _dfa25706e58a240c1e33e5c6.moderatorFscExtension._1acd900dad3c29322932e068(param1,param2,param3,_loc9_,_loc8_,param6,param7);
      }
   }
}

