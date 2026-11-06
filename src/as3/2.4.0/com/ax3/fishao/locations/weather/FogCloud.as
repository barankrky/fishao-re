package com.ax3.fishao.locations.weather
{
   import assets.common.Fog1;
   import assets.common.Fog2;
   import assets.common.Fog3;
   import com.ax3.utils.math.randomRange;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.Sprite;
   import flash.utils.getDefinitionByName;
   
   public class FogCloud extends Sprite
   {
      
      public static const fogClasses:Array = [Fog1,Fog2,Fog3];
      
      public function FogCloud()
      {
         var _loc1_:BitmapData = null;
         super();
         var _loc2_:int = randomRange(0,2);
         _loc1_ = new fogClasses[_loc2_]();
         var _loc3_:Bitmap = new Bitmap(_loc1_);
         _loc3_.x = -int(_loc3_.width / 2);
         _loc3_.y = -int(_loc3_.height / 2);
         addChild(_loc3_);
         cacheAsBitmap = true;
      }
      
      public function destroy() : void
      {
      }
   }
}

