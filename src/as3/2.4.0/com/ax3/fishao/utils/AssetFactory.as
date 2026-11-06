package com.ax3.fishao.utils
{
   import com.ax3.net.LoaderRepeatable;
   import com.ax3.utils.LoaderLibraryItem;
   import com.ax3.utils.SwfInstanceItem;
   import com.junkbyte.console.Cc;
   import flash.display.Bitmap;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.net.URLRequest;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   import flash.system.Security;
   import flash.system.SecurityDomain;
   import flash.utils.Dictionary;
   
   public class AssetFactory
   {
      
      private static var _swfInstanceItemByName:Dictionary = new Dictionary();
      
      private static var _loaderLibraryItemByName:Dictionary = new Dictionary();
      
      public static var content:EventDispatcher = new EventDispatcher();
      
      private static var _urlBitmapLoader:FishaoBitmapLoader = new FishaoBitmapLoader();
      
      public function AssetFactory()
      {
         super();
      }
      
      public static function getSwfInstance(param1:String, param2:Function) : void
      {
         var _loc3_:SwfInstanceItem = null;
         var _loc4_:SwfInstanceItem = _swfInstanceItemByName[param1];
         if(!_loc4_)
         {
            _loc3_ = new SwfInstanceItem(param1);
            _loc3_.addCallback(param2);
            loadSwfInstance(_loc3_);
         }
         else if(_loc4_.isLoaded())
         {
            _loc4_.executeOnInstanceCreated(param2);
         }
         else
         {
            _loc4_.addCallback(param2);
         }
      }
      
      public static function getSwfInstanceLoadingProgress(param1:String) : Number
      {
         var _loc2_:SwfInstanceItem = null;
         if(_swfInstanceItemByName[param1])
         {
            _loc2_ = _swfInstanceItemByName[param1];
            return _loc2_.getLoadingProgress();
         }
         return 0;
      }
      
      public static function getDefinitionFromLibrary(param1:String, param2:String) : Class
      {
         var _loc3_:LoaderLibraryItem = _loaderLibraryItemByName[param1];
         return _loc3_.getDefinition(param2);
      }
      
      private static function loadSwfInstance(param1:SwfInstanceItem) : void
      {
         var _loc2_:LoaderContext = null;
         Cc.logch(AssetFactory,"Start load swfInstanceItem (" + param1 + ")");
         var _loc3_:String = param1.name;
         var _loc4_:ApplicationDomain = ApplicationDomain.currentDomain;
         var _loc5_:SecurityDomain = SecurityDomain.currentDomain;
         var _loc6_:LoaderRepeatable = new LoaderRepeatable(3);
         param1.loader = _loc6_;
         addSwfInstanceItem(param1);
         if(Security.sandboxType == Security.REMOTE)
         {
            _loc2_ = new LoaderContext(false,_loc4_,_loc5_);
            _loc6_.load(new URLRequest(_loc3_),_loc2_);
         }
         else
         {
            _loc2_ = new LoaderContext(false,_loc4_);
            _loc6_.load(new URLRequest(_loc3_),_loc2_);
         }
      }
      
      private static function addSwfInstanceItem(param1:SwfInstanceItem) : void
      {
         _swfInstanceItemByName[param1.name] = param1;
         _loaderLibraryItemByName[param1.name] = param1;
      }
      
      private static function onError(param1:IOErrorEvent) : void
      {
         Cc.errorch(AssetFactory,"onError",param1.text);
      }
      
      public static function replaceBitmapDataFromURL(param1:Bitmap, param2:String) : void
      {
         _urlBitmapLoader.replaceServerBitmapData(param1,param2);
      }
   }
}

