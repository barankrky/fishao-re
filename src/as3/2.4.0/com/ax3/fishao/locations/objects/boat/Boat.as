package com.ax3.fishao.locations.objects.boat
{
   import assets.common.CharPosPointBoat;
   import assets.common.CharPosPointCur;
   import com.ax3.fishao.locations.chars.BoatMoveStrategy;
   import com.ax3.fishao.locations.chars.CharStateType;
   import com.ax3.fishao.locations.entries.FieldChar;
   import com.ax3.fishao.locations.entries.PlayerChar;
   import com.ax3.fishao.locations.objects.BoatSourceWrapper;
   import com.ax3.fishao.vars.app;
   import com.ax3.geom.GraphPoint;
   import com.ax3.utils.MathUtil;
   import com.inkora.tween.TweenCube;
   import com.junkbyte.console.Cc;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.events.EventDispatcher;
   import flash.events.MouseEvent;
   import flash.geom.Point;
   
   public class Boat extends EventDispatcher
   {
      
      public var graphic:BoatViewport;
      
      public var index:int;
      
      public var obstacleMap:BitmapData;
      
      public var obstacleMapPosition:Point;
      
      public var initPosition:Point;
      
      private var _rotationAlign:Number = 0;
      
      private var _fieldChar:FieldChar;
      
      private const POINT_BITMAP:BitmapData = new BitmapData(1,1,false,4294901760);
      
      public var lastFieldCharUsername:String;
      
      public var positionPoint:CharPosPointBoat = new CharPosPointBoat();
      
      public var lastSendPositionPoint:CharPosPointCur = new CharPosPointCur();
      
      public var lastSendPosition:GraphPoint = new GraphPoint();
      
      public var directionCoef:Point = new Point(1,1);
      
      public function Boat(param1:BoatSourceWrapper)
      {
         super();
         this.graphic = this.graphic;
         this.graphic = new BoatViewport(param1);
         this.graphic.addEventListener(MouseEvent.CLICK,this.onClick);
         this.obstacleMap = param1.getObstacleMap();
         this.obstacleMapPosition = param1.getObstacleMapPosition();
      }
      
      public function process(param1:DisplayObject) : void
      {
         var _loc2_:int = 0;
         var _loc3_:DisplayObjectContainer = param1.parent;
         if(_loc3_ != null)
         {
            _loc2_ = _loc3_.getChildIndex(param1);
            _loc3_.removeChild(param1);
            _loc3_.addChildAt(this.graphic,_loc2_);
         }
         this.graphic.x = param1.x;
         this.graphic.y = param1.y;
         this.initPosition = new Point(this.graphic.x,this.graphic.y);
         this.index = parseInt(param1.name.slice("$boat_".length));
         this.positionPoint.mouseChildren = false;
         this.positionPoint.mouseEnabled = false;
         this.positionPoint.label.text = String(this.index);
         this.positionPoint.alpha = 0.25;
         this.lastSendPositionPoint.mouseChildren = false;
         this.lastSendPositionPoint.mouseEnabled = false;
         this.lastSendPositionPoint.label.text = "bsnt_" + String(this.index);
      }
      
      private function onClick(param1:MouseEvent) : void
      {
      }
      
      public function getLeftSidePosition() : Point
      {
         return new Point(this.graphic.x - this.graphic.width / 2,this.graphic.y);
      }
      
      public function getTopLeftCornerPosition() : Point
      {
         return new Point(this.graphic.x - this.graphic.width / 2,this.graphic.y - this.graphic.height / 2);
      }
      
      public function getCenterPosition() : Point
      {
         return new Point(this.graphic.x,this.graphic.y);
      }
      
      public function transformPosition(param1:int, param2:int) : Point
      {
         var _loc3_:Point = new Point(param1 - this.initPosition.x - this.obstacleMapPosition.x,param2 - this.initPosition.y - this.obstacleMapPosition.y);
         _loc3_ = this.graphic.transformPosition(_loc3_);
         _loc3_.x += this.graphic.x;
         _loc3_.y += this.graphic.y;
         return _loc3_;
      }
      
      public function transformPoint(param1:Point) : Point
      {
         return this.graphic.transformPoint(param1);
      }
      
      public function transformPoint2(param1:Point) : Point
      {
         return this.graphic.transformPosition(param1);
      }
      
      public function transformByAlign(param1:Point) : void
      {
         MathUtil.rotateVector(param1,-this._rotationAlign);
         param1.x = int(param1.x * 100) / 100;
         param1.y = int(param1.y * 100) / 100;
      }
      
      public function get position() : Point
      {
         return this.getCenterPosition();
      }
      
      public function getBitmapDataByDirection(param1:int) : BitmapData
      {
         return this.graphic.getBitmapDataByDirection(param1);
      }
      
      public function hitTest(param1:BitmapData, param2:Point) : Boolean
      {
         var _loc3_:Point = BoatLeftSidePosition.leftSizeMap[BoatStatusType.NORMAL][this.graphic.directionIndex];
         _loc3_ = _loc3_.clone();
         _loc3_.x += this.graphic.x;
         _loc3_.y += this.graphic.y;
         var _loc4_:BitmapData = this.getBitmapDataByDirection(this.graphic.directionIndex);
         return _loc4_.hitTest(_loc3_,255,param1,param2,255);
      }
      
      public function hitTestPoint(param1:Point) : Boolean
      {
         var _loc2_:Point = BoatLeftSidePosition.leftSizeMap[BoatStatusType.DEFAULT][this.graphic.directionIndex];
         _loc2_ = _loc2_.clone();
         _loc2_.x += this.graphic.x;
         _loc2_.y += this.graphic.y;
         var _loc3_:BitmapData = this.getBitmapDataByDirection(this.graphic.directionIndex);
         return _loc3_.hitTest(_loc2_,255,this.POINT_BITMAP,param1,255);
      }
      
      public function putTo(param1:GraphPoint) : void
      {
         this.graphic.x = param1.x;
         this.graphic.y = param1.y;
         if(param1.rotation != -1)
         {
            this.graphic.setDirectionIndex(param1.rotation);
            this._rotationAlign = param1.rotation * BoatMoveStrategy.DIRECTION_ARC_ALIGN_DEGREE;
            this.updateDirCoef();
         }
      }
      
      public function updateDirCoef() : void
      {
         this.directionCoef.x = 1;
         this.directionCoef.y = 1;
         this.directionCoef = this.rotatePointBack(this.directionCoef);
      }
      
      public function transformFromDisplayToReal(param1:Point) : Point
      {
         param1.x -= this.graphic.x;
         param1.y -= this.graphic.y;
         param1 = this.graphic.transformFromDisplayToReal(param1);
         param1.x = param1.x + this.initPosition.x + this.obstacleMapPosition.x;
         param1.y = param1.y + this.initPosition.y + this.obstacleMapPosition.y;
         return param1;
      }
      
      public function release() : void
      {
         if(this._fieldChar != null && this._fieldChar.locationUser != null)
         {
            if(app.user.inFishingProcess.value)
            {
               this._fieldChar.cancelFishing(false);
            }
            this._fieldChar.releaseBoat();
            Cc.log("Boat.release(x:" + (this.initPosition.x - 230) + ", y: " + this.initPosition.y + ", fieldChar:" + this._fieldChar + ")");
            this._fieldChar.setPositionWithFade(this.initPosition.x - 230,this.initPosition.y);
            this._fieldChar.locationUser.position.x = this._fieldChar.position.x;
            this._fieldChar.locationUser.position.y = this._fieldChar.position.y;
            if(this._fieldChar is PlayerChar)
            {
               PlayerChar(this._fieldChar).state = CharStateType.NORMAL;
               PlayerChar(this._fieldChar).clearRodCircle();
            }
         }
         this.lastFieldCharUsername = null;
         this._fieldChar = null;
         this.placeToInitPosition();
      }
      
      private function placeToInitPosition() : void
      {
         TweenCube.to(this.graphic,1,{"alpha":0},{"onComplete":this.fadeInAtInit});
      }
      
      private function fadeInAtInit() : void
      {
         if(this.graphic != null)
         {
            this.graphic.alpha = 0;
            this.graphic.x = this.initPosition.x;
            this.graphic.y = this.initPosition.y;
            this.graphic.setStatus(BoatStatusType.DEFAULT,0);
            this._rotationAlign = 0;
            TweenCube.to(this.graphic,1,{"alpha":1});
         }
      }
      
      public function get fieldChar() : FieldChar
      {
         return this._fieldChar;
      }
      
      public function set fieldChar(param1:FieldChar) : void
      {
         this._fieldChar = param1;
         this.lastFieldCharUsername = this._fieldChar.locationUser.username;
      }
      
      public function destroy() : void
      {
         TweenCube.destroyTweensOf(this.graphic,false);
         this.graphic.destroy();
         this.obstacleMap = null;
         this.obstacleMapPosition = null;
         this.initPosition = null;
         this._fieldChar = null;
         this.lastFieldCharUsername = null;
         this.positionPoint = null;
      }
      
      public function rotatePoint(param1:Point) : Point
      {
         if(this.graphic != null)
         {
            return this.graphic.rotatePoint(param1);
         }
         return param1;
      }
      
      public function rotatePointBack(param1:Point) : Point
      {
         if(this.graphic != null)
         {
            return this.graphic.rotatePointBack(param1);
         }
         return param1;
      }
      
      public function get rotationAlign() : Number
      {
         return this._rotationAlign;
      }
      
      public function set rotationAlign(param1:Number) : void
      {
         var _loc2_:Number = NaN;
         if(this._rotationAlign != param1)
         {
            _loc2_ = param1 - this._rotationAlign;
            this._rotationAlign = param1;
         }
      }
      
      public function transformAlign(param1:int) : int
      {
         param1 += this._rotationAlign;
         if(param1 > 180)
         {
            param1 = -360 + param1;
         }
         else if(param1 < -180)
         {
            param1 = 360 + param1;
         }
         return param1;
      }
      
      public function transformAlignBack(param1:int) : int
      {
         param1 -= this._rotationAlign;
         if(param1 > 180)
         {
            param1 = -360 + param1;
         }
         else if(param1 < -180)
         {
            param1 = 360 + param1;
         }
         return param1;
      }
   }
}

