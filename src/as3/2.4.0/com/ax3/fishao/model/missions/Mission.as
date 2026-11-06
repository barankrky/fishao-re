package com.ax3.fishao.model.missions
{
   import com.ax3.fishao.utils.I18n;
   
   public class Mission
   {
      
      private var _id:int;
      
      private var _levelRequirement:int;
      
      private var _type:String;
      
      private var _action:String;
      
      private var _actionProperty:String;
      
      private var _values:Vector.<int>;
      
      private var _rewardType:String;
      
      private var _rewardTypeId:int;
      
      private var _rewardAmount:int;
      
      private var _isDone:Boolean;
      
      private var _isAccepted:Boolean;
      
      private var _rewardCollected:Boolean;
      
      private var _timeAgoSec:int;
      
      private var _acceptedTimeSec:int;
      
      private var _completedTimeSec:int;
      
      private var _condition:Vector.<int>;
      
      public function Mission(param1:Object)
      {
         var _loc2_:Array = null;
         var _loc3_:int = 0;
         super();
         this._id = parseInt(param1.id);
         this._type = String(param1.type);
         this._action = String(param1.action);
         this._actionProperty = String(param1.actionProperty);
         this._rewardType = param1.rewardType;
         this._rewardTypeId = param1.rewardTypeId;
         this._rewardAmount = param1.rewardAmount;
         this._levelRequirement = param1.levelRequirement;
         this._isDone = param1.isDone;
         this._isAccepted = param1.isAccepted;
         this._rewardCollected = param1.rewardCollected;
         this._values = new Vector.<int>();
         var _loc4_:Array = JSON.parse(param1.values) as Array;
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_.length)
         {
            this._values.push(parseInt(_loc4_[_loc5_]));
            _loc5_++;
         }
         this._condition = new Vector.<int>();
         if(param1.condition)
         {
            _loc2_ = JSON.parse(param1.condition) as Array;
            _loc3_ = 0;
            while(_loc3_ < _loc2_.length)
            {
               this._condition.push(parseInt(_loc2_[_loc3_]));
               _loc3_++;
            }
         }
         this._timeAgoSec = param1.timeAgoSec;
         this._acceptedTimeSec = param1.acceptedTimeSec;
         this._completedTimeSec = param1.completedTimeSec;
      }
      
      private function sortFishByName(param1:int, param2:int) : int
      {
         if(I18n.get("fish_" + param1) > I18n.get("fish_" + param2))
         {
            return 1;
         }
         if(I18n.get("fish_" + param1) < I18n.get("fish_" + param2))
         {
            return -1;
         }
         return 0;
      }
      
      private function sortDecorationByName(param1:int, param2:int) : int
      {
         if(I18n.get("decoration_" + param1) > I18n.get("decoration_" + param2))
         {
            return 1;
         }
         if(I18n.get("decoration_" + param1) < I18n.get("decoration_" + param2))
         {
            return -1;
         }
         return 0;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get timeAgoSec() : int
      {
         return this._timeAgoSec;
      }
      
      public function get reward() : String
      {
         return this._rewardType;
      }
      
      public function get isDone() : Boolean
      {
         return this._isDone;
      }
      
      public function set timeAgoSec(param1:int) : void
      {
         this._timeAgoSec = param1;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function set type(param1:String) : void
      {
         this._type = param1;
      }
      
      public function get requirement() : Object
      {
         return this._levelRequirement;
      }
      
      public function get values() : Vector.<int>
      {
         return this._values;
      }
      
      public function get condition() : Vector.<int>
      {
         return this._condition;
      }
      
      public function set condition(param1:Vector.<int>) : void
      {
         this._condition = param1;
      }
      
      public function get rewardTypeId() : int
      {
         return this._rewardTypeId;
      }
      
      public function set rewardTypeId(param1:int) : void
      {
         this._rewardTypeId = param1;
      }
      
      public function get rewardAmount() : int
      {
         return this._rewardAmount;
      }
      
      public function set rewardAmount(param1:int) : void
      {
         this._rewardAmount = param1;
      }
      
      public function get isAccepted() : Boolean
      {
         return this._isAccepted;
      }
      
      public function set isAccepted(param1:Boolean) : void
      {
         this._isAccepted = param1;
      }
      
      public function get action() : String
      {
         return this._action;
      }
      
      public function set action(param1:String) : void
      {
         this._action = param1;
      }
      
      public function get actionProperty() : String
      {
         return this._actionProperty;
      }
      
      public function set actionProperty(param1:String) : void
      {
         this._actionProperty = param1;
      }
      
      public function get rewardCollected() : Boolean
      {
         return this._rewardCollected;
      }
      
      public function set rewardCollected(param1:Boolean) : void
      {
         this._rewardCollected = param1;
      }
      
      public function get acceptedTimeSec() : int
      {
         return this._acceptedTimeSec;
      }
      
      public function get completedTimeSec() : int
      {
         return this._completedTimeSec;
      }
   }
}

