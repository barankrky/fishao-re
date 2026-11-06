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
         var _loc4_:int = 0;
         param2.x = param1.x;
         param2.y = param1.y;
         param1.x = 0;
         param1.y = 0;
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

