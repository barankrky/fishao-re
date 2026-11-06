package com.ax3.display.wrappers.impl
{
   import com.ax3.display.autoscalable.ScaledBitmap;
   import com.ax3.display.wrappers.IAssetWrapper;
   import com.ax3.fishao.ResourceType;
   import com.ax3.fishao.core.IMovieListElement;
   import com.ax3.fishao.model.info.InventoryItem;
   import com.ax3.fishao.utils.FishaoBitmapLoader;
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.vars.app;
   import com.ax3.utils.SetBitmapInContainer;
   import com.ax3.utils.removeAllChildren;
   import flash.display.Bitmap;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.text.TextField;
   
   public class AvailableItemWrapper extends Sprite implements IAssetWrapper, IMovieListElement
   {
      
      public static const TYPE_LOCATION:String = "location";
      
      public static const TYPE_ENERGY:String = "energy";
      
      public static const TYPE_TRADING:String = "trading";
      
      public static const TYPE_LEVEL_UP:String = "level_up";
      
      public static const TYPE_ENERGY_PRIZE:String = "energy_prize";
      
      public static const TYPE_LEVEL_UP_PRIZE:String = "level_up_prize";
      
      private static const BITMAP_WIDTH:int = 70;
      
      private static const BITMAP_HEIGHT:int = 70;
      
      private static const BITMAP_CONTAINER_WIDTH:int = 70;
      
      private static const BITMAP_CONTAINER_HEIGHT:int = 70;
      
      private var _label:TextField;
      
      private var _child:Sprite;
      
      private var _img:Sprite;
      
      private var _elementData:InventoryItem;
      
      public function AvailableItemWrapper()
      {
         super();
      }
      
      public function process(param1:DisplayObject) : void
      {
         this._child = Sprite(param1);
         this._img = Sprite(this._child.getChildByName("img"));
         this._label = TextField(this._child.getChildByName("label"));
         if(this._child.parent != null)
         {
            this._child.parent.addChild(this);
         }
         addChild(this._child);
      }
      
      public function set elementData(param1:Object) : void
      {
         var _loc2_:ScaledBitmap = null;
         switch(param1.type)
         {
            case TYPE_LOCATION:
               _loc2_ = new ScaledBitmap();
               _loc2_.width = BITMAP_WIDTH;
               _loc2_.height = BITMAP_HEIGHT;
               app.resourceManager.replaceBitmapDataFromURL(_loc2_,FishaoBitmapLoader.convertImageNameURL(FishaoBitmapLoader.getImageLocationURL(param1.id)));
               this.itemBitmap = _loc2_;
               this._label.text = I18n.get("location_" + param1.id);
               break;
            case ResourceType.CLOTHE.id:
               if(param1.id > 100)
               {
                  this.imageUrl = InventoryItem.getImageFilename(param1.id,param1.type);
                  this._label.text = I18n.get(ResourceType.getKindByType(param1.type) + "_" + param1.id);
               }
               else
               {
                  _loc2_ = new ScaledBitmap();
                  _loc2_.width = BITMAP_WIDTH;
                  _loc2_.height = BITMAP_HEIGHT;
                  app.resourceManager.replaceBitmapDataFromURL(_loc2_,FishaoBitmapLoader.convertImageNameURL(FishaoBitmapLoader.getImageClotheURL(param1.id)));
                  this.itemBitmap = _loc2_;
                  this._label.text = I18n.get(param1.id + "_name");
               }
               break;
            case TYPE_ENERGY:
            case TYPE_TRADING:
               _loc2_ = new ScaledBitmap();
               _loc2_.width = BITMAP_WIDTH;
               _loc2_.height = BITMAP_HEIGHT;
               app.resourceManager.replaceBitmapDataFromURL(_loc2_,FishaoBitmapLoader.convertImageNameURL(FishaoBitmapLoader.getImageLevelPermissionsURL(param1.type)));
               this.itemBitmap = _loc2_;
               this._label.text = I18n.get("new_level_" + param1.type);
               break;
            case TYPE_ENERGY_PRIZE:
            case TYPE_LEVEL_UP_PRIZE:
               _loc2_ = new ScaledBitmap();
               _loc2_.width = BITMAP_WIDTH;
               _loc2_.height = BITMAP_HEIGHT;
               app.resourceManager.replaceBitmapDataFromURL(_loc2_,FishaoBitmapLoader.convertImageNameURL(FishaoBitmapLoader.getImageLevelPermissionsURL(param1.type)));
               this.itemBitmap = _loc2_;
               this._label.text = I18n.get(param1.type).replace("#NUMBER#",param1.quantity);
               break;
            default:
               this.imageUrl = InventoryItem.getImageFilename(param1.id,param1.type);
               this._label.text = I18n.get(ResourceType.getKindByType(param1.type) + "_" + param1.id);
         }
      }
      
      private function set imageUrl(param1:String) : void
      {
         SetBitmapInContainer.loadBitmapInContainer(param1,this._img,app.resourceManager,BITMAP_WIDTH,BITMAP_HEIGHT,BITMAP_CONTAINER_WIDTH,BITMAP_CONTAINER_HEIGHT);
      }
      
      public function set text(param1:String) : void
      {
         this._label.text = param1;
      }
      
      public function getCurrentElementIdex() : int
      {
         return -1;
      }
      
      public function set itemBitmap(param1:Bitmap) : void
      {
         removeAllChildren(this._img);
         this._img.addChild(param1);
         param1.x = (BITMAP_WIDTH - param1.width) / 2;
         param1.y = (BITMAP_HEIGHT - param1.height) / 2;
      }
   }
}

