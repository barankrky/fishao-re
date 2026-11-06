package protocol.sr
{
   import com.ax3.jss.requests.server._5e1bab759fcaea6d1f84faa7;
   
   public class LoginSuccessResp extends _5e1bab759fcaea6d1f84faa7
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

