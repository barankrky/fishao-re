package com.ax3.fishao.locations.objects
{
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   
   public class ViewFurnitureBox extends ViewSpecial
   {
      
      public function ViewFurnitureBox(param1:DisplayObjectContainer)
      {
         super(param1);
         this.init();
      }
      
      override public function set itemsVisibility(param1:Boolean) : void
      {
         itemsVisibilityAnimated = param1;
      }
      
      private function init() : void
      {
         var _loc1_:DisplayObject = null;
         var _loc2_:int = 0;
         while(_loc2_ < _source.numChildren)
         {
            _loc1_ = _source.getChildAt(_loc2_);
            _objectsWithFixedVisibility.push(_loc1_);
            _loc2_++;
         }
         super.itemsVisibility = false;
      }
   }
}

