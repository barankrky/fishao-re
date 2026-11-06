package protocol.sr.activation
{
   import com.ax3.jss.requests.server.ServerResp;
   
   public class GetUserActivationInfoResp extends ServerResp
   {
      
      public var reEnterMail:Boolean;
      
      public var mailSent:Boolean;
      
      public var mailActivated:int;
      
      public var email:String;
      
      public function GetUserActivationInfoResp()
      {
         super();
      }
   }
}

