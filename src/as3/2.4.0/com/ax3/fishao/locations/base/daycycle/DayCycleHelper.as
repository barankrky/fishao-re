package com.ax3.fishao.locations.base.daycycle
{
   import com.ax3.fishao.utils.Utils;
   import flash.display.DisplayObject;
   
   public class DayCycleHelper
   {
      
      private var _nightFilter:Array;
      
      private var _nightFilterOrig:Array;
      
      private var _objects:Vector.<DisplayObject>;
      
      public function DayCycleHelper()
      {
         super();
         this.init();
      }
      
      public function get objects() : Vector.<DisplayObject>
      {
         return this._objects;
      }
      
      public function get nightFilter() : Array
      {
         return this._nightFilter;
      }
      
      public function set nightFilter(param1:Array) : void
      {
         this._nightFilter = param1;
         this._nightFilterOrig = Utils.cloneFilters(this._nightFilter);
      }
      
      private function init() : void
      {
         this._objects = new Vector.<DisplayObject>(0);
         this._nightFilter = [];
         this._nightFilterOrig = [];
      }
      
      public function processTransparent(param1:Number) : void
      {
         Utils.processFiltersTransparent(this._nightFilter,this._nightFilterOrig,param1);
      }
      
      public function addObject(param1:DisplayObject) : void
      {
         this._objects.push(param1);
      }
      
      public function clearFilters() : void
      {
         Utils.applyFiltersTo(this._objects,[]);
      }
      
      public function applyFilters() : void
      {
         Utils.applyFiltersTo(this._objects,this._nightFilter);
      }
      
      public function cleanup() : void
      {
         this._nightFilter = null;
         this._nightFilterOrig = null;
         this._objects = null;
      }
   }
}

