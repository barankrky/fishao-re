package com.ax3.fishao.utils
{
   public class FishaoUtil
   {
      
      public function FishaoUtil()
      {
         super();
      }
      
      public static function isGuestUsername(param1:String) : Boolean
      {
         return param1.toLowerCase().indexOf("guest") == 0;
      }
   }
}

