package protocol.api.tournaments.getRelevant
{
   import com.ax3.jss.requests.server._5e1bab759fcaea6d1f84faa7;
   import com.brokenfunction.json.decodeJson;
   
   public class ResponseTournamentGetRelevant extends _5e1bab759fcaea6d1f84faa7
   {
      
      private var _tournamentInfo:Object;
      
      public function ResponseTournamentGetRelevant()
      {
         super();
      }
      
      public function get tournamentInfo() : Object
      {
         return this._tournamentInfo;
      }
      
      public function set tournament_info(param1:String) : void
      {
         this._tournamentInfo = decodeJson(param1);
      }
   }
}

