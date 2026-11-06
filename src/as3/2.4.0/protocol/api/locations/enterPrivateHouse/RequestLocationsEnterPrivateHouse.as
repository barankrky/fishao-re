package protocol.api.locations.enterPrivateHouse
{
   import com.ax3.jss.requests.client.ClientRequest;
   
   public class RequestLocationsEnterPrivateHouse extends ClientRequest
   {
      
      public var ownerUsername:String;
      
      public function RequestLocationsEnterPrivateHouse(param1:String)
      {
         super();
         this.ownerUsername = param1;
      }
   }
}

