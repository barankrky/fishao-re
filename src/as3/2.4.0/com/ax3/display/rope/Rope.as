package com.ax3.display.rope
{
   import com.ax3.display.LineStyle;
   import flash.display.Shape;
   import flash.display.Sprite;
   import flash.geom.Point;
   import flash.utils.getTimer;
   
   public class Rope extends Sprite
   {
      
      public static const FLEX_SOFT_COEF:Number = 0.025;
      
      public static const FLEX_HARD_COEF:Number = 0.25;
      
      public static const SOFT_ROPE:Number = 0.00001;
      
      public static const HARD_ROPE:Number = 0.00001;
      
      private static const SPEED_INERTION:Number = 0.93;
      
      private var _flexibilityCoef:Number = 0.025;
      
      private var _autoLengthCoef:Number = 0.00001;
      
      private var massTotal:Number = 1;
      
      private var lengthTotal:Number = 1;
      
      private var joinsCount:Number = 30;
      
      private var massPerJoin:Number = 0.03333333333333333;
      
      private var joinLength:Number = 0.03333333333333333;
      
      private var gravityCoef:Number = 0.5;
      
      private var gravity:Number = 4.905;
      
      private var scale:Number = 100;
      
      private var _speedCoef:Number = 0.5;
      
      private var speed:Number = 0.016666666666666666;
      
      private var itr:uint = 3;
      
      private var pX:Array = [];
      
      private var pY:Array = [];
      
      private var prevX:Array = [];
      
      private var prevY:Array = [];
      
      private var aX:Array = [];
      
      private var aY:Array = [];
      
      private var _asset:Shape = new Shape();
      
      private var chdX:Number = 0;
      
      private var chdY:Number = 0;
      
      private var _lineStyle:LineStyle = new LineStyle();
      
      private var _startPoint:Point = new Point();
      
      public var endPoint:Point = new Point();
      
      private var tmpDx:Number;
      
      private var tmpDy:Number;
      
      private var tmpD:Number;
      
      private var tmpDiff:Number;
      
      private var tmpDistance:Number;
      
      private var _lastChangeTsMS:int = 2147483647;
      
      private const CHANGE_TIMEOUT_MS:int = 2000;
      
      public function Rope(param1:LineStyle)
      {
         super();
         name = "rope";
         this._lineStyle = param1;
      }
      
      public function create() : void
      {
         var _loc1_:uint = 0;
         while(_loc1_ <= this.joinsCount)
         {
            this.pX[_loc1_] = 10 + this.joinLength * this.scale * _loc1_;
            this.pY[_loc1_] = 10;
            this.prevX[_loc1_] = 10 + this.joinLength * this.scale * _loc1_;
            this.prevY[_loc1_] = 10;
            this.aX[_loc1_] = 0;
            this.aY[_loc1_] = 0;
            _loc1_++;
         }
         addChild(this._asset);
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:int = 0;
         var _loc3_:uint = 0;
         var _loc4_:Boolean = false;
         var _loc5_:uint = 0;
         this.pX[0] = this._startPoint.x;
         this.pY[0] = this._startPoint.y;
         this.pX[this.joinsCount] = this.endPoint.x;
         this.pY[this.joinsCount] = this.endPoint.y;
         if(getTimer() - this._lastChangeTsMS <= this.CHANGE_TIMEOUT_MS)
         {
            this.addGraviry();
            this.updatePositionGiveSpeed(param1);
            _loc2_ = this.joinsCount * param1;
            _loc3_ = 0;
            while(_loc3_ <= _loc2_)
            {
               this.recalculate(param1);
               _loc3_++;
            }
            this._asset.cacheAsBitmap = false;
            this._asset.graphics.clear();
            this._asset.graphics.lineStyle(this._lineStyle.thickness,this._lineStyle.color,this._lineStyle.alpha,this._lineStyle.pixelHinting,this._lineStyle.scaleMode,this._lineStyle.caps,this._lineStyle.joints,this._lineStyle.miterLimit);
            this._asset.graphics.moveTo(this._startPoint.x,this._startPoint.y);
            _loc4_ = true;
            _loc5_ = 0;
            while(_loc5_ <= this.joinsCount)
            {
               this._asset.graphics.lineTo(this.pX[_loc5_],this.pY[_loc5_]);
               if(_loc4_ == false && _loc5_ != 0 && _loc5_ != this.joinsCount)
               {
                  this.chdX = this.pX[_loc5_] - this.prevX[_loc5_];
                  this.chdY = this.pY[_loc5_] - this.prevY[_loc5_];
                  if(this.chdX > 0.1 || this.chdX < -0.1 || this.chdY > 0.1 || this.chdY < -0.1)
                  {
                     _loc4_ = true;
                  }
               }
               _loc5_++;
            }
            if(_loc4_)
            {
               this.resetLastChangeTs();
            }
            this._asset.graphics.lineTo(this.endPoint.x,this.endPoint.y);
            if(getTimer() - this._lastChangeTsMS > this.CHANGE_TIMEOUT_MS)
            {
               this._asset.cacheAsBitmap = true;
            }
         }
      }
      
      public function resetLastChangeTs() : void
      {
         this._lastChangeTsMS = getTimer();
      }
      
      public function updatePositionGiveSpeed(param1:Number) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = this.speed * this._speedCoef;
         var _loc5_:uint = 0;
         while(_loc5_ <= this.joinsCount)
         {
            _loc2_ = Number(this.pX[_loc5_]);
            _loc3_ = Number(this.pY[_loc5_]);
            this.pX[_loc5_] += SPEED_INERTION * this.pX[_loc5_] - SPEED_INERTION * this.prevX[_loc5_] + this.aX[_loc5_] * this.scale * _loc4_ * _loc4_;
            this.pY[_loc5_] += SPEED_INERTION * this.pY[_loc5_] - SPEED_INERTION * this.prevY[_loc5_] + this.aY[_loc5_] * this.scale * _loc4_ * _loc4_;
            this.prevX[_loc5_] = _loc2_;
            this.prevY[_loc5_] = _loc3_;
            _loc5_++;
         }
      }
      
      public function addGraviry() : void
      {
         var _loc1_:uint = 1;
         while(_loc1_ <= this.joinsCount - 1)
         {
            this.aY[_loc1_] = this.gravity;
            _loc1_++;
         }
      }
      
      public function recalculate(param1:Number) : void
      {
         var _loc2_:Number = NaN;
         if(isNaN(this._autoLengthCoef) == false)
         {
            _loc2_ = Point.distance(this._startPoint,this.endPoint);
            if(_loc2_ > 3)
            {
               _loc2_ = 3;
            }
            this.joinLength = _loc2_ / this.joinsCount * this._autoLengthCoef;
         }
         var _loc3_:uint = 1;
         while(_loc3_ <= this.joinsCount)
         {
            this.tmpDx = (this.pX[_loc3_] - this.pX[_loc3_ - 1]) / this.scale;
            this.tmpDy = (this.pY[_loc3_] - this.pY[_loc3_ - 1]) / this.scale;
            this.tmpD = Math.sqrt(this.tmpDx * this.tmpDx + this.tmpDy * this.tmpDy);
            this.tmpDiff = this.tmpD - this.joinLength;
            this.pX[_loc3_] -= this.tmpDx / this.tmpD * this._flexibilityCoef * this.scale * this.tmpDiff;
            this.pY[_loc3_] -= this.tmpDy / this.tmpD * this._flexibilityCoef * this.scale * this.tmpDiff;
            this.pX[_loc3_ - 1] += this.tmpDx / this.tmpD * this._flexibilityCoef * this.scale * this.tmpDiff;
            this.pY[_loc3_ - 1] += this.tmpDy / this.tmpD * this._flexibilityCoef * this.scale * this.tmpDiff;
            _loc3_++;
         }
      }
      
      public function set startPointX(param1:int) : void
      {
         if(this._startPoint.x != param1)
         {
            this._startPoint.x = param1;
            this._lastChangeTsMS = getTimer();
         }
      }
      
      public function set startPointY(param1:int) : void
      {
         if(this._startPoint.y != param1)
         {
            this._startPoint.y = param1;
            this._lastChangeTsMS = getTimer();
         }
      }
      
      public function get startPointX() : int
      {
         return this._startPoint.x;
      }
      
      public function get startPointY() : int
      {
         return this._startPoint.y;
      }
      
      public function set endPointX(param1:int) : void
      {
         if(this.endPoint.x != param1)
         {
            this.endPoint.x = param1;
            this._lastChangeTsMS = getTimer();
         }
      }
      
      public function set endPointY(param1:int) : void
      {
         if(this.endPoint.y != param1)
         {
            this.endPoint.y = param1;
            this._lastChangeTsMS = getTimer();
         }
      }
      
      public function get endPointX() : int
      {
         return this.endPoint.x;
      }
      
      public function get endPointY() : int
      {
         return this.endPoint.y;
      }
      
      public function set flexibilityCoef(param1:Number) : void
      {
         this._flexibilityCoef = param1;
      }
      
      public function set autoLengthCoef(param1:int) : void
      {
         this._autoLengthCoef = param1;
      }
      
      public function get lastButOneX() : Number
      {
         return this.pX.length > 2 ? Number(this.pX[this.pX.length - 2]) : Number(this.pX[this.pX.length - 1]);
      }
      
      public function get lastButOneY() : Number
      {
         return this.pY.length > 2 ? Number(this.pY[this.pY.length - 2]) : Number(this.pY[this.pY.length - 1]);
      }
      
      public function set lastChangeTsMS(param1:int) : void
      {
         this._lastChangeTsMS = param1;
      }
      
      public function getPx(param1:uint) : Number
      {
         return Number(this.pX[param1]);
      }
      
      public function getPy(param1:uint) : Number
      {
         return Number(this.pY[param1]);
      }
   }
}

