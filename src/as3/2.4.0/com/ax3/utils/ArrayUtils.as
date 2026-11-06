package com.ax3.utils
{
   import com.ax3.utils.math.randomRange;
   
   public class ArrayUtils
   {
      
      public function ArrayUtils()
      {
         super();
      }
      
      public static function vectorToArray(param1:Object) : Array
      {
         var _loc2_:Object = null;
         var _loc3_:Array = [];
         for each(_loc2_ in param1)
         {
            _loc3_.push(_loc2_);
         }
         return _loc3_;
      }
      
      public static function addToArray(param1:Array, param2:Object) : Array
      {
         if(param1 == null)
         {
            param1 = [];
         }
         param1.push(param2);
         return param1;
      }
      
      public static function randomItem(param1:Array) : *
      {
         return param1.length > 0 ? param1[randomRange(0,param1.length - 1)] : null;
      }
   }
}

