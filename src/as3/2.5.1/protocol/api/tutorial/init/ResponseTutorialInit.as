package protocol.api.tutorial.init
{
   import com.ax3.jss.requests.server._5e1bab759fcaea6d1f84faa7;
   import com.brokenfunction.json.decodeJson;
   
   public class ResponseTutorialInit extends _5e1bab759fcaea6d1f84faa7
   {
      
      private var _tutorialsData:Array;
      
      public function ResponseTutorialInit()
      {
         super();
         this._tutorialsData = [];
      }
      
      public function get tutorialsData() : Array
      {
         return this._tutorialsData;
      }
      
      public function set list(param1:String) : void
      {
         this._tutorialsData = decodeJson(param1) || [];
      }
   }
}

