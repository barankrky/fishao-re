package com.ax3.events
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import flash.events.Event;
   import flash.utils.getQualifiedClassName;
   
   public class _98a631728303cd84cffdf439 extends Event
   {
      
      public static const ERROR:String = _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ဣ်ၠၟယ႘ဂၼ္ჵႢ၁ყြႩဳჴၘ","ဗႦၿთၖိနႂခႰႫၣსၤၖႋ");
      
      public var id:int;
      
      public var descr:String;
      
      public function _98a631728303cd84cffdf439(param1:int, param2:String = "", param3:Boolean = false, param4:Boolean = false)
      {
         super(ERROR,param3,param4);
         this.id = param1;
         this.descr = param2;
      }
      
      override public function clone() : Event
      {
         return new _98a631728303cd84cffdf439(this.id,this.descr,bubbles,cancelable);
      }
      
      override public function toString() : String
      {
         return getQualifiedClassName(this) + _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ဿႭ၆ငႻနႉჿ჉გტႨဋႊლအႠႆფၒ","ၘၩၵၱშႼႢၙჭႁჂၪႭၢဨၘ") + this.id + _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掙掶捑捚揳揪捹挣描挬捔挃掐捇挟捁推控掐捀挕捚挒揈捍揻","揻指捳挓揟揨挧揷捞捉挷掉捫掦挐捳") + this.descr + _95da7f1147c669197db81295._8f4866de82b7339154180ecb("勡刊刹刪剅刘剬勂劽剩","剿勶则剶勫勑剴刌剐分剫務刋刞剅办");
      }
   }
}

