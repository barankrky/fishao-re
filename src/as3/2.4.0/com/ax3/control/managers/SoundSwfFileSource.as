package com.ax3.control.managers
{
   import com.ax3.events.ExtEvent;
   import com.ax3.net.BinaryLoaderRepeatable;
   import flash.events.Event;
   import flash.media.Sound;
   import flash.net.URLRequest;
   
   public class SoundSwfFileSource
   {
      
      public var swfUrl:String;
      
      private var _isLoaded:Boolean = false;
      
      private var _loadHandlers:Vector.<Function>;
      
      public var loader:BinaryLoaderRepeatable;
      
      public function SoundSwfFileSource(param1:String)
      {
         super();
         this.swfUrl = param1;
      }
      
      public function isLoaded() : Boolean
      {
         return this._isLoaded;
      }
      
      public function createSound(param1:String) : Sound
      {
         var _loc2_:Class = this.loader.contentLoaderInfo.applicationDomain.getDefinition(param1) as Class;
         return new _loc2_();
      }
      
      public function addEventListener(param1:String, param2:Function) : void
      {
         if(param1 == Event.COMPLETE)
         {
            if(this._loadHandlers == null)
            {
               this._loadHandlers = new Vector.<Function>();
            }
            this._loadHandlers.push(param2);
         }
      }
      
      public function load() : void
      {
         if(this.loader == null && !this.isLoaded())
         {
            this.loader = new BinaryLoaderRepeatable(3);
            this.loader.addEventListener(Event.COMPLETE,this.onLoadingComplete);
            this.loader.load(new URLRequest(this.swfUrl));
         }
      }
      
      private function onLoadingComplete(param1:Event) : void
      {
         var _loc2_:ExtEvent = null;
         var _loc3_:Function = null;
         this.loader.removeEventListener(Event.COMPLETE,this.onLoadingComplete);
         if(this._loadHandlers != null)
         {
            _loc2_ = new ExtEvent(Event.COMPLETE);
            _loc2_.data = this;
            for each(_loc3_ in this._loadHandlers)
            {
               _loc3_(_loc2_);
            }
         }
         this._isLoaded = true;
      }
      
      public function isLoading() : Boolean
      {
         return this.loader != null && this._isLoaded == false;
      }
   }
}

