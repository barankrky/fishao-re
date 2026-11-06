package com.ax3.fishao.locations.objects.boat
{
   import com.ax3.fishao.locations.objects.BoatSourceWrapper;
   import com.ax3.geom.GraphPoint;
   import com.ax3.utils.timer.IUpdate;
   import com.ax3.utils.timer.UpdateGroup;
   import com.ax3.utils.timer.UpdateManager;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.events.Event;
   import flash.geom.Matrix;
   import flash.geom.Point;
   
   public class BoatViewport extends Bitmap implements IUpdate
   {
      
      private var _centerX:int = 0;
      
      private var _centerY:int = 0;
      
      private var _boatSourceWrapper:BoatSourceWrapper;
      
      private var _currentDirectionAnimation:BoatDirectionAnimationSource;
      
      public var shiftX:int = 0;
      
      public var shiftY:int = 0;
      
      private var _directionIndex:int = 0;
      
      private var _boatStatusType:BoatStatusType;
      
      private var _currentFrameIndex:int = 0;
      
      private var _totalFrames:int;
      
      private var _isPlay:Boolean = true;
      
      private var _lastUpdateTimerMS:int = 1;
      
      private var _frameUpdateMS:Number = 100;
      
      private var _position:GraphPoint = new GraphPoint();
      
      public var directionCoefX:Number = 1;
      
      public var directionCoefY:Number = 1;
      
      public var isRightAngle:Boolean = false;
      
      public function BoatViewport(param1:BoatSourceWrapper)
      {
         super();
         this._boatSourceWrapper = param1;
         this.setStatus(BoatStatusType.DEFAULT,0);
         addEventListener(Event.ADDED_TO_STAGE,this.onAddToStage);
         addEventListener(Event.REMOVED_FROM_STAGE,this.onRemovedFromStage);
      }
      
      private function onAddToStage(param1:Event) : void
      {
         UpdateManager.getInstance().getGroup(UpdateGroup.ENTER_FRAME).add(this);
      }
      
      private function onRemovedFromStage(param1:Event) : void
      {
         UpdateManager.getInstance().getGroup(UpdateGroup.ENTER_FRAME).remove(this);
      }
      
      public function setBoatStatus(param1:BoatStatusType) : void
      {
         if(this._boatStatusType != param1)
         {
            this.setStatus(param1,this._directionIndex);
         }
      }
      
      public function setDirectionIndex(param1:int) : void
      {
         if(this._directionIndex != param1)
         {
            this.setStatus(this._boatStatusType,param1);
         }
      }
      
      public function setStatus(param1:BoatStatusType, param2:int) : void
      {
         this._boatStatusType = param1;
         this._directionIndex = param2;
         this._position.rotation = this._directionIndex;
         this._currentFrameIndex = 0;
         this._currentDirectionAnimation = this._boatSourceWrapper.getAnimation(param1,param2);
         bitmapData = this._currentDirectionAnimation.getBitmapDataByFrameIndex(this._currentFrameIndex);
         this._totalFrames = this._currentDirectionAnimation.totalFrames;
         this.shiftX = this._currentDirectionAnimation.shiftX;
         this.shiftY = this._currentDirectionAnimation.shiftY;
         var _loc3_:Point = this.transformPoint(new Point(0,0));
         var _loc4_:Point = this.transformPoint(new Point(1,1));
         this.directionCoefX = Math.abs(int((_loc4_.x - _loc3_.x) * 100) / 100);
         this.directionCoefY = Math.abs(int((_loc4_.y - _loc3_.y) * 100) / 100);
         this.isRightAngle = param2 % 4 == 0;
         this.updatePosition();
      }
      
      private function updatePosition() : void
      {
         super.x = this._centerX + this.shiftX;
         super.y = this._centerY + this.shiftY;
      }
      
      public function transformPosition(param1:Point) : Point
      {
         var _loc2_:Point = this._currentDirectionAnimation.transformPoint(param1);
         _loc2_.x += this.shiftX;
         _loc2_.y += this.shiftY;
         return _loc2_;
      }
      
      public function transformPoint(param1:Point) : Point
      {
         return this._currentDirectionAnimation.transformPoint(param1);
      }
      
      public function transformFromDisplayToReal(param1:Point) : Point
      {
         param1.x -= this.shiftX;
         param1.y -= this.shiftY;
         return this._currentDirectionAnimation.transformFromDisplayToReal(param1);
      }
      
      public function rotatePoint(param1:Point) : Point
      {
         param1 = this._currentDirectionAnimation.transformPoint(param1);
         param1.x -= this._currentDirectionAnimation.getTransformMatrix().tx;
         param1.y -= this._currentDirectionAnimation.getTransformMatrix().ty;
         return param1;
      }
      
      public function rotatePointBack(param1:Point) : Point
      {
         param1 = this._currentDirectionAnimation.transformFromDisplayToReal(param1);
         param1.x -= this._currentDirectionAnimation.getInvertTransformMatrix().tx;
         param1.y -= this._currentDirectionAnimation.getInvertTransformMatrix().ty;
         return param1;
      }
      
      public function getDefaultTransformMatrix() : Matrix
      {
         var _loc1_:BoatDirectionAnimationSource = this._boatSourceWrapper.getAnimation(BoatStatusType.SAIL,0);
         return _loc1_.getTransformMatrix();
      }
      
      override public function set x(param1:Number) : void
      {
         this._centerX = param1;
         this.position.x = param1;
         super.x = this._centerX + this.shiftX;
      }
      
      override public function set y(param1:Number) : void
      {
         this._centerY = param1;
         this.position.y = param1;
         super.y = this._centerY + this.shiftY;
      }
      
      override public function get x() : Number
      {
         return this._centerX;
      }
      
      override public function get y() : Number
      {
         return this._centerY;
      }
      
      public function update(param1:uint, param2:uint) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:int = 0;
         if(this._isPlay)
         {
            if(this._lastUpdateTimerMS == -1)
            {
               this._lastUpdateTimerMS = param1;
               this.gotoAndStop(1);
            }
            else
            {
               _loc3_ = param1 - this._lastUpdateTimerMS;
               if(_loc3_ > this._frameUpdateMS)
               {
                  _loc4_ = int(_loc3_ / this._frameUpdateMS);
                  this._lastUpdateTimerMS += this._frameUpdateMS * _loc4_;
                  this.moveFrameCount(_loc4_);
               }
            }
         }
      }
      
      private function moveFrameCount(param1:int) : void
      {
         this.gotoAndStop((this._currentFrameIndex + param1) % this._totalFrames + 1);
      }
      
      private function gotoAndStop(param1:int) : void
      {
         if(this._currentFrameIndex + 1 != param1)
         {
            this._currentFrameIndex = param1 - 1;
            bitmapData = this._currentDirectionAnimation.getBitmapDataByFrameIndex(this._currentFrameIndex);
         }
      }
      
      public function get position() : GraphPoint
      {
         return this._position;
      }
      
      public function getBitmapDataByDirection(param1:int) : BitmapData
      {
         return this._boatSourceWrapper.getAnimation(BoatStatusType.DEFAULT,param1).getBitmapDataByFrameIndex(0);
      }
      
      public function get directionIndex() : int
      {
         return this._directionIndex;
      }
      
      public function get boatStatusType() : BoatStatusType
      {
         return this._boatStatusType;
      }
      
      public function destroy() : void
      {
         this._boatSourceWrapper = null;
         this._currentDirectionAnimation = null;
         this._boatStatusType = null;
         this._position = null;
         bitmapData = null;
      }
   }
}

