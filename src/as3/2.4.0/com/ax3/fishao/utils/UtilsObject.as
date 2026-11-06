package com.ax3.fishao.utils
{
   public class UtilsObject
   {
      
      public function UtilsObject()
      {
         super();
      }
      
      public static function mergeObjects(param1:Object, param2:Object) : Object
      {
         var _loc3_:Object = {};
         fillObject(_loc3_,param1);
         fillObject(_loc3_,param2);
         return _loc3_;
      }
      
      public static function fillObject(param1:Object, param2:Object) : void
      {
         var _loc3_:String = null;
         for(_loc3_ in param2)
         {
            param1[_loc3_] = param2[_loc3_];
         }
      }
   }
}

