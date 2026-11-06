package protocol.cr.profile
{
   import com.ax3.jss.requests.client.ClientRequest;
   
   public class GetProfileUserInfoReq extends ClientRequest
   {
      
      public var login:String;
      
      public var tabId:String;
      
      public function GetProfileUserInfoReq(param1:String, param2:String)
      {
         super();
         this.login = param1;
         this.tabId = param2;
      }
   }
}

