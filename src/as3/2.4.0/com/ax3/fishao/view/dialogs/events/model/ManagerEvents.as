package com.ax3.fishao.view.dialogs.events.model
{
   import com.ax3.fishao.FishaoFscModelManager;
   import com.ax3.fishao.utils.UtilsArray;
   import com.ax3.fishao.view.dialogs.PopupManager;
   import com.ax3.fishao.view.dialogs.base.EDialogType;
   import com.ax3.fishao.view.dialogs.base.ManagerBase;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces.EControllerUpdate;
   import com.ax3.jss.requests.server.ServerResp;
   import com.ax3.utils.timer.IUpdate;
   import com.ax3.utils.timer.UpdateGroup;
   import com.ax3.utils.timer.UpdateManager;
   import com.junkbyte.console.Cc;
   import flash.utils.Dictionary;
   import flash.utils.getTimer;
   import protocol.api.events.FscExtensionEvents;
   import protocol.api.events.data.EventInfo;
   import protocol.api.events.data.EventMemberInfo;
   import protocol.api.events.end.ResponseEventEnd;
   import protocol.api.events.init.ResponseEventsInit;
   import protocol.api.events.members.ResponseEventMembers;
   import protocol.api.events.newEvents.ResponseNewEvents;
   import protocol.api.events.start.ResponseEventStart;
   
   public class ManagerEvents extends ManagerBase implements IUpdate
   {
      
      private var _events:Array;
      
      private var _eventsMap:Dictionary;
      
      private var _members:Array;
      
      private var _extensionEvents:FscExtensionEvents;
      
      private var _eventCurrent:EventInfo;
      
      private var _eventCurrentTimeLeft:int;
      
      private var _eventCurrentTimeLeftOnInit:int;
      
      private var _eventCurrentTimeOnInit:int;
      
      public function ManagerEvents()
      {
         super();
         this.init();
      }
      
      private static function sortEventsByTimeLeft(param1:EventInfo, param2:EventInfo) : int
      {
         var _loc3_:int = 0;
         if(param1.timeLeft > param2.timeLeft)
         {
            _loc3_ = 1;
         }
         else if(param1.timeLeft < param2.timeLeft)
         {
            _loc3_ = -1;
         }
         return _loc3_;
      }
      
      public function get events() : Array
      {
         return this._events;
      }
      
      public function get eventFirst() : EventInfo
      {
         var _loc1_:EventInfo = null;
         if(this._events.length > 0)
         {
            _loc1_ = this._events[0];
         }
         return _loc1_;
      }
      
      public function get isFirstEventShown() : Boolean
      {
         var _loc1_:EventInfo = null;
         var _loc2_:Boolean = true;
         if(this._events.length > 0)
         {
            _loc1_ = this._events[0];
            _loc2_ = _loc1_.isShown;
         }
         return _loc2_;
      }
      
      public function get eventCurrent() : EventInfo
      {
         return this._eventCurrent;
      }
      
      public function get eventCurrentTimeLeft() : int
      {
         return this._eventCurrentTimeLeft;
      }
      
      public function get members() : Array
      {
         return this._members;
      }
      
      override protected function onInitDataLoaded(param1:ServerResp) : void
      {
         super.onInitDataLoaded(param1);
         var _loc2_:ResponseEventsInit = param1 as ResponseEventsInit;
         this.addEvents(_loc2_.events);
      }
      
      public function onEventShown(param1:EventInfo) : void
      {
         param1.onEventShown();
         GameSwf.tryUpdateGUI(EControllerUpdate.ECU_EVENTS_EVENT_SHOWN);
         this._extensionEvents.onEventShown(param1,null);
      }
      
      private function onEventStarted(param1:ResponseEventStart) : void
      {
         this._eventCurrent = this._eventsMap[param1.eventID];
         if(this._eventCurrent == null)
         {
            return;
         }
         this._eventCurrentTimeLeftOnInit = param1.timeLeft;
         this._eventCurrentTimeOnInit = getTimer();
         UpdateManager.getInstance().getGroup(UpdateGroup.TIMER_200).add(this);
         PopupManager.getInstance().tryUpdateCurrentDialog(EControllerUpdate.ECU_EVENTS_EVENT_START,EDialogType.EDT_EVENTS);
         GameSwf.tryUpdateGUI(EControllerUpdate.ECU_EVENTS_EVENT_START);
      }
      
      private function onEventEnded(param1:ResponseEventEnd) : void
      {
         if(this._eventCurrent == null)
         {
            return;
         }
         UtilsArray.removeValue(this._events,this._eventCurrent);
         this._eventCurrent = null;
         UpdateManager.getInstance().getGroup(UpdateGroup.TIMER_200).remove(this);
         PopupManager.getInstance().tryUpdateCurrentDialog(EControllerUpdate.ECU_EVENTS_EVENT_END,EDialogType.EDT_EVENTS);
         GameSwf.tryUpdateGUI(EControllerUpdate.ECU_EVENTS_EVENT_END);
      }
      
      private function onNewEventsReceived(param1:ResponseNewEvents) : void
      {
         var _loc2_:Boolean = this._events.length == 0 && param1.events.length > 0;
         this.addEvents(param1.events);
         if(_loc2_)
         {
            PopupManager.getInstance().tryUpdateCurrentDialog(EControllerUpdate.ECU_EVENTS_NEW_EVENTS_RECEIVED,EDialogType.EDT_EVENTS);
         }
      }
      
      private function onMembersUpdated(param1:ResponseEventMembers) : void
      {
         var _loc2_:EventMemberInfo = null;
         if(this._eventCurrent == null)
         {
            return;
         }
         this._members = [];
         var _loc3_:int = 0;
         while(_loc3_ < param1.members.length)
         {
            _loc2_ = param1.members[_loc3_];
            _loc2_.rewardFishbucks = 0;
            _loc2_.rewardFishcoins = 0;
            if(this._eventCurrent.rewardFishbucks > 0)
            {
               _loc2_.rewardFishbucks = this._eventCurrent.getPositionRewardAmount(_loc3_);
            }
            else if(this.eventCurrent.rewardFishcoins > 0)
            {
               _loc2_.rewardFishcoins = this._eventCurrent.getPositionRewardAmount(_loc3_);
            }
            this._members.push(_loc2_);
            _loc3_++;
         }
         PopupManager.getInstance().tryUpdateCurrentDialog(EControllerUpdate.ECU_EVENTS_EVENT_MEMBERS,EDialogType.EDT_EVENTS);
      }
      
      public function update(param1:uint, param2:uint) : void
      {
         var _loc3_:int = int((param1 - this._eventCurrentTimeOnInit) / 1000);
         this._eventCurrentTimeLeft = this._eventCurrentTimeLeftOnInit - _loc3_;
      }
      
      private function init() : void
      {
         this._events = [];
         this._eventsMap = new Dictionary(true);
         this._members = [];
         this._extensionEvents = FishaoFscModelManager.fscModel.extensionEvents;
         _remoteExtension = this._extensionEvents;
         addResponseHandler(ResponseEventStart,this.onEventStarted);
         addResponseHandler(ResponseEventEnd,this.onEventEnded);
         addResponseHandler(ResponseNewEvents,this.onNewEventsReceived);
      }
      
      private function addEvents(param1:Array) : void
      {
         var _loc2_:EventInfo = null;
         var _loc3_:EventInfo = null;
         for each(_loc2_ in param1)
         {
            if(this._eventsMap[_loc2_.id] != null)
            {
               Cc.error("Event with id: " + _loc2_.id + "already exist");
            }
            else
            {
               this._events.push(_loc2_);
               this._eventsMap[_loc2_.id] = _loc2_;
            }
         }
         this._events.sort(sortEventsByTimeLeft);
         for each(_loc3_ in this._events)
         {
            _loc3_.onEventInit();
         }
      }
      
      public function updateMembers(param1:uint, param2:uint) : void
      {
         this._extensionEvents.updateMembers(this.onMembersUpdated,param1,param2);
      }
   }
}

