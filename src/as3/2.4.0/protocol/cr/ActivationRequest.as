package protocol.cr
{
   import com.ax3.jss.requests.client.ClientRequest;
   
   public class ActivationRequest extends ClientRequest
   {
      
      public var login:String;
      
      public var key:String;
      
      public function ActivationRequest(param1:String, param2:String)
      {
         super();
         this.login = param1;
         this.key = param2;
      }
   }
}

