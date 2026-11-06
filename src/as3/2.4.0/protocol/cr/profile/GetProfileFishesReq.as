package protocol.cr.profile
{
   import com.ax3.jss.requests.client.ClientRequest;
   
   public class GetProfileFishesReq extends ClientRequest
   {
      
      public var login:String;
      
      public function GetProfileFishesReq(param1:String)
      {
         super();
         this.login = param1;
      }
   }
}

