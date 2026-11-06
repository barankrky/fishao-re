package protocol.cr.activation
{
   import com.ax3.jss.requests.client._ccb739c00378004f39879793;
   
   public class SendActivationMailReq extends _ccb739c00378004f39879793
   {
      
      public var email:String;
      
      public function SendActivationMailReq(param1:String)
      {
         super();
         this.email = param1;
      }
   }
}

