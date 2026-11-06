package protocol.cr.moderating
{
   import com.ax3.jss.requests.client.ClientRequest;
   
   public class OpenReportReq extends ClientRequest
   {
      
      public var key:String;
      
      public function OpenReportReq(param1:String)
      {
         super();
         this.key = param1;
      }
   }
}

