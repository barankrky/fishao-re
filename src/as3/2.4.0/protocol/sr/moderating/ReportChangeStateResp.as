package protocol.sr.moderating
{
   import com.ax3.jss.requests.server.ServerResp;
   
   public class ReportChangeStateResp extends ServerResp
   {
      
      public var reportKey:String;
      
      public var isConsidering:Boolean;
      
      public var amountOfNewReports:int;
      
      public function ReportChangeStateResp()
      {
         super();
      }
   }
}

