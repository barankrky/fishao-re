package protocol.api.trade.base
{
   import com.ax3.jss.requests.client._ccb739c00378004f39879793;
   
   public class RequestTradeBase extends _ccb739c00378004f39879793
   {
      
      public var trade_id:int;
      
      public function RequestTradeBase(param1:int)
      {
         super();
         this.trade_id = param1;
      }
   }
}

