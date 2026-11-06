package com.ax3.net
{
   import flash.display.Loader;
   import flash.events.IOErrorEvent;
   import flash.net.URLRequest;
   import flash.system.LoaderContext;
   import flash.utils.setTimeout;
   
   public class LoaderRepeatable extends Loader
   {
      
      private var _repeats:int = 0;
      
      private var _request:URLRequest;
      
      private var _context:LoaderContext;
      
      public function LoaderRepeatable(param1:int = 999)
      {
         super();
         this._repeats = param1;
         contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.onIoError);
      }
      
      private function onIoError(param1:IOErrorEvent) : void
      {
         if(this.repeat())
         {
            param1.stopImmediatePropagation();
         }
      }
      
      protected function repeat() : Boolean
      {
         if(this._repeats-- > 1)
         {
            setTimeout(this.load,2000,this._request,this._context);
            return true;
         }
         return false;
      }
      
      override public function load(param1:URLRequest, param2:LoaderContext = null) : void
      {
         this._request = param1;
         this._context = param2;
         super.load(param1,param2);
      }
      
      public function get url() : String
      {
         return this._request != null ? this._request.url : null;
      }
   }
}

