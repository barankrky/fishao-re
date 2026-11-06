package com.ax3.utils
{
   import flash.geom.Point;
   
   public class MathUtil
   {
      
      public function MathUtil()
      {
         super();
      }
      
      public static function rotateVector(param1:Point, param2:Number) : void
      {
         var _loc3_:Number = param2 * (Math.PI / 180);
         var _loc4_:Number = param1.x;
         var _loc5_:Number = param1.y;
         param1.x = _loc4_ * Math.cos(_loc3_) - _loc5_ * Math.sin(_loc3_);
         param1.y = _loc4_ * Math.sin(_loc3_) + _loc5_ * Math.cos(_loc3_);
      }
   }
}

