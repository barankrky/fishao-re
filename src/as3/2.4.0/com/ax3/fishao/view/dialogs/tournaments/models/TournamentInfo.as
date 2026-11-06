package com.ax3.fishao.view.dialogs.tournaments.models
{
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.vars.app;
   import com.ax3.utils.math.limit;
   import com.ax3.utils.timer.IUpdate;
   import com.ax3.utils.timer.UpdateGroup;
   import com.ax3.utils.timer.UpdateManager;
   import flash.utils.getTimer;
   import protocol.api.tournaments.enter.ResponseTournamentEnter;
   
   public class TournamentInfo implements IUpdate
   {
      
      protected var _id:String;
      
      protected var _locationId:int;
      
      protected var _type:String;
      
      protected var _timeLeftStart:int;
      
      protected var _timeLeftSignUp:int;
      
      protected var _timeLeftEnd:int;
      
      protected var _duration:uint;
      
      protected var _members:Array;
      
      protected var _isPlayerSignedUp:Boolean;
      
      protected var _signUpCost:int;
      
      protected var _state:String;
      
      protected var _memberLevelMin:int;
      
      protected var _memberLevelMax:int;
      
      protected var _difficulty:String;
      
      protected var _prizeItems:Array;
      
      protected var _timeOnInit:int;
      
      protected var _timeLeftStartOnInit:int;
      
      protected var _timeLeftSignUpOnInit:int;
      
      protected var _timeLeftEndOnInit:int;
      
      protected var _membersCountSignedUp:int;
      
      protected var _membersCountMax:int;
      
      protected var _fishToWinCount:int;
      
      protected var _rewardCoefficient_1:Number;
      
      protected var _rewardCoefficient_2:Number;
      
      protected var _rewardCoefficient_3:Number;
      
      protected var _worldId:String;
      
      protected var _url:String;
      
      public function TournamentInfo()
      {
         super();
         this._members = [];
         this._prizeItems = [];
      }
      
      private static function getLocationIdByTournamentType(param1:String) : int
      {
         var _loc2_:int = 0;
         switch(param1)
         {
            case ETournamentType.ETT_BOAT_ON_SEA:
               _loc2_ = 201;
               break;
            case ETournamentType.ETT_LAKE_RUN:
               _loc2_ = 202;
               break;
            case ETournamentType.ETT_RACE:
               _loc2_ = 203;
               break;
            case ETournamentType.ETT_MORAY:
               _loc2_ = 204;
               break;
            default:
               Debug.assert(false,"Unsupported ETournamentType on getLocationIdByTournamentType method of TournamentInfo: " + param1);
         }
         return _loc2_;
      }
      
      public static function getTrophyByTournamentType(param1:String) : String
      {
         var _loc2_:String = "";
         switch(param1)
         {
            case ETournamentType.ETT_BOAT_ON_SEA:
               _loc2_ = ETournamentPrizeType.ETPT_BOAT_ON_SEA;
               break;
            case ETournamentType.ETT_LAKE_RUN:
               _loc2_ = ETournamentPrizeType.ETPT_LAKE_RUN;
               break;
            case ETournamentType.ETT_RACE:
               _loc2_ = ETournamentPrizeType.ETPT_RACE;
               break;
            case ETournamentType.ETT_MORAY:
               _loc2_ = ETournamentPrizeType.ETPT_MORAY;
               break;
            default:
               Debug.assert(false,"Unsupported ETournamentType on getTrophyByTournamentType method of TournamentInfo: " + param1);
         }
         return _loc2_;
      }
      
      public function get id() : String
      {
         return this._id;
      }
      
      public function get locationId() : int
      {
         return this._locationId;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get timeLeftStart() : int
      {
         return this._timeLeftStart;
      }
      
      public function get timeLeftSignUp() : int
      {
         return this._timeLeftSignUp;
      }
      
      public function get timeLeftEnd() : int
      {
         return this._timeLeftEnd;
      }
      
      public function get duration() : uint
      {
         return this._duration;
      }
      
      public function get difficulty() : String
      {
         return this._difficulty;
      }
      
      public function get members() : Array
      {
         return this._members;
      }
      
      public function get membersCountSignedUp() : int
      {
         return this._membersCountSignedUp;
      }
      
      public function get membersCountMax() : int
      {
         return this._membersCountMax;
      }
      
      public function get signUpCost() : int
      {
         return this._signUpCost;
      }
      
      public function get state() : String
      {
         return this._state;
      }
      
      public function set state(param1:String) : void
      {
         if(this._state == param1)
         {
            return;
         }
         this._state = param1;
      }
      
      public function get prizeItems() : Array
      {
         return this._prizeItems;
      }
      
      public function get isPlayerSignedUp() : Boolean
      {
         return this._isPlayerSignedUp;
      }
      
      public function set isPlayerSignedUp(param1:Boolean) : void
      {
         this._isPlayerSignedUp = param1;
      }
      
      public function get fishToWinCount() : int
      {
         return this._fishToWinCount;
      }
      
      public function get memberLevelMin() : int
      {
         return this._memberLevelMin;
      }
      
      public function get memberLevelMax() : int
      {
         return this._memberLevelMax;
      }
      
      public function set id(param1:String) : void
      {
         this._id = param1;
      }
      
      public function get worldId() : String
      {
         return this._worldId;
      }
      
      public function get url() : String
      {
         return this._url;
      }
      
      public function onTournamentInit() : void
      {
         this._locationId = getLocationIdByTournamentType(this._type);
         var _loc1_:String = getTrophyByTournamentType(this._type);
         var _loc2_:TournamentPrizeInfo = new TournamentPrizeInfo(1,_loc1_,this._rewardCoefficient_1);
         this._prizeItems.push(_loc2_);
         var _loc3_:TournamentPrizeInfo = new TournamentPrizeInfo(2,ETournamentPrizeType.ETPT_FISHCOINS,this._rewardCoefficient_2);
         this._prizeItems.push(_loc3_);
         var _loc4_:TournamentPrizeInfo = new TournamentPrizeInfo(3,ETournamentPrizeType.ETPT_FISHCOINS,this._rewardCoefficient_3);
         this._prizeItems.push(_loc4_);
         this._timeOnInit = getTimer();
         this._timeLeftSignUpOnInit = this._timeLeftSignUp;
         this._timeLeftStartOnInit = this._timeLeftStart;
         this._timeLeftEndOnInit = this._timeLeftEnd;
         this.timerStart();
      }
      
      public function update(param1:uint, param2:uint) : void
      {
         var _loc3_:int = int((param1 - this._timeOnInit) / 1000);
         this._timeLeftSignUp = limit(this._timeLeftSignUpOnInit - _loc3_,0,int.MAX_VALUE);
         this._timeLeftStart = limit(this._timeLeftStartOnInit - _loc3_,0,int.MAX_VALUE);
         this._timeLeftEnd = limit(this._timeLeftEndOnInit - _loc3_,0,int.MAX_VALUE);
         if(this._timeLeftSignUp <= 0 && this._timeLeftStart > 0 && this._state != ETournamentState.ETS_SIGNING)
         {
            this.state = ETournamentState.ETS_SIGNING;
         }
      }
      
      private function timerStart() : void
      {
         this.tryCleanupTimer();
         UpdateManager.getInstance().getGroup(UpdateGroup.TIMER_200).add(this);
      }
      
      private function tryCleanupTimer() : void
      {
         UpdateManager.getInstance().getGroup(UpdateGroup.TIMER_200).remove(this);
      }
      
      public function getMemberByLogin(param1:String) : TournamentMemberInfo
      {
         var _loc2_:TournamentMemberInfo = null;
         var _loc3_:TournamentMemberInfo = null;
         for each(_loc2_ in this._members)
         {
            if(_loc2_.login == param1)
            {
               _loc3_ = _loc2_;
               break;
            }
         }
         return _loc3_;
      }
      
      public function getMemberByPosition(param1:uint) : TournamentMemberInfo
      {
         var _loc2_:TournamentMemberInfo = null;
         var _loc3_:TournamentMemberInfo = null;
         for each(_loc2_ in this._members)
         {
            if(_loc2_.position == param1)
            {
               _loc3_ = _loc2_;
               break;
            }
         }
         return _loc3_;
      }
      
      public function getPlayer() : TournamentMemberInfo
      {
         return this.getMemberByLogin(app.user.username);
      }
      
      public function getPlayerPrize() : TournamentPrizeInfo
      {
         var _loc1_:TournamentMemberInfo = this.getMemberByLogin(app.user.username);
         return this.getPrizeByPosition(_loc1_.position);
      }
      
      private function getPrizeByPosition(param1:int) : TournamentPrizeInfo
      {
         var _loc2_:TournamentPrizeInfo = null;
         var _loc3_:TournamentPrizeInfo = null;
         for each(_loc2_ in this._prizeItems)
         {
            if(_loc2_.prizePosition == param1)
            {
               _loc3_ = _loc2_;
               break;
            }
         }
         return _loc3_;
      }
      
      public function resetMembersCriteriaBoost() : void
      {
         var _loc1_:TournamentMemberInfo = null;
         for each(_loc1_ in this._members)
         {
            _loc1_.resetCriteriaBoost();
         }
      }
      
      public function updateTime(param1:ResponseTournamentEnter) : void
      {
         this._timeOnInit = getTimer();
         this._timeLeftSignUpOnInit = this._timeLeftSignUp = param1.timeLeftToSignUp;
         this._timeLeftStartOnInit = this._timeLeftStart = param1.timeLeftToStart;
         this._timeLeftEndOnInit = this._timeLeftEnd = param1.timeLeftToEnd;
         this.timerStart();
      }
      
      public function deserialize(param1:Object) : void
      {
         this._type = Debug.assertProperty(param1,"type");
         this._state = Debug.assertProperty(param1,"state");
         this._duration = Debug.assertProperty(param1,"duration_minutes") * 60;
         this._membersCountMax = Debug.assertProperty(param1,"members_count_max");
         this._membersCountSignedUp = Debug.assertProperty(param1,"members_count_signed");
         this._difficulty = Debug.assertProperty(param1,"difficulty");
         this._memberLevelMin = Debug.assertProperty(param1,"members_level_min");
         this._memberLevelMax = Debug.assertProperty(param1,"members_level_max");
         this._timeLeftSignUp = Debug.assertProperty(param1,"time_left_to_sign_up");
         this._timeLeftStart = Debug.assertProperty(param1,"time_left_to_start");
         this._timeLeftEnd = Debug.assertProperty(param1,"time_left_to_end");
         this._signUpCost = Debug.assertProperty(param1,"sign_up_cost");
         this._isPlayerSignedUp = Debug.assertProperty(param1,"is_player_signed_up");
         this._fishToWinCount = Debug.assertProperty(param1,"fish_to_win_count");
         if(this._isPlayerSignedUp)
         {
            this._id = Debug.assertProperty(param1,"tournament_id");
         }
         this._rewardCoefficient_1 = Debug.assertProperty(param1,"reward_coefficient_1");
         this._rewardCoefficient_2 = Debug.assertProperty(param1,"reward_coefficient_2");
         this._rewardCoefficient_3 = Debug.assertProperty(param1,"reward_coefficient_3");
         this._worldId = Debug.assertProperty(param1,"world_id");
         this._url = Debug.assertProperty(param1,"url");
      }
      
      public function deserializeMembers(param1:Object, param2:Boolean = false) : void
      {
         var _loc3_:String = null;
         var _loc4_:Object = null;
         var _loc5_:TournamentMemberInfo = null;
         for(_loc3_ in param1)
         {
            if(param1.hasOwnProperty(_loc3_))
            {
               _loc4_ = param1[_loc3_];
               _loc5_ = this.getMemberByLogin(_loc3_);
               if(_loc5_ == null)
               {
                  _loc5_ = new TournamentMemberInfo();
                  if(param2)
                  {
                     _loc5_.deserializeEnd(_loc4_);
                  }
                  else
                  {
                     _loc5_.deserialize(_loc4_);
                  }
                  this._members.push(_loc5_);
               }
               else
               {
                  _loc5_.updateInfo(_loc4_);
               }
            }
         }
      }
      
      public function cleanup() : void
      {
         this._members = null;
         this._prizeItems = null;
      }
   }
}

