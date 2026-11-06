package com.ax3.fishao.mediators
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class _458f27be309c3864556e3018 extends EventDispatcher
   {
      
      public static const FISHBOX_DIALOG_CLOSED:String = _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挔揷捰揼捡揸掻挦捕损掍揇掤揢捫掴掂控捺掌掙揕挴捥揪揲揩握捛按掖捊掉掺捘捑挆揓挆掿掫挊揉捠掶捝掳掵掓挀","揳捱捅捺掀捤掛捫挍挡捃据掾掇掱捍");
      
      private var _84a2647d3d56b6e794c4ab6d:Boolean = false;
      
      public function _458f27be309c3864556e3018()
      {
         super();
      }
      
      public function get fishboxPrizeDialogShown() : Boolean
      {
         return this._84a2647d3d56b6e794c4ab6d;
      }
      
      public function set fishboxPrizeDialogShown(param1:Boolean) : void
      {
         var _loc2_:int = -1881780454 ^ 0x7D18348D ^ 0x3B7B2662 ^ -1428257155;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (-1264743896 ^ -1111888394 ^ -1912120311 ^ -464986018))
            {
               case 0:
                  return;
               case 1:
                  this._84a2647d3d56b6e794c4ab6d = param1;
                  if(param1 == false)
                  {
                     _loc2_ = 0x57A8D217 ^ -805517959 ^ 0x3DF8EB9F ^ -960026758;
                  }
                  else
                  {
                     _loc2_ = -560867036 ^ -1671961119 ^ -1576547030 ^ -2086000026;
                  }
                  break;
               case 2:
                  dispatchEvent(new Event(FISHBOX_DIALOG_CLOSED));
                  _loc2_ = -244530944 ^ -2143841147 ^ 0x2292D407 ^ 0x30A25A0B;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
   }
}

