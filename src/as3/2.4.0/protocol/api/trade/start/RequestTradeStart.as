package protocol.api.trade.start
{
   import protocol.api.trade.base.RequestTradeBase;
   
   public class RequestTradeStart extends RequestTradeBase
   {
      
      public var target_name:String;
      
      public var trade_type:String;
      
      public function RequestTradeStart(param1:int)
      {
         super(param1);
      }
   }
}

