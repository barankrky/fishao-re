package protocol.api.interior.get_info
{
   import com.ax3.jss.requests.server.ServerResp;
   import com.brokenfunction.json.decodeJson;
   
   public class ResponseInteriorGetInfo extends ServerResp
   {
      
      private var _interiorItems:Array;
      
      private var _isDecorationShop:Boolean;
      
      public function ResponseInteriorGetInfo()
      {
         super();
      }
      
      public function get interiorItems() : Array
      {
         return this._interiorItems;
      }
      
      public function get isDecorationShop() : Boolean
      {
         return this._isDecorationShop;
      }
      
      public function set interior_json(param1:String) : void
      {
         this._interiorItems = decodeJson(param1) as Array;
      }
      
      public function set is_decoration_shop(param1:Boolean) : void
      {
         this._isDecorationShop = param1;
      }
   }
}

