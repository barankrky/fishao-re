package protocol.api.sales.start
{
   import com.ax3.jss.requests.server._5e1bab759fcaea6d1f84faa7;
   
   public class ResponseSaleStart extends _5e1bab759fcaea6d1f84faa7
   {
      
      private var _sale:String;
      
      public function ResponseSaleStart()
      {
         super();
      }
      
      public function get sale() : String
      {
         return this._sale;
      }
      
      public function set sale(param1:String) : void
      {
         this._sale = param1;
      }
   }
}

