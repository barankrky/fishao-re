package protocol.api.tournaments.end
{
   import com.ax3.jss.requests.server._5e1bab759fcaea6d1f84faa7;
   import com.brokenfunction.json.decodeJson;
   
   public class ResponseTournamentEnd extends _5e1bab759fcaea6d1f84faa7
   {
      
      public var isNotEnoughMembers:Boolean;
      
      private var _results:Object;
      
      public function ResponseTournamentEnd()
      {
         super();
      }
      
      public function get results() : Object
      {
         return this._results;
      }
      
      public function set results_info(param1:String) : void
      {
         this._results = decodeJson(param1);
      }
   }
}

