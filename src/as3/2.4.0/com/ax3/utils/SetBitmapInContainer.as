package com.ax3.utils
{
   import com.ax3.core.IResourceManager;
   import com.ax3.display.autoscalable.ScaledBitmap;
   import com.ax3.fishao.utils.FishaoBitmapLoader;
   import flash.display.DisplayObjectContainer;
   
   public class SetBitmapInContainer
   {
      
      public function SetBitmapInContainer()
      {
         super();
      }
      
      public static function loadBitmapInContainer(param1:String, param2:DisplayObjectContainer, param3:IResourceManager, param4:Number, param5:Number, param6:Number, param7:Number) : void
      {
         var _loc8_:ScaledBitmap = createScaleBitmapInContainer(param4,param5,param6,param7,param2);
         param3.replaceBitmapDataFromURL(_loc8_,FishaoBitmapLoader.convertImageNameURL(param1));
      }
      
      public static function setUserAvatarInContainer(param1:String, param2:DisplayObjectContainer, param3:Number, param4:Number, param5:Number, param6:Number) : void
      {
         var _loc7_:ScaledBitmap = createScaleBitmapInContainer(param3,param4,param5,param6,param2);
         GameSwf.charsManager.initAvatarBitmap(_loc7_,param1);
      }
      
      private static function createScaleBitmapInContainer(param1:Number, param2:Number, param3:Number, param4:Number, param5:DisplayObjectContainer) : ScaledBitmap
      {
         var _loc6_:ScaledBitmap = new ScaledBitmap();
         _loc6_.width = param1;
         _loc6_.height = param2;
         _loc6_.centerBitmapRelativeToContainer(param3,param4);
         removeAllChildren(param5);
         param5.addChild(_loc6_);
         return _loc6_;
      }
   }
}

