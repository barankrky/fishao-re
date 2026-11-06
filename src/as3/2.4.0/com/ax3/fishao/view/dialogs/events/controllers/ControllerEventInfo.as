package com.ax3.fishao.view.dialogs.events.controllers
{
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.view.dialogs.events.model.EEventType;
   import com.ax3.fishao.view.dialogs.events.model.ManagerEvents;
   import com.ax3.fishao.view.dialogs.events.views.ViewEventInfo;
   import com.ax3.fishao.view.dialogs.string.EStringType;
   import com.ax3.fishao.view.dialogs.string.EStringTypeStubs;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   import protocol.api.events.data.EventInfo;
   
   public class ControllerEventInfo extends ControllerEventBase
   {
      
      private var _view:ViewEventInfo;
      
      private var _entity:EventInfo;
      
      private var _timer:Timer;
      
      private var _managerEvents:ManagerEvents;
      
      private var _timeLeft:int;
      
      public function ControllerEventInfo(param1:DisplayObjectContainer)
      {
         this._view = new ViewEventInfo(this,param1);
         super(this._view);
         this.init();
      }
      
      public function set entity(param1:EventInfo) : void
      {
         var _loc2_:String = null;
         var _loc3_:String = null;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:String = null;
         this._entity = param1;
         if(this._entity != null)
         {
            _loc2_ = I18n.get(EEventType.getStringTypeName(this._entity.type));
            _loc3_ = I18n.get(EEventType.getStringTypeDescription(this._entity.type));
            if(this._entity.type == EEventType.EET_CATCH_MOST_FISH_WITH_STAR)
            {
               _loc4_ = Debug.assertProperty(this._entity.additionalInfo,"fish_rating");
               _loc2_ = _loc2_.replace(EStringTypeStubs.ESTS_VALUE,_loc4_);
               _loc3_ = _loc3_.replace(EStringTypeStubs.ESTS_VALUE,_loc4_);
            }
            else if(this._entity.type == EEventType.EET_CATCH_BIGGEST_FISH_WITH_TYPE || this._entity.type == EEventType.EET_CATCH_MOST_FISH_WITH_TYPE)
            {
               _loc5_ = Debug.assertProperty(this._entity.additionalInfo,"fish_id");
               _loc2_ = _loc2_.replace(EStringTypeStubs.ESTS_NAME,I18n.get("fish_" + _loc5_));
               _loc3_ = _loc3_.replace(EStringTypeStubs.ESTS_NAME,I18n.get("fish_" + _loc5_));
               this._view.fishID = _loc5_;
            }
            if(this._managerEvents.eventCurrent == null)
            {
               this._timeLeft = this._entity.timeLeft;
               this._view.eventIsStarted = false;
               _loc6_ = I18n.get(EStringType.EST_DIALOG_EVENTS_COMING_UP);
               _loc6_ = _loc6_.replace(EStringTypeStubs.ESTS_NAME,_loc2_);
               this._view.description = _loc6_;
            }
            else
            {
               Debug.assertEqual(this._managerEvents.eventCurrent,this._entity);
               this._timeLeft = this._managerEvents.eventCurrentTimeLeft;
               this._view.eventIsStarted = true;
               this._view.description = _loc3_;
            }
            this._view.eventType = this._entity.type;
            this.recreateTimer();
         }
      }
      
      private function onTimerTick(param1:Event = null) : void
      {
         this._timeLeft = this._managerEvents.eventCurrent == null ? this._entity.timeLeft : this._managerEvents.eventCurrentTimeLeft;
         this._view.timeLeft = this._timeLeft;
      }
      
      private function init() : void
      {
         this._managerEvents = GameSwf.instance.managerEvents;
      }
      
      private function recreateTimer() : void
      {
         this.tryCleanupTimer();
         this._view.timeLeft = this._timeLeft;
         this._timer = new Timer(500);
         this._timer.addEventListener(TimerEvent.TIMER,this.onTimerTick);
         this._timer.start();
      }
      
      private function tryCleanupTimer() : void
      {
         if(this._timer == null)
         {
            return;
         }
         this._timer.removeEventListener(TimerEvent.TIMER,this.onTimerTick);
         this._timer.stop();
         this._timer = null;
      }
      
      override public function cleanup() : void
      {
         this.tryCleanupTimer();
         this._managerEvents = null;
         this._entity = null;
         super.cleanup();
      }
   }
}

