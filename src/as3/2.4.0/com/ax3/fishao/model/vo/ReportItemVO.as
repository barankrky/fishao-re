package com.ax3.fishao.model.vo
{
   import com.ax3.fishao.model.types.BanType;
   import com.ax3.fishao.model.types.ReportStatusType;
   import com.ax3.fishao.utils.I18n;
   
   public class ReportItemVO
   {
      
      public static const UNKNOWN_PUNISHABLE:int = 0;
      
      public static const ABUSER_PUNISHABLE:int = 1;
      
      public static const REPORTER_PUNISHABLE:int = 2;
      
      public var key:String;
      
      public var reportKey:String;
      
      public var date:String;
      
      public var dateShort:String;
      
      public var reporterUsername:String;
      
      public var opponentUsername:String;
      
      public var abuserUsername:String;
      
      public var status:ReportStatusType;
      
      public var banType:BanType;
      
      public var lang:String;
      
      public var timeAgoSec:int;
      
      public var description:String;
      
      public var subject:String;
      
      public var abuserLang:String;
      
      public var abuserMessages:String;
      
      public var reporterLang:String;
      
      public var reporterMessages:String;
      
      public var penaltyDesc:String;
      
      public var punishableSide:int = 0;
      
      public function ReportItemVO()
      {
         super();
      }
      
      public function readFromResponse(param1:Object) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = false;
         var _loc4_:String = null;
         if(param1.hasOwnProperty("key"))
         {
            this.key = param1.key;
         }
         if(param1.hasOwnProperty("penaltyKey"))
         {
            this.key = param1.penaltyKey;
         }
         if(param1.hasOwnProperty("reportKey"))
         {
            this.reportKey = param1.reportKey;
         }
         if(param1.hasOwnProperty("abuserLang"))
         {
            this.lang = param1.abuserLang;
         }
         if(param1.hasOwnProperty("lang"))
         {
            this.lang = param1.lang;
         }
         if(param1.hasOwnProperty("reporter"))
         {
            this.reporterUsername = param1.reporter;
         }
         if(param1.hasOwnProperty("reporterLogin"))
         {
            this.reporterUsername = param1.reporterLogin;
         }
         if(param1.hasOwnProperty("moderator"))
         {
            this.reporterUsername = param1.moderator;
         }
         if(param1.hasOwnProperty("opponent"))
         {
            this.opponentUsername = param1.opponent;
         }
         if(param1.hasOwnProperty("abuser"))
         {
            this.abuserUsername = param1.abuser;
         }
         if(param1.hasOwnProperty("punishableIsAbuser"))
         {
            this.punishableSide = param1.punishableIsAbuser;
         }
         if(param1.hasOwnProperty("abuserLogin"))
         {
            this.abuserUsername = param1.abuserLogin;
         }
         if(param1.hasOwnProperty("punishable"))
         {
            this.abuserUsername = param1.punishable;
         }
         if(param1.hasOwnProperty("text"))
         {
            this.description = param1.text;
         }
         if(param1.hasOwnProperty("reportDesc"))
         {
            this.description = param1.reportDesc;
         }
         if(param1.hasOwnProperty("subject"))
         {
            this.subject = param1.subject;
         }
         if(param1.hasOwnProperty("timeAgoSec"))
         {
            this.timeAgoSec = param1.timeAgoSec;
         }
         this.date = I18n.formatFullTimestamp(this.timeAgoSec,true);
         this.dateShort = I18n.formatShortTimestamp(this.timeAgoSec);
         if(param1.hasOwnProperty("isConsidering"))
         {
            _loc2_ = Boolean(param1.isConsidering);
            if(_loc2_)
            {
               this.status = ReportStatusType.PROCESSING;
            }
            else
            {
               this.status = ReportStatusType.OPEN;
            }
         }
         if(param1.hasOwnProperty("isNew"))
         {
            _loc3_ = Boolean(param1.isNew);
            if(_loc3_)
            {
               this.status = ReportStatusType.OPEN;
            }
         }
         if(param1.hasOwnProperty("banType"))
         {
            _loc4_ = param1.banType;
            this.status = ReportStatusType.CLOSED;
            this.banType = BanType.findByName(_loc4_);
         }
         if(param1.hasOwnProperty("abuserLang"))
         {
            this.abuserLang = param1.abuserLang;
         }
         if(param1.hasOwnProperty("reporterLang"))
         {
            this.reporterLang = param1.reporterLang;
         }
         if(param1.hasOwnProperty("abuserMessages"))
         {
            this.abuserMessages = param1.abuserMessages;
         }
         if(param1.hasOwnProperty("reporterMessages"))
         {
            this.reporterMessages = param1.reporterMessages;
         }
         if(param1.hasOwnProperty("penaltyDesc"))
         {
            this.penaltyDesc = param1.penaltyDesc;
         }
         if(param1.hasOwnProperty("banTimeLeftSec"))
         {
            this.timeAgoSec = param1.banTimeLeftSec;
         }
      }
      
      public function generateChatMessageText() : String
      {
         var _loc1_:Array = null;
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         var _loc4_:Object = null;
         var _loc5_:String = "";
         var _loc6_:Array = [];
         var _loc7_:String = null;
         var _loc8_:String = null;
         if(this.punishableSide == ReportItemVO.REPORTER_PUNISHABLE)
         {
            _loc7_ = this.opponentUsername;
            _loc8_ = this.abuserUsername;
         }
         else
         {
            _loc7_ = this.abuserUsername;
            if(this.status == ReportStatusType.CLOSED)
            {
               _loc8_ = this.opponentUsername;
            }
            else
            {
               _loc8_ = this.reporterUsername;
            }
         }
         if(this.abuserMessages != null)
         {
            _loc6_ = JSON.parse(this.abuserMessages) as Array;
            for each(_loc3_ in _loc6_)
            {
               _loc3_.username = _loc7_;
               _loc3_.isAbuser = true;
            }
         }
         var _loc9_:Array = [];
         if(this.reporterMessages != null)
         {
            _loc9_ = JSON.parse(this.reporterMessages) as Array;
            for each(_loc4_ in _loc9_)
            {
               _loc4_.username = _loc8_;
               _loc4_.isAbuser = false;
            }
         }
         _loc1_ = _loc6_.concat(_loc9_);
         _loc1_.sortOn("timeAgoSec",Array.NUMERIC);
         for each(_loc2_ in _loc1_)
         {
            if(_loc5_.length > 0)
            {
               _loc5_ += "<br>";
            }
            _loc5_ += "<font color=\'#000000\'>[" + I18n.getTileLeftString(_loc2_.timeAgoSec) + "]</font> <font color=\'#2085b9\'>" + _loc2_.username + ":</font><br>";
            _loc5_ += "<font color=\'#775332\'>" + _loc2_.text + "</font>";
         }
         return _loc5_;
      }
   }
}

