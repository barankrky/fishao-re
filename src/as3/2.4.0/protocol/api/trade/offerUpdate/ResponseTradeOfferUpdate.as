package protocol.api.trade.offerUpdate
{
   import protocol.api.trade.base.ResponseTradeBase;
   
   public class ResponseTradeOfferUpdate extends ResponseTradeBase
   {
      
      private var _login:String;
      
      private var _items:String;
      
      public function ResponseTradeOfferUpdate()
      {
         super();
      }
      
      public function get login() : String
      {
         return this._login;
      }
      
      public function get items() : String
      {
         return this._items;
      }
      
      public function set login(param1:String) : void
      {
         this._login = param1;
      }
      
      public function set items(param1:String) : void
      {
         this._items = param1;
      }
   }
}

