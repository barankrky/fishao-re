package protocol.api.wheel_of_fortune.spin
{
   import com.ax3.jss.requests.server._5e1bab759fcaea6d1f84faa7;
   import com.brokenfunction.json.decodeJson;
   
   public class ResponseWheelOfFortuneSpin extends _5e1bab759fcaea6d1f84faa7
   {
      
      private var _rewardData:Object;
      
      public function ResponseWheelOfFortuneSpin()
      {
         super();
      }
      
      public function set reward_json(param1:String) : void
      {
         this._rewardData = decodeJson(param1);
      }
      
      public function get rewardData() : Object
      {
         return this._rewardData;
      }
   }
}

