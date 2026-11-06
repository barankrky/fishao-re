package protocol.api.worlds.init
{
   import com.ax3.jss.requests.server.ServerResp;
   import com.brokenfunction.json.decodeJson;
   
   public class ResponseWorldsInit extends ServerResp
   {
      
      private var _worldsList:Array;
      
      public function ResponseWorldsInit()
      {
         super();
         this._worldsList = [];
      }
      
      public function get worldsList() : Array
      {
         return this._worldsList;
      }
      
      public function set list(param1:Object) : void
      {
         var _loc2_:String = null;
         var _loc3_:String = null;
         var _loc4_:Object = null;
         this._worldsList = [];
         for(_loc2_ in param1)
         {
            _loc3_ = param1[_loc2_];
            _loc4_ = decodeJson(_loc3_);
            this._worldsList.push(_loc4_);
         }
      }
   }
}

