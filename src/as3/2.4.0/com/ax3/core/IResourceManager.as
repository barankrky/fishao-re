package com.ax3.core
{
   import flash.display.Bitmap;
   
   public interface IResourceManager
   {
      
      function getSwfInstance(param1:String, param2:Function) : void;
      
      function getDefinitionFromLibraryByName(param1:String, param2:String) : Class;
      
      function getSwfInstanceLoadingProgress(param1:String) : Number;
      
      function replaceBitmapDataFromURL(param1:Bitmap, param2:String) : void;
   }
}

