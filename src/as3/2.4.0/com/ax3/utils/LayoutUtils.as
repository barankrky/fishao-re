package com.ax3.utils
{
   import flash.display.DisplayObject;
   import flash.geom.Rectangle;
   
   public class LayoutUtils
   {
      
      public function LayoutUtils()
      {
         super();
      }
      
      public static function arrangeDisplayObjectsHorizontallyCentreVertically(param1:Vector.<DisplayObject>, param2:Rectangle) : void
      {
         if(param1.length == 0)
         {
            return;
         }
         var _loc3_:Number = 0;
         var _loc4_:Number = 0;
         while(_loc4_ < param1.length)
         {
            _loc3_ += param1[_loc4_].width;
            _loc4_++;
         }
         param1[0].x = param2.x + (param2.width - _loc3_) / 2;
         arrangeDisplayObjectsHorizontally(param1);
      }
      
      public static function arrangeDisplayObjectsHorizontally(param1:Vector.<DisplayObject>) : void
      {
         var _loc2_:Number = 1;
         while(_loc2_ < param1.length)
         {
            param1[_loc2_].x = param1[_loc2_ - 1].x + param1[_loc2_ - 1].width;
            _loc2_++;
         }
      }
   }
}

