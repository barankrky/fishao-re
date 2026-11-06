package com.ax3.jpsearch
{
   public class Heuristic
   {
      
      public function Heuristic()
      {
         super();
      }
      
      public static function manhattan(param1:int, param2:int) : int
      {
         return param1 + param2;
      }
      
      public static function euclidean(param1:int, param2:int) : int
      {
         return Math.sqrt(param1 * param1 + param2 * param2);
      }
      
      public static function chebyshev(param1:int, param2:int) : int
      {
         return Math.max(param1,param2);
      }
   }
}

