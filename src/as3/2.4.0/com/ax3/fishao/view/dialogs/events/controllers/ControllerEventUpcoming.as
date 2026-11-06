package com.ax3.fishao.view.dialogs.events.controllers
{
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.view.dialogs.events.model.EEventType;
   import com.ax3.fishao.view.dialogs.events.views.ViewEventUpcoming;
   import com.ax3.fishao.view.dialogs.string.EStringTypeStubs;
   import protocol.api.events.data.EventInfo;
   
   public class ControllerEventUpcoming extends ControllerEventBase
   {
      
      private var _entity:EventInfo;
      
      private var _view:ViewEventUpcoming = new ViewEventUpcoming(this);
      
      public function ControllerEventUpcoming(param1:EventInfo)
      {
         this._entity = param1;
         super(this._view);
         this.init();
      }
      
      private function init() : void
      {
         var _loc1_:int = 0;
         var _loc2_:int = 0;
         this._view.eventType = this._entity.type;
         var _loc3_:String = I18n.get(EEventType.getStringTypeName(this._entity.type));
         if(this._entity.type == EEventType.EET_CATCH_MOST_FISH_WITH_STAR)
         {
            _loc1_ = Debug.assertProperty(this._entity.additionalInfo,"fish_rating");
            _loc3_ = _loc3_.replace(EStringTypeStubs.ESTS_VALUE,_loc1_);
         }
         else if(this._entity.type == EEventType.EET_CATCH_BIGGEST_FISH_WITH_TYPE || this._entity.type == EEventType.EET_CATCH_MOST_FISH_WITH_TYPE)
         {
            _loc2_ = Debug.assertProperty(this._entity.additionalInfo,"fish_id");
            _loc3_ = _loc3_.replace(EStringTypeStubs.ESTS_NAME,I18n.get("fish_" + _loc2_));
            this._view.fishID = _loc2_;
         }
         this._view.eventName = _loc3_;
         this._view.eventStartTime = this._entity.timeStart;
         this._view.eventDuration = this._entity.duration;
      }
   }
}

