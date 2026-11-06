package protocol.api.trade
{
   import com.ax3.jss.ext.BaseFscExtension;
   import protocol.api.trade.accept.RequestTradeAccept;
   import protocol.api.trade.cancel.RequestTradeCancel;
   import protocol.api.trade.offerConfirm.RequestTradeOfferConfirm;
   import protocol.api.trade.offerReview.RequestTradeOfferReview;
   import protocol.api.trade.offerUpdate.RequestTradeOfferUpdate;
   import protocol.api.trade.start.RequestTradeStart;
   
   public class FscExtensionTrade extends BaseFscExtension
   {
      
      public function FscExtensionTrade()
      {
         super();
      }
      
      public function startTrade(param1:String, param2:String, param3:Function = null) : void
      {
         var _loc4_:RequestTradeStart = new RequestTradeStart(-1);
         _loc4_.target_name = param1;
         _loc4_.trade_type = param2;
         _connection.send(_loc4_,param3);
      }
      
      public function acceptTrade(param1:int, param2:Function = null) : void
      {
         _connection.send(new RequestTradeAccept(param1),param2);
      }
      
      public function cancelTrade(param1:int, param2:Function = null) : void
      {
         _connection.send(new RequestTradeCancel(param1),param2);
      }
      
      public function updateOffer(param1:int, param2:Array, param3:Function = null) : void
      {
         var _loc4_:RequestTradeOfferUpdate = new RequestTradeOfferUpdate(param1);
         _loc4_.items = JSON.stringify(param2);
         _connection.send(_loc4_,param3);
      }
      
      public function reviewOffer(param1:int, param2:Function = null) : void
      {
         var _loc3_:RequestTradeOfferReview = new RequestTradeOfferReview(param1);
         _loc3_.is_agree = true;
         _connection.send(_loc3_,param2);
      }
      
      public function resetOffer(param1:int, param2:Function = null) : void
      {
         var _loc3_:RequestTradeOfferReview = new RequestTradeOfferReview(param1);
         _loc3_.is_agree = false;
         _connection.send(_loc3_,param2);
      }
      
      public function confirmOffer(param1:int, param2:Function = null) : void
      {
         _connection.send(new RequestTradeOfferConfirm(param1),param2);
      }
   }
}

