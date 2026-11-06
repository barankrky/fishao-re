package com.ax3.fishao.locations.objects
{
   import com.ax3.fishao.locations.EDisplayObjectType;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   
   public class ViewBridge extends ViewSpecial
   {
      
      public function ViewBridge(param1:DisplayObjectContainer)
      {
         super(param1);
         this.init();
      }
      
      private function init() : void
      {
         var _loc1_:DisplayObject = null;
         proceedWithObstacle();
         var _loc2_:int = 0;
         while(_loc2_ < _source.numChildren)
         {
            _loc1_ = _source.getChildAt(_loc2_);
            if(_loc1_.name.indexOf(EDisplayObjectType.EDOT_SYSTEM_OBSTACLE_SITUATIONAL) == -1)
            {
               _objectsWithFixedVisibility.push(_loc1_);
            }
            _loc2_++;
         }
         hide();
      }
   }
}

