package protocol.sr.moderating
{
   import com.ax3.jss.requests.server._5e1bab759fcaea6d1f84faa7;
   
   public class PenaltyDataResp extends _5e1bab759fcaea6d1f84faa7
   {
      
      public var penaltyKey:String;
      
      public var punishable:String;
      
      public var opponent:String;
      
      public var moderator:String;
      
      public var lang:String;
      
      public var banType:String;
      
      public var penaltyDesc:String;
      
      public var subject:String;
      
      public var text:String;
      
      public var abuserMessages:String;
      
      public var reporterMessages:String;
      
      public var banTimeLeftSec:int;
      
      public var punishableIsAbuser:int;
      
      public var reportKey:String;
      
      public function PenaltyDataResp()
      {
         super();
      }
   }
}

