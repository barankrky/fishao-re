package protocol.api.trade.start
{
   import protocol.api.trade.base.ResponseTradeBase;
   
   public class ResponseTradeStart extends ResponseTradeBase
   {
      
      private var _isFossilsEnabled:Boolean;
      
      private var _loginOwner:String;
      
      private var _loginTarget:String;
      
      private var _tradeType:String;
      
      public function ResponseTradeStart()
      {
         super();
      }
      
      public function get isFossilsEnabled() : Boolean
      {
         return this._isFossilsEnabled;
      }
      
      public function get loginOwner() : String
      {
         return this._loginOwner;
      }
      
      public function get loginTarget() : String
      {
         return this._loginTarget;
      }
      
      public function get tradeType() : String
      {
         return this._tradeType;
      }
      
      public function set fossils_enabled(param1:Boolean) : void
      {
         this._isFossilsEnabled = param1;
      }
      
      public function set login_owner(param1:String) : void
      {
         this._loginOwner = param1;
      }
      
      public function set login_target(param1:String) : void
      {
         this._loginTarget = param1;
      }
      
      public function set trade_type(param1:String) : void
      {
         this._tradeType = param1;
      }
   }
}

