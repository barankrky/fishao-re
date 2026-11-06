package com.ax3.fishao.model.vo
{
   public class _849cfb7e3d3f1f15ce0c680a
   {
      
      public var id:int;
      
      public var imageURL:String;
      
      public var priceFishbucks:int;
      
      public var priceFishcoins:int;
      
      public var title:String;
      
      public var type:String;
      
      public var isFishCoinsCurrency:Boolean = false;
      
      public function _849cfb7e3d3f1f15ce0c680a()
      {
         super();
      }
      
      public static function _31249d24d327d467b3b29cd3(param1:_849cfb7e3d3f1f15ce0c680a, param2:_849cfb7e3d3f1f15ce0c680a) : int
      {
         var _loc3_:int = 0x7C00CDE9 ^ 0x4941E77D ^ 0x7B918BD9 ^ -1346522528;
         loop0:
         while(true)
         {
            switch(_loc3_ ^ (-1240685301 ^ -1868385767 ^ -605455517 ^ 0x1C2A7F5E))
            {
               case 0:
                  return 0x2364F84A ^ -437563640 ^ 0x2297CF54 ^ -468158441;
               case 1:
                  return 0x06B55924 ^ 0x19314778 ^ 0x65E2E85A ^ 0x7A66F606;
               case 2:
                  if(param1.priceFishbucks > param2.priceFishbucks)
                  {
                     _loc3_ = -317267751 ^ -1685122153 ^ -770639172 ^ 0x45E41ADD;
                  }
                  else
                  {
                     _loc3_ = 0x7F4664E3 ^ 0x2350D3BD ^ -265869644 ^ 0x4D5C82C6;
                  }
                  break;
               case 3:
                  if(param1.priceFishbucks < param2.priceFishbucks)
                  {
                     _loc3_ = 0x7523C716 ^ -773331655 ^ -267457484 ^ -1247290064;
                  }
                  else
                  {
                     _loc3_ = 0x5685AA20 ^ -505285613 ^ 0x2922D17B ^ 0x7F2B9C66;
                  }
                  break;
               case 4:
                  return -1787099794 ^ -806875087 ^ -635175456 ^ 0x7F4F1740;
               default:
                  break loop0;
            }
         }
         throw null;
      }
   }
}

