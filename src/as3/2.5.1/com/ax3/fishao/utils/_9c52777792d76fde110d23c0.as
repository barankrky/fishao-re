package com.ax3.fishao.utils
{
   import com.ax3.display.tfs._bb16db8e79db6c61890c313e;
   import com.ax3.utils.ColorMatrix;
   import com.junkbyte.console.Cc;
   import flash.display.DisplayObject;
   import flash.filters.ColorMatrixFilter;
   import flash.geom.Point;
   
   public class _9c52777792d76fde110d23c0
   {
      
      public function _9c52777792d76fde110d23c0()
      {
         super();
      }
      
      public static function _60f3e8587e4103019e85c82e(param1:Number, param2:Number) : Number
      {
         return Math.floor(Math.random() * ((0x57BEBD83 ^ -1531995228 ^ -950547634 ^ 0x3446ED68) + param2 - param1)) + param1;
      }
      
      public static function _6a4e609a6fcabf8099412895(param1:Point, param2:Point) : Number
      {
         return Math.sqrt((param1.x - param2.x) * (param1.x - param2.x) + (param1.y - param2.y) * (param1.y - param2.y));
      }
      
      public static function _98f02e171da9cd790de81899(param1:Point, param2:Point, param3:Point) : Number
      {
         var _loc4_:Number = Math.sqrt((param3.x - param1.x) * (param3.x - param1.x) + (param3.y - param1.y) * (param3.y - param1.y));
         var _loc5_:Number = Math.sqrt((param2.x - param1.x) * (param2.x - param1.x) + (param2.y - param1.y) * (param2.y - param1.y));
         var _loc6_:Number = Math.sqrt((param2.x - param3.x) * (param2.x - param3.x) + (param2.y - param3.y) * (param2.y - param3.y));
         return Math.acos((_loc6_ * _loc6_ - _loc4_ * _loc4_ - _loc5_ * _loc5_) / ((-982449428 ^ 0x0A81B80B ^ -2100329082 ^ -1295990625) * _loc4_ * _loc5_));
      }
      
      public static function _7cebb4021a29bbad2ca1dcdf(param1:Function) : void
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
      
      public static function _6b85eafdbaf608366d48da90(param1:Array) : Array
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
            _bb16db8e79db6c61890c313e._a7e5a08ac5f225cac2ab429d(_loc3_,_loc2_);
            _loc4_.push(_loc3_);
         }
         return _loc4_;
      }
      
      public static function _c08b9d50de93ee9df95de516(param1:DisplayObject) : Array
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
         if(_loc5_ != null && _loc5_.length > (-1231435292 ^ 0x1F908BFF ^ 0x24A04553 ^ -1918302392))
         {
            _loc3_ = _loc3_.concat(_loc5_);
         }
         return _loc3_;
      }
      
      public static function _85beba13680a4d2af8926bfa(param1:Vector.<DisplayObject>, param2:Array, param3:Boolean = true) : void
      {
         var _loc4_:DisplayObject = null;
         for each(_loc4_ in param1)
         {
            _loc4_.filters = param2;
            _loc4_.cacheAsBitmap = param3;
         }
      }
      
      public static function _aca02dabec9019b8f4707df9(param1:Array, param2:Array, param3:Number) : void
      {
         var _loc4_:ColorMatrixFilter = null;
         var _loc5_:ColorMatrixFilter = null;
         var _loc6_:int = -1987490678 ^ -1351990185 ^ 0x39977F90 ^ 0x1F74774D;
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

