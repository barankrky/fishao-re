package com.ax3.fishao.locations.objects
{
   import com.ax3.display.wrappers.IAssetWrapper;
   import com.ax3.fishao.locations.objects.boat.BoatDirectionAnimationSource;
   import com.ax3.fishao.locations.objects.boat.BoatLeftSidePosition;
   import com.ax3.fishao.locations.objects.boat.BoatStatusType;
   import com.ax3.fishao.locations.objects.boat.BoatStatusWrapper;
   import com.ax3.utils.BitmapUtil;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.geom.Point;
   import flash.utils.Dictionary;
   
   public class BoatSourceWrapper extends Sprite implements IAssetWrapper
   {
      
      private var _wrapperByStatus:Dictionary = new Dictionary();
      
      private var _obstacleMap:BitmapData;
      
      private var _obstacleMapPosition:Point;
      
      public function BoatSourceWrapper()
      {
         super();
      }
      
      public function process(param1:DisplayObject) : void
      {
         this.processStatuses(MovieClip(param1));
      }
      
      private function processStatuses(param1:MovieClip) : void
      {
         var _loc2_:MovieClip = null;
         var _loc3_:BoatStatusType = null;
         var _loc4_:BoatStatusWrapper = null;
         var _loc5_:int = param1.totalFrames;
         var _loc6_:int = 1;
         while(_loc6_ <= _loc5_)
         {
            param1.gotoAndStop(_loc6_);
            _loc2_ = MovieClip(param1.getChildAt(0));
            _loc3_ = BoatStatusType.findStatusByName(_loc2_.name);
            if(BoatLeftSidePosition.leftSizeMap[_loc3_] == null)
            {
               BoatLeftSidePosition.leftSizeMap[_loc3_] = new Dictionary();
            }
            _loc4_ = new BoatStatusWrapper();
            if(_loc6_ == 1)
            {
               this.createObstacleMap(_loc2_);
            }
            _loc4_.processWithOffset(_loc2_,_loc3_);
            this._wrapperByStatus[_loc3_] = _loc4_;
            _loc6_++;
         }
      }
      
      private function createObstacleMap(param1:MovieClip) : void
      {
         param1.gotoAndStop(1);
         var _loc2_:DisplayObject = param1.getChildByName("map");
         this._obstacleMap = BitmapUtil.clone(_loc2_);
         this._obstacleMapPosition = new Point(_loc2_.x,_loc2_.y);
      }
      
      public function getAnimation(param1:BoatStatusType, param2:int) : BoatDirectionAnimationSource
      {
         var _loc3_:BoatStatusWrapper = this._wrapperByStatus[param1];
         return _loc3_.getAnimationByDirection(param2);
      }
      
      public function getObstacleMap() : BitmapData
      {
         return this._obstacleMap;
      }
      
      public function getObstacleMapPosition() : Point
      {
         return this._obstacleMapPosition;
      }
      
      public function destroy() : void
      {
         this._wrapperByStatus = null;
         this._obstacleMap.dispose();
         this._obstacleMap = null;
      }
   }
}

