package protocol.api.furniture_factory.get_reward
{
   import com.brokenfunction.json.decodeJson;
   import protocol.api.furniture_factory.base.ResponseFurnitureFactoryBase;
   
   public class ResponseFurnitureFactoryGetReward extends ResponseFurnitureFactoryBase
   {
      
      private var _rewardData:Object;
      
      public function ResponseFurnitureFactoryGetReward()
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

