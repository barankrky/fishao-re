package com.ax3.fishao.locations.objects
{
   import com.ax3.fishao.locations.EDisplayObjectType;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   
   public class ViewPirateCave extends ViewSpecial
   {
      
      public function ViewPirateCave(param1:DisplayObjectContainer)
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
         var _loc2_:int = 0;
         var _loc3_:DisplayObject = null;
         var _loc4_:DisplayObject = null;
         proceedWithObstacle();
         var _loc5_:int = 0;
         while(_loc5_ < _source.numChildren)
         {
            _loc1_ = _source.getChildAt(_loc5_) as DisplayObjectContainer;
            if(_loc1_ != null)
            {
               if(_loc1_.name.indexOf(EDisplayObjectType.EDOT_ISO_VISIBLE) > -1)
               {
                  _loc2_ = 0;
                  while(_loc2_ < _loc1_.numChildren)
                  {
                     _loc3_ = _loc1_.getChildAt(_loc2_) as DisplayObject;
                     _objectsWithFixedVisibility.push(_loc3_);
                     _loc2_++;
                  }
               }
               if(_loc1_.name.indexOf(EDisplayObjectType.EDOT_ISO_VISIBLE_INVERTED) > -1)
               {
                  _loc2_ = 0;
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

