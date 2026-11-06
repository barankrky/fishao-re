package com.ax3.fishao.utils
{
   import flash.events.EventDispatcher;
   import flash.events.SecurityErrorEvent;
   import flash.utils.clearInterval;
   import flash.utils.getTimer;
   import flash.utils.setInterval;
   
   public class CheatProtection extends EventDispatcher
   {
      
      protected var _tolerance:Number;
      
      protected var _prevDate:Number;
      
      protected var _prevTimer:int;
      
      protected var _interval:uint;
      
      protected var _recur:uint;
      
      public function CheatProtection()
      {
         super();
      }
      
      public function init() : void
      {
         this._tolerance = 0.04;
         this._prevTimer = getTimer();
         this._prevDate = new Date().time;
         this._recur = 0;
         this.interval = 6000;
      }
      
      public function stop() : void
      {
         clearInterval(this._interval);
      }
      
      public function get tolerance() : Number
      {
         return this._tolerance;
      }
      
      public function set tolerance(param1:Number) : void
      {
         this._tolerance = param1;
      }
      
      public function get interval() : uint
      {
         return this._interval;
      }
      
      public function set interval(param1:uint) : void
      {
         clearInterval(this._interval);
         this._interval = setInterval(this.check,param1);
      }
      
      protected function check() : void
      {
         var _loc1_:Number = new Date().time - this._prevDate;
         var _loc2_:Number = getTimer() - this._prevTimer;
         var _loc3_:Number = _loc1_ * this._tolerance;
         if(_loc2_ > _loc1_ + _loc3_ || _loc2_ < _loc1_ - _loc3_)
         {
            ++this._recur;
            if(this._recur > 6)
            {
               dispatchEvent(new SecurityErrorEvent(SecurityErrorEvent.SECURITY_ERROR));
               this._recur = 0;
            }
         }
         else
         {
            this._recur = 0;
         }
         this._prevTimer = getTimer();
         this._prevDate = new Date().time;
      }
   }
}

