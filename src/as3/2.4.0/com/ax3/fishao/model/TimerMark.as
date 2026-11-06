package com.ax3.fishao.model
{
   import com.ax3.utils.TimeConverter;
   import com.ax3.utils.math.limit;
   
   public class TimerMark
   {
      
      private var _alarmTimerMS:Number;
      
      private var _timeFullSec:int;
      
      public function TimerMark(param1:Number, param2:Number, param3:int = -1)
      {
         super();
         this._timeFullSec = param3;
         this._alarmTimerMS = param2 + param1;
      }
      
      public function getLeftMS(param1:int) : Number
      {
         return limit(this._alarmTimerMS - param1,0,Number.MAX_VALUE);
      }
      
      public function getLeftSec(param1:int) : int
      {
         return TimeConverter.toSeconds(this.getLeftMS(param1));
      }
      
      public function getTimeFullSec() : int
      {
         return this._timeFullSec;
      }
   }
}

