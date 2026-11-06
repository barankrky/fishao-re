package com.ax3.fishao.locations.decorationMarket
{
   import com.ax3.fishao.locations.privateHouse._87a2b64ec17c6fb7cbdd79f4;
   import com.ax3.fishao.locations.sublocation._a5e6911f85306c220b8b5d78;
   
   public class _b28b8f38ab58a6efb3567720 extends _87a2b64ec17c6fb7cbdd79f4
   {
      
      public function _b28b8f38ab58a6efb3567720()
      {
         super();
         this.init();
      }
      
      override protected function _de46adb1ce4f5035d00b79ca() : void
      {
         var _loc1_:_a5e6911f85306c220b8b5d78 = null;
         super._de46adb1ce4f5035d00b79ca();
         for each(_loc1_ in _sublocationEnters)
         {
            if(_loc1_.id == (-1283548379 ^ 0x20A66846 ^ -384549818 ^ 0x7ACCCE09))
            {
               _loc1_.id = -121139565 ^ 0x03099F20 ^ -1980077040 ^ -1916042660;
            }
         }
      }
      
      private function init() : void
      {
      }
   }
}

