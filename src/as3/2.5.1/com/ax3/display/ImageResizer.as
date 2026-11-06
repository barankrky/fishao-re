package com.ax3.display
{
   import com.ax3.utils.math.ResizeMath;
   import flash.display.BitmapData;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class ImageResizer
   {
      
      public function ImageResizer()
      {
         super();
      }
      
      public static function bilinear(param1:BitmapData, param2:uint, param3:uint, param4:String, param5:Boolean = true) : BitmapData
      {
         var _loc6_:Point = ResizeMath.scale(new Point(param1.width,param1.height),new Point(param2,param3),param4,param5);
         var _loc7_:BitmapData = new BitmapData(param2,param3,true,-1678688118 ^ -1949985079 ^ 0x37ACF793 ^ 0x279821D0);
         var _loc8_:Matrix = new Matrix();
         _loc8_.scale(_loc6_.x,_loc6_.y);
         _loc8_.tx = (param2 - param1.width * _loc6_.x) / (-753612663 ^ -908620029 ^ 0x039A2D2F ^ 0x19596AA7);
         _loc8_.ty = (param3 - param1.height * _loc6_.y) / (-1021381758 ^ -1458009906 ^ 0x5FB3F123 ^ 0x35B58A6D);
         _loc7_.draw(param1,_loc8_,null,null,null,true);
         param1 = null;
         return _loc7_;
      }
      
      public static function bilinearIterative(param1:BitmapData, param2:uint, param3:uint, param4:String, param5:Boolean = true, param6:Number = 4) : BitmapData
      {
         var _loc7_:BitmapData = null;
         var _loc8_:uint = uint(param1.width);
         var _loc9_:uint = uint(param1.height);
         while(!_loc7_ || _loc8_ != param2 || _loc9_ != param3)
         {
            _loc8_ = param1.width > param2 ? uint(Math.max(Math.ceil(_loc8_ / param6),param2)) : uint(Math.min(Math.ceil(_loc8_ * param6),param2));
            _loc9_ = param1.height > param3 ? uint(Math.max(Math.ceil(_loc9_ / param6),param3)) : uint(Math.min(Math.ceil(_loc9_ * param6),param3));
            _loc7_ = bilinear(_loc7_ || param1,_loc8_,_loc9_,param4,param5);
         }
         return _loc7_;
      }
   }
}

