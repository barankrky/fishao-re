package protocol.cr
{
   import com.ax3.jss.requests.client.ClientRequest;
   
   public class ChangeBoatStateReq extends ClientRequest
   {
      
      public var isSteeringBoat:Boolean;
      
      public function ChangeBoatStateReq(param1:Boolean)
      {
         super();
         this.isSteeringBoat = param1;
      }
   }
}

