package com.ax3.utils.display
{
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.InteractiveObject;
   
   public function disableMouse(param1:DisplayObject) : void
   {
      if(param1 is InteractiveObject)
      {
         (param1 as InteractiveObject).mouseEnabled = false;
      }
      if(param1 is DisplayObjectContainer)
      {
         (param1 as DisplayObjectContainer).mouseChildren = false;
      }
   }
}

