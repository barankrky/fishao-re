package protocol.cr
{
   import com.ax3.jss.requests.client.ClientRequest;
   
   public class LeaveSublocationReq extends ClientRequest
   {
      
      public var isTournamentLogin:Boolean;
      
      public function LeaveSublocationReq()
      {
         super();
      }
   }
}

