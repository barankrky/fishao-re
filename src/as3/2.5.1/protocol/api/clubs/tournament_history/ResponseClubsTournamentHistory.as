package protocol.api.clubs.tournament_history
{
   import com.ax3.jss.requests.server._5e1bab759fcaea6d1f84faa7;
   import com.brokenfunction.json.decodeJson;
   
   public class ResponseClubsTournamentHistory extends _5e1bab759fcaea6d1f84faa7
   {
      
      private var _historyData:Array;
      
      public function ResponseClubsTournamentHistory()
      {
         super();
         this._historyData = [];
      }
      
      public function get historyData() : Array
      {
         return this._historyData;
      }
      
      public function set data(param1:String) : void
      {
         this._historyData = decodeJson(param1);
      }
   }
}

