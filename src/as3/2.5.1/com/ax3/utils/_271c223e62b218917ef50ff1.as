package com.ax3.utils
{
   import flash.utils.Dictionary;
   
   public class _271c223e62b218917ef50ff1
   {
      
      public function _271c223e62b218917ef50ff1()
      {
         super();
      }
      
      public static function removeAll(param1:Dictionary) : void
      {
         var _loc2_:* = undefined;
         for(_loc2_ in param1)
         {
            param1[_loc2_] = null;
            delete param1[_loc2_];
         }
      }
   }
}

