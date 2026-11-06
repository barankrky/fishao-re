package protocol.api.announcements.init
{
   import com.ax3.fishao.debug.Debug;
   import com.ax3.jss.requests.server.ServerResp;
   import com.brokenfunction.json.decodeJson;
   
   public class ResponseAnnouncements extends ServerResp
   {
      
      private var _list:Array;
      
      public function ResponseAnnouncements()
      {
         super();
         this._list = [];
      }
      
      public function get list() : Array
      {
         return this._list;
      }
      
      public function set data(param1:String) : void
      {
         var _loc2_:Object = null;
         var _loc3_:AnnouncementInfo = null;
         var _loc4_:Object = decodeJson(param1);
         var _loc5_:Array = Debug.assertProperty(_loc4_,"list",Array);
         for each(_loc2_ in _loc5_)
         {
            _loc3_ = new AnnouncementInfo();
            _loc3_.deserialize(_loc2_);
            this._list.push(_loc3_);
         }
      }
   }
}

