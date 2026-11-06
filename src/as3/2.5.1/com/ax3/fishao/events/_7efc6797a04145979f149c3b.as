package com.ax3.fishao.events
{
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import flash.events.Event;
   import protocol.sr.ErrorResp;
   
   public class _7efc6797a04145979f149c3b extends Event
   {
      
      public static const ERROR:String = _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("႘ဗႹჇ၂ႴငၖბႍႍოႰჿჵးၸဎဋဳ၊၌ბ၉သႚႵမႳენၨჵၼჭတ","ჟၑႮးႹဩႣၣ႑ဧ၃၍ါႢႿူ");
      
      public var resp:ErrorResp;
      
      public function _7efc6797a04145979f149c3b(param1:ErrorResp, param2:Boolean = false, param3:Boolean = false)
      {
         super(ERROR,param2,param3);
         this.resp = param1;
      }
   }
}

