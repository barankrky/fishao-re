package protocol.sr.moderating
{
   import com.ax3.jss.requests.server.ServerResp;
   
   public class ReportDataResp extends ServerResp
   {
      
      public var reportKey:String;
      
      public var reporterLogin:String;
      
      public var reporterLang:String;
      
      public var reporterMessages:String;
      
      public var abuserLogin:String;
      
      public var abuserLang:String;
      
      public var abuserMessages:String;
      
      public var timeAgoSec:int;
      
      public var subject:String;
      
      public var text:String;
      
      public var isNew:Boolean;
      
      public var serviceData:String;
      
      public function ReportDataResp()
      {
         super();
      }
   }
}

