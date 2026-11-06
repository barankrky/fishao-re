package protocol.api.clubs.init
{
   import com.brokenfunction.json.decodeJson;
   import protocol.api.clubs.base.ResponseWithClubInfo;
   
   public class ResponseClubsInit extends ResponseWithClubInfo
   {
      
      private var _levelsData:Array;
      
      private var _createCost:int;
      
      public function ResponseClubsInit()
      {
         super();
         this._levelsData = [];
      }
      
      public function get levelsData() : Array
      {
         return this._levelsData;
      }
      
      public function get createCost() : int
      {
         return this._createCost;
      }
      
      public function set levels_data(param1:String) : void
      {
         this._levelsData = decodeJson(param1);
      }
      
      public function set create_cost(param1:int) : void
      {
         this._createCost = param1;
      }
   }
}

