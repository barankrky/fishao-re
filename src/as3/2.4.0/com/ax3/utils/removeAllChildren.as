package com.ax3.utils
{
   import flash.display.DisplayObjectContainer;
   
   public function removeAllChildren(param1:DisplayObjectContainer) : void
   {
      if(param1 != null)
      {
         while(param1.numChildren)
         {
            param1.removeChildAt(0);
         }
      }
   }
}

