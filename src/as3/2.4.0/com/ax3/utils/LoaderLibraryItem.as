package com.ax3.utils
{
   import com.ax3.net.LibraryItem;
   import com.ax3.utils.log.globalLogger;
   import flash.display.Loader;
   import flash.events.Event;
   import flash.system.ApplicationDomain;
   
   public class LoaderLibraryItem extends LibraryItem
   {
      
      protected var _callbacks:CallbackDispatcher = new CallbackDispatcher();
      
      public function LoaderLibraryItem(param1:String, param2:Loader = null)
      {
         super(param1);
         this.loader = param2;
      }
      
      public function hasDefinition(param1:String) : Boolean
      {
         return isLoaded() && this.loader.contentLoaderInfo.applicationDomain.hasDefinition(param1);
      }
      
      public function getDefinition(param1:String) : Class
      {
         var _loc2_:ApplicationDomain = this.loader.content.loaderInfo.applicationDomain;
         if(_loc2_.hasDefinition(param1))
         {
            return _loc2_.getDefinition(param1) as Class;
         }
         globalLogger.error("getDefinition: app not has definition of \'" + param1 + "\'");
         return null;
      }
      
      public function get loader() : Loader
      {
         return Loader(_item);
      }
      
      protected function onCompleteLoading(param1:Event) : void
      {
         loaded = true;
         if(this._callbacks)
         {
            this._callbacks.dispatchAndDestroy();
            this._callbacks = null;
         }
      }
      
      public function addCallback(param1:Function, ... rest) : void
      {
         this.addCallbackWithArgs(param1,rest);
      }
      
      public function addCallbackWithArgs(param1:Function, param2:Array) : void
      {
         if(isLoaded())
         {
            param1.apply(this,param2);
         }
         else
         {
            this._callbacks.addWithArgs(param1,param2);
         }
      }
      
      public function set loader(param1:Loader) : void
      {
         if(_item != null)
         {
            throw new Error("Loader can\'t be replaced");
         }
         if(param1 != null)
         {
            _item = param1;
            this.loader.contentLoaderInfo.addEventListener(Event.INIT,this.onCompleteLoading,false,0,true);
         }
      }
   }
}

