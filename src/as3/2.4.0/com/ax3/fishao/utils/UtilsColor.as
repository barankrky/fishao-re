package com.ax3.fishao.utils
{
   import flash.filters.ColorMatrixFilter;
   
   public class UtilsColor
   {
      
      public function UtilsColor()
      {
         super();
      }
      
      public static function getFilter(param1:Number) : ColorMatrixFilter
      {
         var _loc2_:Array = [1,0,0,0,param1,0,1,0,0,param1,0,0,1,0,param1,0,0,0,1,0];
         return new ColorMatrixFilter(_loc2_);
      }
   }
}

