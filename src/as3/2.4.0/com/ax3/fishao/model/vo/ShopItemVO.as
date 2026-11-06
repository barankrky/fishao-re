package com.ax3.fishao.model.vo
{
   import com.ax3.fishao.ResourceType;
   import com.ax3.fishao.model.ShopItemColor;
   import com.ax3.utils.empty;
   
   public class ShopItemVO
   {
      
      public static const sortOrderItems:Vector.<int> = Vector.<int>([ResourceType.FISH_RADAR.id,ResourceType.FISH_RADAR.id,ResourceType.LUCK_POTION.id,ResourceType.MAGIC_WATCH.id,ResourceType.EXP_BOOSTER.id,ResourceType.POWER_BOOSTER.id,ResourceType.SHINY_POTION.id,ResourceType.FLOAT.id,ResourceType.CLOTHE.id]);
      
      public static const sortOrderClothes:Vector.<int> = Vector.<int>([ResourceType.SHOES_ID_OFFSET,ResourceType.HAIR_ID_OFFSET,ResourceType.HAT_ID_OFFSET]);
      
      public var id:int;
      
      public var priceFishcoins:int;
      
      public var priceFishbucks:int;
      
      public var name:String;
      
      public var param1:String;
      
      public var param2:String;
      
      public var param3:String;
      
      public var colors:Vector.<ShopItemColor>;
      
      public var blockReason:String = null;
      
      public var imageUrl:String;
      
      public var type:ResourceType;
      
      public var selectedColor:ShopItemColor;
      
      public var description:String;
      
      public var amount:int = -1;
      
      public var playerLevelReq:int = -1;
      
      public function ShopItemVO()
      {
         super();
      }
      
      public static function sortItemsFunc(param1:ShopItemVO, param2:ShopItemVO) : int
      {
         if(empty(param1.blockReason) == empty(param2.blockReason))
         {
            if(empty(param1.blockReason) == true)
            {
               if(sortOrderItems.indexOf(param1.type.id) > sortOrderItems.indexOf(param2.type.id))
               {
                  return 1;
               }
               if(sortOrderItems.indexOf(param1.type.id) < sortOrderItems.indexOf(param2.type.id))
               {
                  return -1;
               }
               if(param1.type.id == ResourceType.CLOTHE.id && param2.type.id == ResourceType.CLOTHE.id)
               {
                  if(sortOrderClothes.indexOf(ResourceType.getCloseTypeById(param1.id)) > sortOrderClothes.indexOf(ResourceType.getCloseTypeById(param2.id)))
                  {
                     return 1;
                  }
                  if(sortOrderClothes.indexOf(ResourceType.getCloseTypeById(param1.id)) < sortOrderClothes.indexOf(ResourceType.getCloseTypeById(param2.id)))
                  {
                     return -1;
                  }
                  if(param1.priceFishcoins > param2.priceFishcoins)
                  {
                     return 1;
                  }
                  if(param1.priceFishcoins < param2.priceFishcoins)
                  {
                     return -1;
                  }
                  return 0;
               }
               if(param1.priceFishcoins > param2.priceFishcoins)
               {
                  return 1;
               }
               if(param1.priceFishcoins < param2.priceFishcoins)
               {
                  return -1;
               }
               return 0;
            }
            if(sortOrderItems.indexOf(param1.type.id) > sortOrderItems.indexOf(param2.type.id))
            {
               return 1;
            }
            if(sortOrderItems.indexOf(param1.type.id) < sortOrderItems.indexOf(param2.type.id))
            {
               return -1;
            }
            if(param1.type.id == ResourceType.CLOTHE.id && param2.type.id == ResourceType.CLOTHE.id)
            {
               if(sortOrderClothes.indexOf(ResourceType.getCloseTypeById(param1.id)) > sortOrderClothes.indexOf(ResourceType.getCloseTypeById(param2.id)))
               {
                  return 1;
               }
               if(sortOrderClothes.indexOf(ResourceType.getCloseTypeById(param1.id)) < sortOrderClothes.indexOf(ResourceType.getCloseTypeById(param2.id)))
               {
                  return -1;
               }
               if(param1.playerLevelReq > param2.playerLevelReq)
               {
                  return 1;
               }
               if(param1.playerLevelReq < param2.playerLevelReq)
               {
                  return -1;
               }
               return 0;
            }
            if(param1.playerLevelReq > param2.playerLevelReq)
            {
               return 1;
            }
            if(param1.playerLevelReq < param2.playerLevelReq)
            {
               return -1;
            }
            return 0;
         }
         if(empty(param1.blockReason) == false && empty(param2.blockReason) == true)
         {
            return 1;
         }
         return -1;
      }
   }
}

