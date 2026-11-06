package protocol.cr.profile
{
   import com.ax3.jss.requests.client.ClientRequest;
   
   public class GetProfileInventoryReq extends ClientRequest
   {
      
      public var login:String;
      
      public function GetProfileInventoryReq(param1:String)
      {
         super();
         this.login = param1;
      }
   }
}

