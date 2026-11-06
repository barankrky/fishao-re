package protocol.cr.moderating
{
   import com.ax3.jss.requests.client.ClientRequest;
   
   public class OpenPenaltyReq extends ClientRequest
   {
      
      public var key:String;
      
      public function OpenPenaltyReq(param1:String)
      {
         super();
         this.key = param1;
      }
   }
}

