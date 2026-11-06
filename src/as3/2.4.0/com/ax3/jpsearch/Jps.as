package com.ax3.jpsearch
{
   import flash.display.BitmapData;
   import flash.display.Sprite;
   import flash.geom.Point;
   import flash.utils.getTimer;
   
   public class Jps
   {
      
      private var _debugSprite:Sprite;
      
      private const STEP:int = 15;
      
      private var _isComplete:Boolean;
      
      private var _obstacleMap:BitmapData;
      
      private var _openList:Heap = new Heap(Heap.jpsCmp);
      
      private var _startNode:JpsPoint;
      
      private var _endNode:JpsPoint;
      
      private var _curNode:JpsPoint;
      
      private var _curNodeNeighbors:Vector.<JpsPoint>;
      
      private var heuristic:Function = Heuristic.manhattan;
      
      public function checkWalkableAt(param1:int, param2:int):Boolean
      {
         return true;
      }
      public var testPoints:Vector.<Point> = Vector.<Point>([new Point(0,0),new Point(9,0),new Point(6,4),new Point(0,6),new Point(-6,4),new Point(-9,0),new Point(-6,-4),new Point(0,-6),new Point(-6,4),new Point(3,0),new Point(2,1.5),new Point(0,2),new Point(-2,1.5),new Point(-3,0),new Point(-2,-1.5),new Point(0,-2),new Point(-2,1.5)]);
      
      private var _findedPath:Vector.<JpsPoint>;
      
      private var fullWidth:int = 800;
      
      private var fullHeight:int = 800;
      
      private var _calculationTimestampMS:int;
      
      public var maxCalculationTimeMs:int = 60000;
      
      private var _realEndNode:JpsPoint;
      
      private var _borderCheck:Boolean = true;
      
      public function Jps(param1:BitmapData, param2:Sprite)
      {
         super();
         this._obstacleMap = param1;
         this._debugSprite = param2;
      }
      
      private static function getNode(param1:int, param2:int) : JpsPoint
      {
         return new JpsPoint(param1,param2);
      }
      
      private function debug_drawPoint(param1:int, param2:int, param3:uint = 0, param4:uint = 4278190080, param5:int = 3) : void
      {
         var _loc6_:uint = 0;
         var _loc7_:uint = 0;
         if(this._debugSprite)
         {
            _loc6_ = uint(param3 >> 24);
            param3 &= 16777215;
            _loc7_ = uint(param4 >> 24);
            param4 &= 16777215;
            this._debugSprite.graphics.beginFill(param3,_loc6_);
            this._debugSprite.graphics.lineStyle(1,param4,_loc7_);
            this._debugSprite.graphics.drawCircle(param1,param2,param5);
            this._debugSprite.graphics.endFill();
         }
      }
      
      private function debug_drawLine(param1:int, param2:int, param3:int, param4:int, param5:uint = 4278190080, param6:int = 1) : void
      {
         var _loc7_:uint = 0;
         if(this._debugSprite)
         {
            _loc7_ = uint(param5 >> 24);
            param5 &= 16777215;
            this._debugSprite.graphics.lineStyle(param6,param5,_loc7_);
            this._debugSprite.graphics.moveTo(param1,param2);
            this._debugSprite.graphics.lineTo(param3,param4);
         }
      }
      
      public function setStart(param1:int, param2:int) : void
      {
         this._openList = new Heap(Heap.jpsCmp);
         this._calculationTimestampMS = getTimer();
         this._curNode = null;
         this._curNodeNeighbors = null;
         this._findedPath = null;
         this._endNode = null;
         this._startNode = getNode(param1,param2);
         this._startNode.g = 0;
         this._startNode.f = 0;
         this.checkStartPoint();
         this._openList.push(this._startNode);
         this._startNode.opened = true;
         this._isComplete = false;
      }
      
      private function shiftEndPoint() : void
      {
         var _loc1_:Number = NaN;
         var _loc2_:Number = NaN;
         if(this._startNode != null && this._endNode != null)
         {
            _loc1_ = this._startNode.x % this.STEP;
            _loc2_ = this._startNode.y % this.STEP;
            this._endNode.x = int(this._endNode.x / this.STEP) * this.STEP + _loc1_;
            this._endNode.y = int(this._endNode.y / this.STEP) * this.STEP + _loc2_;
         }
      }
      
      private function checkStartPoint() : void
      {
         if(this._startNode != null)
         {
            if(this.isWalkableAt(this._startNode.x,this._startNode.y) == false)
            {
               this.moveToFirstFreePoint(this._startNode);
            }
         }
         this.shiftEndPoint();
      }
      
      private function checkEndPoint() : void
      {
         if(this._realEndNode != null)
         {
            if(this.isWalkableAt(this._realEndNode.x,this._realEndNode.y) == false)
            {
               this.moveToFirstFreePoint(this._realEndNode);
            }
         }
         if(this._endNode != null)
         {
            if(this.isWalkableAt(this._endNode.x,this._endNode.y) == false)
            {
               this.moveToFirstFreePoint(this._endNode);
            }
         }
      }
      
      private function moveToFirstFreePoint(param1:JpsPoint) : void
      {
         var _loc2_:int = 1;
         while(_loc2_ < 20)
         {
            if(this.isWalkableAt(param1.x,param1.y - _loc2_ * this.STEP))
            {
               param1.y -= _loc2_ * this.STEP;
               break;
            }
            if(this.isWalkableAt(param1.x + _loc2_ * this.STEP,param1.y))
            {
               param1.x += _loc2_ * this.STEP;
               break;
            }
            if(this.isWalkableAt(param1.x,param1.y + _loc2_ * this.STEP))
            {
               param1.y += _loc2_ * this.STEP;
               break;
            }
            if(this.isWalkableAt(param1.x - _loc2_ * this.STEP,param1.y))
            {
               param1.x -= _loc2_ * this.STEP;
               break;
            }
            if(this.isWalkableAt(param1.x - _loc2_ * this.STEP,param1.y - _loc2_ * this.STEP))
            {
               param1.x -= _loc2_ * this.STEP;
               param1.y -= _loc2_ * this.STEP;
               break;
            }
            if(this.isWalkableAt(param1.x + _loc2_ * this.STEP,param1.y - _loc2_ * this.STEP))
            {
               param1.x += _loc2_ * this.STEP;
               param1.y -= _loc2_ * this.STEP;
               break;
            }
            if(this.isWalkableAt(param1.x + _loc2_ * this.STEP,param1.y + _loc2_ * this.STEP))
            {
               param1.x += _loc2_ * this.STEP;
               param1.y += _loc2_ * this.STEP;
               break;
            }
            if(this.isWalkableAt(param1.x - _loc2_ * this.STEP,param1.y + _loc2_ * this.STEP))
            {
               param1.x -= _loc2_ * this.STEP;
               param1.y += _loc2_ * this.STEP;
               break;
            }
            _loc2_++;
         }
      }
      
      public function setEnd(param1:int, param2:int) : void
      {
         this._realEndNode = getNode(param1,param2);
         this._endNode = getNode(param1,param2);
         this.checkEndPoint();
      }
      
      public function makeStep() : void
      {
         if(this._debugSprite != null)
         {
            this._debugSprite.graphics.clear();
         }
         if(Boolean(this._isComplete == false) && Boolean(this._endNode) && Boolean(this._startNode))
         {
            if(this._openList.length > 0 && getTimer() - this._calculationTimestampMS < this.maxCalculationTimeMs)
            {
               this._curNode = this._openList.shift();
               this._curNode.closed = true;
               if(this.isEndPoint(this._curNode))
               {
                  this.complete();
               }
               else
               {
                  this.identifySuccessors(this._curNode);
               }
            }
            else
            {
               this._isComplete = true;
            }
         }
      }
      
      private function debugDraw() : void
      {
         var _loc1_:JpsPoint = null;
         var _loc2_:JpsPoint = null;
         if(this._startNode != null)
         {
            this.debug_drawPoint(this._startNode.x,this._startNode.y,0,4278190335,5);
         }
         if(this._curNode != null)
         {
            this.debug_drawPoint(this._curNode.x,this._curNode.y,4278255360,0,5);
         }
         if(this._curNodeNeighbors)
         {
            for each(_loc1_ in this._curNodeNeighbors)
            {
               this.debug_drawPoint(_loc1_.x,_loc1_.y,0,4286019447);
            }
         }
         if(this._openList != null && this._openList.length > 0)
         {
            for each(_loc1_ in this._openList.nodes)
            {
               this.debug_drawPoint(_loc1_.x,_loc1_.y,0,4278255360,5);
            }
         }
         if(this._endNode != null)
         {
            if(this._isComplete)
            {
               this.debug_drawPoint(this._endNode.x,this._endNode.y,4278190335,4278190335,7);
               this.debug_drawPoint(this._realEndNode.x,this._realEndNode.y,4290183423,4278190335,7);
            }
            else
            {
               this.debug_drawPoint(this._endNode.x,this._endNode.y,4291611903,4278190335,5);
               this.debug_drawPoint(this._realEndNode.x,this._realEndNode.y,4290183423,4278190335,5);
            }
         }
         if(this._findedPath != null)
         {
            _loc2_ = this._startNode;
            this.debug_drawPoint(_loc2_.x,_loc2_.y,4278255360,0,5);
            for each(_loc1_ in this._findedPath)
            {
               this.debug_drawPoint(_loc1_.x,_loc1_.y,4278255360,0,5);
               if(_loc2_ != null)
               {
                  this.debug_drawLine(_loc2_.x,_loc2_.y,_loc1_.x,_loc1_.y,4278255360,3);
               }
               _loc2_ = _loc1_;
            }
            this.debug_drawLine(_loc2_.x,_loc2_.y,this._endNode.x,this._endNode.y,4278255360,3);
            this.debug_drawPoint(this._endNode.x,this._endNode.y,4278255360,0,5);
         }
      }
      
      private function complete() : void
      {
         this._isComplete = true;
         this._findedPath = new Vector.<JpsPoint>();
         while(this.isStartPoint(this._curNode) == false && this._curNode != null)
         {
            this._findedPath.push(this._curNode);
            this._curNode = this._curNode.parent;
         }
         this._findedPath.shift();
         this._findedPath.reverse();
         this._findedPath.push(this._realEndNode);
      }
      
      private function isEndPoint(param1:JpsPoint) : Boolean
      {
         return Point.distance(param1,this._endNode) <= this.STEP;
      }
      
      private function isEndPosition(param1:int, param2:int) : Boolean
      {
         return (this._endNode.x - param1) * (this._endNode.x - param1) + (this._endNode.y - param2) * (this._endNode.y - param2) <= this.STEP * this.STEP;
      }
      
      private function isStartPoint(param1:JpsPoint) : Boolean
      {
         return Point.distance(param1,this._startNode) <= this.STEP;
      }
      
      private function identifySuccessors(param1:JpsPoint) : void
      {
         var _loc2_:JpsPoint = null;
         var _loc3_:JpsPoint = null;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:int = 0;
         var _loc7_:int = 0;
         var _loc8_:Point = null;
         var _loc9_:int = param1.x;
         var _loc10_:int = param1.y;
         var _loc11_:int = this._endNode.x;
         var _loc12_:int = this._endNode.y;
         this._curNodeNeighbors = this.findNeighbors(param1);
         var _loc13_:int = 0;
         var _loc14_:int = int(this._curNodeNeighbors.length);
         while(_loc13_ < _loc14_)
         {
            _loc2_ = this._curNodeNeighbors[_loc13_];
            _loc8_ = this.quickJump(_loc2_.x,_loc2_.y,param1.x,param1.y,0);
            if(_loc8_)
            {
               _loc3_ = getNode(_loc8_.x,_loc8_.y);
            }
            else
            {
               _loc3_ = null;
            }
            if(_loc3_)
            {
               _loc4_ = _loc3_.x;
               _loc5_ = _loc3_.y;
               if(!_loc3_.closed)
               {
                  _loc6_ = Heuristic.euclidean(Math.abs(_loc4_ - _loc9_),Math.abs(_loc5_ - _loc10_));
                  _loc7_ = param1.g + _loc6_;
                  if(!_loc3_.opened || _loc7_ < _loc3_.g)
                  {
                     _loc3_.g = _loc7_;
                     _loc3_.h = _loc3_.h || int(this.heuristic(Math.abs(_loc4_ - _loc11_),Math.abs(_loc5_ - _loc12_)));
                     _loc3_.f = _loc3_.g + _loc3_.h;
                     _loc3_.parent = param1;
                     if(!_loc3_.opened)
                     {
                        this._openList.push(_loc3_);
                        _loc3_.opened = true;
                     }
                     else
                     {
                        this._openList.updateItem(_loc3_);
                     }
                  }
               }
            }
            _loc13_++;
         }
      }
      
      private function quickJump(param1:int, param2:int, param3:int, param4:int, param5:int) : Point
      {
         var _loc6_:Point = null;
         var _loc7_:Point = null;
         var _loc8_:int = param1 - param3;
         var _loc9_:int = param2 - param4;
         if(!this.isWalkableAt(param1,param2))
         {
            return null;
         }
         if(this.isEndPosition(param1,param2))
         {
            return new Point(param1,param2);
         }
         if(param5 > 10)
         {
            return new Point(param1,param2);
         }
         if(_loc8_ != 0 && _loc9_ != 0)
         {
            if(this.isWalkableAt(param1 - _loc8_,param2 + _loc9_) && !this.isWalkableAt(param1 - _loc8_,param2) || this.isWalkableAt(param1 + _loc8_,param2 - _loc9_) && !this.isWalkableAt(param1,param2 - _loc9_))
            {
               return new Point(param1,param2);
            }
         }
         else if(_loc8_ != 0)
         {
            if(this.isWalkableAt(param1 + _loc8_,param2 + this.STEP) && !this.isWalkableAt(param1,param2 + this.STEP) || this.isWalkableAt(param1 + _loc8_,param2 - this.STEP) && !this.isWalkableAt(param1,param2 - this.STEP))
            {
               return new Point(param1,param2);
            }
         }
         else if(this.isWalkableAt(param1 + this.STEP,param2 + _loc9_) && !this.isWalkableAt(param1 + this.STEP,param2) || this.isWalkableAt(param1 - this.STEP,param2 + _loc9_) && !this.isWalkableAt(param1 - this.STEP,param2))
         {
            return new Point(param1,param2);
         }
         if(_loc8_ != 0 && _loc9_ != 0)
         {
            _loc6_ = this.quickJump(param1 + _loc8_,param2,param1,param2,param5 + 1);
            _loc7_ = this.quickJump(param1,param2 + _loc9_,param1,param2,param5 + 1);
            if(Boolean(_loc6_) || Boolean(_loc7_))
            {
               return new Point(param1,param2);
            }
         }
         if(this.isWalkableAt(param1 + _loc8_,param2) || this.isWalkableAt(param1,param2 + _loc9_))
         {
            return this.quickJump(param1 + _loc8_,param2 + _loc9_,param1,param2,param5 + 1);
         }
         return null;
      }
      
      private function jump(param1:JpsPoint, param2:JpsPoint) : JpsPoint
      {
         var _loc3_:JpsPoint = null;
         var _loc4_:JpsPoint = null;
         var _loc5_:int = param1.x;
         var _loc6_:int = param1.y;
         var _loc7_:int = param2.x;
         var _loc8_:int = param2.y;
         var _loc9_:int = _loc5_ - _loc7_;
         var _loc10_:int = _loc6_ - _loc8_;
         var _loc11_:Boolean = this.isWalkableAt(_loc5_,_loc6_);
         if(!_loc11_)
         {
            return null;
         }
         if(this.isEndPoint(param1))
         {
            return param1;
         }
         if(_loc9_ != 0 && _loc10_ != 0)
         {
            if(this.isWalkableAt(_loc5_ - _loc9_,_loc6_ + _loc10_) && !this.isWalkableAt(_loc5_ - _loc9_,_loc6_) || this.isWalkableAt(_loc5_ + _loc9_,_loc6_ - _loc10_) && !this.isWalkableAt(_loc5_,_loc6_ - _loc10_))
            {
               return param1;
            }
         }
         else if(_loc9_ != 0)
         {
            if(this.isWalkableAt(_loc5_ + _loc9_,_loc6_ + this.STEP) && !this.isWalkableAt(_loc5_,_loc6_ + this.STEP) || this.isWalkableAt(_loc5_ + _loc9_,_loc6_ - this.STEP) && !this.isWalkableAt(_loc5_,_loc6_ - this.STEP))
            {
               return param1;
            }
         }
         else if(this.isWalkableAt(_loc5_ + this.STEP,_loc6_ + _loc10_) && !this.isWalkableAt(_loc5_ + this.STEP,_loc6_) || this.isWalkableAt(_loc5_ - this.STEP,_loc6_ + _loc10_) && !this.isWalkableAt(_loc5_ - this.STEP,_loc6_))
         {
            return param1;
         }
         if(_loc9_ != 0 && _loc10_ != 0)
         {
            _loc3_ = this.jump(getNode(_loc5_ + _loc9_,_loc6_),param1);
            _loc4_ = this.jump(getNode(_loc5_,_loc6_ + _loc10_),param1);
            if(Boolean(_loc3_) || Boolean(_loc4_))
            {
               return param1;
            }
         }
         var _loc12_:Boolean = this.isWalkableAt(_loc5_ + _loc9_,_loc6_);
         var _loc13_:Boolean = this.isWalkableAt(_loc5_,_loc6_ + _loc10_);
         if(_loc12_ || _loc13_)
         {
            return this.jump(getNode(_loc5_ + _loc9_,_loc6_ + _loc10_),param1);
         }
         return null;
      }
      
      private function findNeighbors(param1:JpsPoint) : Vector.<JpsPoint>
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:JpsPoint = param1.parent;
         var _loc7_:int = param1.x;
         var _loc8_:int = param1.y;
         var _loc9_:Vector.<JpsPoint> = new Vector.<JpsPoint>();
         if(_loc6_ != null)
         {
            _loc2_ = _loc6_.x;
            _loc3_ = _loc6_.y;
            _loc4_ = (_loc7_ - _loc2_) / Math.max(Math.abs(_loc7_ - _loc2_),1) * this.STEP;
            _loc5_ = (_loc8_ - _loc3_) / Math.max(Math.abs(_loc8_ - _loc3_),1) * this.STEP;
            if(_loc4_ != 0 && _loc5_ != 0)
            {
               if(this.isWalkableAt(_loc7_,_loc8_ + _loc5_))
               {
                  _loc9_.push(getNode(_loc7_,_loc8_ + _loc5_));
               }
               if(this.isWalkableAt(_loc7_ + _loc4_,_loc8_))
               {
                  _loc9_.push(getNode(_loc7_ + _loc4_,_loc8_));
               }
               if(this.isWalkableAt(_loc7_,_loc8_ + _loc5_) || this.isWalkableAt(_loc7_ + _loc4_,_loc8_))
               {
                  _loc9_.push(getNode(_loc7_ + _loc4_,_loc8_ + _loc5_));
               }
               if(!this.isWalkableAt(_loc7_ - _loc4_,_loc8_) && this.isWalkableAt(_loc7_,_loc8_ + _loc5_))
               {
                  _loc9_.push(getNode(_loc7_ - _loc4_,_loc8_ + _loc5_));
               }
               if(!this.isWalkableAt(_loc7_,_loc8_ - _loc5_) && this.isWalkableAt(_loc7_ + _loc4_,_loc8_))
               {
                  _loc9_.push(getNode(_loc7_ + _loc4_,_loc8_ - _loc5_));
               }
            }
            else if(_loc4_ == 0)
            {
               if(this.isWalkableAt(_loc7_,_loc8_ + _loc5_))
               {
                  if(this.isWalkableAt(_loc7_,_loc8_ + _loc5_))
                  {
                     _loc9_.push(getNode(_loc7_,_loc8_ + _loc5_));
                  }
                  if(!this.isWalkableAt(_loc7_ + this.STEP,_loc8_))
                  {
                     _loc9_.push(getNode(_loc7_ + this.STEP,_loc8_ + _loc5_));
                  }
                  if(!this.isWalkableAt(_loc7_ - this.STEP,_loc8_))
                  {
                     _loc9_.push(getNode(_loc7_ - this.STEP,_loc8_ + _loc5_));
                  }
               }
            }
            else if(this.isWalkableAt(_loc7_ + _loc4_,_loc8_))
            {
               if(this.isWalkableAt(_loc7_ + _loc4_,_loc8_))
               {
                  _loc9_.push(getNode(_loc7_ + _loc4_,_loc8_));
               }
               if(!this.isWalkableAt(_loc7_,_loc8_ + this.STEP))
               {
                  _loc9_.push(getNode(_loc7_ + _loc4_,_loc8_ + this.STEP));
               }
               if(!this.isWalkableAt(_loc7_,_loc8_ - this.STEP))
               {
                  _loc9_.push(getNode(_loc7_ + _loc4_,_loc8_ - this.STEP));
               }
            }
         }
         else
         {
            _loc9_ = this.getNeighbors(param1,true);
         }
         return _loc9_;
      }
      
      private function getNeighbors(param1:JpsPoint, param2:Boolean, param3:Boolean = false) : Vector.<JpsPoint>
      {
         var _loc4_:int = param1.x;
         var _loc5_:int = param1.y;
         var _loc6_:Vector.<JpsPoint> = new Vector.<JpsPoint>();
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = false;
         var _loc14_:Boolean = false;
         if(this.isWalkableAt(_loc4_,_loc5_ - this.STEP))
         {
            _loc6_.push(getNode(_loc4_,_loc5_ - this.STEP));
            _loc7_ = true;
         }
         if(this.isWalkableAt(_loc4_ + this.STEP,_loc5_))
         {
            _loc6_.push(getNode(_loc4_ + this.STEP,_loc5_));
            _loc9_ = true;
         }
         if(this.isWalkableAt(_loc4_,_loc5_ + this.STEP))
         {
            _loc6_.push(getNode(_loc4_,_loc5_ + this.STEP));
            _loc11_ = true;
         }
         if(this.isWalkableAt(_loc4_ - this.STEP,_loc5_))
         {
            _loc6_.push(getNode(_loc4_ - this.STEP,_loc5_));
            _loc13_ = true;
         }
         if(!param2)
         {
            return _loc6_;
         }
         if(param3)
         {
            _loc8_ = _loc13_ && _loc7_;
            _loc10_ = _loc7_ && _loc9_;
            _loc12_ = _loc9_ && _loc11_;
            _loc14_ = _loc11_ && _loc13_;
         }
         else
         {
            _loc8_ = _loc13_ || _loc7_;
            _loc10_ = _loc7_ || _loc9_;
            _loc12_ = _loc9_ || _loc11_;
            _loc14_ = _loc11_ || _loc13_;
         }
         if(_loc8_ && this.isWalkableAt(_loc4_ - this.STEP,_loc5_ - this.STEP))
         {
            _loc6_.push(getNode(_loc4_ - this.STEP,_loc5_ - this.STEP));
         }
         if(_loc10_ && this.isWalkableAt(_loc4_ + this.STEP,_loc5_ - this.STEP))
         {
            _loc6_.push(getNode(_loc4_ + this.STEP,_loc5_ - this.STEP));
         }
         if(_loc12_ && this.isWalkableAt(_loc4_ + this.STEP,_loc5_ + this.STEP))
         {
            _loc6_.push(getNode(_loc4_ + this.STEP,_loc5_ + this.STEP));
         }
         if(_loc14_ && this.isWalkableAt(_loc4_ - this.STEP,_loc5_ + this.STEP))
         {
            _loc6_.push(getNode(_loc4_ - this.STEP,_loc5_ + this.STEP));
         }
         return _loc6_;
      }
      
      private function isInside(param1:int, param2:int) : Boolean
      {
         if(this._borderCheck)
         {
            return param1 > 0 && param1 < this.fullWidth && param2 > 0 && param2 < this.fullHeight;
         }
         return param1 > -300 && param1 < this.fullWidth + 300 && param2 > -300 && param2 < this.fullHeight + 300;
      }
      
      public function isComplete() : Boolean
      {
         return this._isComplete;
      }
      
      public function getPath() : Vector.<JpsPoint>
      {
         return this._findedPath;
      }
      
      public function findPath(param1:int, param2:int, param3:int, param4:int, param5:Boolean = true) : Vector.<JpsPoint>
      {
         this.setStart(param1,param2);
         this.setEnd(param3,param4);
         while(!this.isComplete() && param5)
         {
            this.makeStep();
         }
         return this.getPath();
      }
      
      public function setSize(param1:Number, param2:Number) : void
      {
         this.fullWidth = param1;
         this.fullHeight = param2;
      }
      
      private function isWalkableAt(param1:int, param2:int) : Boolean
      {
         if(this.isInside(param1,param2) == false)
         {
            return false;
         }
         if(this.checkWalkableAt != null)
         {
            return this.checkWalkableAt.call(this,param1,param2);
         }
         return false;
      }
      
      public function get borderCheck() : Boolean
      {
         return this._borderCheck;
      }
      
      public function set borderCheck(param1:Boolean) : void
      {
         this._borderCheck = param1;
      }
      
      public function reset() : void
      {
         this._isComplete = false;
         this._findedPath = null;
      }
   }
}

