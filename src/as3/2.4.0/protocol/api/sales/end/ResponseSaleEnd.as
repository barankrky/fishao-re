package protocol.api.sales.end
{
   import com.ax3.jss.requests.server.ServerResp;
   
   public class ResponseSaleEnd extends ServerResp
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

