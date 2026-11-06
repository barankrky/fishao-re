package protocol.cr
{
   import com.ax3.jss.requests.client.ClientRequest;
   
   public class PmConfirmReq extends ClientRequest
   {
      
      public var msgId:int;
      
      public function PmConfirmReq()
      {
         super();
      }
   }
}

