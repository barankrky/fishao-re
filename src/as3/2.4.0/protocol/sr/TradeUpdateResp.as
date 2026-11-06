package protocol.sr
{
   import com.ax3.jss.requests.server.ServerResp;
   
   public class TradeUpdateResp extends ServerResp
   {
      
      public var tradeId:int;
      
      public var data:Object;
      
      public function TradeUpdateResp()
      {
         super();
      }
   }
}

