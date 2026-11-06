package com.ax3.fishao.locations.objects
{
   import com.ax3.fishao.locations.EDisplayObjectType;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   
   public class ViewRocksPond extends ViewSpecial
   {
      
      public function ViewRocksPond(param1:DisplayObjectContainer)
      {
         super(param1);
         this.init();
      }
      
      private function init() : void
      {
         var _loc1_:DisplayObjectContainer = null;
         var _loc2_:int = 0;
         var _loc3_:DisplayObject = null;
         proceedWithObstacle();
         var _loc4_:int = 0;
         while(_loc4_ < _source.numChildren)
         {
            _loc1_ = _source.getChildAt(_loc4_) as DisplayObjectContainer;
            if(_loc1_ != null && _loc1_.name.indexOf(EDisplayObjectType.EDOT_ISO_VISIBLE) > -1)
            {
               _loc2_ = 0;
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

