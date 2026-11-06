package com.ax3.fishao.view.buttons
{
   import assets.common.ColorButton;
   import com.ax3.fishao.core.IMovieListElement;
   import com.ax3.fishao.model.ShopItemColor;
   import flash.display.MovieClip;
   import flash.display.Shape;
   import flash.filters.DropShadowFilter;
   import flash.geom.ColorTransform;
   
   public class ShopSelectingColor extends ColorButton implements IMovieListElement
   {
      
      public var index:int;
      
      public var showColor:uint;
      
      public var shopItemColor:ShopItemColor;
      
      public function ShopSelectingColor(param1:ShopItemColor, param2:int)
      {
         var _loc3_:ColorTransform = null;
         _loc3_ = null;
         super();
         this.shopItemColor = param1;
         buttonMode = true;
         this.index = param2;
         _loc3_ = new ColorTransform();
         this.showColor = param1.color;
         _loc3_.color = this.showColor;
         var _loc4_:DropShadowFilter = new DropShadowFilter(2,90,this.showColor & 0xCCCCCC,1,0,0,1,3);
         this.color.filters = [_loc4_];
         Shape(color.getChildAt(0)).transform.colorTransform = _loc3_;
         clearBackground(this);
      }
      
      public static function clearBackground(param1:ShopSelectingColor) : void
      {
         param1.bg.visible = false;
      }
      
      public static function showBackground(param1:ShopSelectingColor) : void
      {
         param1.bg.visible = true;
      }
      
      public static function isBackgroundActive(param1:MovieClip) : Boolean
      {
         return param1.bg.visible;
      }
      
      public function getCurrentElementIdex() : int
      {
         return this.index;
      }
   }
}

