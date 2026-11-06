package com.ax3.fishao.view.dialogs.tournaments.models
{
   import com.ax3.fishao.core.ISerializable;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.vars.app;
   
   public class TournamentMemberInfo implements ISerializable
   {
      
      protected var _position:uint;
      
      protected var _login:String;
      
      protected var _criteria:Number;
      
      protected var _isReady:Boolean;
      
      protected var _level:int;
      
      protected var _criteriaBoost:Number;
      
      protected var _rewardFishcoins:int;
      
      public function TournamentMemberInfo()
      {
         super();
      }
      
      public static function sortByPosition(param1:TournamentMemberInfo, param2:TournamentMemberInfo) : int
      {
         var _loc3_:int = 0;
         if(param1._position > param2._position)
         {
            _loc3_ = 1;
         }
         else if(param1._position < param2._position)
         {
            _loc3_ = -1;
         }
         else
         {
            _loc3_ = sortByCriteria(param1,param2);
         }
         return _loc3_;
      }
      
      private static function sortByCriteria(param1:TournamentMemberInfo, param2:TournamentMemberInfo) : int
      {
         var _loc3_:int = 0;
         if(param1._criteria < param2._criteria)
         {
            _loc3_ = 1;
         }
         else if(param1._criteria > param2._criteria)
         {
            _loc3_ = -1;
         }
         return _loc3_;
      }
      
      public function get position() : uint
      {
         return this._position;
      }
      
      public function get login() : String
      {
         return this._login;
      }
      
      public function get criteria() : Number
      {
         return this._criteria;
      }
      
      public function get isReady() : Boolean
      {
         return this._isReady;
      }
      
      public function get level() : int
      {
         return this._level;
      }
      
      public function get isPlayer() : Boolean
      {
         return this._login == app.user.username;
      }
      
      public function get criteriaBoost() : Number
      {
         return this._criteriaBoost;
      }
      
      public function get rewardFishcoins() : int
      {
         return this._rewardFishcoins;
      }
      
      public function resetCriteriaBoost() : void
      {
         this._criteriaBoost = 0;
      }
      
      public function updateInfo(param1:Object) : void
      {
         this._position = Debug.getPropertyOrDefault(param1,"position",this._position);
         this._login = Debug.getPropertyOrDefault(param1,"login",this._login);
         var _loc2_:Number = Debug.getPropertyOrDefault(param1,"criteria",this._criteria);
         this._criteriaBoost = _loc2_ - this._criteria;
         this._criteria = _loc2_;
         var _loc3_:String = Debug.getPropertyOrDefault(param1,"is_ready",this._isReady);
         this._isReady = _loc3_ == "true";
         this._level = Debug.getPropertyOrDefault(param1,"level",this._level);
         this._rewardFishcoins = Debug.getPropertyOrDefault(param1,"reward_fishcoins",0);
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
         var _loc2_:String = Debug.assertProperty(param1,"is_ready");
         this._isReady = _loc2_ == "true";
         this._level = Debug.assertProperty(param1,"level");
         this.resetCriteriaBoost();
      }
      
      public function deserializeEnd(param1:Object) : void
      {
         this._position = Debug.assertProperty(param1,"position");
         this._login = Debug.assertProperty(param1,"login");
         this._criteria = Debug.assertProperty(param1,"criteria");
         this._rewardFishcoins = Debug.assertProperty(param1,"reward_fishcoins");
      }
   }
}

