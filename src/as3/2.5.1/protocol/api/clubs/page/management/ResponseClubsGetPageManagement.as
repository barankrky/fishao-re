package protocol.api.clubs.page.management
{
   import com.ax3.jss.requests.server._5e1bab759fcaea6d1f84faa7;
   import com.brokenfunction.json.decodeJson;
   
   public class ResponseClubsGetPageManagement extends _5e1bab759fcaea6d1f84faa7
   {
      
      private var _requiredLevel:int;
      
      private var _description:String;
      
      private var _waitingForApprove:Array;
      
      public function ResponseClubsGetPageManagement()
      {
         super();
         this._waitingForApprove = [];
      }
      
      public function get description() : String
      {
         return this._description;
      }
      
      public function get waitingForApprove() : Array
      {
         return this._waitingForApprove;
      }
      
      public function get requiredLevel() : int
      {
         return this._requiredLevel;
      }
      
      public function set description(param1:String) : void
      {
         this._description = param1;
      }
      
      public function set waiting_approve_data(param1:String) : void
      {
         this._waitingForApprove = decodeJson(param1);
      }
      
      public function set required_level(param1:int) : void
      {
         this._requiredLevel = param1;
      }
   }
}

