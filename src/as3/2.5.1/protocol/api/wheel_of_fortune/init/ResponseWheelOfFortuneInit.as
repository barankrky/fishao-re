package protocol.api.wheel_of_fortune.init
{
   import com.ax3.jss.requests.server._5e1bab759fcaea6d1f84faa7;
   import com.brokenfunction.json.decodeJson;
   
   public class ResponseWheelOfFortuneInit extends _5e1bab759fcaea6d1f84faa7
   {
      
      private var _rewards:Array;
      
      public function ResponseWheelOfFortuneInit()
      {
         super();
      }
      
      public function set rewards_json(param1:String) : void
      {
         this._rewards = decodeJson(param1) as Array;
      }
      
      public function get rewards() : Array
      {
         return this._rewards;
      }
   }
}

