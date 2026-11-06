package com.ax3.utils
{
   import flash.geom.Point;
   
   public class IsoMath
   {
      
      public function IsoMath()
      {
         super();
      }
      
      public static function getDegreesAlignByPoints(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         var _loc5_:Number = Math.atan2(param1 - param3,param2 - param4) * 180 / Math.PI;
         while(_loc5_ < 0)
         {
            _loc5_ = 360 + _loc5_;
         }
         return _loc5_ % 360;
      }
      
      public static function isPointInCircle(param1:Point, param2:Number, param3:Point) : Boolean
      {
         return (param3.x - param1.x) * (param3.x - param1.x) + (param3.y - param1.y) * (param3.y - param1.y) <= param2 * param2;
      }
   }
}

