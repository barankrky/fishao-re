package protocol.api.trade.cancel
{
   import protocol.api.trade.base.ResponseTradeBase;
   
   public class ResponseTradeCancel extends ResponseTradeBase
   {
      
      private var _description:String;
      
      private var _initiatorLogin:String;
      
      public function ResponseTradeCancel()
      {
         super();
      }
      
      public function get description() : String
      {
         return this._description;
      }
      
      public function get initiatorLogin() : String
      {
         return this._initiatorLogin;
      }
      
      public function set description(param1:String) : void
      {
         this._description = param1;
      }
      
      public function set initiator_login(param1:String) : void
      {
         this._initiatorLogin = param1;
      }
   }
}

