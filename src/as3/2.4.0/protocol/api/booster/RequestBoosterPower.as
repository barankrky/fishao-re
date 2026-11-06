package protocol.api.booster
{
   import com.ax3.jss.requests.client.ClientRequest;
   
   public class RequestBoosterPower extends ClientRequest
   {
      
      public var powerBoosterType:int;
      
      public function RequestBoosterPower(param1:int)
      {
         super();
         this.powerBoosterType = param1;
      }
   }
}

