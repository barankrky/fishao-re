package com.ax3.events
{
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import flash.events.Event;
   
   public class _720429110fd3cfc01812b5a0 extends Event
   {
      
      public static const CHANGE:String = _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ဒးი၈კၺ჎ნმၛေႫჺဩဈჄ၉ჇႴთ႐ႊ၍ჰჲჶၧჿႧოၬႼႍၫႦၨ","Ⴌ႑Ⴂ჈ဟႶဖ႒႗ჲၵ၊၃ဆ၌჉");
      
      public var varName:String;
      
      public var newValue:Object;
      
      public var oldValue:Object;
      
      public function _720429110fd3cfc01812b5a0(param1:String, param2:Object = null, param3:Object = null)
      {
         super(CHANGE,false,false);
         this.varName = param1;
         this.newValue = param2;
         this.oldValue = param3;
      }
      
      override public function clone() : Event
      {
         return new _720429110fd3cfc01812b5a0(this.varName,this.newValue,this.oldValue);
      }
   }
}

