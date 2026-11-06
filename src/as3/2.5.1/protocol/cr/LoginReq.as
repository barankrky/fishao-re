package protocol.cr
{
   import com.ax3.jss.requests.client._ccb739c00378004f39879793;
   
   public class LoginReq extends _ccb739c00378004f39879793
   {
      
      public var login:String;
      
      public var pass:String;
      
      public var lang:String;
      
      public function LoginReq(param1:String, param2:String, param3:String = null)
      {
         super();
         this.login = param1;
         this.pass = param2;
         this.lang = param3;
      }
   }
}

