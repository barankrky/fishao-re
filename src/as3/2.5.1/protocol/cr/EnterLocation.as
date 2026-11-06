package protocol.cr
{
   import com.ax3.jss.requests.client._ccb739c00378004f39879793;
   
   public class EnterLocation extends _ccb739c00378004f39879793
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

