package com.ax3.fishao.core
{
   import com.ax3.core.App;
   import com.ax3.core._9bb0c40b271fa3832acf655a;
   import com.ax3.fishao.utils._c51551cee1d8db71c112ce9a;
   import flash.display.Bitmap;
   
   public class _c9fd0eccd35a4b176fffc223 extends _9bb0c40b271fa3832acf655a
   {
      
      public function _c9fd0eccd35a4b176fffc223(param1:App)
      {
         super(param1);
      }
      
      override public function getSwfInstanceLoadingProgress(param1:String) : Number
      {
         return _c51551cee1d8db71c112ce9a.getSwfInstanceLoadingProgress(param1);
      }
      
      override public function getSwfInstance(param1:String, param2:Function) : void
      {
         _c51551cee1d8db71c112ce9a.getSwfInstance(param1,param2);
      }
      
      override public function getDefinitionFromLibraryByName(param1:String, param2:String) : Class
      {
         var _loc3_:Class = _c51551cee1d8db71c112ce9a._a1902505639170ed061db9a8(param1,param2);
         return _loc3_ != null ? _loc3_ : super.getDefinitionFromLibraryByName(param1,param2);
      }
      
      override public function replaceBitmapDataFromURL(param1:Bitmap, param2:String) : void
      {
         _c51551cee1d8db71c112ce9a.replaceBitmapDataFromURL(param1,param2);
      }
   }
}

