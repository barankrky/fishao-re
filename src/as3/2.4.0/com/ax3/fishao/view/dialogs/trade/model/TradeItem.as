package com.ax3.fishao.view.dialogs.trade.model
{
   import com.ax3.fishao.ResourceType;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.model.ITradeItem;
   import com.ax3.fishao.model.ShopItemColor;
   import com.ax3.fishao.utils.FishaoBitmapLoader;
   import com.ax3.fishao.utils.I18n;
   
   public class TradeItem implements ITradeItem
   {
      
      private var _id:int;
      
      private var _infoId:int;
      
      private var _type:ResourceType;
      
      private var _name:String;
      
      private var _quantity:int;
      
      private var _description:String;
      
      private var _color:ShopItemColor = null;
      
      private var _imageUrl:String;
      
      public function TradeItem()
      {
         super();
      }
      
      public static function clone(param1:TradeItem) : TradeItem
      {
         var _loc2_:TradeItem = new TradeItem();
         _loc2_.id = param1.id;
         _loc2_.infoId = param1.infoId;
         _loc2_.quantity = param1.quantity;
         _loc2_.type = param1.type;
         _loc2_.color = param1.color;
         _loc2_.name = param1.name;
         _loc2_.description = param1.description;
         _loc2_.imageUrl = param1.imageUrl;
         return _loc2_;
      }
      
      public function set id(param1:int) : void
      {
         this._id = param1;
      }
      
      public function get id() : int
      {
         return this._id;
      }
      
      public function get infoId() : int
      {
         return this._infoId;
      }
      
      public function get type() : ResourceType
      {
         return this._type;
      }
      
      public function get name() : String
      {
         return this._name;
      }
      
      public function get description() : String
      {
         return this._description;
      }
      
      public function get color() : ShopItemColor
      {
         return this._color;
      }
      
      public function get imageUrl() : String
      {
         return this._imageUrl;
      }
      
      public function set type(param1:ResourceType) : void
      {
         this._type = param1;
      }
      
      public function get quantity() : int
      {
         return this._quantity;
      }
      
      public function set infoId(param1:int) : void
      {
         this._infoId = param1;
      }
      
      public function set name(param1:String) : void
      {
         this._name = param1;
      }
      
      public function set quantity(param1:int) : void
      {
         this._quantity = param1;
      }
      
      public function set description(param1:String) : void
      {
         this._description = param1;
      }
      
      public function set color(param1:ShopItemColor) : void
      {
         this._color = param1;
      }
      
      public function set imageUrl(param1:String) : void
      {
         this._imageUrl = param1;
      }
      
      public function get getAmount() : int
      {
         return this._quantity;
      }
      
      public function update() : void
      {
         this.setName();
         this.generateImageUrl();
      }
      
      public function generateImageUrl() : void
      {
         if(this._type == ResourceType.ROD)
         {
            this._imageUrl = FishaoBitmapLoader.convertImageNameURL(FishaoBitmapLoader.getResourceFilenameByKind(this._type.name,this._infoId));
         }
         else
         {
            this._imageUrl = FishaoBitmapLoader.convertImageNameURL(FishaoBitmapLoader.getResourceFilenameByKind(this._type.name,this._id));
         }
      }
      
      public function toRequestObject() : Object
      {
         var _loc1_:Object = {};
         _loc1_.id = this._id;
         _loc1_.type = this._type.id;
         _loc1_.quantity = this._quantity;
         if(this._type == ResourceType.ROD)
         {
            _loc1_.rodInfoId = this._infoId;
            if(this._color != null)
            {
               _loc1_.rodColor = this._color.name;
            }
         }
         return _loc1_;
      }
      
      public function setName() : void
      {
         switch(this._type)
         {
            case ResourceType.BAIT:
            case ResourceType.CLOTHE:
            case ResourceType.FISH:
            case ResourceType.FLOAT:
            case ResourceType.DECORATION:
            case ResourceType.FOSSIL:
               this._name = I18n.get(this._type.name + "_" + this._id);
               break;
            case ResourceType.FISH_SHINY:
               this._name = I18n.get(ResourceType.FISH.name + "_" + this._id) + " (" + I18n.getUpper("npc_name_shiny") + ")";
               break;
            case ResourceType.ROD:
               this._name = I18n.get(this._type.name + "_" + this._infoId);
               break;
            case ResourceType.FISHBUCKS:
               this._name = I18n.get("shopDialog_tab_fishbucks");
               break;
            case ResourceType.FISHBOX:
            case ResourceType.FISH_RADAR:
            case ResourceType.LUCK_POTION:
            case ResourceType.MAGIC_WATCH:
            case ResourceType.EXP_BOOSTER:
            case ResourceType.SHINY_POTION:
            case ResourceType.POWER_BOOSTER:
               this._name = I18n.get("resource_" + this._id);
               break;
            default:
               if(this._id == ResourceType.ID_SHELL && this._type == ResourceType.OTHER)
               {
                  this._name = I18n.get("resource_" + this._id);
               }
         }
      }
      
      public function deserialize(param1:Object) : void
      {
         var _loc2_:String = null;
         this._id = Debug.assertProperty(param1,"id");
         var _loc3_:int = Debug.assertProperty(param1,"type");
         this._type = ResourceType.findById(_loc3_);
         this._quantity = Debug.assertProperty(param1,"quantity");
         if(this._type == ResourceType.ROD)
         {
            this._infoId = Debug.assertProperty(param1,"rodInfoId");
            if(param1.hasOwnProperty("rodColor"))
            {
               _loc2_ = Debug.assertProperty(param1,"rodColor");
               this._color = ShopItemColor.findColorName(_loc2_);
            }
         }
         this.setName();
         this.generateImageUrl();
      }
   }
}

