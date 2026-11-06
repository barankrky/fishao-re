package protocol.api.sales.init
{
   import com.ax3.jss.requests.server._5e1bab759fcaea6d1f84faa7;
   
   public class ResponseSalesInit extends _5e1bab759fcaea6d1f84faa7
   {
      
      private var _data:String;
      
      public function ResponseSalesInit()
      {
         super();
      }
      
      public function get data() : String
      {
         return this._data;
      }
      
      public function set data(param1:String) : void
      {
         this._data = param1;
      }
   }
}

