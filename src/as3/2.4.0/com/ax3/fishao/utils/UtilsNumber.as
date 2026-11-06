package com.ax3.fishao.utils
{
   public class UtilsNumber
   {
      
      public function UtilsNumber()
      {
         super();
      }
      
      public static function roundTo(param1:int, param2:int) : int
      {
         return param2 * Math.round(param1 / param2);
      }
   }
}

