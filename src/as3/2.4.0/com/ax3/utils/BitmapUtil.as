package com.ax3.utils
{
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.geom.Matrix;
   import flash.geom.Rectangle;
   
   public class BitmapUtil
   {
      
      public function BitmapUtil()
      {
         super();
      }
      
      public static function rotateBitmapData(param1:BitmapData) : BitmapData
      {
         if(param1 == null)
         {
            return null;
         }
         var _loc2_:Matrix = new Matrix();
         _loc2_.scale(-1,1);
         _loc2_.translate(param1.width,2);
         var _loc3_:BitmapData = new BitmapData(param1.width,param1.height,true,0);
         _loc3_.draw(param1,_loc2_);
         return _loc3_;
      }
      
      public static function clone(param1:DisplayObject, param2:Matrix = null) : BitmapData
      {
         var _loc3_:BitmapData = new BitmapData(param1.width,param1.height,true,0);
         if(param1.scaleX != 1 || param1.scaleY != 1)
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
      
      public static function cloneBitmap(param1:Bitmap) : Bitmap
      {
         return new Bitmap(param1.bitmapData);
      }
      
      public static function cloneWithBounds(param1:DisplayObject) : BitmapData
      {
         var _loc2_:Matrix = new Matrix();
         var _loc3_:Rectangle = param1.getBounds(param1);
         _loc2_.tx = -_loc3_.x;
         _loc2_.ty = -_loc3_.y;
         return clone(param1,_loc2_);
      }
   }
}

