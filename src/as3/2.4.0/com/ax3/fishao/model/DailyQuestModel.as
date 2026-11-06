package com.ax3.fishao.model
{
   import com.ax3.fishao.FishaoFscModelManager;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.utils.getTimer;
   import protocol.sr.DailyQuestResp;
   
   public class DailyQuestModel extends EventDispatcher
   {
      
      public static const CHANGE_DAILY_QUEST_DATA:String = "changeDailyQuestData";
      
      public static const CHANGE_EVENT:Event = new Event(CHANGE_DAILY_QUEST_DATA);
      
      public static const IS_COMPLETE:String = "isComplete";
      
      public static const PRIZE_IS_COLLECT:String = "prizeIsCollect";
      
      public static const SERIE_STEP:String = "serieStep";
      
      public static const TIMESTAMP_SEC:String = "currentQuestLeftSec";
      
      public static const QUESTS:String = "dailyQuests";
      
      public static const QUEST_ID:String = "id";
      
      public static const QUEST_REQUIREMENT:String = "requirement";
      
      public static const QUEST_CONDITION:String = "condition";
      
      private var _dailyQuestData:Object = {};
      
      public var currentQuestTimeMark:TimerMark;
      
      public function DailyQuestModel()
      {
         super();
         this.requestData();
      }
      
      public function requestData() : void
      {
         FishaoFscModelManager.dailyQuestExtension.getDailyQuestData(this.receiveData);
      }
      
      private function receiveData(param1:DailyQuestResp) : void
      {
         var _loc2_:String = null;
         var _loc3_:Object = null;
         if(param1.isComplete == 0)
         {
            this._dailyQuestData[IS_COMPLETE] = false;
         }
         else
         {
            this._dailyQuestData[IS_COMPLETE] = true;
         }
         if(param1.prizeIsCollect == 0)
         {
            this._dailyQuestData[PRIZE_IS_COLLECT] = false;
         }
         else
         {
            this._dailyQuestData[PRIZE_IS_COLLECT] = true;
         }
         this._dailyQuestData[SERIE_STEP] = param1.step;
         this._dailyQuestData[TIMESTAMP_SEC] = param1.currentQuestLeftSec;
         this.currentQuestTimeMark = new TimerMark(param1.currentQuestLeftSec * 1000,getTimer());
         this._dailyQuestData[QUESTS] = [];
         var _loc4_:Object = JSON.parse(param1.requirements);
         var _loc5_:Object = JSON.parse(param1.conditions);
         var _loc6_:Array = new Array();
         for(_loc2_ in _loc4_)
         {
            _loc3_ = new Object();
            _loc3_[QUEST_ID] = _loc2_;
            _loc3_[QUEST_REQUIREMENT] = _loc4_[_loc2_];
            _loc3_[QUEST_CONDITION] = _loc5_[_loc2_];
            _loc6_.push(_loc3_);
         }
         this._dailyQuestData[QUESTS] = _loc6_;
         dispatchEvent(CHANGE_EVENT);
      }
      
      public function get dailyQuestData() : Object
      {
         return this._dailyQuestData;
      }
      
      public function set prizeIsCollect(param1:Boolean) : void
      {
         this._dailyQuestData[PRIZE_IS_COLLECT] = param1;
      }
      
      public function get prizeIsCollect() : Boolean
      {
         return this._dailyQuestData.hasOwnProperty(PRIZE_IS_COLLECT) ? Boolean(this._dailyQuestData[PRIZE_IS_COLLECT]) : false;
      }
      
      public function getRealLeftSec() : int
      {
         if(this.currentQuestTimeMark != null)
         {
            return this.currentQuestTimeMark.getLeftSec(getTimer());
         }
         return -1;
      }
      
      public function getDisplayLeftSec() : int
      {
         if(this._dailyQuestData[DailyQuestModel.IS_COMPLETE])
         {
            return 0;
         }
         return this.getRealLeftSec();
      }
      
      public function isCompleted() : Boolean
      {
         return this._dailyQuestData[IS_COMPLETE];
      }
   }
}

