package protocol.sr.activation
{
   import com.ax3.jss.requests.server.ServerResp;
   
   public class SendActivationMailResp extends ServerResp
   {
      
      public var reEnterMail:Boolean;
      
      public var mailSent:Boolean;
      
      public var mailActivated:int;
      
      public function SendActivationMailResp()
      {
         super();
      }
   }
}

