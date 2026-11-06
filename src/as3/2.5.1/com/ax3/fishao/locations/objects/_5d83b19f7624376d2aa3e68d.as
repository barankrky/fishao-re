package com.ax3.fishao.locations.objects
{
   import com.ax3.fishao.locations._77ca96a94affdf1e9d31698c;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   
   public class _5d83b19f7624376d2aa3e68d extends _bdfc2793f4483f5853556c5a
   {
      
      public function _5d83b19f7624376d2aa3e68d(param1:DisplayObjectContainer)
      {
         super(param1);
         this.init();
      }
      
      private function init() : void
      {
         var _loc1_:DisplayObject = null;
         _840f698fa649fbd34cd266dc();
         var _loc2_:int = -405964054 ^ 0x7BE33621 ^ 0x31200A4C ^ -1391573369;
         while(_loc2_ < _source.numChildren)
         {
            _loc1_ = _source.getChildAt(_loc2_);
            if(_loc1_.name.indexOf(_77ca96a94affdf1e9d31698c.EDOT_SYSTEM_OBSTACLE_SITUATIONAL) == (-1980506607 ^ -2028212532 ^ -1532970508 ^ 0x55B776D6))
            {
               _objectsWithFixedVisibility.push(_loc1_);
            }
            _loc2_++;
         }
         hide();
      }
   }
}

