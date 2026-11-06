package com.ax3.fishao.model
{
   import com.junkbyte.console.Cc;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   
   public class TimezonesDict
   {
      
      private var _timezones:Object = {};
      
      public function TimezonesDict(param1:String)
      {
         super();
         var _loc2_:URLLoader = new URLLoader();
         var _loc3_:URLRequest = new URLRequest(param1);
         _loc2_.addEventListener(Event.COMPLETE,this.onLoaderComplete);
         _loc2_.addEventListener(IOErrorEvent.IO_ERROR,this.onIOError);
         _loc2_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onSecurityError);
         _loc2_.load(_loc3_);
      }
      
      private function onSecurityError(param1:SecurityErrorEvent) : void
      {
         var _loc2_:URLLoader = URLLoader(param1.target);
         this.removeListeners(_loc2_);
         Cc.error(this,"onSecurityError:",param1.text);
      }
      
      private function onIOError(param1:IOErrorEvent) : void
      {
         var _loc2_:URLLoader = URLLoader(param1.target);
         this.removeListeners(_loc2_);
         Cc.error(this,"onIOError:",param1.text);
      }
      
      private function onLoaderComplete(param1:Event) : void
      {
         var _loc2_:URLLoader = URLLoader(param1.target);
         this.removeListeners(_loc2_);
         this._timezones = JSON.parse(_loc2_.data);
      }
      
      private function removeListeners(param1:URLLoader) : void
      {
         param1.addEventListener(Event.COMPLETE,this.onLoaderComplete);
         param1.addEventListener(IOErrorEvent.IO_ERROR,this.onIOError);
         param1.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onSecurityError);
      }
      
      public function get getAll() : Object
      {
         return this._timezones;
      }
      
      public function getListFor(param1:String = null) : Array
      {
         var _loc2_:String = null;
         var _loc3_:Array = [];
         if(param1 != null)
         {
            if(this._timezones.hasOwnProperty(param1))
            {
               for(_loc2_ in this._timezones[param1])
               {
                  _loc3_.push(_loc2_.replace(/_/g," "));
               }
               _loc3_.sort();
            }
         }
         else
         {
            for(_loc2_ in this._timezones)
            {
               _loc3_.push(_loc2_.replace(/_/g," "));
            }
            _loc3_.sort();
         }
         return _loc3_;
      }
      
      public function getUTC(param1:String, param2:String) : String
      {
         if(this._timezones.hasOwnProperty(param1) && Boolean(this._timezones[param1].hasOwnProperty(param2)))
         {
            return this._timezones[param1][param2];
         }
         return null;
      }
   }
}

