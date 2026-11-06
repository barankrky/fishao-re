package protocol.api.interior.update
{
   import com.ax3.jss.requests.server.ServerResp;
   import com.brokenfunction.json.decodeJson;
   
   public class ResponseInteriorUpdate extends ServerResp
   {
      
      private var _interiorItems:Array;
      
      public function ResponseInteriorUpdate()
      {
         super();
      }
      
      public function get interiorItems() : Array
      {
         return this._interiorItems;
      }
      
      public function set interior_json(param1:String) : void
      {
         this._interiorItems = decodeJson(param1) as Array;
      }
   }
}

