package com.ax3.display
{
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   
   public class FloatMovieList extends Sprite
   {
      
      public var hgap:int;
      
      public var vgap:int;
      
      private var _maxWidth:int;
      
      public function FloatMovieList(param1:int, param2:int = 0, param3:int = 0)
      {
         super();
         this.hgap = param2;
         this.vgap = param3;
         this._maxWidth = param1;
      }
      
      public function addChildren(param1:Vector.<DisplayObject>) : void
      {
         var _loc2_:DisplayObject = null;
         for each(_loc2_ in param1)
         {
            addChild(_loc2_);
         }
         this.dispose();
      }
      
      private function dispose() : void
      {
         var _loc1_:int = 0;
         _loc1_ = 0;
         var _loc2_:DisplayObject = null;
         var _loc3_:int = numChildren;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         _loc1_ = 0;
         var _loc6_:int = 0;
         while(_loc6_ < _loc3_)
         {
            _loc2_ = getChildAt(_loc6_);
            if(_loc4_ != 0 && _loc4_ + _loc2_.width > this._maxWidth)
            {
               _loc4_ = 0;
               _loc5_ += _loc1_ + this.vgap;
            }
            _loc2_.x = _loc4_;
            _loc2_.y = _loc5_;
            _loc4_ = _loc2_.x + _loc2_.width + this.hgap;
            _loc1_ = Math.max(_loc1_,_loc2_.height);
            _loc6_++;
         }
      }
   }
}

