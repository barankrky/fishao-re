package com.ax3.display.autoscalable
{
   import com.ax3.display.ImageResizer;
   import com.ax3.utils.math.ResizeMath;
   import flash.display.BitmapData;
   import flash.geom.Matrix;
   
   public class _0b976607cb271dfc280e2be1 extends _a4e47350c89a50d87a148c28
   {
      
      public function _0b976607cb271dfc280e2be1()
      {
         super();
      }
      
      override protected function _82a696edfd066ed03d182af1() : void
      {
         var _loc1_:Number = NaN;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Matrix = null;
         var _loc5_:int = 0x4ACF1795 ^ 0x1DE40035 ^ -1336607875 ^ -411046691;
         var _loc6_:int = -1907975487 ^ 0x68AE656B ^ 0x5908F369 ^ -1075835709;
         var _loc7_:BitmapData = null;
         var _loc8_:BitmapData = null;
         if(_originBitmapData != null)
         {
            _loc1_ = _originBitmapData.width / _originBitmapData.height;
            _loc2_ = _width / _height;
            if(_loc2_ > _loc1_)
            {
               _loc3_ = _height / _originBitmapData.height;
            }
            else
            {
               _loc3_ = _width / _originBitmapData.width;
            }
            _loc4_ = new Matrix();
            _loc4_.tx = int((_width - _originBitmapData.width * _loc3_) / (0x7EA0E4A8 ^ -1530217565 ^ 0x384B41E5 ^ -501145876));
            _loc4_.ty = int((_height - _originBitmapData.height * _loc3_) / (0x03BD54F2 ^ -171139145 ^ -362198260 ^ 0x1C18804B));
            _loc5_ = Math.ceil(_originBitmapData.width * _loc3_);
            _loc6_ = Math.ceil(_originBitmapData.height * _loc3_);
            _loc7_ = ImageResizer.bilinearIterative(_originBitmapData,_loc5_,_loc6_,ResizeMath.FIT,false,-657170864 ^ 0x5241ACF5 ^ 0x0DFFC706 ^ -2023082585);
            _loc8_ = new BitmapData(_width,_height,true,0x75E7710B ^ 0x4EE88D81 ^ -35640533 ^ -957360223);
            _loc8_.draw(_loc7_,_loc4_,null,null,null,true);
            _533b2a3d381dd745777652df(_loc8_);
            smoothing = true;
         }
      }
   }
}

