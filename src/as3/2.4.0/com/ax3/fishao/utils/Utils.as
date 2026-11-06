package com.ax3.fishao.utils
{
   import com.ax3.display.tfs.ParamsApplier;
   import com.ax3.utils.ColorMatrix;
   import com.junkbyte.console.Cc;
   import flash.display.DisplayObject;
   import flash.filters.ColorMatrixFilter;
   import flash.geom.Point;
   
   public class Utils
   {
      
      public function Utils()
      {
         super();
      }
      
      public static function randomFromTo(param1:Number, param2:Number) : Number
      {
         return Math.floor(Math.random() * (1 + param2 - param1)) + param1;
      }
      
      public static function distanceBetweenPoints(param1:Point, param2:Point) : Number
      {
         return Math.sqrt((param1.x - param2.x) * (param1.x - param2.x) + (param1.y - param2.y) * (param1.y - param2.y));
      }
      
      public static function anglePoint(param1:Point, param2:Point, param3:Point) : Number
      {
         var _loc4_:Number = Math.sqrt((param3.x - param1.x) * (param3.x - param1.x) + (param3.y - param1.y) * (param3.y - param1.y));
         var _loc5_:Number = Math.sqrt((param2.x - param1.x) * (param2.x - param1.x) + (param2.y - param1.y) * (param2.y - param1.y));
         var _loc6_:Number = Math.sqrt((param2.x - param3.x) * (param2.x - param3.x) + (param2.y - param3.y) * (param2.y - param3.y));
         return Math.acos((_loc6_ * _loc6_ - _loc4_ * _loc4_ - _loc5_ * _loc5_) / (-2 * _loc4_ * _loc5_));
      }
      
      public static function safeRun(param1:Function) : void
      {
         var callback:Function = param1;
         if(callback == null)
         {
            return;
         }
         try
         {
            callback();
         }
         catch(e:Error)
         {
            Cc.error(e);
         }
      }
      
      public static function cloneFilters(param1:Array) : Array
      {
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         var _loc4_:Array = [];
         for each(_loc2_ in param1)
         {
            if(_loc2_ is ColorMatrixFilter)
            {
               _loc3_ = new ColorMatrixFilter();
            }
            ParamsApplier.copyProperties(_loc3_,_loc2_);
            _loc4_.push(_loc3_);
         }
         return _loc4_;
      }
      
      public static function findFilters(param1:DisplayObject) : Array
      {
         var _loc2_:ColorMatrix = null;
         var _loc3_:Array = [];
         var _loc4_:Boolean = ColorMatrix.isColorTransformNotEmpty(param1.transform.colorTransform);
         if(_loc4_)
         {
            _loc2_ = new ColorMatrix();
            _loc2_.readFromColorTransform(param1.transform.colorTransform);
            _loc3_.push(_loc2_.filter);
         }
         var _loc5_:Array = param1.filters;
         if(_loc5_ != null && _loc5_.length > 0)
         {
            _loc3_ = _loc3_.concat(_loc5_);
         }
         return _loc3_;
      }
      
      public static function applyFiltersTo(param1:Vector.<DisplayObject>, param2:Array, param3:Boolean = true) : void
      {
         var _loc4_:DisplayObject = null;
         for each(_loc4_ in param1)
         {
            _loc4_.filters = param2;
            _loc4_.cacheAsBitmap = param3;
         }
      }
      
      public static function processFiltersTransparent(param1:Array, param2:Array, param3:Number) : void
      {
         var _loc4_:ColorMatrixFilter = null;
         var _loc5_:ColorMatrixFilter = null;
         var _loc6_:int = 0;
         while(_loc6_ < param1.length)
         {
            _loc4_ = param1[_loc6_] as ColorMatrixFilter;
            _loc5_ = param2[_loc6_] as ColorMatrixFilter;
            if(_loc4_ != null && _loc5_ != null)
            {
               _loc4_.matrix = ColorMatrix.processMatrixTransparent(_loc4_.matrix,_loc5_.matrix,param3);
            }
            _loc6_++;
         }
      }
   }
}

