package protocol.api.breeding.getFishes
{
   import com.ax3.jss.requests.server.ServerResp;
   import com.brokenfunction.json.decodeJson;
   
   public class ResponseBreedingGetFishes extends ServerResp
   {
      
      private var _fishes:Array;
      
      public function ResponseBreedingGetFishes()
      {
         super();
      }
      
      public function get fishes() : Array
      {
         return this._fishes;
      }
      
      public function set fishesJson(param1:String) : void
      {
         this._fishes = decodeJson(param1) as Array;
      }
   }
}

