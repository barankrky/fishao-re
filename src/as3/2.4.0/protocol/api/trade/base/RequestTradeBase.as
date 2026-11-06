package protocol.api.trade.base
{
   import com.ax3.jss.requests.client.ClientRequest;
   
   public class RequestTradeBase extends ClientRequest
   {
      
      public var trade_id:int;
      
      public function RequestTradeBase(param1:int)
      {
         super();
         this.trade_id = param1;
      }
   }
}

