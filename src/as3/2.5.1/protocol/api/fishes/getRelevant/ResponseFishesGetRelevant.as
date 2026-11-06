package protocol.api.fishes.getRelevant
{
   import com.ax3.fishao.debug.Debug;
   import com.ax3.jss.requests.server._5e1bab759fcaea6d1f84faa7;
   import com.brokenfunction.json.decodeJson;
   
   public class ResponseFishesGetRelevant extends _5e1bab759fcaea6d1f84faa7
   {
      
      private var _fishesCaught:Array;
      
      private var _fishesUnavailable:Array;
      
      public function ResponseFishesGetRelevant()
      {
         super();
         this._fishesCaught = [];
         this._fishesUnavailable = [];
      }
      
      public function get fishesCaught() : Array
      {
         return this._fishesCaught;
      }
      
      public function get fishesUnavailable() : Array
      {
         return this._fishesUnavailable;
      }
      
      public function set data(param1:String) : void
      {
         var _loc2_:Object = decodeJson(param1);
         this._fishesCaught = Debug.assertProperty(_loc2_,"fishesCaught",Array);
         this._fishesUnavailable = Debug.assertProperty(_loc2_,"fishesUnavailable",Array);
      }
   }
}

