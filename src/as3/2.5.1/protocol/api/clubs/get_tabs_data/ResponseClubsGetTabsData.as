package protocol.api.clubs.get_tabs_data
{
   import com.ax3.jss.requests.server._5e1bab759fcaea6d1f84faa7;
   import com.brokenfunction.json.decodeJson;
   
   public class ResponseClubsGetTabsData extends _5e1bab759fcaea6d1f84faa7
   {
      
      private var _tabsData:Object;
      
      public function ResponseClubsGetTabsData()
      {
         super();
         this._tabsData = {};
      }
      
      public function get tabsData() : Object
      {
         return this._tabsData;
      }
      
      public function set tabs_data(param1:String) : void
      {
         this._tabsData = decodeJson(param1);
      }
   }
}

