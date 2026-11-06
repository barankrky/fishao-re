package protocol.cr
{
   import com.ax3.jss.requests.client.ClientRequest;
   
   public class BuyEnergyReq extends ClientRequest
   {
      
      public var energyAmount:int;
      
      public function BuyEnergyReq(param1:int)
      {
         super();
         this.energyAmount = param1;
      }
   }
}

