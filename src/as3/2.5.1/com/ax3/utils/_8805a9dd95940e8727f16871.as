package com.ax3.utils
{
   import flash.geom.Point;
   
   public class _8805a9dd95940e8727f16871
   {
      
      public function _8805a9dd95940e8727f16871()
      {
         super();
      }
      
      public static function _5ffd70504917cc3cf19edacb(param1:Point, param2:Number) : void
      {
         var _loc3_:Number = param2 * (Math.PI / (-78350814 ^ 0x7F5B5A18 ^ -1482890564 ^ 0x2393CE32));
         var _loc4_:Number = param1.x;
         var _loc5_:Number = param1.y;
         param1.x = _loc4_ * Math.cos(_loc3_) - _loc5_ * Math.sin(_loc3_);
         param1.y = _loc4_ * Math.sin(_loc3_) + _loc5_ * Math.cos(_loc3_);
      }
   }
}

