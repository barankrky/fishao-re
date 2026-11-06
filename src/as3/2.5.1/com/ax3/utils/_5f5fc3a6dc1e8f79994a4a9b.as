package com.ax3.utils
{
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.geom.Matrix;
   import flash.geom.Rectangle;
   
   public class _5f5fc3a6dc1e8f79994a4a9b
   {
      
      public function _5f5fc3a6dc1e8f79994a4a9b()
      {
         super();
      }
      
      public static function _f69d1d14537e0a1111f8208c(param1:BitmapData) : BitmapData
      {
         if(param1 == null)
         {
            return null;
         }
         var _loc2_:Matrix = new Matrix();
         _loc2_.scale(-212187758 ^ -2039543603 ^ -1215710184 ^ 0x3D430EB8,-2013554839 ^ -1540918395 ^ -436404549 ^ -970974634);
         _loc2_.translate(param1.width,-311941615 ^ 0x50E6469A ^ -69419724 ^ 0x4652DDBD);
         var _loc3_:BitmapData = new BitmapData(param1.width,param1.height,true,0x2B2A81E2 ^ -872619834 ^ 0x0E6CBFBC ^ -289743208);
         _loc3_.draw(param1,_loc2_);
         return _loc3_;
      }
      
      public static function clone(param1:DisplayObject, param2:Matrix = null) : BitmapData
      {
         var _loc3_:BitmapData = new BitmapData(param1.width,param1.height,true,0x097CAA38 ^ -788784610 ^ -1985753918 ^ 0x50237CE4);
         if(param1.scaleX != (-1596382768 ^ -1551022505 ^ -1886390862 ^ -1931767244) || param1.scaleY != (-1976341667 ^ 0x6B242D63 ^ 0x15352059 ^ -199072154))
         {
            if(param2 == null)
            {
               param2 = new Matrix();
            }
            param2.scale(param1.scaleX,param1.scaleY);
         }
         _loc3_.draw(param1,param2);
         return _loc3_;
      }
      
      public static function _501d2c9e57f8c1fd6d34af40(param1:Bitmap) : Bitmap
      {
         return new Bitmap(param1.bitmapData);
      }
      
      public static function _e7dbc3137e062426b65fde1a(param1:DisplayObject) : BitmapData
      {
         var _loc2_:Matrix = new Matrix();
         var _loc3_:Rectangle = param1.getBounds(param1);
         _loc2_.tx = -_loc3_.x;
         _loc2_.ty = -_loc3_.y;
         return clone(param1,_loc2_);
      }
   }
}

