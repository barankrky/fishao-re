package protocol.sr.profile
{
   import com.ax3.jss.requests.server.ServerResp;
   
   public class ProfileFishesResp extends ServerResp
   {
      
      public var caughtFishIdes:String;
      
      public var amountOfAllFishTypes:int;
      
      public function ProfileFishesResp()
      {
         super();
      }
   }
}

