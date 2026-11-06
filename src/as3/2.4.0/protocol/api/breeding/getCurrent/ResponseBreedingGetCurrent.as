package protocol.api.breeding.getCurrent
{
   import com.ax3.jss.requests.server.ServerResp;
   import com.brokenfunction.json.decodeJson;
   
   public class ResponseBreedingGetCurrent extends ServerResp
   {
      
      private var _fish:Object;
      
      public function ResponseBreedingGetCurrent()
      {
         super();
      }
      
      public function get fish() : Object
      {
         return this._fish;
      }
      
      public function set fishJson(param1:String) : void
      {
         this._fish = decodeJson(param1);
      }
   }
}

