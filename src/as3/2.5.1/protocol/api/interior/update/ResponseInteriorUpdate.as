package protocol.api.interior.update
{
   import com.ax3.jss.requests.server._5e1bab759fcaea6d1f84faa7;
   import com.brokenfunction.json.decodeJson;
   
   public class ResponseInteriorUpdate extends _5e1bab759fcaea6d1f84faa7
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

