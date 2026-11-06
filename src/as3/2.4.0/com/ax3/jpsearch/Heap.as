package com.ax3.jpsearch
{
   public class Heap
   {
      
      private var _cmp:Function;
      
      private var _nodes:Vector.<JpsPoint> = new Vector.<JpsPoint>();
      
      public function Heap(param1:Function = null)
      {
         super();
         this._cmp = param1 == null ? defaultCmp : param1;
      }
      
      private static function defaultCmp(param1:int, param2:int) : int
      {
         if(param1 < param2)
         {
            return -1;
         }
         if(param1 > param2)
         {
            return 1;
         }
         return 0;
      }
      
      public static function jpsCmp(param1:JpsPoint, param2:JpsPoint) : int
      {
         if(param1.f < param2.f)
         {
            return -1;
         }
         if(param1.f > param2.f)
         {
            return 1;
         }
         return 0;
      }
      
      public function push(param1:JpsPoint) : JpsPoint
      {
         this._nodes.push(param1);
         this.sort();
         return param1;
      }
      
      public function get length() : int
      {
         return this._nodes.length;
      }
      
      public function updateItem(param1:JpsPoint) : JpsPoint
      {
         this.sort();
         return param1;
      }
      
      private function sort() : void
      {
         this._nodes.sort(this._cmp);
      }
      
      public function get nodes() : Vector.<JpsPoint>
      {
         return this._nodes;
      }
      
      public function shift() : JpsPoint
      {
         return this._nodes.shift();
      }
      
      public function print() : void
      {
         var _loc1_:JpsPoint = null;
         var _loc2_:String = "[";
         var _loc3_:int = 0;
         for each(_loc1_ in this._nodes)
         {
            _loc2_ += _loc3_ + ":{x: " + _loc1_.x + ", y: " + _loc1_.y + ", f: " + _loc1_.f + "}";
            _loc3_++;
         }
         _loc2_ += "]";
      }
   }
}

