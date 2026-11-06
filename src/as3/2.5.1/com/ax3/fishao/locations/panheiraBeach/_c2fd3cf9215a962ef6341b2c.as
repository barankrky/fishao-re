package com.ax3.fishao.locations.panheiraBeach
{
   import com.ax3.fishao.locations._77ca96a94affdf1e9d31698c;
   import com.ax3.fishao.locations.with_club_entrance._2a5b0677926a7fd9cc6d1019;
   import flash.display.DisplayObject;
   import flash.geom.Point;
   
   public class _c2fd3cf9215a962ef6341b2c extends _2a5b0677926a7fd9cc6d1019
   {
      
      public function _c2fd3cf9215a962ef6341b2c()
      {
         super();
      }
      
      override public function get clubEntrancePosition() : Point
      {
         return new Point(-1398318536 ^ 0x3772FF08 ^ -1619893299 ^ 0x04A7CA33,0x6515EC66 ^ 0x0CC9C95E ^ -1289115671 ^ -621443912);
      }
      
      override protected function _d950ad5e456ef35dfb21d570(param1:DisplayObject) : void
      {
         var _loc2_:String = param1.name;
         switch(_loc2_)
         {
            case _77ca96a94affdf1e9d31698c.EDOT_ADVERTISEMENT_PINHEIRA_BEACH:
               §§push(-1946755421 ^ 0x687BD267 ^ -315360716 ^ 0x0EBEF6F0);
               break;
            case _77ca96a94affdf1e9d31698c.EDOT_ADVERTISEMENT_PINHEIRA_JETTY:
               §§push(-2116773410 ^ -187351159 ^ 0x15C44153 ^ 0x60C5E705);
               break;
            default:
               §§push(0x2CD01A70 ^ 0x41B55480 ^ -729746644 ^ -1176125986);
         }
         switch(§§pop())
         {
            case 0:
            case 1:
               _abdb9c3ca02e372006aa2a24(param1);
               break;
            default:
               super._d950ad5e456ef35dfb21d570(param1);
         }
      }
   }
}

