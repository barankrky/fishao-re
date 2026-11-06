package com.ax3.fishao.locations.objects
{
   import com.ax3.fishao.locations._77ca96a94affdf1e9d31698c;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   
   public class _df68122f0b57419fbef21a0e extends _bdfc2793f4483f5853556c5a
   {
      
      public function _df68122f0b57419fbef21a0e(param1:DisplayObjectContainer)
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
         var _loc1_:DisplayObjectContainer = null;
         var _loc2_:int = 0x0648D999 ^ 0x196F4801 ^ 0x63DF7A58 ^ 0x7CF8EBC0;
         var _loc3_:DisplayObject = null;
         _840f698fa649fbd34cd266dc();
         var _loc4_:int = -2138198450 ^ -2033990663 ^ -846839342 ^ -876073883;
         while(_loc4_ < _source.numChildren)
         {
            _loc1_ = _source.getChildAt(_loc4_) as DisplayObjectContainer;
            if(_loc1_ != null && _loc1_.name.indexOf(_77ca96a94affdf1e9d31698c.EDOT_ISO_NO_FILTERS) > (0x019A32B8 ^ -1977952174 ^ 0x0B12594C ^ 0x7F6D4C59))
            {
               _loc2_ = -784471164 ^ 0x7CEF853B ^ 0x645424E2 ^ -913946019;
               while(_loc2_ < _loc1_.numChildren)
               {
                  _loc3_ = _loc1_.getChildAt(_loc2_) as DisplayObject;
                  _objectsWithFixedVisibility.push(_loc3_);
                  _loc2_++;
               }
            }
            _loc4_++;
         }
      }
   }
}

