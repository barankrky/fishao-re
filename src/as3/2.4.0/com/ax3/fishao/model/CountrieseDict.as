package com.ax3.fishao.model
{
   import com.junkbyte.console.Cc;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.net.URLLoader;
   import flash.net.URLRequest;
   
   public class CountrieseDict
   {
      
      private var _countries:Vector.<CountryRecord> = new Vector.<CountryRecord>();
      
      private var UNKNOWN_ISO3:String = "UN1";
      
      public function CountrieseDict(param1:String)
      {
         super();
         var _loc2_:URLLoader = new URLLoader();
         var _loc3_:URLRequest = new URLRequest(param1);
         _loc2_.addEventListener(Event.COMPLETE,this.onLoaderComplete);
         _loc2_.addEventListener(IOErrorEvent.IO_ERROR,this.onIOError);
         _loc2_.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onSecurityError);
         _loc2_.load(_loc3_);
         Cc.log("Loading countries " + _loc3_.url);
      }
      
      private function onSecurityError(param1:SecurityErrorEvent) : void
      {
         var _loc2_:URLLoader = URLLoader(param1.target);
         this.removeListeners(_loc2_);
         Cc.error("CountriesDict onSecurityError:",param1.text);
      }
      
      private function onIOError(param1:IOErrorEvent) : void
      {
         var _loc2_:URLLoader = URLLoader(param1.target);
         this.removeListeners(_loc2_);
         Cc.error("CountriesDict onIOError:",param1.text);
      }
      
      private function onLoaderComplete(param1:Event) : void
      {
         var _loc2_:CountryRecord = null;
         var _loc3_:Array = null;
         var _loc4_:int = 0;
         var _loc5_:URLLoader = URLLoader(param1.target);
         this.removeListeners(_loc5_);
         var _loc6_:Object = JSON.parse(_loc5_.data);
         if(_loc6_.hasOwnProperty("data") && _loc6_.data is Array)
         {
            _loc3_ = _loc6_.data;
            _loc4_ = 0;
            while(_loc4_ < _loc3_.length)
            {
               if(_loc3_[_loc4_].hasOwnProperty("id"))
               {
                  _loc2_ = new CountryRecord(_loc3_[_loc4_]);
                  this._countries.push(_loc2_);
               }
               _loc4_++;
            }
         }
      }
      
      private function removeListeners(param1:URLLoader) : void
      {
         param1.addEventListener(Event.COMPLETE,this.onLoaderComplete);
         param1.addEventListener(IOErrorEvent.IO_ERROR,this.onIOError);
         param1.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.onSecurityError);
      }
      
      public function get countries() : Vector.<CountryRecord>
      {
         return this._countries;
      }
      
      public function getCountryById(param1:String) : CountryRecord
      {
         var _loc2_:int = 0;
         while(_loc2_ < this._countries.length)
         {
            if(this._countries[_loc2_].id == param1)
            {
               return this._countries[_loc2_];
            }
            _loc2_++;
         }
         return null;
      }
      
      public function getCountryByIso2(param1:String) : CountryRecord
      {
         var _loc2_:int = 0;
         while(_loc2_ < this._countries.length)
         {
            if(this._countries[_loc2_].iso2 == param1)
            {
               return this._countries[_loc2_];
            }
            _loc2_++;
         }
         return null;
      }
      
      public function getPaymentSystemsFor(param1:String) : Array
      {
         var _loc2_:CountryRecord = this.getCountryById(param1);
         if(_loc2_ != null)
         {
            return _loc2_.paymentSystemIds;
         }
         return [];
      }
      
      public function get forDropdown() : Vector.<String>
      {
         var _loc1_:Vector.<String> = new Vector.<String>();
         var _loc2_:int = 0;
         while(_loc2_ < this._countries.length)
         {
            if(this._countries[_loc2_].id != this.UNKNOWN_ISO3)
            {
               _loc1_.push(this._countries[_loc2_].name);
            }
            _loc2_++;
         }
         _loc1_.sort(this.sortByName);
         return _loc1_;
      }
      
      private function sortByName(param1:String, param2:String) : Number
      {
         if(param1 > param2)
         {
            return 1;
         }
         if(param1 < param2)
         {
            return -1;
         }
         return 0;
      }
      
      public function getCountryByName(param1:String) : CountryRecord
      {
         var _loc2_:int = 0;
         while(_loc2_ < this._countries.length)
         {
            if(this._countries[_loc2_].name == param1)
            {
               return this._countries[_loc2_];
            }
            _loc2_++;
         }
         return null;
      }
   }
}

