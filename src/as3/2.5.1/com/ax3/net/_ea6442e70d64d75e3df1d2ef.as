package com.ax3.net
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.utils.log.globalLogger;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.utils.setTimeout;
   
   public class _ea6442e70d64d75e3df1d2ef extends URLLoader
   {
      
      private var _1a876b67ccf5c201bf7c3604:int = 0;
      
      private var _d767d5917bf3422dc9971b6f:URLRequest;
      
      public function _ea6442e70d64d75e3df1d2ef(param1:int = 999, param2:URLRequest = null)
      {
         super(param2);
         this._1a876b67ccf5c201bf7c3604 = param1;
         addEventListener(IOErrorEvent.IO_ERROR,this.onIoError);
         addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onSecurityError);
      }
      
      private function onIoError(param1:IOErrorEvent) : void
      {
         this._d3a20ba7950dd24bf21123e3(param1);
         param1.stopImmediatePropagation();
      }
      
      private function onSecurityError(param1:SecurityErrorEvent) : void
      {
         this._d3a20ba7950dd24bf21123e3(param1);
         param1.stopImmediatePropagation();
      }
      
      protected function _d3a20ba7950dd24bf21123e3(param1:Event) : void
      {
         var _loc2_:int = -604707632 ^ 0x4E75778F ^ 0x3F1DA2CB ^ 0x183ED498;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x2579ADAA ^ 0x35BD071B ^ 0x15A83E55 ^ -1211207191))
            {
               case 0:
                  removeEventListener(IOErrorEvent.IO_ERROR,this.onIoError);
                  removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onSecurityError);
                  dispatchEvent(param1);
                  _loc2_ = 0x72929C29 ^ -728385600 ^ 0x259165E5 ^ 0x3134AB03;
                  break;
               case 1:
                  if(!this.repeat())
                  {
                     _loc2_ = 0x632DA2F9 ^ 0x3B13EF69 ^ 0x0C545759 ^ -423034940;
                  }
                  else
                  {
                     _loc2_ = -970942553 ^ 0x155E3DB2 ^ 0x21E8C62E ^ 0x40348934;
                  }
                  break;
               case 2:
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      protected function repeat() : Boolean
      {
         if(this._1a876b67ccf5c201bf7c3604-- > (0x1F971A47 ^ -592332348 ^ -1817531261 ^ 0x508C0F01))
         {
            globalLogger.ch(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揻探捕授捳持掏挟捣揫捀揗捿挋掫排","揈揢揩挈揉捃捺挟挛援捇揞揲捍揨揠"),_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ႎဳ჊ႳီဍၩႨႨ႙თဍဘႈႋဘ၅ၬ၂ჴင႖ჭ႑ဍၥჽဢဘხႎႾჹြႬႀძჍ","ႲဥၜၠဆုႥူြდၯဲႸႩဲႬ") + this._d767d5917bf3422dc9971b6f.url + _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挐捉挨挅捵捭授挜揔控挕揌","捑掽揸掵捻控掫掯挡排揟掚捂揪揘捃") + this._1a876b67ccf5c201bf7c3604 + _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ႫေჸბႿၪဵႉး႓","Ⴡၭამၛးငဴჵကჿၷ჉შဘဤ"));
            setTimeout(this.load,0x2B77E90F ^ 0x384AB911 ^ 0x7793F5EF ^ 0x64AEA221,this._d767d5917bf3422dc9971b6f);
            return true;
         }
         return false;
      }
      
      override public function load(param1:URLRequest) : void
      {
         this._d767d5917bf3422dc9971b6f = param1;
         super.load(param1);
      }
      
      public function get request() : URLRequest
      {
         return this._d767d5917bf3422dc9971b6f;
      }
   }
}

