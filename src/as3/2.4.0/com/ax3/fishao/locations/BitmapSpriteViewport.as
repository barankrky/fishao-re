package com.ax3.fishao.locations
{
   import flash.display.Bitmap;
   
   public class BitmapSpriteViewport extends Bitmap
   {
      
      private var _bitmapSprite:BitmapSpriteSource;
      
      public function BitmapSpriteViewport(param1:BitmapSpriteSource)
      {
         super();
         param1.addViewport(this);
         this._bitmapSprite = param1;
      }
      
      override public function set visible(param1:Boolean) : void
      {
         super.visible = param1;
      }
      
      override public function get width() : Number
      {
         var _loc1_:Number = super.width;
         return _loc1_ == 0 ? this._bitmapSprite.width : _loc1_;
      }
      
      override public function get height() : Number
      {
         var _loc1_:Number = super.height;
         return _loc1_ == 0 ? this._bitmapSprite.height : _loc1_;
      }
   }
}

