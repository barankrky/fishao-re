package protocol.api.clubs.goal_history
{
   import com.ax3.jss.requests.server.ServerResp;
   import com.brokenfunction.json.decodeJson;
   
   public class ResponseClubsGoalHistory extends ServerResp
   {
      
      private var _goalsData:Array;
      
      public function ResponseClubsGoalHistory()
      {
         super();
      }
      
      public function get goalsData() : Array
      {
         return this._goalsData;
      }
      
      public function set completed_goals_data(param1:String) : void
      {
         this._goalsData = decodeJson(param1);
      }
   }
}

