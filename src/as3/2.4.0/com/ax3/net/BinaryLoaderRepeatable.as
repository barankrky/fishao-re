package com.ax3.net
{
   import com.ax3.events.FatalErrorEvent;
   import com.ax3.utils.log.globalLogger;
   import com.ax3.utils.removeAllChildren;
   import flash.display.DisplayObjectContainer;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.ProgressEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.net.URLRequest;
   import flash.system.LoaderContext;
   
   public class BinaryLoaderRepeatable extends Loader
   {
      
      public static var logger:Function = trace;
      
      public static var globalInstanceId:int = 0;
      
      protected var _repeats:int = 0;
      
      protected var _request:URLRequest;
      
      protected var _context:LoaderContext;
      
      private var _urlLoader:URLLoader;
      
      private var _isLoaded:Boolean = false;
      
      public var instanceId:int;
      
      public function BinaryLoaderRepeatable(param1:int = 999)
      {
         super();
         this.instanceId = globalInstanceId++;
         this._repeats = param1;
      }
      
      override public function load(param1:URLRequest, param2:LoaderContext = null) : void
      {
         logger("BinaryLoaderRepeatable.load",param1.url);
         this._request = param1;
         this._context = param2 || new LoaderContext();
         this._context.allowCodeImport = true;
         this.destroyUrlLoader();
         this._urlLoader = new URLLoaderRepeatable(this._repeats);
         this._urlLoader.dataFormat = URLLoaderDataFormat.BINARY;
         this._urlLoader.addEventListener(Event.COMPLETE,this.onUrlLoaderComplete);
         this._urlLoader.addEventListener(ProgressEvent.PROGRESS,this.onProgress);
         this._urlLoader.addEventListener(IOErrorEvent.IO_ERROR,this.onIoError);
         this._urlLoader.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onSecurityError);
         this._urlLoader.load(new URLRequest(this.url));
      }
      
      private function onProgress(param1:ProgressEvent) : void
      {
         dispatchEvent(param1);
      }
      
      private function onIoError(param1:IOErrorEvent) : void
      {
         logger("BinaryLoaderRepeatable.onIoError URL: " + this._request.url);
         logger("BinaryLoaderRepeatable.onIoError event.errorID: " + param1.errorID);
         var _loc2_:String = "BinaryLoaderRepeatable.onIoError event.errorID: " + param1.errorID + " -- URL: " + this._request.url;
         globalLogger.dispatchEvent(new FatalErrorEvent(FatalErrorEvent.ASSET_LOAD_ERROR,_loc2_));
      }
      
      private function onSecurityError(param1:SecurityErrorEvent) : void
      {
         logger("BinaryLoaderRepeatable.onSecurityError URL: ",this._request.url);
         logger("BinaryLoaderRepeatable.onSecurityError event.errorID: ",param1.errorID);
         var _loc2_:String = "BinaryLoaderRepeatable.onSecurityError event.errorID: " + param1.errorID + " -- URL: " + this._request.url;
         globalLogger.error();
         globalLogger.dispatchEvent(new FatalErrorEvent(FatalErrorEvent.ASSET_LOAD_ERROR,_loc2_));
      }
      
      private function onUrlLoaderComplete(param1:Event) : void
      {
         if(this._request == null)
         {
            return;
         }
         logger("BinaryLoaderRepeatable.onUrlLoaderComplete",this._request.url);
         if(this._context != null)
         {
            this._context.securityDomain = null;
         }
         if(this._urlLoader.bytesLoaded == 0)
         {
            globalLogger.dispatchEvent(new FatalErrorEvent(FatalErrorEvent.ASSET_LOAD_ERROR));
         }
         else
         {
            contentLoaderInfo.addEventListener(Event.COMPLETE,this.onLoadComplete);
            loadBytes(this._urlLoader.data,this._context);
         }
      }
      
      private function onLoadComplete(param1:Event) : void
      {
         if(this._request == null)
         {
            return;
         }
         logger("BinaryLoaderRepeatable.onLoadComplete",this._request.url);
         this._isLoaded = true;
         contentLoaderInfo.removeEventListener(Event.COMPLETE,this.onLoadComplete);
         this.destroyUrlLoader();
         dispatchEvent(param1);
      }
      
      private function destroyUrlLoader() : void
      {
         if(this._urlLoader)
         {
            this._urlLoader.close();
            this._urlLoader.removeEventListener(Event.COMPLETE,this.onUrlLoaderComplete);
            this._urlLoader.removeEventListener(ProgressEvent.PROGRESS,this.onProgress);
            this._urlLoader.removeEventListener(IOErrorEvent.IO_ERROR,this.onIoError);
            this._urlLoader.removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onSecurityError);
            this._urlLoader = null;
         }
      }
      
      public function get url() : String
      {
         return this._request != null ? this._request.url : null;
      }
      
      override public function close() : void
      {
         this.destroyUrlLoader();
         super.close();
      }
      
      public function get bytesTotal() : int
      {
         return this._urlLoader ? int(this._urlLoader.bytesTotal) : 0;
      }
      
      public function get bytesLoaded() : uint
      {
         return this._urlLoader ? this._urlLoader.bytesLoaded : 0;
      }
      
      public function isLoaded() : Boolean
      {
         return this._isLoaded;
      }
      
      public function destroy() : void
      {
         this._request = null;
         this._context = null;
         this._urlLoader = null;
      }
      
      public function destroyMcRecursive() : void
      {
         if(this.content is DisplayObjectContainer)
         {
            removeAllChildren(DisplayObjectContainer(this.content));
         }
      }
   }
}

