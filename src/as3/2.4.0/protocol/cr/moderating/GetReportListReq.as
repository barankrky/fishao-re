package protocol.cr.moderating
{
   import com.ax3.jss.requests.client.ClientRequest;
   
   public class GetReportListReq extends ClientRequest
   {
      
      public var onlyNew:Boolean;
      
      public var page:int;
      
      public var lang:String;
      
      public function GetReportListReq()
      {
         super();
      }
   }
}

