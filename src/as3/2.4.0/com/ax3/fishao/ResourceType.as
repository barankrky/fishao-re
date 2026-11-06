package com.ax3.fishao
{
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.locations.EBoosterType;
   import com.ax3.fishao.resources.EResourceType;
   
   public class ResourceType
   {
      
      private static var _all:Vector.<ResourceType> = new Vector.<ResourceType>();
      
      public static const ALL:ResourceType = new ResourceType(0,"all",null,null,false,null);
      
      public static const FISHCOINS:ResourceType = new ResourceType(1,"fishcoins","fishcoins_128x128.png",null,false,null);
      
      public static const BAIT:ResourceType = new ResourceType(2,"bait","baits/bait_128x128_#id#.png","baits/bait_56x56_#id#.png",true,EResourceType.BAIT_NAME);
      
      public static const ROD:ResourceType = new ResourceType(3,"rod","rods/rod_128x128_#id#.png","rods/rod_icon_#id#.png",false,EResourceType.RODS_NAME);
      
      public static const OTHER:ResourceType = new ResourceType(4,"resource","resources/resource_128x128_#id#.png","resources/resource_56x56_#id#.png",true,EResourceType.OTHER_NAME);
      
      public static const FISH:ResourceType = new ResourceType(5,"fish","fishes/fish_inventory76x76_#id#.png","fishes/fish_inventory76x76_#id#.png",true,EResourceType.FISH_NAME);
      
      public static const FISHBOX:ResourceType = new ResourceType(6,"resource","resources/resource_128x128_#id#.png",null,true,EResourceType.OTHER_NAME);
      
      public static const CLOTHE:ResourceType = new ResourceType(7,"looks","looks/looks_128x128_#id#.png","looks/looks_56x56_#id#.png",true,EResourceType.LOOKS_NAME);
      
      public static const LUCK_POTION:ResourceType = new ResourceType(8,"resource","resources/resource_128x128_#id#.png","resources/resource_56x56_#id#.png",true,EResourceType.OTHER_NAME);
      
      public static const MAGIC_WATCH:ResourceType = new ResourceType(9,"resource","resources/resource_128x128_#id#.png","resources/resource_56x56_#id#.png",true,EResourceType.OTHER_NAME);
      
      public static const FISH_RADAR:ResourceType = new ResourceType(10,"resource","resources/resource_128x128_#id#.png","resources/resource_56x56_#id#.png",true,EResourceType.OTHER_NAME);
      
      public static const FLOAT:ResourceType = new ResourceType(11,"float","floats/float_128x128_#id#.png","floats/float_56x56_#id#.png",true,EResourceType.OTHER_NAME);
      
      public static const FISHBUCKS:ResourceType = new ResourceType(12,"fishbucks","fishbucks_128x128.png",null,true,null);
      
      public static const EXP_BOOSTER:ResourceType = new ResourceType(15,"resource","resources/resource_128x128_#id#.png","resources/resource_56x56_#id#.png",true,EResourceType.OTHER_NAME);
      
      public static const SHINY_POTION:ResourceType = new ResourceType(18,"resource","resources/resource_128x128_#id#.png","resources/resource_56x56_#id#.png",true,EResourceType.OTHER_NAME);
      
      public static const DECORATION:ResourceType = new ResourceType(14,"decoration","private_house/graphics_128x128_#id#.png",null,false,EResourceType.DECORATION_NAME);
      
      public static const HERB_FISH:ResourceType = new ResourceType(13,"herb_fish","fishes/fish_300x76_#id#.png",null,false,EResourceType.FISH_NAME);
      
      public static const BADGE:ResourceType = new ResourceType(16,"badge","badges/badge_#id#_128x128.png",null,false,null);
      
      public static const LOCATION:ResourceType = new ResourceType(17,"locations","locations/location_preview_#id#.png",null,false,null);
      
      public static const ENERGY:ResourceType = new ResourceType(19,"energy","level_permissions/energy.png",null,false,null);
      
      public static const FOSSIL:ResourceType = new ResourceType(20,"fossil","resources/fossils/128x128/resource_128x128_#id#.png","resources/fossils/56x56/resource_56x56_#id#.png",true,EResourceType.FOSSILS_NAME);
      
      public static const FRUIT:ResourceType = new ResourceType(21,"fruit","resources/fruits/128x128/resource_128x128_#id#.png","resources/fruit/56x56/resource_56x56_#id#.png",true,EResourceType.OTHER_NAME);
      
      public static const FISH_SHINY:ResourceType = new ResourceType(22,"fish_shiny","fishes/fish_inventory76x76_#id#.png","fishes/fish_inventory76x76_#id#.png",true,EResourceType.FISH_NAME);
      
      public static const POWER_BOOSTER:ResourceType = new ResourceType(23,"resource","resources/resource_128x128_#id#.png","resources/resource_56x56_#id#.png",true,EResourceType.OTHER_NAME);
      
      public static const HAIR_ID_OFFSET:uint = 100;
      
      public static const HAT_ID_OFFSET:uint = 200;
      
      public static const UP_CLOTHE_ID_OFFSET:uint = 300;
      
      public static const DOWN_CLOTHE_ID_OFFSET:uint = 400;
      
      public static const SHOES_ID_OFFSET:uint = 500;
      
      public static const ICON_ID_OFFSET:uint = 600;
      
      public static const SUIT_ID_OFFSET:uint = 700;
      
      public static const ID_SHELL:uint = 1;
      
      public static const ID_LUCK_POTION_1:uint = 7;
      
      public static const ID_LUCK_POTION_2:uint = 8;
      
      public static const ID_MAGIC_WATCH:uint = 9;
      
      public static const ID_EXP_BOOSTER_X2:uint = 13;
      
      public static const ID_EXP_BOOSTER_X4:uint = 14;
      
      public static const ID_GREEN_FISH_RADAR:uint = 10;
      
      public static const ID_WHITE_FISH_RADAR:uint = 11;
      
      public static const ID_BLUE_FISH_RADAR:uint = 12;
      
      public static const ID_SHINY_POTION_1:uint = 15;
      
      public static const ID_SHINY_POTION_2:uint = 16;
      
      public static const ID_POWER_BOOSTER_1:uint = 17;
      
      public static const ID_POWER_BOOSTER_2:uint = 18;
      
      public var id:int;
      
      public var name:String;
      
      public var mediumImageFilenameTemplate:String;
      
      public var iconFilenameTemplate:String;
      
      public var isQuantitySeparable:Boolean;
      
      public var inventoryTabName:String;
      
      public function ResourceType(param1:int, param2:String, param3:String, param4:String, param5:Boolean, param6:String)
      {
         super();
         _all.push(this);
         this.id = param1;
         this.name = param2;
         this.mediumImageFilenameTemplate = param3;
         if(param4 != null)
         {
            this.iconFilenameTemplate = param4;
         }
         else
         {
            this.iconFilenameTemplate = this.mediumImageFilenameTemplate;
         }
         this.isQuantitySeparable = param5;
         this.inventoryTabName = param6;
      }
      
      public static function findByName(param1:String) : ResourceType
      {
         var _loc2_:ResourceType = null;
         for each(_loc2_ in _all)
         {
            if(_loc2_.name == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public static function findById(param1:int) : ResourceType
      {
         var _loc2_:ResourceType = null;
         for each(_loc2_ in _all)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public static function getCloseTypeById(param1:int) : int
      {
         return param1 - param1 % 100;
      }
      
      public static function getHairAbsoluteIdByCharViewId(param1:int) : int
      {
         return param1 - 100 + ResourceType.HAIR_ID_OFFSET;
      }
      
      public static function getHatAbsoluteIdByCharViewId(param1:int) : int
      {
         return param1 - 100 + ResourceType.HAT_ID_OFFSET;
      }
      
      public static function getShoesAbsoluteIdByCharViewId(param1:int) : int
      {
         return param1 - 100 + ResourceType.SHOES_ID_OFFSET;
      }
      
      public static function getBoosterResourceID(param1:String) : int
      {
         var _loc2_:int = 0;
         switch(param1)
         {
            case EBoosterType.EBT_EXP:
               _loc2_ = EXP_BOOSTER.id;
               break;
            case EBoosterType.EBT_RADAR:
               _loc2_ = FISH_RADAR.id;
               break;
            case EBoosterType.EBT_LUCKY_POTION:
               _loc2_ = LUCK_POTION.id;
               break;
            case EBoosterType.EBT_MAGIC_WATCH:
               _loc2_ = MAGIC_WATCH.id;
               break;
            case EBoosterType.EBT_SHINY_POTION:
               _loc2_ = SHINY_POTION.id;
               break;
            case EBoosterType.EBT_POWER_BOOSTER:
               _loc2_ = POWER_BOOSTER.id;
               break;
            default:
               Debug.assert(false);
         }
         return _loc2_;
      }
      
      public static function getKindByType(param1:int) : String
      {
         var _loc2_:String = null;
         switch(param1)
         {
            case ResourceType.BAIT.id:
               _loc2_ = ResourceType.BAIT.name;
               break;
            case ResourceType.ROD.id:
               _loc2_ = ResourceType.ROD.name;
               break;
            case ResourceType.OTHER.id:
               _loc2_ = ResourceType.OTHER.name;
               break;
            case ResourceType.FISH.id:
               _loc2_ = ResourceType.FISH.name;
               break;
            case ResourceType.HERB_FISH.id:
               _loc2_ = ResourceType.HERB_FISH.name;
               break;
            case ResourceType.FISH_SHINY.id:
               _loc2_ = ResourceType.FISH_SHINY.name;
               break;
            case ResourceType.FISHBOX.id:
               _loc2_ = ResourceType.FISHBOX.name;
               break;
            case ResourceType.CLOTHE.id:
               _loc2_ = ResourceType.CLOTHE.name;
               break;
            case ResourceType.LUCK_POTION.id:
               _loc2_ = ResourceType.LUCK_POTION.name;
               break;
            case ResourceType.MAGIC_WATCH.id:
               _loc2_ = ResourceType.MAGIC_WATCH.name;
               break;
            case ResourceType.FISH_RADAR.id:
               _loc2_ = ResourceType.FISH_RADAR.name;
               break;
            case ResourceType.EXP_BOOSTER.id:
               _loc2_ = ResourceType.EXP_BOOSTER.name;
               break;
            case ResourceType.SHINY_POTION.id:
               _loc2_ = ResourceType.SHINY_POTION.name;
               break;
            case ResourceType.POWER_BOOSTER.id:
               _loc2_ = ResourceType.POWER_BOOSTER.name;
               break;
            case ResourceType.FLOAT.id:
               _loc2_ = ResourceType.FLOAT.name;
               break;
            case ResourceType.DECORATION.id:
               _loc2_ = ResourceType.DECORATION.name;
               break;
            case ResourceType.FOSSIL.id:
               _loc2_ = ResourceType.FOSSIL.name;
               break;
            case ResourceType.FRUIT.id:
               _loc2_ = ResourceType.FRUIT.name;
               break;
            case ResourceType.BADGE.id:
               _loc2_ = ResourceType.BADGE.name;
         }
         return _loc2_;
      }
   }
}

