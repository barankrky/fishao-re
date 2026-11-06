package com.ax3.fishao.locations.chars
{
   import com.ax3.fishao.Config;
   import com.ax3.fishao.locations.entries.FieldChar;
   import flash.display.BitmapData;
   import flash.geom.Point;
   
   public class KeyboardMoveStrategy implements IMoveStrategy
   {
      
      public static var maxSpeed:Number = 4;
      
      public static var SIN_45:Number = 0.850903525;
      
      private var _velocity:Point = new Point();
      
      private var _acceleration:Point = new Point();
      
      private var _wasMoving:Boolean = false;
      
      private var _isPlayerCanRun:Boolean = false;
      
      private var _fieldChar:FieldChar;
      
      private var _obstacleMap:BitmapData;
      
      private var obstacleMapHitTestFunction:Function;
      
      private var _speedMultiplier:Number;
      
      public var testPoints:Vector.<Point> = Vector.<Point>([new Point(0,0),new Point(6,0),new Point(4,3),new Point(0,4),new Point(-4,3),new Point(-6,0),new Point(-4,-3),new Point(0,-4),new Point(-4,3),new Point(3,0),new Point(2,1.5),new Point(0,2),new Point(-2,1.5),new Point(-3,0),new Point(-2,-1.5),new Point(0,-2),new Point(-2,1.5)]);
      
      private var _lakeObstacleMap:BitmapData;
      
      private var _locationFullWidth:Number;
      
      private var _locationFullHeight:Number;
      
      public function KeyboardMoveStrategy()
      {
         this.obstacleMapHitTestFunction = this.defaultObstacleMapHitTestFunction;
         super();
      }
      
      public function isMoveAnimation() : Boolean
      {
         return this.isMove();
      }
      
      public function isWallHitScreen(param1:Point) : Boolean
      {
         return this.isWallHit(param1,false,false);
      }
      
      public function isWallHit(param1:Point, param2:Boolean = false, param3:Boolean = false) : Boolean
      {
         return this.obstacleMapHitTestFunction(int(param1.x + 0.5),int(param1.y + 0.5));
      }
      
      public function isLakeHit(param1:Point) : Boolean
      {
         if(this._lakeObstacleMap != null)
         {
            return this.testPixel(this._lakeObstacleMap.getPixel32(param1.x,param1.y),param1) && GameSwf.currentLocationDialog.isInSpecialWall(param1.x,param1.y,this._fieldChar) == false;
         }
         return false;
      }
      
      public function set target(param1:FieldChar) : void
      {
         this._fieldChar = param1;
      }
      
      public function set speedMultiplier(param1:Number) : void
      {
         this._speedMultiplier = param1;
      }
      
      public function isMove() : Boolean
      {
         return this._wasMoving;
      }
      
      public function getAlignForVelocity() : Number
      {
         var _loc1_:Point = this._velocity;
         if(this._fieldChar.boat != null)
         {
            _loc1_ = this._fieldChar.boat.rotatePoint(_loc1_.clone());
            _loc1_.x = int(_loc1_.x * 100) / 100;
            _loc1_.y = int(_loc1_.y * 100) / 100;
         }
         if(_loc1_.x > 0)
         {
            if(_loc1_.y > 0)
            {
               return 45;
            }
            if(_loc1_.y < 0)
            {
               return 315;
            }
            return 0;
         }
         if(_loc1_.x < 0)
         {
            if(_loc1_.y > 0)
            {
               return 135;
            }
            if(_loc1_.y < 0)
            {
               return 225;
            }
            return 180;
         }
         if(_loc1_.y > 0)
         {
            return 90;
         }
         if(_loc1_.y < 0)
         {
            return 270;
         }
         return NaN;
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
      
      public function setObstacleMap(param1:BitmapData, param2:BitmapData, param3:Number, param4:Number) : void
      {
         this._obstacleMap = param1;
         this._lakeObstacleMap = param2;
         this._locationFullWidth = param3;
         this._locationFullHeight = param4;
      }
      
      public function update(param1:uint, param2:uint, param3:Number) : void
      {
         var _loc4_:Point = null;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Point = null;
         this._wasMoving = false;
         if(this._fieldChar.boat != null)
         {
            _loc4_ = this._acceleration.clone();
            _loc4_ = this._fieldChar.boat.rotatePointBack(_loc4_);
            _loc4_.x = int(_loc4_.x * 100) / 100;
            _loc4_.y = int(_loc4_.y * 100) / 100;
         }
         else
         {
            _loc4_ = this._acceleration;
         }
         var _loc8_:Number = _loc4_.x;
         var _loc9_:Number = _loc4_.y;
         this._velocity.x = _loc8_;
         this._velocity.y = _loc9_;
         if(_loc8_ != 0 && _loc9_ != 0)
         {
            _loc5_ = this._velocity.x * SIN_45 * param3;
            _loc6_ = this._velocity.y * SIN_45 * param3;
         }
         else
         {
            _loc5_ = this._velocity.x * param3;
            _loc6_ = this._velocity.y * param3;
         }
         var _loc10_:* = 1;
         while((_loc5_ != 0 || _loc6_ != 0) && _loc10_ > 0)
         {
            _loc10_--;
            if(this.hitTestPoint(this._fieldChar.position.x + _loc5_,this._fieldChar.position.y + _loc6_) == false || Config.OBSTACLE_CHEAT)
            {
               this._fieldChar.position.x += _loc5_;
               this._fieldChar.position.y += _loc6_;
               if(_loc5_ != 0 || _loc6_ != 0)
               {
                  this._wasMoving = true;
               }
               break;
            }
            if(this._fieldChar.boat != null)
            {
               _loc7_ = new Point(this._acceleration.x,this._acceleration.y);
               this._fieldChar.rotateByPoint(_loc7_.x,_loc7_.y);
            }
            else
            {
               this._fieldChar.rotateByPoint(_loc5_,_loc6_);
            }
         }
      }
      
      public function moveByKeyboard(param1:Number, param2:Number, param3:Boolean = true) : void
      {
         this._acceleration.x = param1 * maxSpeed * this._speedMultiplier;
         if(param1 > 0 && this._velocity.x < 0 || param1 < 0 && this._velocity.x > 0)
         {
            this._velocity.x = 0;
         }
         if(param2 > 0 && this._velocity.y < 0 || param2 < 0 && this._velocity.y > 0)
         {
            this._velocity.y = 0;
         }
         this._acceleration.y = param2 * maxSpeed * this._speedMultiplier;
         if(param3 && param1 == 0 && param2 == 0)
         {
            this._velocity.x = 0;
            this._velocity.y = 0;
         }
      }
      
      private function hitTestPoint(param1:Number, param2:Number) : Boolean
      {
         var _loc3_:Point = null;
         for each(_loc3_ in this.testPoints)
         {
            if(this.obstacleMapHitTestFunction(int(param1 + _loc3_.x + 0.5),int(param2 + _loc3_.y + 0.5)))
            {
               return true;
            }
         }
         return false;
      }
      
      private function defaultObstacleMapHitTestFunction(param1:int, param2:int) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = false;
         if(this._obstacleMap)
         {
            if(this._fieldChar.onRaft)
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
      
      public function disable() : void
      {
      }
      
      private function testPixel(param1:uint, param2:Point) : Boolean
      {
         var _loc3_:Boolean = false;
         _loc3_ = param1 > 16777215 && !GameSwf.currentLocationDialog.raftRectangle.containsPoint(param2);
         if(_loc3_ && this._fieldChar.onRaft)
         {
            _loc3_ = GameSwf.currentLocationDialog.landingMap.getPixel32(param2.x,param2.y) <= 16777215;
         }
         return _loc3_ && !GameSwf.currentLocationDialog.hitTestBoats(param2.x,param2.y);
      }
      
      public function destroy() : void
      {
         this._fieldChar = null;
         this._obstacleMap = null;
         this.obstacleMapHitTestFunction = null;
      }
      
      public function stop() : void
      {
      }
   }
}

