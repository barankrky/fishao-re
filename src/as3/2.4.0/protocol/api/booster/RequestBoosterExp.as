package protocol.api.booster
{
   import com.ax3.jss.requests.client.ClientRequest;
   
   public class RequestBoosterExp extends ClientRequest
   {
      
      public var expBoosterType:int;
      
      public function RequestBoosterExp(param1:int)
      {
         super();
         this.expBoosterType = param1;
      }
   }
}

