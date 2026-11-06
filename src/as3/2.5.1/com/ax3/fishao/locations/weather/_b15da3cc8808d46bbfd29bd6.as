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
   
   public class _b15da3cc8808d46bbfd29bd6 extends Sprite
   {
      
      public static const fogClasses:Array = [Fog1,Fog2,Fog3];
      
      public function _b15da3cc8808d46bbfd29bd6()
      {
         var _loc1_:BitmapData = null;
         super();
         var _loc2_:int = randomRange(0x6C5E3BED ^ 0x497B033E ^ -918990971 ^ -333678762,0x3313CC7D ^ -1895366232 ^ -1586688105 ^ 0x1D79C240);
         _loc1_ = new fogClasses[_loc2_]();
         var _loc3_:Bitmap = new Bitmap(_loc1_);
         _loc3_.x = -int(_loc3_.width / (0x090B46E8 ^ 0x4910968C ^ 0x72FE8AA6 ^ 0x32E55AC0));
         _loc3_.y = -int(_loc3_.height / (0x7EFE92AF ^ 0x48E0CE68 ^ -1363428102 ^ -1733959617));
         addChild(_loc3_);
         cacheAsBitmap = true;
      }
      
      public function destroy() : void
      {
      }
   }
}

