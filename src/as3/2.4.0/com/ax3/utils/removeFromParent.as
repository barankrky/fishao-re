package com.ax3.utils
{
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   
   public function removeFromParent(param1:DisplayObject, param2:DisplayObjectContainer = null) : void
   {
      if(param1 != null && param1.parent != null)
      {
         if(param2 == null || param1.parent == param2)
         {
            param1.parent.removeChild(param1);
         }
      }
   }
}

