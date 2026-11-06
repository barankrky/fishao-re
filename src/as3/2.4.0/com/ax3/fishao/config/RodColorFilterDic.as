package com.ax3.fishao.config
{
   import com.ax3.fishao.model.ShopItemColor;
   import flash.filters.ColorMatrixFilter;
   import flash.utils.Dictionary;
   
   public class RodColorFilterDic
   {
      
      private var filterByShopItemColor:Dictionary;
      
      public function RodColorFilterDic()
      {
         var _loc1_:Array = null;
         super();
         this.filterByShopItemColor = new Dictionary();
         _loc1_ = [];
         _loc1_ = _loc1_.concat([1,0,0,0,0]);
         _loc1_ = _loc1_.concat([0.27,0.92,0,0,0]);
         _loc1_ = _loc1_.concat([0,1,0.79,0,0]);
         _loc1_ = _loc1_.concat([0,0,0,1,0]);
         this.filterByShopItemColor[ShopItemColor.BLUE] = [new ColorMatrixFilter(_loc1_)];
         this.filterByShopItemColor[ShopItemColor.DARKBLUE] = this.filterByShopItemColor[ShopItemColor.BLUE];
         _loc1_ = [];
         _loc1_ = _loc1_.concat([1,1,0,0,-3]);
         _loc1_ = _loc1_.concat([0,1,0,0,-10]);
         _loc1_ = _loc1_.concat([0,0,1,0,-7]);
         _loc1_ = _loc1_.concat([0,0,0,1,0]);
         this.filterByShopItemColor[ShopItemColor.RED] = [new ColorMatrixFilter(_loc1_)];
         _loc1_ = [];
         _loc1_ = _loc1_.concat([1,0.36,0.07,0,-102]);
         _loc1_ = _loc1_.concat([0.2,1,0.27,0,-102]);
         _loc1_ = _loc1_.concat([0.2,0.11,1,0,-102]);
         _loc1_ = _loc1_.concat([0,0,0,1,0]);
         this.filterByShopItemColor[ShopItemColor.BLACK] = [new ColorMatrixFilter(_loc1_)];
         _loc1_ = [];
         _loc1_ = _loc1_.concat([1,0.22,0,0,-68]);
         _loc1_ = _loc1_.concat([0.17,1,0,0,0]);
         _loc1_ = _loc1_.concat([0,0,1,0,-88]);
         _loc1_ = _loc1_.concat([0,0,0,1,0]);
         this.filterByShopItemColor[ShopItemColor.GREEN] = [new ColorMatrixFilter(_loc1_)];
         this.filterByShopItemColor[ShopItemColor.DARKGREEN] = this.filterByShopItemColor[ShopItemColor.GREEN];
         _loc1_ = [];
         _loc1_ = _loc1_.concat([0.48,0,0,0,207]);
         _loc1_ = _loc1_.concat([0,1,0,0,61]);
         _loc1_ = _loc1_.concat([0.68,0,0.63,0,0]);
         _loc1_ = _loc1_.concat([0,0,0,1,0]);
         this.filterByShopItemColor[ShopItemColor.BEIGE] = [new ColorMatrixFilter(_loc1_)];
         _loc1_ = [];
         _loc1_ = _loc1_.concat([1,0.39,0,0,-34]);
         _loc1_ = _loc1_.concat([0,0.92,0,0,0]);
         _loc1_ = _loc1_.concat([0,0,0.45,0,0]);
         _loc1_ = _loc1_.concat([0,0,0,1,0]);
         this.filterByShopItemColor[ShopItemColor.BROWN] = [new ColorMatrixFilter(_loc1_)];
      }
      
      public function getByShopItemColor(param1:ShopItemColor) : Array
      {
         return param1 in this.filterByShopItemColor ? this.filterByShopItemColor[param1] : null;
      }
   }
}

