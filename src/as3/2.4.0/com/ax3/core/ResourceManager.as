package com.ax3.core
{
   import flash.display.Bitmap;
   import flash.utils.getDefinitionByName;
   
   public class ResourceManager implements IResourceManager
   {
      
      protected var _applicationModel:App;
      
      public function ResourceManager(param1:App)
      {
         super();
         this._applicationModel = param1;
      }
      
      public function getSwfInstance(param1:String, param2:Function) : void
      {
      }
      
      public function getDefinitionFromLibraryByName(param1:String, param2:String) : Class
      {
         return getDefinitionByName(param2) as Class;
      }
      
      public function getSwfInstanceLoadingProgress(param1:String) : Number
      {
         return 0;
      }
      
      public function replaceBitmapDataFromURL(param1:Bitmap, param2:String) : void
      {
      }
   }
}

