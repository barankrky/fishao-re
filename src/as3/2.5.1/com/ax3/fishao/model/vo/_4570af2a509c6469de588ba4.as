package com.ax3.fishao.model.vo
{
   import com.ax3.fishao._67282af25befe9778e5c8dd1;
   import com.ax3.fishao.model._91aad973ddd3030366bf3e1f;
   import com.ax3.utils.empty;
   
   public class _4570af2a509c6469de588ba4
   {
      
      public static const sortOrderItems:Vector.<int> = Vector.<int>([_67282af25befe9778e5c8dd1.FISH_RADAR.id,_67282af25befe9778e5c8dd1.FISH_RADAR.id,_67282af25befe9778e5c8dd1.LUCK_POTION.id,_67282af25befe9778e5c8dd1.MAGIC_WATCH.id,_67282af25befe9778e5c8dd1.EXP_BOOSTER.id,_67282af25befe9778e5c8dd1.POWER_BOOSTER.id,_67282af25befe9778e5c8dd1.SHINY_POTION.id,_67282af25befe9778e5c8dd1.FLOAT.id,_67282af25befe9778e5c8dd1.CLOTHE.id]);
      
      public static const sortOrderClothes:Vector.<int> = Vector.<int>([_67282af25befe9778e5c8dd1.SHOES_ID_OFFSET,_67282af25befe9778e5c8dd1.HAIR_ID_OFFSET,_67282af25befe9778e5c8dd1.HAT_ID_OFFSET]);
      
      public var id:int;
      
      public var priceFishcoins:int;
      
      public var priceFishbucks:int;
      
      public var name:String;
      
      public var param1:String;
      
      public var param2:String;
      
      public var param3:String;
      
      public var colors:Vector.<_91aad973ddd3030366bf3e1f>;
      
      public var blockReason:String = null;
      
      public var imageUrl:String;
      
      public var type:_67282af25befe9778e5c8dd1;
      
      public var selectedColor:_91aad973ddd3030366bf3e1f;
      
      public var description:String;
      
      public var amount:int = -1;
      
      public var playerLevelReq:int = -1;
      
      public function _4570af2a509c6469de588ba4()
      {
         super();
      }
      
      public static function _31249d24d327d467b3b29cd3(param1:_4570af2a509c6469de588ba4, param2:_4570af2a509c6469de588ba4) : int
      {
         if(empty(param1.blockReason) == empty(param2.blockReason))
         {
            if(empty(param1.blockReason) == true)
            {
               if(sortOrderItems.indexOf(param1.type.id) > sortOrderItems.indexOf(param2.type.id))
               {
                  return 0x0A765EEE ^ 0x32EF5253 ^ 0x12A7FEE9 ^ 0x2A3EF255;
               }
               if(sortOrderItems.indexOf(param1.type.id) < sortOrderItems.indexOf(param2.type.id))
               {
                  return -1467486708 ^ 0x6943D06B ^ 0x15847471 ^ 0x2BBFB5E9;
               }
               if(param1.type.id == _67282af25befe9778e5c8dd1.CLOTHE.id && param2.type.id == _67282af25befe9778e5c8dd1.CLOTHE.id)
               {
                  if(sortOrderClothes.indexOf(_67282af25befe9778e5c8dd1._f0bcdabb2e0b4fd663be6e8a(param1.id)) > sortOrderClothes.indexOf(_67282af25befe9778e5c8dd1._f0bcdabb2e0b4fd663be6e8a(param2.id)))
                  {
                     return 0x268425DD ^ 0x409A8FE2 ^ 0x20819372 ^ 0x469F394C;
                  }
                  if(sortOrderClothes.indexOf(_67282af25befe9778e5c8dd1._f0bcdabb2e0b4fd663be6e8a(param1.id)) < sortOrderClothes.indexOf(_67282af25befe9778e5c8dd1._f0bcdabb2e0b4fd663be6e8a(param2.id)))
                  {
                     return 0x287D111E ^ -1224773400 ^ 0x3444CFC3 ^ 0x553951CA;
                  }
                  if(param1.priceFishcoins > param2.priceFishcoins)
                  {
                     return -1907238973 ^ 0x25E3AE70 ^ 0x1C058F59 ^ -1212680469;
                  }
                  if(param1.priceFishcoins < param2.priceFishcoins)
                  {
                     return 0x1D371B1F ^ -2038774590 ^ -807759700 ^ -1419202418;
                  }
                  return 0x451D698E ^ -1602660190 ^ -416725136 ^ 0x024D765C;
               }
               if(param1.priceFishcoins > param2.priceFishcoins)
               {
                  return 0x22F42F63 ^ 0x3C6017B0 ^ 0x646C0123 ^ 0x7AF839F1;
               }
               if(param1.priceFishcoins < param2.priceFishcoins)
               {
                  return 0x44D6A9C4 ^ 0x60D0069B ^ -717861632 ^ 0x0ECF1DA0;
               }
               return -810941625 ^ 0x323DC854 ^ -1558314572 ^ 0x5E89CAA7;
            }
            if(sortOrderItems.indexOf(param1.type.id) > sortOrderItems.indexOf(param2.type.id))
            {
               return 0x074CB0EF ^ -1012168447 ^ 0x08477207 ^ -861910040;
            }
            if(sortOrderItems.indexOf(param1.type.id) < sortOrderItems.indexOf(param2.type.id))
            {
               return -1056236112 ^ -427623652 ^ 0x0B913CC4 ^ -739826281;
            }
            if(param1.type.id == _67282af25befe9778e5c8dd1.CLOTHE.id && param2.type.id == _67282af25befe9778e5c8dd1.CLOTHE.id)
            {
               if(sortOrderClothes.indexOf(_67282af25befe9778e5c8dd1._f0bcdabb2e0b4fd663be6e8a(param1.id)) > sortOrderClothes.indexOf(_67282af25befe9778e5c8dd1._f0bcdabb2e0b4fd663be6e8a(param2.id)))
               {
                  return -990195142 ^ 0x55B14B2B ^ -1230691938 ^ 0x27EEB88E;
               }
               if(sortOrderClothes.indexOf(_67282af25befe9778e5c8dd1._f0bcdabb2e0b4fd663be6e8a(param1.id)) < sortOrderClothes.indexOf(_67282af25befe9778e5c8dd1._f0bcdabb2e0b4fd663be6e8a(param2.id)))
               {
                  return 0x65AC53F0 ^ -896283628 ^ 0x042255FD ^ 0x54E235E6;
               }
               if(param1.playerLevelReq > param2.playerLevelReq)
               {
                  return 0x34BDE0BF ^ -671331955 ^ 0x05FAD8E0 ^ -423923245;
               }
               if(param1.playerLevelReq < param2.playerLevelReq)
               {
                  return -1057603903 ^ -2056866383 ^ 0x037712AE ^ -1189583327;
               }
               return -501071617 ^ 0x41668261 ^ 0x7A4DFA12 ^ -653707124;
            }
            if(param1.playerLevelReq > param2.playerLevelReq)
            {
               return 0x5355B4C3 ^ -417095526 ^ 0x31B2DCF0 ^ -2050701144;
            }
            if(param1.playerLevelReq < param2.playerLevelReq)
            {
               return 0x2C180FDF ^ -1744883063 ^ -760869669 ^ -1765880206;
            }
            return -348422368 ^ -446266807 ^ 0x23036D55 ^ 0x2D5E903C;
         }
         if(empty(param1.blockReason) == false && empty(param2.blockReason) == true)
         {
            return -1382127200 ^ 0x6EA0F290 ^ -1606225108 ^ 0x637C681D;
         }
         return 0x2A7B8E83 ^ 0x674DCCF3 ^ 0x644641B5 ^ -695206854;
      }
   }
}

