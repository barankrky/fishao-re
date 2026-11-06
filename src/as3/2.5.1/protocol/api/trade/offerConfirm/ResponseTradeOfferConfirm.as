package protocol.api.trade.offerConfirm
{
   import protocol.api.trade.base.ResponseTradeBase;
   
   public class ResponseTradeOfferConfirm extends ResponseTradeBase
   {
      
      private var _login:String;
      
      public function ResponseTradeOfferConfirm()
      {
         super();
      }
      
      public function get login() : String
      {
         return this._login;
      }
      
      public function set login(param1:String) : void
      {
         this._login = param1;
      }
   }
}

