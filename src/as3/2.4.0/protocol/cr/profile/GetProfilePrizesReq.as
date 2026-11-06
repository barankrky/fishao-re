package protocol.cr.profile
{
   import com.ax3.jss.requests.client.ClientRequest;
   
   public class GetProfilePrizesReq extends ClientRequest
   {
      
      public var login:String;
      
      public function GetProfilePrizesReq(param1:String)
      {
         super();
         this.login = param1;
      }
   }
}

