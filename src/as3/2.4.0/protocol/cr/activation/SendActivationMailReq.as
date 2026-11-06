package protocol.cr.activation
{
   import com.ax3.jss.requests.client.ClientRequest;
   
   public class SendActivationMailReq extends ClientRequest
   {
      
      public var email:String;
      
      public function SendActivationMailReq(param1:String)
      {
         super();
         this.email = param1;
      }
   }
}

