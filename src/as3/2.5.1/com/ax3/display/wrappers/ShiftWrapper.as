package com.ax3.display.wrappers
{
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   
   public class ShiftWrapper extends Sprite
   {
      
      protected var _child:DisplayObject;
      
      public function ShiftWrapper()
      {
         super();
      }
      
      public static function shiftDisplayObject(param1:DisplayObject, param2:DisplayObject, param3:Boolean = false) : void
      {
         var _loc4_:int = 0x4EFD9B27 ^ -191080467 ^ 0x0A5D6EA3 ^ -1338203543;
         param2.x = param1.x;
         param2.y = param1.y;
         param1.x = -663354592 ^ -1928546054 ^ 0x5B046803 ^ 0x0E7ED3D9;
         param1.y = 0x676480D6 ^ -2122717117 ^ -2061078369 ^ 0x633B180A;
         var _loc5_:DisplayObjectContainer = param1.parent;
         if(_loc5_ != null)
         {
            _loc4_ = _loc5_.getChildIndex(param1);
            _loc5_.removeChild(param1);
            _loc5_.addChildAt(param2,_loc4_);
         }
         if(param3 && param2 is DisplayObjectContainer)
         {
            (param2 as DisplayObjectContainer).addChild(param1);
         }
      }
      
      public function process(param1:DisplayObject) : void
      {
         this._child = param1;
         shiftDisplayObject(param1,this);
      }
   }
}

