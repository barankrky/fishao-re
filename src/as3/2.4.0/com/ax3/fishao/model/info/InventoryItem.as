package com.ax3.fishao.model.info
{
   import com.ax3.fishao.ResourceType;
   import com.ax3.fishao.model.ResourceDict;
   import com.ax3.fishao.model.ShopItemColor;
   import com.ax3.fishao.utils.FishaoBitmapLoader;
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.utils.UtilsString;
   import com.ax3.fishao.vars.app;
   
   public class InventoryItem
   {
      
      public var id:int;
      
      public var infoId:int;
      
      public var imageFilename:String;
      
      public var extra:String;
      
      public var category:String;
      
      public var isSelected:Boolean;
      
      public var name:String;
      
      public var description:String;
      
      public var throwIns:int;
      
      public var type:int;
      
      public var resourceType:ResourceType;
      
      public var color:ShopItemColor;
      
      public function InventoryItem()
      {
         super();
      }
      
      public static function createItemWithType(param1:int, param2:int, param3:int, param4:int = 0) : InventoryItem
      {
         var _loc5_:InventoryItem = createItem(ResourceType.getKindByType(param1),param2,param3,param4);
         _loc5_.type = param1;
         return _loc5_;
      }
      
      public static function createItemOtherType(param1:int, param2:int, param3:int, param4:int = 0) : InventoryItem
      {
         var _loc5_:InventoryItem = createItem(ResourceType.OTHER.name,param2,param3,param4,param1);
         _loc5_.type = param1;
         return _loc5_;
      }
      
      public static function createItem(param1:String, param2:int, param3:int, param4:int = 0, param5:int = 0, param6:UserResource = null) : InventoryItem
      {
         var _loc7_:Array = null;
         var _loc8_:String = null;
         if(param1 == ResourceType.ROD.name && param4 == -1)
         {
            param4 = 1;
         }
         var _loc9_:InventoryItem = new InventoryItem();
         _loc9_.id = param2;
         _loc9_.infoId = param4;
         if(param1 == ResourceType.OTHER.name)
         {
            param1 = ResourceType.getKindByType(param5);
         }
         _loc9_.imageFilename = FishaoBitmapLoader.getResourceFilenameByKind(param1,_loc9_.infoId);
         _loc9_.name = I18n.getUpper(param1 + "_" + param4);
         var _loc10_:String = "";
         switch(param5)
         {
            case ResourceType.FISH_SHINY.id:
               _loc10_ = " (" + I18n.getUpper("npc_name_shiny") + ")";
               break;
            case ResourceType.HERB_FISH.id:
               _loc10_ = " (" + I18n.get("npc_name_herb") + ")";
               break;
            default:
               _loc10_ = "";
         }
         _loc9_.name += _loc10_;
         switch(param1)
         {
            case ResourceType.DECORATION.name:
               _loc9_.description = I18n.get("inventoryDialog_decoration_desc");
               break;
            case ResourceType.FOSSIL.name:
               _loc7_ = _loc9_.name.split(" ");
               _loc7_.pop();
               _loc8_ = _loc7_.join(" ");
               _loc8_ = UtilsString.getFirstCharCapitalized(_loc8_);
               _loc9_.description = I18n.get("fossil_desc").replace("#FISH#",_loc8_).toUpperCase();
               break;
            default:
               _loc9_.description = I18n.template(param1 + "_desc_" + param4,{"amount":app.user.inventory.amountOfFishrodToBuyLeft}).toUpperCase();
         }
         _loc9_.extra = "";
         _loc9_.category = "";
         _loc9_.isSelected = false;
         _loc9_.throwIns = param3;
         var _loc11_:ResourceDict = getInventoryResourceDict(param1);
         if(_loc11_)
         {
            _loc9_.extra = String(_loc11_.getProperty(param2,"extra",""));
            _loc9_.category = String(_loc11_.getProperty(param2,"category",""));
         }
         _loc9_.resourceType = ResourceType.findByName(param1);
         if(_loc9_.resourceType == ResourceType.ROD && param6 is UserRod)
         {
            _loc9_.color = ShopItemColor.findColorName((param6 as UserRod).color);
         }
         else if(_loc9_.resourceType == ResourceType.FISH && param5 == ResourceType.FISH_SHINY.id)
         {
            _loc9_.resourceType = ResourceType.FISH_SHINY;
         }
         return _loc9_;
      }
      
      private static function getInventoryResourceDict(param1:String) : ResourceDict
      {
         if(param1 == ResourceType.ROD.name)
         {
            return app.rodsDict;
         }
         if(param1 == ResourceType.BAIT.name)
         {
            return app.baitsDict;
         }
         return null;
      }
      
      public static function getImageFilename(param1:int, param2:int) : String
      {
         return FishaoBitmapLoader.getResourceFilenameByKind(ResourceType.getKindByType(param2),param1);
      }
      
      public function toString() : String
      {
         return "[InventoryItem(id=" + this.id + ",infoId=" + this.infoId + ",throwIns=" + this.throwIns + ")]";
      }
   }
}

