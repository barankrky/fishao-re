package com.ax3.fishao.locations.objects
{
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   
   public class _3fbd5c1731dfd3a3a55edaec extends _bdfc2793f4483f5853556c5a
   {
      
      public function _3fbd5c1731dfd3a3a55edaec(param1:DisplayObjectContainer)
      {
         super(param1);
         this.init();
      }
      
      override public function set itemsVisibility(param1:Boolean) : void
      {
         itemsVisibilityAnimated = param1;
      }
      
      private function init() : void
      {
         var _loc1_:DisplayObject = null;
         var _loc2_:int = -1319334933 ^ 0x537F7EA8 ^ -1782771081 ^ 0x779EE734;
         while(_loc2_ < _source.numChildren)
         {
            _loc1_ = _source.getChildAt(_loc2_);
            _objectsWithFixedVisibility.push(_loc1_);
            _loc2_++;
         }
         super.itemsVisibility = false;
      }
   }
}

