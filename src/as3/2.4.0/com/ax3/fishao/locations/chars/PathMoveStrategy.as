package com.ax3.fishao.locations.chars
{
   import com.ax3.fishao.Config;
   import com.ax3.fishao.debug.Watch;
   import com.ax3.fishao.locations.base.LocationLayers;
   import com.ax3.fishao.locations.entries.FieldChar;
   import com.ax3.fishao.locations.npc.base.NPC;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.watercraft.Raft;
   import com.ax3.geom.GraphPoint;
   import com.ax3.jpsearch.Jps;
   import com.ax3.jpsearch.JpsPoint;
   import com.ax3.utils.math.limit;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.utils.getTimer;
   
   public class PathMoveStrategy implements IMoveStrategy
   {
      
      private static var globalInstance:int = 0;
      
      public static var maxSpeed:Number = 4;
      
      public static var testPoints:Vector.<Point> = Vector.<Point>([new Point(0,0),new Point(6,0),new Point(4,3),new Point(0,4),new Point(-4,3),new Point(-6,0),new Point(-4,-3),new Point(0,-4),new Point(-4,3),new Point(3,0),new Point(2,1.5),new Point(0,2),new Point(-2,1.5),new Point(-3,0),new Point(-2,-1.5),new Point(0,-2),new Point(-2,1.5)]);
      
      public static var testOffsetPoints:Vector.<Point> = Vector.<Point>([new Point(10,0),new Point(-10,0),new Point(0,7),new Point(0,-7),new Point(-10,7),new Point(-10,-7),new Point(10,7),new Point(10,-7)]);
      
      private const STATE_STAY:int = 0;
      
      private const STATE_WALKING:int = 1;
      
      private const STATE_SEARCH_PATH:int = 2;
      
      private const STATE_SEARCHING_PATH:int = 3;
      
      private const MAX_CALCULATOIN_ITERATION_TIME_MS:Number = 0.01;
      
      public var _fieldChar:FieldChar;
      
      private var _align:Number = 90;
      
      private var _obstacleMap:BitmapData;
      
      protected var _path:Vector.<Point> = new Vector.<Point>();
      
      private var _visitedPoint:Vector.<Point> = new Vector.<Point>();
      
      private var _jps:Jps;
      
      private var _forceMovement:Boolean = false;
      
      private var _state:int = 0;
      
      private var _targetPoint:GraphPoint = new GraphPoint();
      
      private var _finalRotation:Number;
      
      protected var _callback:Function;
      
      private var _lakeObstacleMap:BitmapData;
      
      public var wasPathSearch:Boolean = false;
      
      private var _locationFullWidth:Number = 0;
      
      private var _locationFullHeight:Number = 0;
      
      private var _speedMultiplier:Number;
      
      private var obstacleMapHitTestFunction:Function;
      
      private var instanceId:int = -1;
      
      public function PathMoveStrategy()
      {
         this.obstacleMapHitTestFunction = this.defaultObstacleMapHitTestFunction;
         super();
         this.instanceId = globalInstance++;
      }
      
      private static function getAlignByDirection(param1:Number, param2:Number) : Number
      {
         var _loc3_:Point = new Point(param1,param2);
         if(_loc3_.x > 0)
         {
            if(_loc3_.y > 0)
            {
               return 45;
            }
            if(_loc3_.y < 0)
            {
               return 315;
            }
            return 0;
         }
         if(_loc3_.x < 0)
         {
            if(_loc3_.y > 0)
            {
               return 135;
            }
            if(_loc3_.y < 0)
            {
               return 225;
            }
            return 180;
         }
         if(_loc3_.y > 0)
         {
            return 90;
         }
         if(_loc3_.y < 0)
         {
            return 270;
         }
         return NaN;
      }
      
      private static function isOnRaft(param1:Number, param2:Number) : Boolean
      {
         var _loc3_:Raft = GameSwf.currentLocationDialog.raft;
         return _loc3_ != null ? _loc3_.isOnRaftAbsolute(param1,param2) : false;
      }
      
      private static function drawPoint(param1:Number, param2:Number, param3:uint = 255, param4:uint = 16777215) : void
      {
         if(Config.DEBUG_DRAW_PATH)
         {
            LocationLayers.DEBUG_SPRITE.graphics.lineStyle(1,param3);
            LocationLayers.DEBUG_SPRITE.graphics.beginFill(param4,0.75);
            LocationLayers.DEBUG_SPRITE.graphics.drawCircle(param1,param2,6);
            LocationLayers.DEBUG_SPRITE.graphics.endFill();
         }
      }
      
      private static function drawPath(param1:GraphPoint, param2:GraphPoint, param3:int) : void
      {
         if(Config.DEBUG_DRAW_PATH)
         {
            LocationLayers.DEBUG_SPRITE.graphics.lineStyle(1,param3);
            LocationLayers.DEBUG_SPRITE.graphics.moveTo(param1.x,param1.y);
            LocationLayers.DEBUG_SPRITE.graphics.lineTo(param2.x,param2.y);
         }
      }
      
      public function getAlignForVelocity() : Number
      {
         if(this._fieldChar.boat != null)
         {
            return this._fieldChar.boat.transformAlign(this._align);
         }
         return this._align;
      }
      
      public function isCollideWithWall(param1:int, param2:int) : Boolean
      {
         return this.hitTestPoint(param1,param2);
      }
      
      public function set speedMultiplier(param1:Number) : void
      {
         this._speedMultiplier = param1;
      }
      
      public function isCharCollideWithByCurrentObstacleLogic(param1:Number, param2:Number) : Boolean
      {
         var _loc3_:Point = null;
         for each(_loc3_ in testPoints)
         {
            if(this.obstacleMapHitTestFunction(int(param1 + _loc3_.x + 0.5),int(param2 + _loc3_.y + 0.5)))
            {
               return true;
            }
         }
         return false;
      }
      
      public function isMove() : Boolean
      {
         return this._path.length > 0 || this._state != this.STATE_STAY;
      }
      
      public function isMoveAnimation() : Boolean
      {
         return this._path.length > 0 && this._state == this.STATE_WALKING;
      }
      
      public function set target(param1:FieldChar) : void
      {
         this._fieldChar = param1;
      }
      
      public function setObstacleMap(param1:BitmapData, param2:BitmapData, param3:Number, param4:Number) : void
      {
         this._obstacleMap = param1;
         this._lakeObstacleMap = param2;
         this._jps = new Jps(this._obstacleMap,null);
         this._locationFullWidth = param3;
         this._locationFullHeight = param4;
         this._jps.setSize(param3,param4);
         this._jps.checkWalkableAt = this.isWalkableAt;
      }
      
      public function setLocationSize(param1:Number, param2:Number) : void
      {
         this._jps.setSize(param1,param2);
      }
      
      public function isLakeHit(param1:Point) : Boolean
      {
         return this.isLakeHitXY(param1.x,param1.y);
      }
      
      public function isLakeHitXY(param1:int, param2:int, param3:Bitmap = null) : Boolean
      {
         if(this._lakeObstacleMap != null)
         {
            return this._lakeObstacleMap.getPixel32(param1,param2) > 16777215 && GameSwf.currentLocationDialog.isInSpecialWall(param1,param2,this._fieldChar) == false && isOnRaft(param1,param2) == false && GameSwf.currentLocationDialog.hitTestBoats(param1,param2,param3) == false;
         }
         return false;
      }
      
      public function isWallHit(param1:Point, param2:Boolean = false, param3:Boolean = false) : Boolean
      {
         var _loc4_:Point = null;
         var _loc5_:Point = null;
         if(this._obstacleMap)
         {
            if(param2)
            {
               for each(_loc4_ in testPoints)
               {
                  if(this.obstacleMapHitTestFunction(int(param1.x + _loc4_.x + 0.5),int(param1.y + _loc4_.y + 0.5)))
                  {
                     return true;
                  }
               }
               if(param3)
               {
                  for each(_loc5_ in testOffsetPoints)
                  {
                     if(this.obstacleMapHitTestFunction(int(param1.x + _loc5_.x + 0.5),int(param1.y + _loc5_.y + 0.5)))
                     {
                        return true;
                     }
                  }
               }
               return false;
            }
            return this.obstacleMapHitTestFunction(int(param1.x + 0.5),int(param1.y + 0.5));
         }
         return false;
      }
      
      public function isWallHitScreen(param1:Point) : Boolean
      {
         var _loc2_:Point = null;
         if(this._fieldChar.onRaft)
         {
            _loc2_ = param1.clone();
            _loc2_.x -= this._fieldChar.raft.offsetX;
            _loc2_.y -= this._fieldChar.raft.offsetY;
            return this.isWallHit(_loc2_,false);
         }
         return this.isWallHit(param1,false);
      }
      
      protected function isWalkableAt(param1:int, param2:int) : Boolean
      {
         var _loc3_:Point = null;
         for each(_loc3_ in testPoints)
         {
            if(this._obstacleMap.getPixel32(param1 + _loc3_.x,param2 + _loc3_.y) > 16777215 || GameSwf.currentLocationDialog.isInSpecialWall(param1 + _loc3_.x,param2 + _loc3_.y,this._fieldChar))
            {
               return false;
            }
         }
         return true;
      }
      
      public function setObstacleHitTestFunction(param1:Function) : void
      {
         if(param1 != null)
         {
            this.obstacleMapHitTestFunction = param1;
         }
         else
         {
            this.obstacleMapHitTestFunction = this.defaultObstacleMapHitTestFunction;
         }
      }
      
      public function set maxCalculationTimeMs(param1:uint) : void
      {
         this._jps.maxCalculationTimeMs = param1;
      }
      
      public function update(param1:uint, param2:uint, param3:Number) : void
      {
         var _loc4_:Vector.<JpsPoint> = null;
         var _loc5_:Point = null;
         var _loc6_:JpsPoint = null;
         var _loc7_:uint = 0;
         var _loc8_:Point = null;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:Boolean = false;
         var _loc15_:Point = null;
         var _loc16_:Point = null;
         if(this._fieldChar != null && this._fieldChar.locationUser != null && this._fieldChar.locationUser.username == "regul")
         {
            Watch.change("_jps.isComplete()",this._jps != null ? this._jps.isComplete() : "null");
         }
         if(this._state == this.STATE_SEARCH_PATH)
         {
            this.findPath(this._targetPoint);
            this._state = this.STATE_SEARCHING_PATH;
         }
         else if(this._state == this.STATE_SEARCHING_PATH)
         {
            if(this._jps.isComplete())
            {
               this._state = this.STATE_WALKING;
               _loc4_ = this._jps.getPath();
               if(_loc4_ != null && _loc4_.length > 0)
               {
                  _loc5_ = this._fieldChar.position;
                  for each(_loc6_ in _loc4_)
                  {
                     this.addToPathWithMiddlePoint(_loc5_.x,_loc5_.y,_loc6_.x,_loc6_.y);
                     _loc5_ = _loc6_;
                  }
                  this._forceMovement = true;
               }
            }
            else
            {
               _loc7_ = uint(getTimer());
               while(this._jps.isComplete() == false && getTimer() - _loc7_ < this.MAX_CALCULATOIN_ITERATION_TIME_MS)
               {
                  this._jps.makeStep();
               }
            }
         }
         else if(this._state == this.STATE_WALKING)
         {
            if(this._path.length > 0)
            {
               if(app.performanceManager.sleepMode)
               {
                  _loc15_ = this._path[this._path.length - 1];
                  this._fieldChar.position.x = _loc15_.x;
                  this._fieldChar.position.y = _loc15_.y;
                  this._path.length = 0;
                  return;
               }
               _loc8_ = this._path[0];
               _loc9_ = Point.distance(_loc8_,this._fieldChar.position);
               while(_loc9_ < 1)
               {
                  this._path.shift();
                  if(this._path.length <= 0)
                  {
                     this._fieldChar.position.x = _loc8_.x;
                     this._fieldChar.position.y = _loc8_.y;
                     return;
                  }
                  _loc8_ = this._path[0];
                  _loc9_ = Point.distance(_loc8_,this._fieldChar.position);
               }
               _loc10_ = PathMoveStrategy.maxSpeed * this._speedMultiplier * param3;
               _loc11_ = Math.min(_loc10_,_loc9_);
               _loc12_ = Math.round(limit(this._fieldChar.position.x - _loc8_.x,-_loc11_,_loc11_));
               _loc13_ = Math.round(limit(this._fieldChar.position.y - _loc8_.y,-_loc11_,_loc11_));
               Watch.change("dx",_loc12_);
               Watch.change("dy",_loc13_);
               if(_loc12_ != 0 && _loc13_ != 0)
               {
                  _loc12_ *= KeyboardMoveStrategy.SIN_45;
                  _loc13_ *= KeyboardMoveStrategy.SIN_45;
               }
               _loc14_ = this.isCollideWithWall(this._fieldChar.position.x - _loc12_,this._fieldChar.position.y - _loc13_);
               if(_loc14_)
               {
                  _loc16_ = this._path[this._path.length - 1];
                  this._targetPoint.x = _loc16_.x;
                  this._targetPoint.y = _loc16_.y;
                  this._state = this.STATE_SEARCH_PATH;
               }
               else
               {
                  this._fieldChar.position.x -= _loc12_;
                  this._fieldChar.position.y -= _loc13_;
               }
               this._align = getAlignByDirection(-_loc12_,-_loc13_);
            }
            else
            {
               if(isNaN(this._finalRotation) == false)
               {
                  this._fieldChar.position.rotation = this._finalRotation;
                  this._finalRotation = NaN;
                  this._fieldChar.onMoveEnd();
               }
               this._state = this.STATE_STAY;
            }
         }
      }
      
      private function findPath(param1:Point) : void
      {
         this.wasPathSearch = true;
         this._path.length = 0;
         this._visitedPoint.length = 0;
         if(Config.DEBUG_DRAW_PATH)
         {
            if(this._fieldChar.locationUser.username == "regul")
            {
               LocationLayers.DEBUG_SPRITE.graphics.clear();
            }
            drawPoint(param1.x,param1.y);
         }
         this._jps.borderCheck = !(this._fieldChar is NPC);
         this._jps.findPath(this._fieldChar.position.x + 0.5,this._fieldChar.position.y + 0.5,param1.x + 0.5,param1.y + 0.5,false);
      }
      
      private function hitTestPoint(param1:Number, param2:Number) : Boolean
      {
         if(this._forceMovement)
         {
            return false;
         }
         return this.isCharCollideWithByCurrentObstacleLogic(param1,param2);
      }
      
      public function moveTo(param1:int, param2:int, param3:Number = NaN, param4:Function = null) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Point = null;
         var _loc7_:Point = null;
         if(this._fieldChar == null)
         {
            return;
         }
         this._finalRotation = param3;
         this._callback = param4;
         this._forceMovement = false;
         this._state = this.STATE_STAY;
         if(this._jps != null)
         {
            this._jps.reset();
         }
         if(this._fieldChar.position.x == param1 && this._fieldChar.position.y == param2)
         {
            param1 = -1;
            param2 = -1;
         }
         if(param1 != -1 || param2 != -1)
         {
            this._path.length = 0;
            if(this._fieldChar.locationUser.username == "regul" && Config.DEBUG_DRAW_PATH)
            {
               LocationLayers.DEBUG_SPRITE.graphics.clear();
            }
            if(this.isWallHit(new Point(param1,param2),false))
            {
               _loc6_ = this._fieldChar.getCloserPoint(param1,param2);
               param1 = _loc6_.x;
               param2 = _loc6_.y;
            }
            _loc5_ = this.isWallHit(this._fieldChar.position,false);
            if(_loc5_ && this._fieldChar.raft == null)
            {
               _loc7_ = this._fieldChar.getCloserPoint(this._fieldChar.position.x,this._fieldChar.position.y);
               this._fieldChar.position.x = _loc7_.x;
               this._fieldChar.position.y = _loc7_.y;
               this.addToPathWithMiddlePoint(_loc7_.x,_loc7_.y,param1,param2);
            }
            else
            {
               this.addToPathWithMiddlePoint(this._fieldChar.position.x,this._fieldChar.position.y,param1,param2);
            }
         }
         else if(isNaN(this._finalRotation) == false && this._finalRotation != -1)
         {
            this._fieldChar.position.rotation = this._finalRotation;
            this._finalRotation = NaN;
            this._fieldChar.onMoveEnd();
         }
      }
      
      public function isArrivedToDestination() : Boolean
      {
         return this.isMove() == false && this._state == this.STATE_STAY;
      }
      
      protected function addToPathWithMiddlePoint(param1:int, param2:int, param3:int, param4:int) : void
      {
         if(this._state == this.STATE_STAY)
         {
            this._state = this.STATE_WALKING;
         }
         var _loc5_:Number = param3 - param1;
         var _loc6_:Number = param4 - param2;
         var _loc7_:Number = Math.min(Math.abs(_loc5_),Math.abs(_loc6_));
         var _loc8_:Point = new Point(param3,param4);
         if(_loc5_ > 0)
         {
            _loc8_.x -= _loc7_;
         }
         else
         {
            _loc8_.x += _loc7_;
         }
         if(_loc6_ > 0)
         {
            _loc8_.y -= _loc7_;
         }
         else
         {
            _loc8_.y += _loc7_;
         }
         drawPoint(param3,param4,0,16711680);
         drawPoint(_loc8_.x,_loc8_.y,0,65280);
         this._path.push(_loc8_);
         this._path.push(new Point(param3,param4));
      }
      
      public function disable() : void
      {
      }
      
      protected function defaultObstacleMapHitTestFunction(param1:int, param2:int) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = false;
         if(this._obstacleMap)
         {
            if(this._fieldChar.onRaft && this._fieldChar.isMovingToRaft == false)
            {
               return this._fieldChar.raft.rectangle.contains(param1,param2) == false;
            }
            if(param1 <= this._locationFullWidth && param2 <= this._locationFullHeight)
            {
               _loc4_ = this._obstacleMap.getPixel32(param1,param2) > 16777215;
               _loc5_ = GameSwf.currentLocationDialog.isInSpecialWall(param1,param2,this._fieldChar);
               return _loc4_ || _loc5_;
            }
            return true;
         }
         return false;
      }
      
      public function destroy() : void
      {
         this._fieldChar = null;
         this._path = null;
         this._obstacleMap = null;
         this._visitedPoint = null;
         this._jps = null;
      }
      
      public function reset() : void
      {
         this._state = this.STATE_STAY;
      }
      
      public function stop() : void
      {
         this._finalRotation = NaN;
         this._path.length = 0;
         this._state = this.STATE_STAY;
      }
      
      public function toString() : String
      {
         return "PathMoveStrategy(instanceId=" + this.instanceId + ")";
      }
   }
}

