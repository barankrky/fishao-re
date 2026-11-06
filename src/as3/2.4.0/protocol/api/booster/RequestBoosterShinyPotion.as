package protocol.api.booster
{
   import com.ax3.jss.requests.client.ClientRequest;
   
   public class RequestBoosterShinyPotion extends ClientRequest
   {
      
      public var boosterId:int;
      
      public function RequestBoosterShinyPotion(param1:int)
      {
         super();
         this.boosterId = param1;
      }
   }
}

