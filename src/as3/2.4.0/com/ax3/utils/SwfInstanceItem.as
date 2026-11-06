package com.ax3.utils
{
   import com.ax3.events.FatalErrorEvent;
   import com.ax3.net.BinaryLoaderRepeatable;
   import com.ax3.net.LoaderRepeatable;
   import com.ax3.utils.log.globalLogger;
   import flash.display.Loader;
   import flash.display.LoaderInfo;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.system.ApplicationDomain;
   import flash.system.LoaderContext;
   
   public class SwfInstanceItem extends LoaderLibraryItem
   {
      
      public function SwfInstanceItem(param1:String, param2:Loader = null)
      {
         super(param1,param2);
      }
      
      override protected function onCompleteLoading(param1:Event) : void
      {
         globalLogger.logch("load",this.toString() + " init Complete");
         loaded = true;
         if(_callbacks)
         {
            this.createInstance();
         }
      }
      
      public function createInstance() : void
      {
         if(!isLoaded())
         {
            throw new Error("Library not loaded");
         }
         var _loc1_:ApplicationDomain = ApplicationDomain.currentDomain;
         var _loc2_:LoaderContext = new LoaderContext(false,_loc1_);
         _loc2_.allowCodeImport = true;
         var _loc3_:LoaderRepeatable = new LoaderRepeatable(3);
         _loc3_.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.onIoError);
         _loc3_.contentLoaderInfo.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onSecurityError);
         _loc3_.contentLoaderInfo.addEventListener(Event.COMPLETE,this.onCreatingComplete);
         _loc3_.loadBytes(loader.contentLoaderInfo.bytes,_loc2_);
      }
      
      private function onSecurityError(param1:SecurityErrorEvent) : void
      {
         globalLogger.error("onSecurityError",param1.text);
         this.onError(param1.currentTarget as LoaderRepeatable);
      }
      
      private function onIoError(param1:IOErrorEvent) : void
      {
         globalLogger.error("onIoError",param1.text);
         this.onError(param1.currentTarget as Loader);
      }
      
      private function onError(param1:Loader) : void
      {
         globalLogger.dispatchEvent(new FatalErrorEvent(FatalErrorEvent.ASSET_LOAD_ERROR));
         this.removeListeners(param1);
      }
      
      private function onCreatingComplete(param1:Event) : void
      {
         var _loc2_:LoaderInfo = param1.currentTarget as LoaderInfo;
         this.removeListeners(_loc2_ as Loader);
         _callbacks.dispatchAndShift(_loc2_.content as MovieClip);
         if(_callbacks.length > 0)
         {
            this.createInstance();
         }
      }
      
      private function removeListeners(param1:Loader) : void
      {
         if(param1 != null)
         {
            param1.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.onIoError);
            param1.contentLoaderInfo.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onSecurityError);
            param1.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.onCreatingComplete);
         }
      }
      
      public function executeOnInstanceCreated(param1:Function) : void
      {
         _callbacks.add(param1);
         this.createInstance();
      }
      
      public function getLoadingProgress() : Number
      {
         var _loc1_:Loader = this.loader;
         if(_loaded)
         {
            return 1;
         }
         if(_loc1_ is BinaryLoaderRepeatable)
         {
            if(_loc1_ != null && BinaryLoaderRepeatable(_loc1_).bytesTotal > 0)
            {
               return BinaryLoaderRepeatable(_loc1_).bytesLoaded / BinaryLoaderRepeatable(_loc1_).bytesTotal;
            }
            return 0;
         }
         if(_loc1_ != null && _loc1_.contentLoaderInfo.bytesTotal > 0)
         {
            return _loc1_.contentLoaderInfo.bytesLoaded / _loc1_.contentLoaderInfo.bytesTotal;
         }
         return 0;
      }
   }
}

