package protocol.api.events.data
{
   import com.ax3.fishao.core._da2facf75d08e7f9226a6df7;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.utils.timer._34a2ba6ad978d976b8b0f5a4;
   import com.ax3.utils.timer._69eec7d2f73604da25ccda04;
   import com.ax3.utils.timer._92d7656ddc3c3da810e99c74;
   import com.brokenfunction.json.decodeJson;
   import flash.utils.Dictionary;
   import flash.utils.getTimer;
   
   public class EventInfo implements _da2facf75d08e7f9226a6df7, _69eec7d2f73604da25ccda04
   {
      
      private var _id:int;
      
      private var _type:String;
      
      private var _timeLeft:int;
      
      private var _duration:uint;
      
      private var _rewardFishcoins:uint;
      
      private var _rewardFishbucks:uint;
      
      private var _rewards:Dictionary;
      
      private var _isShown:Boolean;
      
      private var _additionalInfo:Object;
      
      private var _timeLeftOnInit:int;
      
      private var _timeOnInit:int;
      
      public function EventInfo()
      {
         super();
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get timeLeft() : int
      {
         return this._timeLeft;
      }
      
      public function get duration() : uint
      {
         return this._duration;
      }
      
      public function get rewardFishcoins() : uint
      {
         return this._rewardFishcoins;
      }
      
      public function get rewardFishbucks() : uint
      {
         return this._rewardFishbucks;
      }
      
      public function get isShown() : Boolean
      {
         return this._isShown;
      }
      
      public function get additionalInfo() : Object
      {
         return this._additionalInfo;
      }
      
      public function get timeStart() : int
      {
         var _loc1_:Date = new Date();
         var _loc2_:int = int(_loc1_.time / 1000);
         return _loc2_ + this._timeLeft;
      }
      
      public function onEventShown() : void
      {
         Debug.assert(!this._isShown);
         this._isShown = true;
      }
      
      public function onEventInit() : void
      {
         this.timerStart();
      }
      
      public function update(param1:uint, param2:uint) : void
      {
         var _loc3_:int = int((param1 - this._timeOnInit) / 1000);
         this._timeLeft = this._timeLeftOnInit - _loc3_;
      }
      
      private function timerStart() : void
      {
         this.tryCleanupTimer();
         _92d7656ddc3c3da810e99c74.getInstance()._57ad3faeff9ca92cbf9fe447(_34a2ba6ad978d976b8b0f5a4.TIMER_200).add(this);
      }
      
      private function tryCleanupTimer() : void
      {
         _92d7656ddc3c3da810e99c74.getInstance()._57ad3faeff9ca92cbf9fe447(_34a2ba6ad978d976b8b0f5a4.TIMER_200).remove(this);
      }
      
      public function getPositionRewardAmount(param1:int) : int
      {
         return int(this._rewards[param1 + 1]) || 0;
      }
      
      public function serialize() : Object
      {
         Debug.assert(false);
         return null;
      }
      
      public function deserialize(param1:Object) : void
      {
         var _loc2_:Object = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         this._id = Debug.assertProperty(param1,"id");
         this._timeLeftOnInit = this._timeLeft = Debug.assertProperty(param1,"time_left");
         this._timeOnInit = getTimer();
         this._type = Debug.assertProperty(param1,"type");
         this._duration = Debug.assertProperty(param1,"duration");
         this._rewardFishcoins = Debug.assertProperty(param1,"reward_fishcoins");
         this._rewardFishbucks = Debug.assertProperty(param1,"reward_fishbucks");
         this._rewards = new Dictionary(true);
         var _loc5_:String = Debug.assertProperty(param1,"reward_distribution");
         var _loc6_:Array = decodeJson(_loc5_) as Array;
         for each(_loc2_ in _loc6_)
         {
            _loc3_ = Debug.assertProperty(_loc2_,"position");
            _loc4_ = Debug.assertProperty(_loc2_,"reward");
            this._rewards[_loc3_] = _loc4_;
         }
         this._isShown = Debug.assertProperty(param1,"is_shown");
         this._additionalInfo = Debug.getPropertyOrDefault(param1,"additional_info",null);
      }
   }
}

