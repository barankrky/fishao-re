package com.ax3.fishao.locations.laketown
{
   import com.ax3.fishao.locations._77ca96a94affdf1e9d31698c;
   import com.ax3.fishao.locations.with_club_entrance._2a5b0677926a7fd9cc6d1019;
   import flash.display.DisplayObject;
   import flash.geom.Point;
   
   public class _c009b8789f8ccb5349817635 extends _2a5b0677926a7fd9cc6d1019
   {
      
      public function _c009b8789f8ccb5349817635()
      {
         super();
      }
      
      override public function get clubEntrancePosition() : Point
      {
         return new Point(-185768277 ^ -624165462 ^ -1837142097 ^ -1134956044,-1755269317 ^ -1102148910 ^ -1766815390 ^ -1080118348);
      }
      
      override protected function _d950ad5e456ef35dfb21d570(param1:DisplayObject) : void
      {
         var _loc2_:String = param1.name;
         var _loc3_:String = _loc2_;
         switch(_77ca96a94affdf1e9d31698c.EDOT_ADVERTISEMENT_LAKETOWN_CENTER === _loc3_ ? 0x13241D36 ^ 0x4140C52B ^ -2116427914 ^ -742586517 : 0x5ED306E6 ^ -191122927 ^ 0x043EC28A ^ -1367968132)
         {
            case 0:
               _abdb9c3ca02e372006aa2a24(param1);
               break;
            default:
               super._d950ad5e456ef35dfb21d570(param1);
         }
      }
   }
}

