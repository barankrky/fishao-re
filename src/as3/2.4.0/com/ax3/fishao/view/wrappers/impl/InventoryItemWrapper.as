package com.ax3.fishao.view.wrappers.impl
{
   import com.ax3.display.autoscalable.ScaledBitmap;
   import com.ax3.display.wrappers.IAssetWrapper;
   import com.ax3.fishao.ResourceType;
   import com.ax3.fishao.config.RodColorFilter;
   import com.ax3.fishao.core.IMovieListElement;
   import com.ax3.fishao.model.info.InventoryItem;
   import com.ax3.fishao.model.vo.FishInfoVO;
   import com.ax3.fishao.utils.FishaoBitmapLoader;
   import com.ax3.fishao.vars.app;
   import com.ax3.utils.ColorMatrix;
   import com.ax3.utils.removeAllChildren;
   import flash.display.Bitmap;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.filters.ColorMatrixFilter;
   
   public class InventoryItemWrapper extends Sprite implements IAssetWrapper, IMovieListElement
   {
      
      private static const ITEM_BITMAP_WIDTH:int = 76;
      
      private static const ITEM_BITMAP_HEIGHT:int = 76;
      
      private static const ITEM_WIDTH:int = 81;
      
      private static const ITEM_HEIGHT:int = 81;
      
      private var _child:MovieClip;
      
      private var _img:MovieClip;
      
      private var _selected:MovieClip;
      
      private var _itemData:InventoryItem;
      
      public function InventoryItemWrapper()
      {
         super();
      }
      
      public function process(param1:DisplayObject) : void
      {
         this._child = MovieClip(param1);
         this._img = MovieClip(this._child.getChildByName("img"));
         this._selected = MovieClip(this._child.getChildByName("selected"));
         this._child.stop();
         if(this._child.parent != null)
         {
            this._child.parent.addChild(this);
         }
         addChild(this._child);
         mouseChildren = false;
         mouseEnabled = true;
         buttonMode = true;
         scaleX = scaleY = this._img.scaleX = this._img.scaleY = 1;
         this.active = false;
         this.selected = false;
      }
      
      public function set itemBitmap(param1:Bitmap) : void
      {
         removeAllChildren(this._img);
         this._img.addChild(param1);
         param1.x = (ITEM_WIDTH - param1.width) / 2;
         param1.y = (ITEM_HEIGHT - param1.height) / 2;
      }
      
      public function set selected(param1:Boolean) : void
      {
         if(this._selected != null)
         {
            this._selected.visible = param1;
         }
      }
      
      public function get selected() : Boolean
      {
         var _loc1_:Boolean = false;
         if(this._selected != null)
         {
            _loc1_ = this._selected.visible;
         }
         return _loc1_;
      }
      
      public function set active(param1:Boolean) : void
      {
         if(param1)
         {
            this._child.gotoAndStop(2);
         }
         else
         {
            this._child.gotoAndStop(1);
         }
      }
      
      public function get itemData() : InventoryItem
      {
         return this._itemData;
      }
      
      public function set itemData(param1:InventoryItem) : void
      {
         var _loc2_:ScaledBitmap = null;
         var _loc3_:Array = null;
         var _loc4_:FishInfoVO = null;
         var _loc5_:ColorMatrix = null;
         var _loc6_:ColorMatrixFilter = null;
         this._itemData = param1;
         this.selected = this._itemData.isSelected;
         if(this._itemData.imageFilename != null)
         {
            _loc2_ = new ScaledBitmap();
            _loc2_.width = ITEM_BITMAP_WIDTH;
            _loc2_.height = ITEM_BITMAP_HEIGHT;
            app.resourceManager.replaceBitmapDataFromURL(_loc2_,FishaoBitmapLoader.convertImageNameURL(this._itemData.imageFilename));
            if(this._itemData.resourceType == ResourceType.ROD)
            {
               _loc2_.filters = RodColorFilter.getGameColorFilters(this._itemData.infoId,this._itemData.color);
            }
            else if(this._itemData.resourceType == ResourceType.FISH_SHINY)
            {
               _loc3_ = [];
               _loc4_ = app.fishDict.get(this._itemData.id) as FishInfoVO;
               _loc5_ = new ColorMatrix();
               _loc5_.adjustHue(_loc4_.hueShiftOfShiny);
               _loc6_ = new ColorMatrixFilter(_loc5_.matrix);
               _loc3_.push(_loc6_);
               _loc2_.filters = _loc3_;
            }
            this.itemBitmap = _loc2_;
         }
      }
      
      public function getCurrentElementIdex() : int
      {
         return -1;
      }
      
      public function isActive() : Boolean
      {
         return this._child.currentFrame == 2;
      }
      
      override public function toString() : String
      {
         return "[InventoryItemWrapper(_itemData=" + this._itemData + ")]";
      }
   }
}

