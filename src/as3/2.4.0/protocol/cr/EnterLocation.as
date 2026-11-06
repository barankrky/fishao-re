package protocol.cr
{
   import com.ax3.jss.requests.client.ClientRequest;
   
   public class EnterLocation extends ClientRequest
   {
      
      public var locationId:int;
      
      public var lastLocationId:int;
      
      public var lastVirtualLocationId:int;
      
      public function EnterLocation(param1:int, param2:int)
      {
         super();
         this.locationId = param1;
         this.lastLocationId = param2;
      }
   }
}

