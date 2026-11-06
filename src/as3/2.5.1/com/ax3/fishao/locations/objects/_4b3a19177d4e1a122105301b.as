package com.ax3.fishao.locations.objects
{
   import com.ax3.fishao.locations._77ca96a94affdf1e9d31698c;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   
   public class _4b3a19177d4e1a122105301b extends _bdfc2793f4483f5853556c5a
   {
      
      public function _4b3a19177d4e1a122105301b(param1:DisplayObjectContainer)
      {
         super(param1);
         this.init();
      }
      
      override public function set itemsVisibility(param1:Boolean) : void
      {
         var _loc2_:DisplayObject = null;
         var _loc3_:DisplayObject = null;
         for each(_loc2_ in _objectsWithFixedVisibility)
         {
            _loc2_.visible = !param1;
         }
         for each(_loc3_ in _objectsWithInvertedVisibility)
         {
            _loc3_.visible = param1;
         }
      }
      
      private function init() : void
      {
         var _loc1_:DisplayObjectContainer = null;
         var _loc2_:int = 0x4E976187 ^ -400126609 ^ 0x269826D6 ^ -2144744898;
         var _loc3_:DisplayObject = null;
         var _loc4_:DisplayObject = null;
         _840f698fa649fbd34cd266dc();
         var _loc5_:int = -954241615 ^ -1357514913 ^ -1650867900 ^ -174892118;
         while(_loc5_ < _source.numChildren)
         {
            _loc1_ = _source.getChildAt(_loc5_) as DisplayObjectContainer;
            if(_loc1_ != null)
            {
               if(_loc1_.name.indexOf(_77ca96a94affdf1e9d31698c.EDOT_ISO_VISIBLE) > (0x4BA91FEB ^ -736082209 ^ -782304986 ^ -1322754067))
               {
                  _loc2_ = -2032019942 ^ 0x5E20BC02 ^ 0x470B9F93 ^ -1614088821;
                  while(_loc2_ < _loc1_.numChildren)
                  {
                     _loc3_ = _loc1_.getChildAt(_loc2_) as DisplayObject;
                     _objectsWithFixedVisibility.push(_loc3_);
                     _loc2_++;
                  }
               }
               if(_loc1_.name.indexOf(_77ca96a94affdf1e9d31698c.EDOT_ISO_VISIBLE_INVERTED) > (0x51BDE54D ^ 0xB510D4 ^ -1582275449 ^ 0x0F476EE1))
               {
                  _loc2_ = 0x76F5CA46 ^ -1581068120 ^ -916691981 ^ 0x1E6B791D;
                  while(_loc2_ < _loc1_.numChildren)
                  {
                     _loc4_ = _loc1_.getChildAt(_loc2_) as DisplayObject;
                     _objectsWithInvertedVisibility.push(_loc4_);
                     _loc2_++;
                  }
               }
            }
            _loc5_++;
         }
      }
   }
}

