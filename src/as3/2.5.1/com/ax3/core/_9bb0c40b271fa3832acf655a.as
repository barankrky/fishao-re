package com.ax3.core
{
   import flash.display.Bitmap;
   import flash.utils.getDefinitionByName;
   
   public class _9bb0c40b271fa3832acf655a implements IResourceManager
   {
      
      protected var _applicationModel:App;
      
      public function _9bb0c40b271fa3832acf655a(param1:App)
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
         return -1055673886 ^ -1912069073 ^ -1187007629 ^ -165402946;
      }
      
      public function replaceBitmapDataFromURL(param1:Bitmap, param2:String) : void
      {
      }
   }
}

