package com.ax3.utils.math
{
   import flash.geom.Point;
   
   public class ResizeMath
   {
      
      public static const FILL:String = "fill";
      
      public static const FIT:String = "fit";
      
      public static const RAW:String = "raw";
      
      public function ResizeMath()
      {
         super();
      }
      
      public static function fixMethod(param1:String) : String
      {
         return param1 == FILL || param1 == FIT ? param1 : RAW;
      }
      
      public static function newDimensions(param1:Point, param2:Point, param3:String, param4:Boolean = true) : Point
      {
         var _loc5_:Point = scale(param1,param2,param3,param4);
         return new Point(_loc5_.x * param1.x,_loc5_.y * param1.y);
      }
      
      public static function scale(param1:Point, param2:Point, param3:String, param4:Boolean = true) : Point
      {
         var _loc5_:Number = param2.x / param1.x;
         var _loc6_:Number = param2.y / param1.y;
         var _loc7_:Number = _loc5_;
         var _loc8_:Number = _loc6_;
         if(param3 == FILL)
         {
            _loc7_ = _loc8_ = Math.max(_loc5_,_loc6_);
         }
         else if(param3 == FIT)
         {
            _loc7_ = _loc8_ = Math.min(_loc5_,_loc6_);
         }
         return new Point(_loc7_ > 1 && !param4 ? 1 : _loc7_,_loc8_ > 1 && !param4 ? 1 : _loc8_);
      }
   }
}

