package com.ax3.fishao.model
{
   import com.brokenfunction.json.decodeJson;
   import com.junkbyte.console.Cc;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   import flash.utils.Dictionary;
   
   public class ResourceDict
   {
      
      private var _dict:Dictionary = new Dictionary();
      
      protected var _all:Vector.<Object> = new Vector.<Object>();
      
      private var _voCls:Class;
      
      public function ResourceDict(param1:String, param2:Class = null)
      {
         super();
         this._voCls = param2;
         var _loc3_:URLLoader = new URLLoader();
         var _loc4_:URLRequest = new URLRequest(param1);
         _loc3_.addEventListener(Event.COMPLETE,this.onLoaderComplete);
         _loc3_.addEventListener(IOErrorEvent.IO_ERROR,this.onIOError);
         _loc3_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onSecurityError);
         _loc3_.load(_loc4_);
         Cc.ch(GameSwf.LOADING_CHANNEL,"Loading " + _loc4_.url);
      }
      
      public function get(param1:int) : Object
      {
         if(this._dict.hasOwnProperty(String(param1)))
         {
            return this._dict[param1];
         }
         return null;
      }
      
      public function getProperty(param1:int, param2:String, param3:Object = null) : Object
      {
         var _loc4_:Object = this.get(param1);
         if(_loc4_ != null && _loc4_.hasOwnProperty(param2))
         {
            return _loc4_[param2];
         }
         return param3;
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
         var _loc2_:Array = null;
         var _loc3_:int = 0;
         var _loc4_:Object = null;
         var _loc5_:URLLoader = URLLoader(param1.target);
         this.removeListeners(_loc5_);
         var _loc6_:Object = decodeJson(_loc5_.data);
         if(_loc6_.hasOwnProperty("data") && _loc6_.data is Array)
         {
            _loc2_ = _loc6_.data;
            _loc3_ = 0;
            while(_loc3_ < _loc2_.length)
            {
               if(_loc2_[_loc3_].hasOwnProperty("id"))
               {
                  if(this._voCls != null)
                  {
                     _loc4_ = new this._voCls();
                     (_loc4_ as IValueObject).readResponse(_loc2_[_loc3_]);
                  }
                  else
                  {
                     _loc4_ = _loc2_[_loc3_];
                  }
                  this._dict[_loc2_[_loc3_]["id"]] = _loc4_;
                  this._all.push(_loc4_);
               }
               else
               {
                  Cc.warn("ResourceDict: some data not have id",JSON.stringify(_loc2_[_loc3_]));
               }
               _loc3_++;
            }
         }
         this.sort();
      }
      
      protected function sort() : void
      {
      }
      
      private function removeListeners(param1:URLLoader) : void
      {
         param1.addEventListener(Event.COMPLETE,this.onLoaderComplete);
         param1.addEventListener(IOErrorEvent.IO_ERROR,this.onIOError);
         param1.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onSecurityError);
      }
      
      public function toString() : String
      {
         return "[ResourceDict(_dict=" + (this._dict != null ? JSON.stringify(this._dict) : "null") + ")]";
      }
      
      public function getAll() : Vector.<Object>
      {
         return this._all;
      }
   }
}

