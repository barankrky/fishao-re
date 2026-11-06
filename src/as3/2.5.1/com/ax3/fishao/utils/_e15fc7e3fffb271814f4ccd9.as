package com.ax3.fishao.utils
{
   public class _e15fc7e3fffb271814f4ccd9
   {
      
      public function _e15fc7e3fffb271814f4ccd9()
      {
         super();
      }
      
      public static function _eb63536b35178219258e57fd(param1:Object, param2:Object) : Object
      {
         var _loc3_:Object = {};
         _2b4a0530afd416eb174ae488(_loc3_,param1);
         _2b4a0530afd416eb174ae488(_loc3_,param2);
         return _loc3_;
      }
      
      public static function _2b4a0530afd416eb174ae488(param1:Object, param2:Object) : void
      {
         var _loc3_:String = null;
         for(_loc3_ in param2)
         {
            param1[_loc3_] = param2[_loc3_];
         }
      }
   }
}

