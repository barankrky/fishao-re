package com.ax3.fishao.model.missions
{
   import com.ax3.fishao.FishaoFscModelManager;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.utils.Dictionary;
   import protocol.sr.missions.ActiveMissionsResp;
   import protocol.sr.missions.CompletedMissionsResp;
   
   public class MissionsModel extends EventDispatcher
   {
      
      public static const ACTIVE:String = "active";
      
      public static const COMPLETED:String = "completed";
      
      public static const CHANGE_EVENT:Event = new Event(Event.CHANGE);
      
      public static const MISSION_ACCEPTED_EVENT:Event = new Event(Event.ADDED);
      
      private var _missions:Dictionary = new Dictionary();
      
      private var _allMissionsNum:int = 0;
      
      private var _completedMissionsNum:int = 0;
      
      public function MissionsModel()
      {
         super();
      }
      
      public function get missions() : Dictionary
      {
         return this._missions;
      }
      
      public function requestCollectReward(param1:Mission) : void
      {
         FishaoFscModelManager.missionsExtension.collectReward(param1.id.toString(),this.receiveCollectReward);
      }
      
      public function requestAcceptMission(param1:Mission) : void
      {
         FishaoFscModelManager.missionsExtension.acceptMission(param1.id.toString(),this.receiveAcceptedMission);
      }
      
      public function requestActiveMissionsData() : void
      {
         FishaoFscModelManager.missionsExtension.getActiveMissions(this.receiveActiveMissions);
      }
      
      public function requestCompletedMissionsData() : void
      {
         FishaoFscModelManager.missionsExtension.getCompletedMissions(this.receiveCompletedMissions);
      }
      
      private function receiveAcceptedMission(param1:ActiveMissionsResp) : void
      {
         var _loc2_:Object = JSON.parse(param1.list);
         this.processResponseList(_loc2_);
         dispatchEvent(MISSION_ACCEPTED_EVENT);
      }
      
      private function receiveActiveMissions(param1:ActiveMissionsResp) : void
      {
         var _loc2_:Object = JSON.parse(param1.list);
         this._allMissionsNum = param1.allMissions;
         this._completedMissionsNum = param1.completedMissions;
         this.processResponseList(_loc2_);
         dispatchEvent(CHANGE_EVENT);
      }
      
      private function receiveCompletedMissions(param1:CompletedMissionsResp) : void
      {
         var _loc2_:Object = JSON.parse(param1.list);
         this._allMissionsNum = param1.allMissions;
         this._completedMissionsNum = param1.completedMissions;
         this.processResponseList(_loc2_);
         dispatchEvent(CHANGE_EVENT);
      }
      
      private function processResponseList(param1:Object) : void
      {
         var _loc2_:Mission = null;
         var _loc3_:Array = null;
         var _loc4_:Array = null;
         var _loc5_:Array = param1["list"] as Array;
         this._missions[ACTIVE] = {};
         this._missions[COMPLETED] = {};
         _loc3_ = [];
         _loc4_ = [];
         var _loc6_:int = 0;
         while(_loc6_ < _loc5_.length)
         {
            _loc2_ = new Mission(_loc5_[_loc6_]);
            if(_loc2_.isDone)
            {
               _loc4_.push(_loc2_);
            }
            else
            {
               _loc3_.push(_loc2_);
            }
            _loc6_++;
         }
         _loc4_.sortOn("timeAgoSec",Array.NUMERIC);
         this._missions[ACTIVE] = _loc3_;
         this._missions[COMPLETED] = _loc4_;
      }
      
      private function receiveCollectReward() : void
      {
      }
      
      public function get completedMissionsNum() : int
      {
         return this._completedMissionsNum;
      }
      
      public function get allMissionsNum() : int
      {
         return this._allMissionsNum;
      }
   }
}

