package protocol.api.monster_fishes.init
{
   import com.ax3.fishao.debug.Debug;
   import com.ax3.jss.requests.server.ServerResp;
   import com.brokenfunction.json.decodeJson;
   
   public class ResponseMonsterFishesInit extends ServerResp
   {
      
      private var _fishesInfo:Array;
      
      private var _fishesProgress:Array;
      
      public function ResponseMonsterFishesInit()
      {
         super();
      }
      
      public function set data(param1:String) : void
      {
         var _loc2_:Object = decodeJson(param1);
         var _loc3_:Object = Debug.assertProperty(_loc2_,"info");
         this._fishesInfo = decodeJson(_loc3_) as Array;
         var _loc4_:Object = Debug.assertProperty(_loc2_,"progress");
         this._fishesProgress = decodeJson(_loc4_) as Array;
      }
      
      public function get fishesInfo() : Array
      {
         return this._fishesInfo;
      }
      
      public function get fishesProgress() : Array
      {
         return this._fishesProgress;
      }
   }
}

