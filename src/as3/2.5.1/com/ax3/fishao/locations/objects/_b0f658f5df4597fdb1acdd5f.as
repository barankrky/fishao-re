package com.ax3.fishao.locations.objects
{
   import com.ax3.fishao.locations._77ca96a94affdf1e9d31698c;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   
   public class _b0f658f5df4597fdb1acdd5f extends _bdfc2793f4483f5853556c5a
   {
      
      public function _b0f658f5df4597fdb1acdd5f(param1:DisplayObjectContainer)
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
         var _loc2_:int = -979264412 ^ -1830807320 ^ -559975941 ^ -1981876873;
         var _loc3_:DisplayObject = null;
         _840f698fa649fbd34cd266dc();
         var _loc4_:int = -1817197859 ^ -1196377961 ^ -722385861 ^ -1163663;
         while(_loc4_ < _source.numChildren)
         {
            _loc1_ = _source.getChildAt(_loc4_) as DisplayObjectContainer;
            if(_loc1_ != null && _loc1_.name.indexOf(_77ca96a94affdf1e9d31698c.EDOT_ISO_VISIBLE) > (-1534565867 ^ 0x746D3E87 ^ -456871518 ^ -874638641))
            {
               _loc2_ = 0x3C525A9C ^ 0x20524922 ^ -1768414160 ^ -1969735794;
               while(_loc2_ < _loc1_.numChildren)
               {
                  _loc3_ = _loc1_.getChildAt(_loc2_) as DisplayObject;
                  _objectsWithFixedVisibility.push(_loc3_);
                  _loc2_++;
               }
            }
            _loc4_++;
         }
         hide();
      }
   }
}

