package protocol.sr
{
   import com.ax3.jss.requests.server.ServerResp;
   
   public class LoginSuccessResp extends ServerResp
   {
      
      public var sid:String;
      
      public var login:String;
      
      public var lang:String;
      
      public var isGuest:Boolean;
      
      public var unreadPrivateMessages:int;
      
      public var emailActivation:int;
      
      public function LoginSuccessResp()
      {
         super();
      }
   }
}

