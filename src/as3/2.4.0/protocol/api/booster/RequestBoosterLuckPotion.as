package protocol.api.booster
{
   import com.ax3.jss.requests.client.ClientRequest;
   
   public class RequestBoosterLuckPotion extends ClientRequest
   {
      
      public var luckPotionType:int;
      
      public function RequestBoosterLuckPotion(param1:int)
      {
         super();
         this.luckPotionType = param1;
      }
   }
}

