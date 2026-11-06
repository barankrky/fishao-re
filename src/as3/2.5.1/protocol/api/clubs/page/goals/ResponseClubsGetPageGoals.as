package protocol.api.clubs.page.goals
{
   import com.ax3.jss.requests.server._5e1bab759fcaea6d1f84faa7;
   import com.brokenfunction.json.decodeJson;
   
   public class ResponseClubsGetPageGoals extends _5e1bab759fcaea6d1f84faa7
   {
      
      private var _completedGoalsCount:int;
      
      private var _uncompletedGoals:Array;
      
      public function ResponseClubsGetPageGoals()
      {
         super();
      }
      
      public function get completedGoalsCount() : int
      {
         return this._completedGoalsCount;
      }
      
      public function get uncompletedGoals() : Array
      {
         return this._uncompletedGoals;
      }
      
      public function set uncompleted_goals(param1:String) : void
      {
         this._uncompletedGoals = decodeJson(param1);
      }
      
      public function set completed_goals_count(param1:int) : void
      {
         this._completedGoalsCount = param1;
      }
   }
}

