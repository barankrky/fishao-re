package protocol.api.trade.base
{
   import com.ax3.jss.requests.server._5e1bab759fcaea6d1f84faa7;
   
   public class ResponseTradeBase extends _5e1bab759fcaea6d1f84faa7
   {
      
      private var _tradeId:int;
      
      public function ResponseTradeBase()
      {
         super();
      }
      
      public function get tradeId() : int
      {
         return this._tradeId;
      }
      
      public function set trade_id(param1:int) : void
      {
         this._tradeId = param1;
      }
   }
}

