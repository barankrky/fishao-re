package com.ax3.events
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import flash.events.IEventDispatcher;
   
   public class _8c6eae3f22f8cb28c277afbe
   {
      
      public static var globalInstanceId:int;
      
      public var handler:Object;
      
      public var target:IEventDispatcher;
      
      public var type:String;
      
      public var listener:Function;
      
      public var useCapture:Boolean;
      
      public var priority:int;
      
      public var useWeakReference:Boolean;
      
      public var instanceId:int;
      
      public function _8c6eae3f22f8cb28c277afbe(param1:Object, param2:IEventDispatcher, param3:String, param4:Function, param5:Boolean, param6:int, param7:Boolean)
      {
         super();
         this.instanceId = globalInstanceId++;
         this.handler = param1;
         this.target = param2;
         this.type = param3;
         this.listener = param4;
         this.useCapture = param5;
         this.priority = param6;
         this.useWeakReference = param7;
      }
      
      public function equal(param1:Object, param2:IEventDispatcher, param3:String, param4:Function, param5:Boolean) : Boolean
      {
         return this.handler == param1 && this.target == param2 && this.type == param3 && this.listener == param4 && this.useCapture == param5;
      }
      
      public function _730543c47e80c472026200f6() : void
      {
         this._8a4670168ed499ec1ecbad25();
         this.destroy();
      }
      
      private function _8a4670168ed499ec1ecbad25() : void
      {
         this.target.removeEventListener(this.type,this.listener,this.useCapture);
      }
      
      private function destroy() : void
      {
         this.handler = null;
         this.target = null;
         this.type = null;
         this.listener = null;
      }
      
      public function toString() : String
      {
         return _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("Ⴅკႀသႊჾႄ႗ၳ႙႘ၫႂႽဂႹჯၐၚჶ်္ცဥႷჿႈဨႎၴ႟႖လဘႪშၝၨဘၪ၇၃႞ႉ","ႷწဌဈჅႥဟၞჄ჊ဖლ၃၉Ⴭဨ") + this.instanceId + _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挱揮揠挍捕捂捎揟掑挍挈措揆捿","掾揀揎捘指捇掵挽揆捠挤捤捷捙排挳") + this.handler + _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ခဨးႿ၉မၪ၆႟႒ဿၹ","ဆဘႩჵၲၪဢးညျ჏ხၴ჏ၛ჌") + this.target + _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掟掮揩掤揨挓揯挈捏指捔揤揵挡掁揽挍掵掺挼揫捶","掑捠捵捳掼捴掋捻插掙掍捧揓掵挃捈") + this.type + _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၘၲႭჅွၥკ჎ႏჷფც","ႆၓၷၔრღၙႢ၌჊ჭძჶႣგဏ");
      }
   }
}

