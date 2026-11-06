package com.ax3.events
{
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import flash.events.Event;
   
   public class _bcc9d420700df45988ac88c2 extends Event
   {
      
      public static var BITMAP_LOADED_FROM_URL:String = _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ჶ႓။ၧႮ၉ၑဦႼဨႥჩၬჁქჸၮဲူၕႍဒဓჽထჹყႛုႋၷၨၐჀဟၞဆၪყၼჷဴးფႥႡၰႬၲၬသဖ","ူႄ၎ცဆဉ၉၇ၝႰစ၃သၓ၎ႏ");
      
      public var param:*;
      
      public function _bcc9d420700df45988ac88c2(param1:String, param2:* = null, param3:Boolean = false, param4:Boolean = false)
      {
         super(param1,param3,param4);
         this.param = param2;
      }
      
      override public function clone() : Event
      {
         return new _bcc9d420700df45988ac88c2(type,this.param,bubbles,cancelable);
      }
   }
}

