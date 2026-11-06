package protocol.api.sales.end
{
   import com.ax3.jss.requests.server._5e1bab759fcaea6d1f84faa7;
   
   public class ResponseSaleEnd extends _5e1bab759fcaea6d1f84faa7
   {
      
      private var _saleId:int;
      
      public function ResponseSaleEnd()
      {
         super();
      }
      
      public function get saleId() : int
      {
         return this._saleId;
      }
      
      public function set sale_id(param1:int) : void
      {
         this._saleId = param1;
      }
   }
}

