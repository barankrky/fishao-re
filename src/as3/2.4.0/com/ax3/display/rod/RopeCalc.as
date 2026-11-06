package com.ax3.display.rod
{
   public class RopeCalc
   {
      
      public var joinsCount:int = 30;
      
      public var scale:Number = 100;
      
      public var gravityCoef:Number = 0.5;
      
      public var gravity:Number = 4.905;
      
      public var speed:Number = 0;
      
      public var speedCoef:Number = 0.5;
      
      public var speedFinal:Number = 0;
      
      public var SPEED_INERTION:Number = 0.93;
      
      public var FLEX_SOFT_COEF:Number = 0.025;
      
      public var flexibilityCoef:Number = 0.025;
      
      public var SOFT_ROPE:Number = 0.00001;
      
      public var autoLengthCoef:Number = 0.00001;
      
      public var lengthTotal:Number = 1;
      
      public var joinLength:Number = 0.03333333333333333;
      
      public var pX:Vector.<Number>;
      
      public var pY:Vector.<Number>;
      
      public var prevX:Vector.<Number>;
      
      public var prevY:Vector.<Number>;
      
      public var aX:Vector.<Number>;
      
      public var aY:Vector.<Number>;
      
      public var tmpDx:Number = NaN;
      
      public var tmpDy:Number = NaN;
      
      public var tmpD:Number = NaN;
      
      public var tmpDiff:Number = NaN;
      
      public var startPointX:Number = NaN;
      
      public var startPointY:Number = NaN;
      
      public var endPointX:Number = NaN;
      
      public var endPointY:Number = NaN;
      
      public function RopeCalc()
      {
         super();
         this.allocate();
      }
      
      public static function create() : RopeCalc
      {
         return new RopeCalc();
      }
      
      public function allocate() : void
      {
         var _loc1_:int = this.joinsCount + 1;
         this.pX = new Vector.<Number>(_loc1_,true);
         this.pY = new Vector.<Number>(_loc1_,true);
         this.prevX = new Vector.<Number>(_loc1_,true);
         this.prevY = new Vector.<Number>(_loc1_,true);
         this.aX = new Vector.<Number>(_loc1_,true);
         this.aY = new Vector.<Number>(_loc1_,true);
      }
      
      public function Create() : void
      {
         var _loc2_:Number = NaN;
         var _loc1_:int = 0;
         while(_loc1_ <= this.joinsCount)
         {
            _loc2_ = this.joinLength * this.scale * Number(_loc1_) + 10;
            this.pX[_loc1_] = _loc2_;
            this.pY[_loc1_] = 10;
            this.prevX[_loc1_] = _loc2_;
            this.prevY[_loc1_] = 10;
            this.aX[_loc1_] = 0;
            this.aY[_loc1_] = 0;
            _loc1_++;
         }
      }
      
      public function AddGraviry() : void
      {
         var _loc1_:int = 1;
         while(_loc1_ <= this.joinsCount - 1)
         {
            this.aY[_loc1_] = this.gravity;
            _loc1_++;
         }
      }
      
      public function UpdatePositionGiveSpeed() : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc1_:int = 0;
         while(_loc1_ <= this.joinsCount)
         {
            _loc2_ = this.pX[_loc1_];
            _loc3_ = this.pY[_loc1_];
            this.pX[_loc1_] += this.SPEED_INERTION * this.pX[_loc1_] - this.SPEED_INERTION * this.prevX[_loc1_] + this.aX[_loc1_] * this.scale * this.speedFinal * this.speedFinal;
            this.pY[_loc1_] += this.SPEED_INERTION * this.pY[_loc1_] - this.SPEED_INERTION * this.prevY[_loc1_] + this.aY[_loc1_] * this.scale * this.speedFinal * this.speedFinal;
            this.prevX[_loc1_] = _loc2_;
            this.prevY[_loc1_] = _loc3_;
            _loc1_++;
         }
      }
      
      public function Update() : void
      {
         this.pX[0] = this.startPointX;
         this.pY[0] = this.startPointY;
         this.pX[this.joinsCount] = this.endPointX;
         this.pY[this.joinsCount] = this.endPointY;
      }
      
      public function Recalculate() : void
      {
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc17_:Number = NaN;
         var _loc18_:Number = NaN;
         if(this.autoLengthCoef != 0 || isNaN(this.autoLengthCoef))
         {
            _loc10_ = this.startPointX - this.endPointX;
            _loc11_ = this.startPointY - this.endPointY;
            _loc12_ = Math.sqrt(_loc10_ * _loc10_ + _loc11_ * _loc11_);
            this.joinLength = (_loc12_ > 3 ? 3 : _loc12_) / Number(this.joinsCount) * this.autoLengthCoef;
         }
         var _loc1_:Vector.<Number> = this.pX;
         var _loc2_:Vector.<Number> = this.pY;
         var _loc3_:int = this.joinsCount;
         var _loc4_:Number = this.scale;
         var _loc5_:Number = this.joinLength;
         var _loc6_:Number = this.flexibilityCoef * _loc4_;
         var _loc7_:Number = _loc1_[0];
         var _loc8_:Number = _loc2_[0];
         var _loc9_:int = 1;
         while(_loc9_ <= _loc3_)
         {
            _loc13_ = _loc1_[_loc9_];
            _loc14_ = _loc2_[_loc9_];
            _loc15_ = (_loc13_ - _loc7_) / _loc4_;
            _loc16_ = (_loc14_ - _loc8_) / _loc4_;
            _loc17_ = Math.sqrt(_loc15_ * _loc15_ + _loc16_ * _loc16_);
            if(_loc17_ <= 0 || !isFinite(_loc17_))
            {
               _loc7_ = _loc13_;
               _loc8_ = _loc14_;
            }
            else
            {
               _loc18_ = _loc6_ * (_loc17_ - _loc5_) / _loc17_;
               _loc1_[_loc9_ - 1] = _loc7_ + _loc15_ * _loc18_;
               _loc2_[_loc9_ - 1] = _loc8_ + _loc16_ * _loc18_;
               _loc7_ = _loc1_[_loc9_] = _loc13_ - _loc15_ * _loc18_;
               _loc8_ = _loc2_[_loc9_] = _loc14_ - _loc16_ * _loc18_;
            }
            _loc9_++;
         }
      }
      
      public function RecalculateAll(param1:int) : Boolean
      {
         var _loc5_:int = 0;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         _loc2_ = 0;
         while(_loc2_ < param1)
         {
            _loc3_ = 0;
            while(_loc3_ <= this.joinsCount)
            {
               this.Recalculate();
               _loc3_++;
            }
            _loc2_++;
         }
         var _loc4_:Boolean = false;
         if(this.joinsCount >= 2)
         {
            _loc5_ = 1;
            while(_loc5_ < this.joinsCount)
            {
               if(!_loc4_)
               {
                  this.tmpDx = this.pX[_loc5_] - this.prevX[_loc5_];
                  this.tmpDy = this.pY[_loc5_] - this.prevY[_loc5_];
                  if(this.tmpDx > 0.1 || this.tmpDx < -0.1 || this.tmpDy > 0.1 || this.tmpDy < -0.1 || isNaN(this.tmpDy))
                  {
                     _loc4_ = true;
                  }
               }
               _loc5_++;
            }
         }
         return _loc4_;
      }
      
      public function GetPx(param1:int) : Number
      {
         if(param1 < 0 || this.joinsCount < param1)
         {
            return -1;
         }
         return this.pX[param1];
      }
      
      public function GetPy(param1:int) : Number
      {
         if(param1 < 0 || this.joinsCount < param1)
         {
            return -1;
         }
         return this.pY[param1];
      }
   }
}

