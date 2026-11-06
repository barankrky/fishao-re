package com.ax3.display.autoscalable
{
   import com.ax3.display.ImageResizer;
   import com.ax3.utils.math.ResizeMath;
   import flash.display.BitmapData;
   import flash.geom.Matrix;
   
   public class ScaledBitmapProgressive extends ScaledBitmap
   {
      
      public function ScaledBitmapProgressive()
      {
         super();
      }
      
      override protected function redraw() : void
      {
         var _loc1_:Number = NaN;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Matrix = null;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
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
            _loc4_.tx = int((_width - _originBitmapData.width * _loc3_) / 2);
            _loc4_.ty = int((_height - _originBitmapData.height * _loc3_) / 2);
            _loc5_ = Math.ceil(_originBitmapData.width * _loc3_);
            _loc6_ = Math.ceil(_originBitmapData.height * _loc3_);
            _loc7_ = ImageResizer.bilinearIterative(_originBitmapData,_loc5_,_loc6_,ResizeMath.FIT,false,4);
            _loc8_ = new BitmapData(_width,_height,true,0);
            _loc8_.draw(_loc7_,_loc4_,null,null,null,true);
            replaceBitmapDataDirect(_loc8_);
            smoothing = true;
         }
      }
   }
}

