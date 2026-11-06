package com.ax3.net
{
   import com.ax3.utils.log.globalLogger;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.utils.setTimeout;
   
   public class URLLoaderRepeatable extends URLLoader
   {
      
      private var _repeats:int = 0;
      
      private var _request:URLRequest;
      
      public function URLLoaderRepeatable(param1:int = 999, param2:URLRequest = null)
      {
         super(param2);
         this._repeats = param1;
         addEventListener(IOErrorEvent.IO_ERROR,this.onIoError);
         addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onSecurityError);
      }
      
      private function onIoError(param1:IOErrorEvent) : void
      {
         this.repeatOnError(param1);
         param1.stopImmediatePropagation();
      }
      
      private function onSecurityError(param1:SecurityErrorEvent) : void
      {
         this.repeatOnError(param1);
         param1.stopImmediatePropagation();
      }
      
      protected function repeatOnError(param1:Event) : void
      {
         if(!this.repeat())
         {
            removeEventListener(IOErrorEvent.IO_ERROR,this.onIoError);
            removeEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onSecurityError);
            dispatchEvent(param1);
         }
      }
      
      protected function repeat() : Boolean
      {
         if(this._repeats-- > 1)
         {
            globalLogger.ch("load","Try load again " + this._request.url + " (" + this._repeats + ")");
            setTimeout(this.load,2000,this._request);
            return true;
         }
         return false;
      }
      
      override public function load(param1:URLRequest) : void
      {
         this._request = param1;
         super.load(param1);
      }
      
      public function get request() : URLRequest
      {
         return this._request;
      }
   }
}

