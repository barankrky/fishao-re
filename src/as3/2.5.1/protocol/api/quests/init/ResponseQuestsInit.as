package protocol.api.quests.init
{
   import com.ax3.jss.requests.server._5e1bab759fcaea6d1f84faa7;
   import com.brokenfunction.json.decodeJson;
   
   public class ResponseQuestsInit extends _5e1bab759fcaea6d1f84faa7
   {
      
      private var _questsMap:Object;
      
      public function ResponseQuestsInit()
      {
         super();
         this._questsMap = {};
      }
      
      public function get questsMap() : Object
      {
         return this._questsMap;
      }
      
      public function set questsData(param1:String) : void
      {
         this._questsMap = decodeJson(param1);
      }
   }
}

