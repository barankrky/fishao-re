package protocol.api.trade.offerReview
{
   import protocol.api.trade.base.RequestTradeBase;
   
   public class RequestTradeOfferReview extends RequestTradeBase
   {
      
      public var is_agree:Boolean;
      
      public function RequestTradeOfferReview(param1:int)
      {
         super(param1);
      }
   }
}

