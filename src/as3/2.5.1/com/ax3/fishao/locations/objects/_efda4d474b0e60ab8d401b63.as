package com.ax3.fishao.locations.objects
{
   import com.ax3.fishao.locations._77ca96a94affdf1e9d31698c;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   
   public class _efda4d474b0e60ab8d401b63 extends _bdfc2793f4483f5853556c5a
   {
      
      public function _efda4d474b0e60ab8d401b63(param1:DisplayObjectContainer)
      {
         super(param1);
         this.init();
      }
      
      private function init() : void
      {
         var _loc1_:DisplayObjectContainer = null;
         var _loc2_:int = 0x6D7EBFBF ^ 0x7F86106E ^ -1344907672 ^ -1120994887;
         var _loc3_:DisplayObject = null;
         _840f698fa649fbd34cd266dc();
         var _loc4_:int = 0x168A0961 ^ 0x030F0F56 ^ -1269695534 ^ -1579876891;
         while(_loc4_ < _source.numChildren)
         {
            _loc1_ = _source.getChildAt(_loc4_) as DisplayObjectContainer;
            if(_loc1_ != null && _loc1_.name.indexOf(_77ca96a94affdf1e9d31698c.EDOT_ISO_VISIBLE) > (0x6A0B3777 ^ 0x700A557F ^ 0x5F32832F ^ -1161027880))
            {
               _loc2_ = 0x3A1E628B ^ 0x76BDACCF ^ 0x46593015 ^ 0x0AFAFE51;
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

