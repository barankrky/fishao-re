package com.ax3.fishao.core
{
   import com.ax3.core.App;
   import com.ax3.core.ResourceManager;
   import com.ax3.fishao.utils.AssetFactory;
   import flash.display.Bitmap;
   
   public class FishaoResourceManager extends ResourceManager
   {
      
      public function FishaoResourceManager(param1:App)
      {
         super(param1);
      }
      
      override public function getSwfInstanceLoadingProgress(param1:String) : Number
      {
         return AssetFactory.getSwfInstanceLoadingProgress(param1);
      }
      
      override public function getSwfInstance(param1:String, param2:Function) : void
      {
         AssetFactory.getSwfInstance(param1,param2);
      }
      
      override public function getDefinitionFromLibraryByName(param1:String, param2:String) : Class
      {
         var _loc3_:Class = AssetFactory.getDefinitionFromLibrary(param1,param2);
         return _loc3_ != null ? _loc3_ : super.getDefinitionFromLibraryByName(param1,param2);
      }
      
      override public function replaceBitmapDataFromURL(param1:Bitmap, param2:String) : void
      {
         AssetFactory.replaceBitmapDataFromURL(param1,param2);
      }
   }
}

