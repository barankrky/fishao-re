package protocol.api.booster
{
   import com.ax3.jss.requests.client.ClientRequest;
   
   public class RequestBoosterFishRadar extends ClientRequest
   {
      
      public var fishRadarType:int;
      
      public function RequestBoosterFishRadar(param1:int)
      {
         super();
         this.fishRadarType = param1;
      }
   }
}

