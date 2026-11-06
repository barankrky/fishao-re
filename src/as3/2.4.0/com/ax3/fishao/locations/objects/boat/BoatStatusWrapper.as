package com.ax3.fishao.locations.objects.boat
{
   import com.ax3.display.wrappers.IAssetWrapper;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.geom.Point;
   import flash.utils.Dictionary;
   
   public class BoatStatusWrapper extends Sprite implements IAssetWrapper
   {
      
      private static const BOAT_DIRECTION_COUNT:int = 16;
      
      private var _animationSourceByDirectionIndex:Dictionary = new Dictionary();
      
      private var _boatStatusType:BoatStatusType;
      
      public function BoatStatusWrapper()
      {
         super();
      }
      
      public function processWithOffset(param1:MovieClip, param2:BoatStatusType) : void
      {
         this._boatStatusType = param2;
         this.process(param1);
      }
      
      public function process(param1:DisplayObject) : void
      {
         var _loc2_:BoatDirectionAnimationSource = null;
         var _loc3_:MovieClip = MovieClip(param1);
         var _loc4_:int = _loc3_.totalFrames / BOAT_DIRECTION_COUNT;
         var _loc5_:int = 0;
         while(_loc5_ < BOAT_DIRECTION_COUNT)
         {
            _loc2_ = this.processDirection(_loc3_,_loc5_ * _loc4_ + 1,_loc4_);
            BoatLeftSidePosition.leftSizeMap[this._boatStatusType][_loc2_.directionIndex] = new Point(_loc2_.shiftX,_loc2_.shiftY);
            this._animationSourceByDirectionIndex[_loc2_.directionIndex] = _loc2_;
            _loc5_++;
         }
      }
      
      private function processDirection(param1:MovieClip, param2:int, param3:int) : BoatDirectionAnimationSource
      {
         return new BoatDirectionAnimationSource(param1,param2,param3);
      }
      
      public function getAnimationByDirection(param1:int) : BoatDirectionAnimationSource
      {
         return this._animationSourceByDirectionIndex[param1];
      }
   }
}

