package protocol.api.profile.rankings
{
   import com.ax3.jss.requests.server.ServerResp;
   import com.brokenfunction.json.decodeJson;
   
   public class ResponseProfileRankings extends ServerResp
   {
      
      private var _page_current:int;
      
      private var _pages_total:int;
      
      private var _itemsData:Array;
      
      public function ResponseProfileRankings()
      {
         super();
         this._itemsData = [];
      }
      
      public function get pageCurrent() : int
      {
         return this._page_current;
      }
      
      public function get pagesTotal() : int
      {
         return this._pages_total;
      }
      
      public function get itemsData() : Array
      {
         return this._itemsData;
      }
      
      public function set page_current(param1:int) : void
      {
         this._page_current = param1;
      }
      
      public function set pages_total(param1:int) : void
      {
         this._pages_total = param1;
      }
      
      public function set data(param1:String) : void
      {
         this._itemsData = decodeJson(param1);
      }
   }
}

