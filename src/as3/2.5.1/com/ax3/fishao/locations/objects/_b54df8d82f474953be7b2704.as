package com.ax3.fishao.locations.objects
{
   import com.ax3.fishao.locations._77ca96a94affdf1e9d31698c;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   
   public class _b54df8d82f474953be7b2704 extends _bdfc2793f4483f5853556c5a
   {
      
      public function _b54df8d82f474953be7b2704(param1:DisplayObjectContainer)
      {
         super(param1);
         this.init();
      }
      
      private function init() : void
      {
         var _loc1_:DisplayObjectContainer = null;
         var _loc2_:int = -208364943 ^ 0x342BE996 ^ -968205094 ^ 0x01F52F3D;
         var _loc3_:DisplayObject = null;
         _840f698fa649fbd34cd266dc();
         var _loc4_:int = 0x04A1059E ^ 0x1E6A7766 ^ -1449195210 ^ -1286308914;
         while(_loc4_ < _source.numChildren)
         {
            _loc1_ = _source.getChildAt(_loc4_) as DisplayObjectContainer;
            if(_loc1_ != null && _loc1_.name.indexOf(_77ca96a94affdf1e9d31698c.EDOT_ISO_VISIBLE) > (-1204737521 ^ -1873797305 ^ -486651675 ^ 0x35608252))
            {
               _loc2_ = 0x5167033D ^ -1596489006 ^ -52610003 ^ 0x0D6DBDC2;
               while(_loc2_ < _loc1_.numChildren)
               {
                  _loc3_ = _loc1_.getChildAt(_loc2_) as DisplayObject;
                  _objectsWithFixedVisibility.push(_loc3_);
                  _loc2_++;
               }
            }
            _loc4_++;
         }
         isEnabled = true;
      }
   }
}

