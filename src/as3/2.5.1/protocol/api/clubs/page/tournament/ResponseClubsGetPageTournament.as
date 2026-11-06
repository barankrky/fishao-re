package protocol.api.clubs.page.tournament
{
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.utils._e15fc7e3fffb271814f4ccd9;
   import com.ax3.jss.requests.server._5e1bab759fcaea6d1f84faa7;
   import com.brokenfunction.json.decodeJson;
   
   public class ResponseClubsGetPageTournament extends _5e1bab759fcaea6d1f84faa7
   {
      
      private var _type:String;
      
      private var _state:String;
      
      private var _timeLeftChangeState:int;
      
      private var _clubsInGroup:int;
      
      private var _clubsData:Object;
      
      private var _tournamentData:Object;
      
      private var _tournamentsPlayed:int;
      
      private var _data:Array;
      
      public function ResponseClubsGetPageTournament()
      {
         super();
         this._clubsData = {};
         this._tournamentData = {};
         this._data = [];
      }
      
      public function get data() : Array
      {
         return this._data;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get state() : String
      {
         return this._state;
      }
      
      public function get timeLeftChangeState() : int
      {
         return this._timeLeftChangeState;
      }
      
      public function get clubsInGroup() : int
      {
         return this._clubsInGroup;
      }
      
      public function get tournaments_played() : int
      {
         return this._tournamentsPlayed;
      }
      
      public function set state(param1:String) : void
      {
         this._state = param1;
      }
      
      public function set time_left_change_state(param1:int) : void
      {
         this._timeLeftChangeState = param1;
      }
      
      public function set clubs_data(param1:String) : void
      {
         var _loc2_:Object = null;
         var _loc3_:String = null;
         if(param1 == null)
         {
            return;
         }
         var _loc4_:Array = decodeJson(param1);
         for each(_loc2_ in _loc4_)
         {
            _loc3_ = Debug.assertProperty(_loc2_,"id").toString();
            this._clubsData[_loc3_] = _loc2_;
         }
      }
      
      public function set tournament_data(param1:String) : void
      {
         var _loc2_:Object = null;
         var _loc3_:String = null;
         if(param1 == null)
         {
            return;
         }
         var _loc4_:Array = decodeJson(param1);
         for each(_loc2_ in _loc4_)
         {
            _loc3_ = Debug.assertProperty(_loc2_,"club_id").toString();
            this._tournamentData[_loc3_] = _loc2_;
         }
      }
      
      public function set tournaments_played(param1:int) : void
      {
         this._tournamentsPlayed = param1;
      }
      
      public function set clubs_in_group(param1:int) : void
      {
         this._clubsInGroup = param1;
      }
      
      public function set type(param1:String) : void
      {
         this._type = param1;
      }
      
      public function mergeData() : void
      {
         var _loc1_:String = null;
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         var _loc4_:Object = null;
         for(_loc1_ in this._tournamentData)
         {
            _loc2_ = this._tournamentData[_loc1_];
            _loc3_ = this._clubsData[_loc1_];
            _loc4_ = _e15fc7e3fffb271814f4ccd9._eb63536b35178219258e57fd(_loc2_,_loc3_);
            this._data.push(_loc4_);
         }
         this._data.sortOn("position",Array.NUMERIC);
      }
   }
}

