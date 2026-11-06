package com.ax3.fishao.model.vo
{
   public class TradeDecorationItemVO
   {
      
      public var id:int;
      
      public var imageURL:String;
      
      public var priceFishbucks:int;
      
      public var priceFishcoins:int;
      
      public var title:String;
      
      public var type:String;
      
      public var isFishCoinsCurrency:Boolean = false;
      
      public function TradeDecorationItemVO()
      {
         super();
      }
      
      public static function sortItemsFunc(param1:TradeDecorationItemVO, param2:TradeDecorationItemVO) : int
      {
         if(param1.priceFishbucks > param2.priceFishbucks)
         {
            return 1;
         }
         if(param1.priceFishbucks < param2.priceFishbucks)
         {
            return -1;
         }
         return 0;
      }
   }
}

