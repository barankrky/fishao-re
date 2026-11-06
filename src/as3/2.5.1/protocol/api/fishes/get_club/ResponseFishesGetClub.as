package protocol.api.fishes.get_club
{
   import com.ax3.jss.requests.server._5e1bab759fcaea6d1f84faa7;
   import com.brokenfunction.json.decodeJson;
   
   public class ResponseFishesGetClub extends _5e1bab759fcaea6d1f84faa7
   {
      
      private var _fishIDs:Array;
      
      private var _fishIDsUnlocked:Array;
      
      private var _points:int;
      
      public function ResponseFishesGetClub()
      {
         super();
         this._fishIDsUnlocked = [];
         this._fishIDs = [];
      }
      
      public function get points() : int
      {
         return this._points;
      }
      
      public function get fishIDs() : Array
      {
         return this._fishIDs;
      }
      
      public function get fishIDsUnlocked() : Array
      {
         return this._fishIDsUnlocked;
      }
      
      public function set fish_ids(param1:String) : void
      {
         this._fishIDs = decodeJson(param1);
      }
      
      public function set fish_ids_unlocked(param1:String) : void
      {
         this._fishIDsUnlocked = decodeJson(param1);
      }
      
      public function set points(param1:int) : void
      {
         this._points = param1;
      }
   }
}

