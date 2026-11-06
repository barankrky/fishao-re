package protocol.sr
{
   public class LoginErrorResp extends ErrorResp
   {
      
      public static const LOGIN_NOT_FOUND:String = "4100";
      
      public static const ACCOUNT_ALREADY_IMPORTED:String = "9000";
      
      public static const EMAIL_IS_NOT_ACTIVATED:String = "4102";
      
      public function LoginErrorResp()
      {
         super();
      }
   }
}

