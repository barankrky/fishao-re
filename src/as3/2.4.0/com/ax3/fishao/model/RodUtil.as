package com.ax3.fishao.model
{
   import flash.utils.Dictionary;
   
   public class RodUtil
   {
      
      public static const FISHAO_ROD_ID:int = 10;
      
      public static const ROD_SIZE_STRINGS:Dictionary = new Dictionary();
      
      ROD_SIZE_STRINGS[65] = "Small";
      ROD_SIZE_STRINGS[85] = "Normal";
      ROD_SIZE_STRINGS[105] = "Big";
      
      public function RodUtil()
      {
         super();
      }
      
      public static function getRodStringByLength(param1:int) : String
      {
         return ROD_SIZE_STRINGS[param1] || "";
      }
   }
}

