package protocol.api.trade.offerUpdate
{
   import protocol.api.trade.base.RequestTradeBase;
   
   public class RequestTradeOfferUpdate extends RequestTradeBase
   {
      
      public var items:String;
      
      public function RequestTradeOfferUpdate(param1:int)
      {
         super(param1);
      }
   }
}

