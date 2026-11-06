package protocol.api.clubs.page.recommended
{
   import com.ax3.jss.requests.server._5e1bab759fcaea6d1f84faa7;
   import com.brokenfunction.json.decodeJson;
   
   public class ResponseClubsGetPageRecommended extends _5e1bab759fcaea6d1f84faa7
   {
      
      private var _clubsData:Array;
      
      public function ResponseClubsGetPageRecommended()
      {
         super();
      }
      
      public function get clubsData() : Array
      {
         return this._clubsData;
      }
      
      public function set clubs_data(param1:String) : void
      {
         this._clubsData = decodeJson(param1);
      }
   }
}

