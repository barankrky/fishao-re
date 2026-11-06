package com.ax3.utils
{
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   
   public function removeAllChildrenRecursive(param1:DisplayObjectContainer, param2:int = 0, param3:int = 3) : void
   {
      var _loc4_:DisplayObject = null;
      if(param2 > param3)
      {
         return;
      }
      var _loc5_:int = param1.numChildren;
      var _loc6_:int = 0;
      while(_loc6_ < _loc5_)
      {
         _loc4_ = param1.getChildAt(_loc6_);
         if(_loc4_ is DisplayObjectContainer && (_loc4_ as DisplayObjectContainer).numChildren > 0)
         {
            com.ax3.utils.removeAllChildrenRecursive(DisplayObjectContainer(_loc4_),param2 + 1);
         }
         _loc6_++;
      }
      param1.removeChildren();
   }
}

