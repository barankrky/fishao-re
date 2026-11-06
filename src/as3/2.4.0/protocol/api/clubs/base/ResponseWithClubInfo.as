package protocol.api.clubs.base
{
   import com.ax3.jss.requests.server.ServerResp;
   import com.brokenfunction.json.decodeJson;
   
   public class ResponseWithClubInfo extends ServerResp
   {
      
      private var _clubInfo:Object;
      
      public function ResponseWithClubInfo()
      {
         super();
      }
      
      public function get clubInfo() : Object
      {
         return this._clubInfo;
      }
      
      public function set club_info(param1:String) : void
      {
         if(param1 == null)
         {
            return;
         }
         this._clubInfo = decodeJson(param1);
         this.tryInitMembers();
      }
      
      private function tryInitMembers() : void
      {
         if(this._clubInfo == null || this._clubInfo["members"] == null)
         {
            return;
         }
         var _loc1_:String = this._clubInfo["members"];
         var _loc2_:Array = decodeJson(_loc1_);
         _loc2_.sortOn("level",Array.DESCENDING | Array.NUMERIC);
         this._clubInfo["members"] = _loc2_;
      }
   }
}

