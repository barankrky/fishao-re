package com.ax3.fishao.utils
{
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import flash.events.EventDispatcher;
   import flash.events.SecurityErrorEvent;
   import flash.utils.clearInterval;
   import flash.utils.getTimer;
   import flash.utils.setInterval;
   
   public class _d6f78199904a54c034f4b071 extends EventDispatcher
   {
      
      protected var _tolerance:Number;
      
      protected var _prevDate:Number;
      
      protected var _prevTimer:int;
      
      protected var _interval:uint;
      
      protected var _recur:uint;
      
      public function _d6f78199904a54c034f4b071()
      {
         super();
      }
      
      public function init() : void
      {
         this._tolerance = _433075a5d49397e40222eeae._9417d5d828724209ec5cfbb1("၌ႁ჈းၤცၳრჴႡႂჼჭဣჭႼရჽဌၹႩၩ်შ","၇ခၞႶ჎ဤဝဠႍჂႩဩႜႴၦး");
         this._prevTimer = getTimer();
         this._prevDate = new Date().time;
         this._recur = -260507844 ^ 0x6E109DFC ^ 0x34E19756 ^ -1433797226;
         this.interval = 0x7E14FA2D ^ -267274896 ^ 0x04195215 ^ -1977873864;
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
         this._interval = setInterval(this._eb07421b47d7ab8d7e7b4800,param1);
      }
      
      protected function _eb07421b47d7ab8d7e7b4800() : void
      {
         var _loc1_:Number = new Date().time - this._prevDate;
         var _loc2_:Number = getTimer() - this._prevTimer;
         var _loc3_:Number = _loc1_ * this._tolerance;
         if(_loc2_ > _loc1_ + _loc3_ || _loc2_ < _loc1_ - _loc3_)
         {
            ++this._recur;
            if(this._recur > (-453969972 ^ 0x42B8913B ^ -1302314634 ^ 0x14282787))
            {
               dispatchEvent(new SecurityErrorEvent(SecurityErrorEvent.SECURITY_ERROR));
               this._recur = -167288226 ^ -915413121 ^ -1836703844 ^ -1376871747;
            }
         }
         else
         {
            this._recur = -851755105 ^ 0x7EB48A03 ^ 0x7AEC0041 ^ -916212259;
         }
         this._prevTimer = getTimer();
         this._prevDate = new Date().time;
      }
   }
}

