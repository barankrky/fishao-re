package protocol.api.tournaments.members
{
   import com.ax3.jss.requests.server._5e1bab759fcaea6d1f84faa7;
   import com.brokenfunction.json.decodeJson;
   
   public class ResponseTournamentMembers extends _5e1bab759fcaea6d1f84faa7
   {
      
      private var _membersInfo:Object;
      
      public function ResponseTournamentMembers()
      {
         super();
      }
      
      public function get membersInfo() : Object
      {
         return this._membersInfo;
      }
      
      public function set members_info(param1:String) : void
      {
         this._membersInfo = decodeJson(param1);
      }
   }
}

