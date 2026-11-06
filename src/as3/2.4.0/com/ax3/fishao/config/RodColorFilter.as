package com.ax3.fishao.config
{
   import com.ax3.fishao.model.ShopItemColor;
   
   public class RodColorFilter
   {
      
      private static const EMPTY_ARRAY:Array = [];
      
      private static const dic:RodColorFilterDic = new RodColorFilterDic();
      
      public function RodColorFilter()
      {
         super();
      }
      
      public static function getShowColorFilters(param1:int, param2:ShopItemColor) : Array
      {
         if(param2 == null)
         {
            return EMPTY_ARRAY;
         }
         return dic.getByShopItemColor(param2);
      }
      
      public static function getGameColorFilters(param1:int, param2:ShopItemColor) : Array
      {
         return getShowColorFilters(param1,param2);
      }
   }
}

