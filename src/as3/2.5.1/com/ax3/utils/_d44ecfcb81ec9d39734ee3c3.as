package com.ax3.utils
{
   import flash.geom.Point;
   
   public class _d44ecfcb81ec9d39734ee3c3
   {
      
      public function _d44ecfcb81ec9d39734ee3c3()
      {
         super();
      }
      
      public static function _fe8531c4059c45955b00d3e1(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         var _loc5_:Number = Math.atan2(param1 - param3,param2 - param4) * (0x0D5777C6 ^ 0x5AEA79DB ^ 0x1D23A34D ^ 0x4A9EADE4) / Math.PI;
         while(_loc5_ < (-1735433004 ^ -210772616 ^ -545763066 ^ -1265047382))
         {
            _loc5_ = (0x427F305D ^ -1775674518 ^ -731745576 ^ 0x341887) + _loc5_;
         }
         return _loc5_ % (0x4D19935B ^ 0x4EED0DB0 ^ -1918194596 ^ -1906428961);
      }
      
      public static function _49df0674abf66a3fc5c8350d(param1:Point, param2:Number, param3:Point) : Boolean
      {
         return (param3.x - param1.x) * (param3.x - param1.x) + (param3.y - param1.y) * (param3.y - param1.y) <= param2 * param2;
      }
   }
}

