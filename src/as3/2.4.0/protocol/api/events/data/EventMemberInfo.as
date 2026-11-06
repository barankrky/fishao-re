package protocol.api.events.data
{
   import com.ax3.fishao.core.ISerializable;
   import com.ax3.fishao.debug.Debug;
   import com.brokenfunction.json.decodeJson;
   
   public class EventMemberInfo implements ISerializable
   {
      
      private var _position:uint;
      
      private var _login:String;
      
      private var _criteria:Number;
      
      private var _additionalInfo:Object;
      
      private var _rewardFishcoins:uint;
      
      private var _rewardFishbucks:uint;
      
      public function EventMemberInfo()
      {
         super();
      }
      
      public function get position() : uint
      {
         return this._position;
      }
      
      public function get login() : String
      {
         return this._login;
      }
      
      public function get criteria() : uint
      {
         return this._criteria;
      }
      
      public function get rewardFishcoins() : uint
      {
         return this._rewardFishcoins;
      }
      
      public function set rewardFishcoins(param1:uint) : void
      {
         this._rewardFishcoins = param1;
      }
      
      public function get rewardFishbucks() : uint
      {
         return this._rewardFishbucks;
      }
      
      public function set rewardFishbucks(param1:uint) : void
      {
         this._rewardFishbucks = param1;
      }
      
      public function getAdditionalProperty(param1:String) : String
      {
         var _loc2_:Object = {};
         if(this._additionalInfo != null && this._additionalInfo.hasOwnProperty(param1))
         {
            _loc2_ = this._additionalInfo[param1];
         }
         else
         {
            _loc2_ = "";
         }
         return _loc2_.toString();
      }
      
      public function serialize() : Object
      {
         return null;
      }
      
      public function deserialize(param1:Object) : void
      {
         this._position = Debug.assertProperty(param1,"position");
         this._login = Debug.assertProperty(param1,"login");
         this._criteria = Debug.assertProperty(param1,"criteria");
         var _loc2_:String = Debug.getPropertyOrDefault(param1,"additional_info",null);
         if(_loc2_ != null)
         {
            this._additionalInfo = decodeJson(_loc2_);
         }
      }
   }
}

