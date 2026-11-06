package protocol.api.fishes.get_club
{
   import com.ax3.jss.requests.client.ClientRequest;
   
   public class RequestFishesGetClub extends ClientRequest
   {
      
      public var is_salt:Boolean;
      
      public function RequestFishesGetClub()
      {
         super();
      }
   }
}

