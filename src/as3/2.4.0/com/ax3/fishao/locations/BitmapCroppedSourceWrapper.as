package com.ax3.fishao.locations
{
   import flash.display.MovieClip;
   
   public class BitmapCroppedSourceWrapper extends BitmapCroppedMovieClipWrapper
   {
      
      public function BitmapCroppedSourceWrapper(param1:MovieClip)
      {
         super(param1);
      }
      
      override protected function createBitmapSprite() : BitmapSprite
      {
         return new BitmapSpriteSource();
      }
      
      public function getBitmapSpriteSources() : Vector.<BitmapSpriteSource>
      {
         var _loc1_:BitmapSprite = null;
         var _loc2_:Vector.<BitmapSpriteSource> = new Vector.<BitmapSpriteSource>();
         for each(_loc1_ in _grid)
         {
            _loc2_.push(_loc1_);
         }
         return _loc2_;
      }
   }
}

