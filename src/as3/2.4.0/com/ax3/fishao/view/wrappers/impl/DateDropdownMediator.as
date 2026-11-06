package com.ax3.fishao.view.wrappers.impl
{
   import com.ax3.utils.DateUtils;
   import com.ax3.utils.Range;
   import com.ax3.utils.math.limit;
   import flash.events.Event;
   
   public class DateDropdownMediator
   {
      
      private static const MAX_YEAR:int = new Date().fullYear - 13;
      
      private static const MIN_YEAR:int = MAX_YEAR - 90;
      
      private var _dayDropdown:FishaoDropdownDateWrapper;
      
      private var _monthDropdown:FishaoDropdownDateWrapper;
      
      private var _yearDropdown:FishaoDropdownDateWrapper;
      
      private var _date:Date;
      
      public function DateDropdownMediator(param1:Date = null)
      {
         super();
         if(param1 == null)
         {
            this._date = new Date(1991,0,1);
         }
         else
         {
            this._date = param1;
         }
      }
      
      public function config(param1:FishaoDropdownDateWrapper, param2:FishaoDropdownDateWrapper, param3:FishaoDropdownDateWrapper) : void
      {
         this._dayDropdown = param1;
         this._dayDropdown.addEventListener(Event.CHANGE,this.onDayChange);
         this._monthDropdown = param2;
         this._monthDropdown.addEventListener(Event.CHANGE,this.onMonthChange);
         this._yearDropdown = param3;
         this._yearDropdown.addEventListener(Event.CHANGE,this.onYearChange);
         this._yearDropdown.create(new Range(MIN_YEAR,MAX_YEAR).toStringVector());
         this._monthDropdown.create(new Range(1,12).toStringVector());
         this.recreateDayListByMonth();
         this.updateGivenDate();
      }
      
      private function recreateDayListByMonth() : void
      {
         var _loc1_:Number = this._date.getMonth();
         var _loc2_:Number = this._date.getFullYear();
         var _loc3_:int = DateUtils.dayInMonth(_loc1_,_loc2_);
         this._dayDropdown.create(new Range(1,_loc3_).toStringVector());
      }
      
      private function updateGivenDate() : void
      {
         this._dayDropdown.text = String(this._date.getDate());
         this._monthDropdown.text = String(this._date.getMonth() + 1);
         this._yearDropdown.text = String(this._date.getFullYear());
      }
      
      private function onDayChange(param1:Event) : void
      {
         var _loc2_:Number = this.inspectDate();
         this._date.date = _loc2_;
      }
      
      private function onMonthChange(param1:Event) : void
      {
         var _loc2_:Number = this.inspectDate();
         this._dayDropdown.text = String(_loc2_);
      }
      
      private function inspectDate() : Number
      {
         var _loc1_:int = this._date.getFullYear();
         var _loc2_:int = this._date.getMonth();
         var _loc3_:int = this._date.getDate();
         var _loc4_:int = parseInt(this._yearDropdown.displayValue);
         var _loc5_:int = parseInt(this._monthDropdown.displayValue) - 1;
         var _loc6_:Number = limit(parseInt(this._dayDropdown.displayValue),1,DateUtils.dayInMonth(_loc5_,_loc4_));
         this._date.date = _loc6_;
         this._date.month = _loc5_;
         this._date.fullYear = _loc4_;
         if(DateUtils.dayInMonth(_loc2_,_loc1_) != DateUtils.dayInMonth(_loc5_,_loc4_))
         {
            this.recreateDayListByMonth();
         }
         return _loc6_;
      }
      
      private function onYearChange(param1:Event) : void
      {
         var _loc2_:Number = this.inspectDate();
         this._dayDropdown.text = String(_loc2_);
         this._date.fullYear = parseInt(this._yearDropdown.displayValue);
      }
      
      public function get date() : Date
      {
         return this._date;
      }
   }
}

