package protocol.cr.profile
{
   import com.ax3.jss.requests.client.ClientRequest;
   
   public class GetProfileFriendsReq extends ClientRequest
   {
      
      public var login:String;
      
      public function GetProfileFriendsReq(param1:String)
      {
         super();
         this.login = param1;
      }
   }
}

