package com.ax3.fishao.locations.chars
{
   import com.ax3.fishao.FishaoFscModelManager;
   import com.ax3.fishao.debug.Watch;
   import com.ax3.fishao.locations.FloatInWaterManager;
   import com.ax3.fishao.locations.entries.PlayerChar;
   import com.ax3.fishao.locations.objects.boat.Boat;
   import com.ax3.fishao.locations.objects.boat.BoatLeftSidePosition;
   import com.ax3.fishao.locations.objects.boat.BoatStatusType;
   import com.ax3.fishao.vars.app;
   import com.ax3.geom.GraphPoint;
   import com.ax3.utils.ArrayUtils;
   import com.ax3.utils.math.limit;
   import flash.display.BitmapData;
   import flash.geom.Point;
   
   public class BoatMoveStrategy extends PathMoveStrategy
   {
      
      public static const _RAD2DEG:Number = 180 / Math.PI;
      
      private static const MOORING_LINE:int = 1750;
      
      private static const SLAVE_MOORING_LINE:int = 1780;
      
      public static var maxBoatSpeed:Number = 8;
      
      public static var boatAcceleration:Number = 1;
      
      public static const DIRECTION_COUNT:int = 16;
      
      public static const DIRECTION_ARC_ALIGN_DEGREE:Number = 360 / DIRECTION_COUNT;
      
      private static const BOAT_COLLIDE_OFFSETS:Array = [50,100,150,200,250,300,400,600];
      
      private var _boat:Boat;
      
      public var state:BoatMoveStrategyState = null;
      
      private var _velocity:Point = new Point();
      
      private var _acceleration:Point = new Point();
      
      private var _pathMoveStrategy:PathMoveStrategy;
      
      private var _keyboartMove:KeyboardMoveStrategy;
      
      private var _directionShift:Number;
      
      private var _boatObstacleMap:BitmapData;
      
      private const ZERO_POINT:Point = new Point(0,0);
      
      private var _lastSentPosition:GraphPoint = new GraphPoint();
      
      protected var _boatPath:Vector.<Point> = new Vector.<Point>();
      
      private var _forceSendInRow:int;
      
      private var _collideFixDirection:Point = null;
      
      private const OFFSET_DIRECTIONS:Array = [new Point(1,0),new Point(1,1),new Point(0,1),new Point(-1,0),new Point(-1,1),new Point(-1,-1),new Point(0,-1),new Point(1,-1)];
      
      private var _iterator:int = 0;
      
      public var floatInWaterManager:FloatInWaterManager;
      
      public var _obstacleMap:BitmapData;
      
      private var _finalDirectionIndex:Number = NaN;
      
      private var _slaveMoviement:Boolean = false;
      
      private var _slaveTarget:GraphPoint = new GraphPoint();
      
      public function BoatMoveStrategy()
      {
         super();
         this._directionShift = -DIRECTION_ARC_ALIGN_DEGREE / 2;
      }
      
      override public function update(param1:uint, param2:uint, param3:Number) : void
      {
         var _loc4_:Point = null;
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = false;
         Watch.change("path:",this.showPath());
         if(this.state == BoatMoveStrategyState.MOVE_CLOSE_TO_BOAT)
         {
            super.update(param1,param2,param3);
            if(isArrivedToDestination())
            {
               this.state = BoatMoveStrategyState.MOVE_TO_BOAT;
               _loc4_ = this._boat.getCenterPosition();
               moveTo(_loc4_.x,_loc4_.y);
            }
         }
         else if(this.state == BoatMoveStrategyState.MOVE_TO_BOAT)
         {
            super.update(param1,param2,param3);
            if(isArrivedToDestination())
            {
               _fieldChar.clearCommandQueue();
               _fieldChar.activateBoat(this._boat);
               this.state = BoatMoveStrategyState.ON_BOAT;
               if(_fieldChar is PlayerChar)
               {
                  this.setBoatCenterPosition();
                  this.sendCharPositionToServer();
               }
               else
               {
                  _fieldChar.clearCommandQueue();
                  _fieldChar.locationUser.position.x = _fieldChar.position.x;
                  _fieldChar.locationUser.position.y = _fieldChar.position.y;
               }
            }
         }
         else
         {
            if(this._boatPath.length > 0)
            {
               this.updateAccelerationByBoatPath();
            }
            if(this._acceleration.length > 0 || this._velocity.length > 0)
            {
               this.updateMovement(param3);
               if(this._velocity.length > 0)
               {
                  this._boat.graphic.setBoatStatus(BoatStatusType.SAIL);
                  this.updateBoatDirectionByVelocity();
               }
               else
               {
                  this._boat.graphic.setBoatStatus(BoatStatusType.NORMAL);
               }
            }
            else
            {
               this._boat.graphic.setBoatStatus(BoatStatusType.NORMAL);
            }
            if(!(_fieldChar is PlayerChar))
            {
               super.update(param1,param2,param3);
            }
            _loc5_ = this.isHitOtherBoats();
            _loc6_ = this._slaveMoviement == false && this.isHitWall();
            if(_loc5_ || _loc6_)
            {
               if(this._iterator == 0)
               {
                  this._collideFixDirection = null;
                  this._iterator = -1;
               }
               if(this._collideFixDirection == null)
               {
                  this._collideFixDirection = this.findFreeDirection();
                  this._iterator = 120;
               }
               else if(this.isAbleToMoveOffset(this._collideFixDirection.x,this._collideFixDirection.y,false,false))
               {
                  --this._iterator;
                  this._boat.graphic.x += this._collideFixDirection.x;
                  this._boat.graphic.y += this._collideFixDirection.y;
                  this.floatInWaterManager.inspectBoatAtFloatCollision(this._boat);
               }
               else
               {
                  this._collideFixDirection = null;
                  this._iterator = -1;
               }
            }
            else
            {
               this._collideFixDirection = null;
               this._iterator = -1;
            }
         }
      }
      
      private function showPath() : String
      {
         var _loc1_:Point = null;
         var _loc2_:String = "";
         if(this._boatPath == null || this._boatPath.length == 0)
         {
            _loc2_ = "empty";
         }
         else
         {
            for each(_loc1_ in this._boatPath)
            {
               if(_loc2_.length > 0)
               {
                  _loc2_ += "->";
               }
               _loc2_ += "[" + _loc1_.x + "," + _loc1_.y + "]";
            }
         }
         return _loc2_;
      }
      
      private function setBoatCenterPosition() : void
      {
         var _loc1_:Point = this._boat.getCenterPosition();
         _fieldChar.position.x = _loc1_.x;
         _fieldChar.position.y = _loc1_.y;
      }
      
      private function findFreeDirection() : Point
      {
         var _loc1_:int = 0;
         var _loc2_:Point = null;
         loop0:
         for each(_loc1_ in BOAT_COLLIDE_OFFSETS)
         {
            _loc2_ = ArrayUtils.randomItem(this.OFFSET_DIRECTIONS);
            if(this.isAbleToMoveOffset(_loc2_.x * _loc1_,_loc2_.y * _loc1_,true,true))
            {
               return _loc2_;
            }
            var _loc5_:int = 0;
            var _loc6_:* = this.OFFSET_DIRECTIONS;
            do
            {
               for each(_loc2_ in _loc6_)
               {
               }
               continue loop0;
            }
            while(!this.isAbleToMoveOffset(_loc2_.x * _loc1_,_loc2_.y * _loc1_,true,true));
            return _loc2_;
         }
         return null;
      }
      
      private function sendCharPositionToServer() : void
      {
         _fieldChar.sendCurrentPlayerPosition(true);
      }
      
      public function sendCurrentPositionToServer(param1:Boolean = false) : void
      {
         if(param1 || this._boat.graphic.position != null && !this._boat.graphic.position.equalsWithRotation(this._lastSentPosition))
         {
            if(this._lastSentPosition.x == this._boat.graphic.position.x && this._lastSentPosition.y == this._boat.graphic.position.y && this._lastSentPosition.rotation == this._boat.graphic.position.rotation)
            {
               ++this._forceSendInRow;
            }
            else
            {
               this._forceSendInRow = 0;
            }
            this._lastSentPosition.copy(this._boat.graphic.position);
            this._boat.lastSendPosition.copy(this._lastSentPosition);
            if(this._forceSendInRow < 20)
            {
               FishaoFscModelManager.locationExtension.moveBoatTo(this._lastSentPosition.x,this._lastSentPosition.y,this._lastSentPosition.rotation);
            }
         }
      }
      
      private function updateAccelerationByBoatPath() : void
      {
         var _loc1_:Point = this._boatPath[0];
         var _loc2_:Point = this._boat.position;
         while(Point.distance(_loc1_,_loc2_) < maxBoatSpeed * 2)
         {
            this._boatPath.shift();
            if(this._boatPath.length <= 0)
            {
               _loc2_.x = _loc1_.x;
               _loc2_.y = _loc1_.y;
               if(!isNaN(this._finalDirectionIndex) && this.isAbleToRotate(this._finalDirectionIndex))
               {
                  this._boat.graphic.setDirectionIndex(this._finalDirectionIndex);
                  this._boat.rotationAlign = this._finalDirectionIndex * DIRECTION_ARC_ALIGN_DEGREE;
                  this._boat.updateDirCoef();
                  this.floatInWaterManager.inspectBoatAtFloatCollision(this._boat);
               }
               this.clearMovement();
               return;
            }
            _loc1_ = this._boatPath[0];
         }
         var _loc3_:Number = Math.round(limit(_loc2_.x - _loc1_.x,-maxBoatSpeed,maxBoatSpeed));
         var _loc4_:Number = Math.round(limit(_loc2_.y - _loc1_.y,-maxBoatSpeed,maxBoatSpeed));
         if(_loc3_ != 0 || _loc4_ != 0)
         {
            this._acceleration.x = -_loc3_;
            this._acceleration.y = -_loc4_;
         }
      }
      
      private function clearMovement() : void
      {
         this._finalDirectionIndex = NaN;
         this._slaveMoviement = false;
         this.stopMovement();
      }
      
      private function stopMovement() : void
      {
         this._acceleration.x = 0;
         this._acceleration.y = 0;
         this._velocity.x = 0;
         this._velocity.y = 0;
      }
      
      private function updateBoatDirectionByVelocity() : void
      {
         var _loc1_:Number = Math.atan2(this._velocity.x,-this._velocity.y) * _RAD2DEG;
         while(_loc1_ < 0)
         {
            _loc1_ = 360 + _loc1_;
         }
         _loc1_ -= this._directionShift;
         var _loc2_:int = _loc1_ / DIRECTION_ARC_ALIGN_DEGREE % DIRECTION_COUNT;
         if(this.isAbleToRotate(_loc2_))
         {
            this._boat.graphic.setDirectionIndex(_loc2_);
            this._boat.rotationAlign = _loc2_ * DIRECTION_ARC_ALIGN_DEGREE;
            this._boat.updateDirCoef();
            this.floatInWaterManager.inspectBoatAtFloatCollision(this._boat);
         }
      }
      
      private function updateMovement(param1:Number) : void
      {
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         var _loc4_:Number = this._velocity.x + this._acceleration.x;
         var _loc5_:Number = this._velocity.y + this._acceleration.y;
         if(this._acceleration.x != 0)
         {
            if(_loc4_ * _loc4_ <= maxBoatSpeed * maxBoatSpeed)
            {
               this._velocity.x = _loc4_;
            }
         }
         else if(_loc4_ > 0)
         {
            --this._velocity.x;
         }
         else if(_loc4_ < 0)
         {
            ++this._velocity.x;
         }
         if(this._acceleration.y != 0)
         {
            if(_loc5_ * _loc5_ <= maxBoatSpeed * maxBoatSpeed)
            {
               this._velocity.y = _loc5_;
            }
         }
         else if(_loc5_ > 0)
         {
            --this._velocity.y;
         }
         else if(_loc5_ < 0)
         {
            ++this._velocity.y;
         }
         if(_loc4_ != 0 && _loc5_ != 0)
         {
            _loc2_ = this._velocity.x;
            _loc3_ = this._velocity.y;
         }
         else
         {
            _loc2_ = this._velocity.x;
            _loc3_ = this._velocity.y;
         }
         if(_loc2_ != 0 || _loc3_ != 0)
         {
            _loc2_ *= param1;
            _loc3_ *= param1;
            if(this.isAbleToMoveOffset(_loc2_,_loc3_,!this._slaveMoviement) || this.isAbleToMoveOffset(_loc2_ * 5,_loc3_ * 5,!this._slaveMoviement) && this._velocity.length < 2)
            {
               this._boat.graphic.x += _loc2_;
               this._boat.graphic.y += _loc3_;
               this.floatInWaterManager.inspectBoatAtFloatCollision(this._boat);
            }
            else
            {
               if(this._slaveMoviement == false)
               {
                  this._boatPath.length = 0;
               }
               this.stopMovement();
            }
         }
      }
      
      public function set boatObstacleMap(param1:BitmapData) : void
      {
         this._boatObstacleMap = param1;
      }
      
      private function isAbleToRotate(param1:int) : Boolean
      {
         var _loc2_:Point = null;
         var _loc3_:BitmapData = null;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = false;
         if(this._boatObstacleMap != null)
         {
            _loc2_ = BoatLeftSidePosition.leftSizeMap[BoatStatusType.NORMAL][param1];
            _loc2_ = _loc2_.clone();
            _loc2_.x += this._boat.graphic.x;
            _loc2_.y += this._boat.graphic.y;
            _loc3_ = this._boat.getBitmapDataByDirection(param1);
            _loc4_ = this._boatObstacleMap.hitTest(this.ZERO_POINT,255,_loc3_,_loc2_,255);
            if(_loc4_)
            {
               return false;
            }
            _loc5_ = this.isHitOtherBoat(_loc3_,_loc2_);
            if(_loc5_)
            {
               return false;
            }
         }
         return true;
      }
      
      private function isHitOtherBoat(param1:BitmapData, param2:Point) : Boolean
      {
         var _loc3_:Boat = null;
         for each(_loc3_ in _fieldChar.boats)
         {
            if(this._boat != _loc3_)
            {
               if(_loc3_.hitTest(param1,param2))
               {
                  return true;
               }
            }
         }
         return false;
      }
      
      private function isAbleToMoveOffset(param1:int, param2:int, param3:Boolean = true, param4:Boolean = true) : Boolean
      {
         var _loc5_:Point = null;
         var _loc6_:BitmapData = null;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = false;
         if(this._boatObstacleMap != null)
         {
            _loc5_ = BoatLeftSidePosition.leftSizeMap[BoatStatusType.NORMAL][this._boat.graphic.directionIndex];
            _loc5_ = _loc5_.clone();
            _loc5_.x = _loc5_.x + this._boat.graphic.x + param1;
            _loc5_.y = _loc5_.y + this._boat.graphic.y + param2;
            _loc6_ = this._boat.getBitmapDataByDirection(this._boat.graphic.directionIndex);
            if(param3)
            {
               _loc7_ = this._boatObstacleMap.hitTest(this.ZERO_POINT,255,_loc6_,_loc5_,255);
               if(_loc7_)
               {
                  return false;
               }
               if(this.isHitSpotLimit(this._boat.graphic.x + param1,this._boat.graphic.y + param2))
               {
                  return false;
               }
            }
            if(param4)
            {
               _loc8_ = this.isHitOtherBoat(_loc6_,_loc5_);
               if(_loc8_)
               {
                  return false;
               }
            }
         }
         return true;
      }
      
      public function moveToBoat(param1:Boat) : void
      {
         this._boat = param1;
         this._obstacleMap = this._boat.obstacleMap;
         this.state = BoatMoveStrategyState.MOVE_CLOSE_TO_BOAT;
         var _loc2_:Point = this._boat.getLeftSidePosition();
         moveTo(_loc2_.x,_loc2_.y);
      }
      
      public function putToBoat(param1:Boat) : void
      {
         this._boat = param1;
         this._obstacleMap = this._boat.obstacleMap;
         _fieldChar.activateBoat(this._boat);
         this.state = BoatMoveStrategyState.ON_BOAT;
      }
      
      override public function isCollideWithWall(param1:int, param2:int) : Boolean
      {
         if(this.state == BoatMoveStrategyState.MOVE_TO_BOAT)
         {
            return false;
         }
         return super.isCollideWithWall(param1,param2);
      }
      
      public function init(param1:PathMoveStrategy, param2:KeyboardMoveStrategy) : void
      {
         this._pathMoveStrategy = param1;
         this._keyboartMove = param2;
      }
      
      override public function isMove() : Boolean
      {
         return super.isMove();
      }
      
      public function isCharCanWalk() : Boolean
      {
         return this.state == BoatMoveStrategyState.ON_BOAT && app.user.charState.value == CharStateType.NORMAL;
      }
      
      public function obstacleHitTestFunction(param1:Number, param2:Number) : Boolean
      {
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:uint = 0;
         if(_fieldChar is PlayerChar || this.state == BoatMoveStrategyState.MOVE_CLOSE_TO_BOAT)
         {
            if(this._boat == null)
            {
               return true;
            }
            _loc3_ = param1 - this._boat.initPosition.x - this._boat.obstacleMapPosition.x;
            _loc4_ = param2 - this._boat.initPosition.y - this._boat.obstacleMapPosition.y;
            _loc5_ = this._boat.obstacleMap.getPixel32(_loc3_,_loc4_);
            return _loc5_ < 16777215;
         }
         if(this._boat != null)
         {
            return false;
         }
         return super.defaultObstacleMapHitTestFunction(param1,param2);
      }
      
      public function moveByKeyboard(param1:int, param2:int) : void
      {
         if(this.state == BoatMoveStrategyState.ON_BOAT)
         {
            if(param1 != 0 || param2 != 0 || this._boatPath.length == 0)
            {
               this._acceleration.x = param1 * boatAcceleration;
               this._acceleration.y = param2 * boatAcceleration;
               _path.length = 0;
               this._boatPath.length = 0;
            }
         }
      }
      
      public function moveByClick(param1:Number, param2:Number) : void
      {
         this._boatPath.length = 0;
         if((param1 - this._boat.graphic.x) * (param1 - this._boat.graphic.x) + (param2 - this._boat.graphic.y) * (param2 - this._boat.graphic.y) >= maxBoatSpeed * 2)
         {
            this.addToBoatPathWithMiddlePoint(this._boat.graphic.x,this._boat.graphic.y,param1,param2);
         }
      }
      
      private function addToBoatPathWithMiddlePoint(param1:int, param2:int, param3:int, param4:int, param5:Boolean = false) : void
      {
         var _loc6_:Point = null;
         var _loc7_:Point = null;
         this._slaveMoviement = param5;
         if(this._slaveMoviement)
         {
            if(param2 > SLAVE_MOORING_LINE && param4 > SLAVE_MOORING_LINE)
            {
               param3 = this._boat.initPosition.x;
            }
            else if(!(param2 < SLAVE_MOORING_LINE && param4 < SLAVE_MOORING_LINE))
            {
               _loc6_ = new Point(this._boat.initPosition.x,SLAVE_MOORING_LINE);
               _loc7_ = this.findMiddlePoint(param1,param2,_loc6_.x,_loc6_.y);
               this._boatPath.push(_loc7_);
               this._boatPath.push(_loc6_);
               param1 = _loc6_.x;
               param2 = _loc6_.y;
            }
            this._slaveTarget.x = param3;
            this._slaveTarget.y = param4;
         }
         var _loc8_:Point = this.findMiddlePoint(param1,param2,param3,param4);
         this._boatPath.push(_loc8_);
         this._boatPath.push(new Point(param3,param4));
      }
      
      private function findMiddlePoint(param1:int, param2:int, param3:int, param4:int) : Point
      {
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
         return _loc8_;
      }
      
      override public function destroy() : void
      {
         super.destroy();
         this.floatInWaterManager = null;
         this._boat = null;
         this.state = null;
         this._pathMoveStrategy = null;
         this._keyboartMove = null;
      }
      
      public function moveByResponse(param1:int, param2:int, param3:int) : void
      {
         if(this.state == BoatMoveStrategyState.ON_BOAT)
         {
            this._boatPath.length = 0;
            this._finalDirectionIndex = param3;
            this.addToBoatPathWithMiddlePoint(this._boat.graphic.x,this._boat.graphic.y,param1,param2,true);
         }
      }
      
      override public function isWallHit(param1:Point, param2:Boolean = false, param3:Boolean = false) : Boolean
      {
         if(this.state == BoatMoveStrategyState.MOVE_TO_BOAT)
         {
            return false;
         }
         if(this.state == BoatMoveStrategyState.ON_BOAT)
         {
            if(app.user.charState.value == CharStateType.SAIL_BY_BOAT)
            {
               return false;
            }
            return false;
         }
         return super.isWallHit(param1,param2,param3);
      }
      
      override public function stop() : void
      {
         super.stop();
         this._acceleration.x = 0;
         this._acceleration.y = 0;
         this._velocity.x = 0;
         this._velocity.y = 0;
         this._boatPath.length = 0;
      }
      
      private function isHitOtherBoats() : Boolean
      {
         var _loc1_:Point = BoatLeftSidePosition.leftSizeMap[BoatStatusType.NORMAL][this._boat.graphic.directionIndex];
         _loc1_ = _loc1_.clone();
         _loc1_.x += this._boat.graphic.x;
         _loc1_.y += this._boat.graphic.y;
         var _loc2_:BitmapData = this._boat.getBitmapDataByDirection(this._boat.graphic.directionIndex);
         return this.isHitOtherBoat(_loc2_,_loc1_);
      }
      
      private function isHitWall() : Boolean
      {
         var _loc1_:Point = BoatLeftSidePosition.leftSizeMap[BoatStatusType.NORMAL][this._boat.graphic.directionIndex];
         _loc1_ = _loc1_.clone();
         _loc1_.x += this._boat.graphic.x;
         _loc1_.y += this._boat.graphic.y;
         var _loc2_:BitmapData = this._boat.getBitmapDataByDirection(this._boat.graphic.directionIndex);
         var _loc3_:Boolean = this._boatObstacleMap.hitTest(this.ZERO_POINT,255,_loc2_,_loc1_,255);
         var _loc4_:Boolean = this.isHitSpotLimit(this._boat.graphic.x,this._boat.graphic.y);
         return _loc3_ || _loc4_;
      }
      
      private function isHitSpotLimit(param1:Number, param2:Number) : Boolean
      {
         return param2 > MOORING_LINE && (this._boat.initPosition.x - 150 > param1 || this._boat.initPosition.x + 150 < param1);
      }
      
      public function hitTestWithBoatBoard(param1:int, param2:int) : Boolean
      {
         var _loc3_:int = param1 - this._boat.initPosition.x - this._boat.obstacleMapPosition.x;
         var _loc4_:int = param2 - this._boat.initPosition.y - this._boat.obstacleMapPosition.y;
         var _loc5_:uint = this._boat.obstacleMap.getPixel32(_loc3_,_loc4_);
         return _loc5_ < 16777215;
      }
   }
}

