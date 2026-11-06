package com.ax3.fishao.locations.entries
{
   import assets.common.CharShadow;
   import com.ax3.display.LineStyle;
   import com.ax3.display.rod.Rod;
   import com.ax3.display.rod.RodState;
   import com.ax3.fishao.EResourceID;
   import com.ax3.fishao.FishaoFscModelManager;
   import com.ax3.fishao.ResourceType;
   import com.ax3.fishao.control.managers.FishaoSoundManager;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.debug.Watch;
   import com.ax3.fishao.entries.LocationUser;
   import com.ax3.fishao.locations.FloatInWaterManager;
   import com.ax3.fishao.locations.SurfaceType;
   import com.ax3.fishao.locations.base.LocationDialog;
   import com.ax3.fishao.locations.base.LocationLayers;
   import com.ax3.fishao.locations.chars.BoatMoveStrategy;
   import com.ax3.fishao.locations.chars.BoatMoveStrategyState;
   import com.ax3.fishao.locations.chars.CharAnimationSource;
   import com.ax3.fishao.locations.chars.CharStateType;
   import com.ax3.fishao.locations.chars.CharViewport;
   import com.ax3.fishao.locations.chars.ForceMoveStrategy;
   import com.ax3.fishao.locations.chars.FreezeMovementStrategy;
   import com.ax3.fishao.locations.chars.IBitmapAnimationSource;
   import com.ax3.fishao.locations.chars.IMoveStrategy;
   import com.ax3.fishao.locations.chars.KeyboardMoveStrategy;
   import com.ax3.fishao.locations.chars.PathMoveStrategy;
   import com.ax3.fishao.locations.chars.commands.BiteFishingCommand;
   import com.ax3.fishao.locations.chars.commands.ICharCommand;
   import com.ax3.fishao.locations.chars.commands.MoveCommand;
   import com.ax3.fishao.locations.chars.commands.ReelInFishingCommand;
   import com.ax3.fishao.locations.chars.commands.StartFishingCommand;
   import com.ax3.fishao.locations.chars.commands.StopFishingCommand;
   import com.ax3.fishao.locations.npc.base.NPC;
   import com.ax3.fishao.locations.objects.boat.Boat;
   import com.ax3.fishao.locations.privateHouse.LocationDialogPrivateHouse;
   import com.ax3.fishao.locations.privateHouse.model.EPlayerPosition;
   import com.ax3.fishao.model.ShopItemColor;
   import com.ax3.fishao.tutorial.ManagerTutorial;
   import com.ax3.fishao.tutorial.TutorialInfo;
   import com.ax3.fishao.utils.UtilsDisplayObject;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs.fishingLine.model.EFishingLineColor;
   import com.ax3.fishao.view.dialogs.tournaments.models.TournamentInfo;
   import com.ax3.fishao.view.panels.ChatPopup;
   import com.ax3.fishao.view.panels.FishCatchEmoticons;
   import com.ax3.fishao.view.panels.user_popup.ControllerUserPopup;
   import com.ax3.fishao.watercraft.Raft;
   import com.ax3.geom.GraphPoint;
   import com.ax3.utils.IsoMath;
   import com.ax3.utils.math.limit;
   import com.ax3.utils.removeAllChildren;
   import com.ax3.utils.removeFromParent;
   import com.ax3.utils.string.zeroPad;
   import com.brokenfunction.json.decodeJson;
   import com.inkora.tween.TweenCube;
   import com.junkbyte.console.Cc;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.clearTimeout;
   import flash.utils.getTimer;
   import flash.utils.setTimeout;
   
   public class FieldChar extends GameFieldObject
   {
      
      private static const DEFAULT_ROPE_LINE_STYLE:LineStyle = new LineStyle(0.25,15658734,0.25);
      
      private static const SMALL_ROD_RADIUS:int = 200;
      
      private static const NORMAL_ROD_RADIUS:int = 300;
      
      private static const BIG_ROD_RADIUS:int = 500;
      
      protected static const MIN_DISTANCE_TO_WATER:Number = 72;
      
      private static const SERVER_STATE_START_FISHING:String = "startFishing";
      
      public static const SERVER_STATE_STOP_FISHING:String = "stopFishing";
      
      private static const SERVER_STATE_BITE:String = "bite";
      
      private static const SERVER_STATE_CAUGHT:String = "caught";
      
      protected static const SERVER_STATE_DIDNT_CATCH:String = "didntCatch";
      
      public static var mapOffset:Point = new Point();
      
      public static var speed:Number = 5;
      
      protected static var CHAR_SHADOW:CharShadow = new CharShadow();
      
      private static const SHADOW_X_CORRECTION:int = -1;
      
      public static var CHAR_ANIMATION_SPEED:int = 125;
      
      private static const STEP_SOUND_DISTANCE:int = 300;
      
      private static const ROD_SFX_SOUND_DISTANCE:int = 200;
      
      public static var locationLayersScrollRect:Rectangle = new Rectangle();
      
      private const CHAR_VIEWPORT_BOTTOM_PADDING:int = 9;
      
      private const NANOOK_VIEWPORT_BOTTOM_PADDING:int = 19;
      
      private const UPDATE_POSITION_MS:int = 500;
      
      private const DEFAULT_SPEED_MULTIPLIER:Number = 1;
      
      private var _wasInvisible:Boolean = true;
      
      private var _onRaft:Boolean = false;
      
      protected var _lastY:int;
      
      protected var _lastX:int;
      
      protected var _charViewport:CharViewport;
      
      private var _chat:ChatPopup = new ChatPopup();
      
      protected var _controllerUserPopup:ControllerUserPopup;
      
      protected var _charSprite:Sprite = new Sprite();
      
      protected var _fishCatchEmoticons:FishCatchEmoticons = null;
      
      private var _fishCatchEmoticonClip:MovieClip = null;
      
      protected var _showRodTimerId:uint;
      
      public var finalTargetPosition:Point = new Point();
      
      public var position:GraphPoint = new GraphPoint(0,0,90);
      
      protected var _obstacleMap:BitmapData;
      
      private var currentTargetPoint:Point = null;
      
      private var path:Vector.<Point>;
      
      private var _currentSpeed:Point = new Point();
      
      private var _acceleration:Point = new Point();
      
      protected var _fishingArea:Vector.<Point> = new Vector.<Point>();
      
      protected var _lastRotationAngle:int = 90;
      
      protected var _charShadow:Bitmap;
      
      protected var _rod:Rod;
      
      protected var _frameIndex:int;
      
      protected var _charAnimationSource:CharAnimationSource;
      
      protected var _moveStrategy:IMoveStrategy = null;
      
      protected var _keyboartMove:KeyboardMoveStrategy = new KeyboardMoveStrategy();
      
      protected var _pathMoveStrategy:PathMoveStrategy = new PathMoveStrategy();
      
      protected var _forceMoveStrategy:ForceMoveStrategy = new ForceMoveStrategy();
      
      protected var _freezeMovementStrategy:FreezeMovementStrategy = new FreezeMovementStrategy();
      
      protected var _speedMultiplier:Number;
      
      private var _lastMouseClickPoint:Point = new Point();
      
      protected var _lakeCells:DisplayObject;
      
      protected var isNeedShowRod:Boolean = false;
      
      private var _serverState:String;
      
      public var locationUser:LocationUser;
      
      private var _mouseController:FieldCharMouseController;
      
      protected var _boatMoveStrategy:BoatMoveStrategy;
      
      public var boats:Vector.<Boat>;
      
      private var _currentSurface:SurfaceType;
      
      private var _distanceToPlayer:Number = 1.7976931348623157e+308;
      
      public var raft:Raft = null;
      
      private var _isStepSoundPlaying:Boolean = false;
      
      private var _lakeObstacleMap:BitmapData;
      
      private var _lastPositionUpdateTimeMS:int;
      
      public var locationLayers:LocationLayers;
      
      public var __lastModeCommand:MoveCommand;
      
      public var __lastStartFishingCommand:StartFishingCommand;
      
      private var _isMoveAnimationActive:Boolean = false;
      
      public var boat:Boat;
      
      private var _rodLength:int;
      
      protected var _currentRodRadiusPx:int;
      
      protected var _lastSentPosition:GraphPoint = new GraphPoint();
      
      public var isMovingToRaft:Boolean = false;
      
      protected var _rodQualityPower:Number;
      
      private var _commanQueue:Vector.<ICharCommand> = new Vector.<ICharCommand>();
      
      private var _currentCommand:ICharCommand = null;
      
      public var destroyed:Boolean = false;
      
      private var _fadeOutPosition:Point;
      
      private var _fadeInPosition:Point;
      
      private var _lastCheckPosition:Point;
      
      private var _lastCheckPosTimeMS:int;
      
      private var _forceSendInRow:int = 0;
      
      private var _roomCurrent:String;
      
      private var _roomPrevious:String;
      
      public function FieldChar(param1:LocationUser, param2:FloatInWaterManager)
      {
         var _loc3_:int = 0;
         super();
         this._boatMoveStrategy = new BoatMoveStrategy();
         this._boatMoveStrategy.floatInWaterManager = param2;
         this.locationUser = param1;
         var _loc4_:LineStyle = this.defaultRopeLineStyle;
         _loc4_.color = EFishingLineColor.getColor(this.locationUser.fishingLineColor);
         this._rod = new Rod(_loc4_,param2,this._pathMoveStrategy.isLakeHitXY);
         var _loc5_:int = MIN_DISTANCE_TO_WATER;
         while(_loc5_ > 1)
         {
            _loc3_ = 0;
            while(_loc3_ <= 360)
            {
               this._fishingArea.push(new Point(_loc5_ * Math.cos(_loc3_),_loc5_ * Math.sin(_loc3_)));
               _loc3_ += 30;
            }
            _loc5_ = -25;
         }
         this._fishingArea.fixed = true;
         graphic = new Sprite();
         if(this is NPC)
         {
            graphic.name = "NPC_graphic";
         }
         else if(this is PlayerChar)
         {
            graphic.name = "PlayerChar_graphic_" + param1.username;
         }
         else
         {
            graphic.name = "FieldChar_graphic_" + param1.username;
         }
         if(this.position.rotation == -1)
         {
            this.position.rotation = 90;
         }
         this.updateGraphic();
         this.hideRodAndShowChar();
         this._keyboartMove.target = this;
         this._pathMoveStrategy.target = this;
         this._forceMoveStrategy.target = this;
         this.initClickUserPopup();
         this.updateBitmapAnimationSource();
         this.moveStrategy = this._pathMoveStrategy;
         this._boatMoveStrategy.target = this;
         this._boatMoveStrategy.init(this._pathMoveStrategy,this._keyboartMove);
         this.updateSpeedMultiplier();
      }
      
      private static function sendResult() : void
      {
         var _loc1_:TournamentInfo = GameSwf.instance.managerTournaments.tournamentCurrent;
         var _loc2_:String = _loc1_ != null ? _loc1_.id : "";
         FishaoFscModelManager.fishingExtension.sendIsFishCaught(Math.random() > 0.5,_loc2_);
         Cc.error("sendResult with random");
         GameSwf.sendReportToServer("sendResult");
      }
      
      public static function dAngleDegree(param1:Number, param2:Number) : Number
      {
         var _loc3_:Number = param1 - param2;
         if(_loc3_ > 180)
         {
            _loc3_ = -360 + _loc3_;
         }
         else if(_loc3_ < -180)
         {
            _loc3_ = 360 + _loc3_;
         }
         return _loc3_;
      }
      
      private static function getRodRadiusByLength(param1:int) : int
      {
         if(param1 <= 65)
         {
            return SMALL_ROD_RADIUS;
         }
         if(param1 <= 85)
         {
            return NORMAL_ROD_RADIUS;
         }
         return BIG_ROD_RADIUS;
      }
      
      public function get controllerUserPopup() : ControllerUserPopup
      {
         return this._controllerUserPopup;
      }
      
      public function get roomPrevious() : String
      {
         return this._roomPrevious;
      }
      
      public function get roomCurrent() : String
      {
         return this._roomCurrent;
      }
      
      public function set roomCurrent(param1:String) : void
      {
         this._roomPrevious = this._roomCurrent;
         this._roomCurrent = param1;
      }
      
      private function isMoveToBoat() : Boolean
      {
         return this._moveStrategy is BoatMoveStrategy && BoatMoveStrategy(this._moveStrategy).state != BoatMoveStrategyState.ON_BOAT;
      }
      
      public function onBoat() : Boolean
      {
         return this.boat != null;
      }
      
      public function get isFreezed() : Boolean
      {
         return this.moveStrategy == this._freezeMovementStrategy;
      }
      
      public function isLastCheckPositionChanged() : Boolean
      {
         var _loc1_:Boolean = false;
         if(this._lastCheckPosition == null || Math.abs(this._lastCheckPosition.x - this.position.x) > 10 || Math.abs(this._lastCheckPosition.y - this.position.y) > 10)
         {
            _loc1_ = true;
         }
         this._lastCheckPosition = this.position.clone();
         return _loc1_;
      }
      
      public function wasPathSearch() : Boolean
      {
         return this._moveStrategy is PathMoveStrategy && this._pathMoveStrategy.wasPathSearch;
      }
      
      public function isRegularMovement() : Boolean
      {
         return this.raft == null && this.boat == null && !(this._moveStrategy is BoatMoveStrategy) && !this.isFreezed && !(this._moveStrategy is ForceMoveStrategy);
      }
      
      protected function isPlayerStateFishing() : Boolean
      {
         var _loc1_:RodState = this.getState();
         return _loc1_ == RodState.FISHING || _loc1_ == RodState.THROW_IN_ANIMATION || _loc1_ == RodState.BITE || _loc1_ == RodState.BITE_START;
      }
      
      public function get visible() : Boolean
      {
         return this._charSprite.visible;
      }
      
      public function set visible(param1:Boolean) : void
      {
         this._charSprite.visible = param1;
      }
      
      public function get lastSentPosition() : GraphPoint
      {
         return this._lastSentPosition;
      }
      
      private function stepVolume() : Number
      {
         return 1 - limit(this._distanceToPlayer / STEP_SOUND_DISTANCE,0,1);
      }
      
      public function rodSfxVolume() : Number
      {
         return 1 - limit(this._distanceToPlayer / ROD_SFX_SOUND_DISTANCE,0,1);
      }
      
      public function setLocationSize(param1:Number, param2:Number) : void
      {
         this._boatMoveStrategy.setLocationSize(param1,param2);
         this._pathMoveStrategy.setLocationSize(param1,param2);
         this._forceMoveStrategy.setLocationSize(param1,param2);
      }
      
      private function canFishing() : Boolean
      {
         return (this.raft == null || this.raft.state == Raft.ON_THE_MIDDLE) && this._rod.typeId > EResourceID.ER_ROD_EMPTY;
      }
      
      public function get isCloseToTheLake() : Boolean
      {
         var _loc1_:Point = null;
         for each(_loc1_ in this._fishingArea)
         {
            if(this.moveStrategy.isLakeHit(new Point(_loc1_.x + graphic.x,_loc1_.y + graphic.y)))
            {
               return true;
            }
         }
         return false;
      }
      
      public function set currentSurface(param1:SurfaceType) : void
      {
         if(this._currentSurface != param1)
         {
            if(this._isMoveAnimationActive && this._isStepSoundPlaying)
            {
               if(GameSwf.settings.sfx && this._currentSurface != null && this._currentSurface.soundFile != null)
               {
                  FishaoSoundManager.stopLoopFor(this._currentSurface.soundFile,this);
               }
               if(Boolean(GameSwf.settings.sfx) && Boolean(param1) && param1.soundFile != null)
               {
                  FishaoSoundManager.playLoopFor(param1.soundFile,this,this.stepVolume());
               }
            }
            this._currentSurface = param1;
         }
      }
      
      public function set distanceToPlayer(param1:Number) : void
      {
         if(Math.floor(this._distanceToPlayer / 10) == Math.floor(param1 / 10))
         {
            return;
         }
         this._distanceToPlayer = param1;
         if(this._isStepSoundPlaying && this._isMoveAnimationActive && this._currentSurface != null)
         {
            if(this._distanceToPlayer > STEP_SOUND_DISTANCE)
            {
               FishaoSoundManager.stopLoopFor(this._currentSurface.soundFile,this);
            }
            else if(this._currentSurface != null && this._currentSurface.soundFile != null)
            {
               FishaoSoundManager.playLoopFor(this._currentSurface.soundFile,this,this.stepVolume());
            }
         }
      }
      
      public function get rod() : Rod
      {
         return this._rod;
      }
      
      protected function get defaultRopeLineStyle() : LineStyle
      {
         return new LineStyle(DEFAULT_ROPE_LINE_STYLE.thickness,DEFAULT_ROPE_LINE_STYLE.color,DEFAULT_ROPE_LINE_STYLE.alpha);
      }
      
      public function get charViewport() : CharViewport
      {
         return this._charViewport;
      }
      
      protected function get canShowUserPopupBaseOnMoveStrategy() : Boolean
      {
         var _loc1_:Boolean = true;
         if(this.moveStrategy == this._forceMoveStrategy || this.moveStrategy == this._freezeMovementStrategy)
         {
            _loc1_ = false;
         }
         return _loc1_;
      }
      
      protected function get canShowInTutorial() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:TutorialInfo = GameSwf.instance.managerTutorial.tutorialInProgress;
         if(_loc2_ != null)
         {
            _loc1_ = _loc2_.canInteractWith(this);
         }
         return _loc1_;
      }
      
      public function set level(param1:int) : void
      {
         this._controllerUserPopup.level = param1;
      }
      
      public function setPosition(param1:Number, param2:Number, param3:Number = -1) : void
      {
         if(param1 != -1)
         {
            this.position.x = param1;
            graphicPosition.x = graphic.x = param1;
         }
         if(param2 != -1)
         {
            this.position.y = param2;
            graphicPosition.y = graphic.y = param2;
         }
         if(param3 != -1 && !isNaN(param3))
         {
            this.position.rotation = param3;
         }
      }
      
      public function isNeedMove() : Boolean
      {
         return Point.distance(this.finalTargetPosition,this.position) > speed;
      }
      
      public function set message(param1:String) : void
      {
         if(graphic.visible)
         {
            this._chat.volume = this.rodSfxVolume();
            this._chat.text = param1;
         }
      }
      
      public function get chat() : ChatPopup
      {
         return this._chat;
      }
      
      public function setMouseClickPoint(param1:Number, param2:Number) : void
      {
         this._lastMouseClickPoint = new Point(param1,param2);
         this.rotateByPoint(param1 - this.position.x,param2 - this.position.y);
      }
      
      public function get isRodVisible() : Boolean
      {
         return this._rod.visible;
      }
      
      public function get onRaft() : Boolean
      {
         return this._onRaft;
      }
      
      public function set onRaft(param1:Boolean) : void
      {
         this._onRaft = param1;
         if(this._onRaft && GameSwf.currentLocationDialog.raft != null && !GameSwf.currentLocationDialog.raft.isOnBoard(this))
         {
            GameSwf.currentLocationDialog.raft.addChar(this);
         }
         else if(!this._onRaft)
         {
            GameSwf.currentLocationDialog.raft.removeChar(this);
         }
      }
      
      public function get isOnForceMove() : Boolean
      {
         var _loc1_:Boolean = false;
         if(this._moveStrategy != null)
         {
            _loc1_ = this._moveStrategy == this._forceMoveStrategy;
         }
         return _loc1_;
      }
      
      public function get moveStrategy() : IMoveStrategy
      {
         return this._moveStrategy;
      }
      
      public function set moveStrategy(param1:IMoveStrategy) : void
      {
         if(this._moveStrategy != null)
         {
            this._moveStrategy.disable();
         }
         this._moveStrategy = param1;
      }
      
      public function getState() : RodState
      {
         return this._rod.state;
      }
      
      public function setLakeCells(param1:DisplayObject) : void
      {
         this._lakeCells = param1;
      }
      
      public function isMove() : Boolean
      {
         return this.moveStrategy != null && this.moveStrategy.isMove();
      }
      
      public function isMoveAnimation() : Boolean
      {
         return this.moveStrategy != null && this.moveStrategy.isMoveAnimation();
      }
      
      private function getAlignByVelocity() : Number
      {
         return this.moveStrategy != null && this.moveStrategy.isMoveAnimation() ? this.moveStrategy.getAlignForVelocity() : NaN;
      }
      
      public function setObstacleMaps(param1:BitmapData, param2:BitmapData, param3:Number, param4:Number) : void
      {
         this._obstacleMap = param1;
         this._lakeObstacleMap = param2;
         this._keyboartMove.setObstacleMap(param1,param2,param3,param4);
         this._pathMoveStrategy.setObstacleMap(param1,param2,param3,param4);
         this._boatMoveStrategy.setObstacleMap(param1,param2,param3,param4);
         this._forceMoveStrategy.setObstacleMap(param1,param2,param3,param4);
      }
      
      public function set boatObstacleMap(param1:BitmapData) : void
      {
         this._boatMoveStrategy.boatObstacleMap = param1;
      }
      
      public function updateGraphic(param1:uint = 0, param2:uint = 0) : void
      {
         var _loc3_:DisplayObject = null;
         var _loc4_:int = 0;
         var _loc5_:int = 0;
         var _loc6_:Point = null;
         var _loc7_:int = 0;
         var _loc8_:int = 0;
         if(this._charAnimationSource != null && this._charViewport != null)
         {
            if(this.boat == null)
            {
               if(this.raft == null)
               {
                  if(this._fadeOutPosition == null)
                  {
                     graphicPosition.x = graphic.x = int(this.position.x + 0.5);
                     graphicPosition.y = graphic.y = int(this.position.y + 0.5);
                  }
                  else
                  {
                     graphicPosition.x = graphic.x = int(this._fadeOutPosition.x + 0.5);
                     graphicPosition.y = graphic.y = int(this._fadeOutPosition.y + 0.5);
                  }
               }
               else
               {
                  graphicPosition.x = graphic.x = int(this.position.x + this.raft.offsetX);
                  graphicPosition.y = graphic.y = int(this.position.y + this.raft.offsetY);
               }
            }
            else
            {
               _loc6_ = this.boat.transformPosition(int(this.position.x + 0.5),int(this.position.y + 0.5));
               graphicPosition.x = graphic.x = _loc6_.x;
               graphicPosition.y = graphic.y = _loc6_.y;
            }
            this._chat.x = graphic.x;
            this._chat.y = graphic.y;
            if(this._fishCatchEmoticons != null)
            {
               this._fishCatchEmoticons.x = graphic.x;
               this._fishCatchEmoticons.y = graphic.y;
            }
            _loc3_ = this._controllerUserPopup.view.source;
            _loc3_.x = graphic.x;
            _loc3_.y = graphic.y - 55;
            if(this._lastRotationAngle != this.position.rotation)
            {
               this._lastRotationAngle = this.position.rotation;
               if(this._lastRotationAngle > 180)
               {
                  this._lastRotationAngle = -360 + this._lastRotationAngle;
               }
               else if(this._lastRotationAngle < -180)
               {
                  this._lastRotationAngle = 360 + this._lastRotationAngle;
               }
               this.position.rotation = this._lastRotationAngle;
            }
            _loc4_ = this._lastRotationAngle;
            if(this.boat != null)
            {
               _loc4_ = this.boat.transformAlign(_loc4_);
            }
            _loc5_ = (Math.round(_loc4_ / 45) + 6) % 8;
            if(graphic.visible)
            {
               if(this.isMoveAnimation())
               {
                  if(this._isStepSoundPlaying == false)
                  {
                     this._isStepSoundPlaying = true;
                     if(Boolean(GameSwf.settings.sfx) && Boolean(this._currentSurface) && Boolean(this._currentSurface.soundFile))
                     {
                        FishaoSoundManager.playLoopFor(this._currentSurface.soundFile,this,this.stepVolume());
                     }
                  }
                  this._charViewport.frame = param1 / CHAR_ANIMATION_SPEED % 4;
               }
               else
               {
                  if(this._isStepSoundPlaying)
                  {
                     this._isStepSoundPlaying = false;
                     if(Boolean(GameSwf.settings.sfx) && Boolean(this._currentSurface) && Boolean(this._currentSurface.soundFile))
                     {
                        FishaoSoundManager.stopLoopFor(this._currentSurface.soundFile,this);
                     }
                  }
                  this._charViewport.frame = 0;
               }
               _loc7_ = this._charViewport.frame;
               if(_loc7_ == 2)
               {
                  _loc7_ = 0;
               }
               if(_loc7_ == 3)
               {
                  _loc7_ = 2;
               }
               _loc8_ = _loc5_ + _loc7_ * 8;
               if(this._frameIndex != _loc8_)
               {
                  this._frameIndex = _loc8_;
                  this._charViewport.bitmapData = this._charAnimationSource.getBitmapDataByDirection(this._frameIndex);
                  this.updateCharViewportPosition();
               }
               if(this._rod.visible)
               {
                  this._rod.direction = Rod.getDirectionByFrameIndex(this._frameIndex);
                  this._rod.setCharacter(this._charViewport,this.locationUser.viewConfig.body.color);
               }
            }
            else
            {
               if(this._isStepSoundPlaying)
               {
                  this._isStepSoundPlaying = false;
                  if(Boolean(GameSwf.settings.sfx) && Boolean(this._currentSurface) && Boolean(this._currentSurface.soundFile))
                  {
                     FishaoSoundManager.stopLoopFor(this._currentSurface.soundFile,this);
                  }
               }
               this._charViewport.frame = 0;
            }
         }
      }
      
      private function destroyAnimationSource() : void
      {
         if(this._charViewport)
         {
            this._charViewport.destroy();
            if(this._charViewport.parent == this._charSprite)
            {
               this._charSprite.removeChild(this._charViewport);
            }
         }
         if(this._charAnimationSource)
         {
            this._charAnimationSource.destroy();
         }
      }
      
      public function moveTo(param1:Number, param2:Number) : void
      {
         this.position.x = param1;
         this.position.y = param2;
      }
      
      public function moveByKeyboard(param1:Number, param2:Number) : void
      {
         if(this.moveStrategy == this._boatMoveStrategy)
         {
            if(this._boatMoveStrategy.isCharCanWalk() || !(this is PlayerChar))
            {
               this.moveStrategy = this._keyboartMove;
            }
         }
         if(this.moveStrategy == this._pathMoveStrategy && (param1 != 0 || param2 != 0))
         {
            this.moveStrategy = this._keyboartMove;
         }
         if(this.moveStrategy == this._keyboartMove)
         {
            this._keyboartMove.moveByKeyboard(param1,param2);
         }
         if(this.moveStrategy == this._boatMoveStrategy)
         {
            this._boatMoveStrategy.moveByKeyboard(param1,param2);
         }
      }
      
      public function moveByMouseClick(param1:Number, param2:Number, param3:Number = NaN) : void
      {
         this._lastPositionUpdateTimeMS = getTimer();
         this._pathMoveStrategy.wasPathSearch = false;
         if(this.moveStrategy == this._forceMoveStrategy)
         {
            return;
         }
         if(param3 == -1)
         {
            param3 = NaN;
         }
         if(this.moveStrategy == this._boatMoveStrategy)
         {
            if(this._boatMoveStrategy.isCharCanWalk() || !(this is PlayerChar))
            {
               this.moveStrategy = this._pathMoveStrategy;
            }
         }
         if(this.moveStrategy == null || this.moveStrategy == this._keyboartMove)
         {
            this.moveStrategy = this._pathMoveStrategy;
         }
         if(this.moveStrategy == this._pathMoveStrategy)
         {
            if(this._rod.visible)
            {
               this.hideRodAndShowChar();
            }
            this._pathMoveStrategy.moveTo(param1,param2,param3);
         }
         if(this.moveStrategy == this._boatMoveStrategy)
         {
            if(this is PlayerChar)
            {
               this._boatMoveStrategy.moveByClick(param1,param2);
            }
            else
            {
               this._boatMoveStrategy.moveTo(param1,param2,param3);
            }
         }
      }
      
      public function tryOpenUserPopup() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Point = graphic.localToGlobal(new Point(graphic.mouseX,graphic.mouseY));
         if(this.canShowInTutorial && graphic.hitTestPoint(_loc2_.x,_loc2_.y) && this.canShowUserPopupBaseOnMoveStrategy)
         {
            this._controllerUserPopup.show();
            _loc1_ = true;
         }
         return _loc1_;
      }
      
      public function setPathMoveStrategy() : void
      {
         if(this._moveStrategy != this._boatMoveStrategy)
         {
            this.moveStrategy = this._pathMoveStrategy;
         }
      }
      
      protected function initClickUserPopup() : void
      {
         this._controllerUserPopup = new ControllerUserPopup(this);
      }
      
      public function updateBitmapAnimationSource() : IBitmapAnimationSource
      {
         this.destroyAnimationSource();
         this._charAnimationSource = new CharAnimationSource();
         this._charAnimationSource.config({"cellSize":new Rectangle(0,0,50,80)});
         var _loc1_:BitmapData = GameSwf.charsManager.getFieldCharBitmapDataByViewConfig(this.locationUser.viewConfig);
         this._charAnimationSource.bitmapData = _loc1_;
         if(_loc1_ == null)
         {
            graphic.visible = false;
         }
         else if(graphic.visible == false)
         {
            graphic.alpha = 0;
            graphic.visible = true;
            TweenCube.to(this.graphic,1,{"alpha":1});
         }
         this._charViewport = new CharViewport();
         this._charViewport.smoothing = true;
         this._mouseController = new FieldCharMouseController(this);
         if(graphic is DisplayObjectContainer)
         {
            removeAllChildren(DisplayObjectContainer(graphic));
            this._charShadow = new Bitmap(CHAR_SHADOW);
            removeAllChildren(this._charSprite);
            this._charSprite.addChild(this._charShadow);
            this._charSprite.addChild(this._charViewport);
            DisplayObjectContainer(graphic).addChild(this._charSprite);
            DisplayObjectContainer(graphic).addChild(this._rod);
            LocationLayers.charMessagesLayer.addChild(this._chat);
            LocationLayers.charMessagesLayer.addChild(this._controllerUserPopup.view.source);
         }
         this._frameIndex = int.MIN_VALUE;
         this._lastRotationAngle = int.MIN_VALUE;
         this.updateGraphic();
         this.updateMouseHandleState();
         return this._charAnimationSource;
      }
      
      public function updateSpeedMultiplier(param1:int = -1) : void
      {
         var _loc2_:String = null;
         var _loc3_:Object = null;
         var _loc4_:int = ResourceType.getShoesAbsoluteIdByCharViewId(param1);
         var _loc5_:Object = app.looksDict.get(_loc4_);
         if(_loc5_ != null)
         {
            _loc2_ = Debug.getPropertyOrDefault(_loc5_,"param","");
            if(_loc2_ == null || _loc2_.length == 0)
            {
               this._speedMultiplier = this.DEFAULT_SPEED_MULTIPLIER;
            }
            else
            {
               _loc3_ = decodeJson(_loc2_);
               if(_loc3_.hasOwnProperty("speed_multiplier"))
               {
                  this._speedMultiplier = Number(_loc3_.speed_multiplier);
               }
               else
               {
                  this._speedMultiplier = this.DEFAULT_SPEED_MULTIPLIER;
               }
            }
         }
         else
         {
            this._speedMultiplier = this.DEFAULT_SPEED_MULTIPLIER;
         }
         this._keyboartMove.speedMultiplier = this._speedMultiplier;
         this._pathMoveStrategy.speedMultiplier = this._speedMultiplier;
      }
      
      protected function updateMouseHandleState() : void
      {
         var _loc1_:ManagerTutorial = GameSwf.instance.managerTutorial;
         if(!_loc1_.isAnyTutorialInProgress)
         {
            return;
         }
         var _loc2_:TutorialInfo = _loc1_.tutorialInProgress;
         UtilsDisplayObject.changeMouseHandleState(graphic,_loc2_.canInteractWith(this));
      }
      
      public function update(param1:uint, param2:uint, param3:Number) : void
      {
         var _loc4_:Number = NaN;
         this.updateCommandQueue();
         if(this.moveStrategy != null && this._obstacleMap != null)
         {
            this.moveStrategy.update(param1,param2,param3);
            if(this.destroyed)
            {
               return;
            }
            if(this.moveStrategy != null && this.moveStrategy.isMoveAnimation())
            {
               this.startMoveAnimation();
            }
            else
            {
               this.stopMoveAnimation();
            }
         }
         if(graphic.visible)
         {
            if(this._wasInvisible)
            {
               this._wasInvisible = false;
               this._rod.rope.resetLastChangeTs();
            }
            _loc4_ = this.getAlignByVelocity();
            if(isNaN(_loc4_) == false)
            {
               _loc4_ = this.affectBoatToRotation(_loc4_);
               this.position.rotation = _loc4_;
            }
         }
         else
         {
            this._wasInvisible = true;
         }
         if(this._rod != null && this._rod.visible)
         {
            this._rod.update(param3);
         }
         this.updateGraphic(param1,param2);
         if(getTimer() - this._lastPositionUpdateTimeMS > this.UPDATE_POSITION_MS)
         {
            this._lastPositionUpdateTimeMS = getTimer();
            if(!(this is PlayerChar) && !this.isMove() && !this.locationUser.username == "Jamie")
            {
               this.inspectForObstacleMapPosition(this.locationUser.position);
               if(!this.locationUser.position.equals(this.position) || !isNaN(this.locationUser.position.rotation) && !LocationDialog.isGraphPositionEqual(this.locationUser.position,this.position) && this.isPlayerStateFishing() == false)
               {
                  this.moveByMouseClick(this.locationUser.position.x,this.locationUser.position.y,this.locationUser.position.rotation);
               }
            }
         }
      }
      
      public function affectBoatToRotation(param1:Number) : Number
      {
         if(this.boat != null && this._moveStrategy is BoatMoveStrategy == false)
         {
            param1 = this.boat.transformAlignBack(param1);
         }
         return param1;
      }
      
      protected function onTargetReach() : void
      {
         this.currentTargetPoint = null;
         this.updateGraphic();
      }
      
      public function move() : void
      {
         var _loc1_:Number = NaN;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         do
         {
            _loc1_ = this.currentTargetPoint.x - this.position.x;
            _loc2_ = this.currentTargetPoint.y - this.position.y;
            _loc3_ = Math.sqrt(_loc1_ * _loc1_ + _loc2_ * _loc2_);
            if(_loc3_ <= speed)
            {
               if(this.moveToNextPoint() == false)
               {
                  break;
               }
            }
         }
         while(_loc3_ <= speed);
         if(this.isNeedMove() && _loc3_ < speed)
         {
            _loc1_ = this.finalTargetPosition.x - this.position.x;
            _loc2_ = this.finalTargetPosition.y - this.position.y;
            _loc3_ = Math.sqrt(_loc1_ * _loc1_ + _loc2_ * _loc2_);
            this.currentTargetPoint = this.finalTargetPosition.clone();
         }
         if(_loc3_ > speed)
         {
            _loc4_ = Math.atan2(_loc2_,_loc1_);
            _loc5_ = Math.round(_loc4_ / (Math.PI / 4)) * (Math.PI / 4);
            _loc6_ = this.position.x + speed * Math.cos(_loc5_);
            _loc7_ = this.position.y + speed * Math.sin(_loc5_);
            if(this.hitTestPoint(_loc6_ + mapOffset.x,_loc7_ + mapOffset.y) == true)
            {
               _loc6_ = this.position.x + speed * Math.cos(_loc5_);
               _loc7_ = this.position.y + speed * Math.sin(_loc5_);
            }
            _loc8_ = _loc6_ - this.position.x;
            _loc9_ = _loc7_ - this.position.y;
            _loc10_ = dAngleDegree(Math.atan2(_loc9_,_loc8_) * 180 / Math.PI,this.position.rotation);
            this.position.rotation += _loc10_ * 0.8;
            this.position.x = _loc6_;
            this.position.y = _loc7_;
         }
      }
      
      private function hitTestPoint(param1:Number, param2:Number) : Boolean
      {
         var _loc3_:Point = new Point(param1,param2);
         return this._obstacleMap.getPixel32(param1,param2) > 16777215 && GameSwf.currentLocationDialog.raftRectangle.containsPoint(_loc3_) || GameSwf.currentLocationDialog.isInSpecialWall(param1,param2,this);
      }
      
      private function moveToNextPoint() : Boolean
      {
         if(this.currentTargetPoint != this.finalTargetPosition)
         {
            if(this.path != null && this.path.length > 0)
            {
               this.currentTargetPoint = this.path.shift();
               return true;
            }
         }
         return false;
      }
      
      public function updateView() : void
      {
         this.updateBitmapAnimationSource();
         this.update(0,0,1);
      }
      
      protected function updateCharViewportPosition() : void
      {
         if(this._charShadow != null)
         {
            this._charShadow.x = -int(this._charShadow.width / 2) + SHADOW_X_CORRECTION;
            this._charShadow.y = -int(this._charShadow.height / 2);
         }
         if(this._charViewport != null)
         {
            this._charViewport.x = -int(this._charViewport.width / 2);
            if(this.locationUser.username.toLowerCase() == "nanook")
            {
               this._charAnimationSource.config({"cellSize":new Rectangle(0,0,100,125)});
               this._charViewport.y = -int(this._charViewport.height) + this.NANOOK_VIEWPORT_BOTTOM_PADDING;
            }
            else
            {
               this._charViewport.y = -int(this._charViewport.height) + this.CHAR_VIEWPORT_BOTTOM_PADDING;
            }
         }
      }
      
      public function hideRodAndShowChar() : void
      {
         if(this._rod.visible)
         {
            this.reelIn();
            this._rod.visible = false;
            this._rod.ready();
            this.updateGraphic();
            removeAllChildren(this._charSprite);
            if(this._charShadow != null)
            {
               this._charSprite.addChild(this._charShadow);
               TweenCube.destroyTweensOf(this._charShadow,false);
               this._charShadow.alpha = 1;
            }
            if(this._charViewport != null)
            {
               this._charSprite.addChild(this._charViewport);
            }
            this.updateCharViewportPosition();
         }
         clearTimeout(this._showRodTimerId);
      }
      
      public function showRodAndHideChar(param1:Boolean = false) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = this._rod.visible;
         var _loc4_:Boolean = Boolean(app.user.inTalkWithNPC.value);
         var _loc5_:Boolean = this._moveStrategy is PathMoveStrategy && (this._moveStrategy as PathMoveStrategy).isArrivedToDestination() == false;
         Cc.log("showRodAndHideChar, isRodVisible=" + _loc3_ + ", isUserTalkWithNPC=" + _loc4_ + ", _moveStrategy=" + this._moveStrategy + ", arrivedToDestinationAsPathMoveStrategy=" + _loc5_);
         var _loc6_:Boolean = _loc3_ == false && (this is PlayerChar && _loc4_ == false || !(this is PlayerChar)) && !_loc5_;
         if(_loc6_ || param1)
         {
            this.stopMovement();
            this._rod.direction = Rod.getDirectionByFrameIndex(this._frameIndex);
            this._rod.setCharacter(this._charViewport,this.locationUser.viewConfig.body.color);
            this._rod.visible = true;
            if(this._charShadow != null)
            {
               TweenCube.destroyTweensOf(this._charShadow,false);
               TweenCube.to(this._charShadow,Rod.ROD_FADE_TIME_SEC,{"alpha":0});
            }
            _loc2_ = true;
         }
         return _loc2_;
      }
      
      public function bite() : void
      {
         this._rod.bite();
      }
      
      protected function reelInWithResult() : void
      {
         this._rod.reelInHandler = sendResult;
         this._rod.reelIn();
         if(this is PlayerChar)
         {
            app.user.inFishingProcess.value = false;
         }
      }
      
      public function reelIn() : void
      {
         if(this._rod.visible)
         {
            this._rod.reelIn();
         }
      }
      
      public function throwIn(param1:Number, param2:Number, param3:Number, param4:Boolean = false) : void
      {
         var _loc5_:Point = null;
         Cc.log("FieldChar(" + this.locationUser.username + ") throwIn(x=" + param1 + ", y=" + param2 + ")");
         var _loc6_:Number = param1 - graphic.x;
         var _loc7_:Number = param2 - graphic.y;
         if(this.boat != null)
         {
            _loc5_ = new Point(_loc6_,_loc7_);
            this.rotateByPoint(_loc5_.x,_loc5_.y);
         }
         else
         {
            this.rotateByPoint(_loc6_,_loc7_);
         }
         this._rod.throwIn(_loc6_,_loc7_,param3,this.graphic.x,this.graphic.y,!graphic.visible || param4);
         if(_loc6_ * _loc6_ + _loc7_ * _loc7_ > 600 * 600)
         {
            Cc.warn("Big rope length:" + Math.sqrt(_loc6_ * _loc6_ + _loc7_ * _loc7_));
            Cc.log("__lastModeCommand:" + (this.__lastModeCommand != null ? this.__lastModeCommand.toString() : "null"));
            Cc.log("position:" + (this.position != null ? this.position.toString() : "null"));
            Cc.log("fps:" + app.performanceManager.fps);
            Cc.log("__lastStartFishingCommand:" + (this.__lastStartFishingCommand != null ? this.__lastStartFishingCommand.toString() : "null"));
         }
      }
      
      public function startMoveAnimation() : void
      {
         clearTimeout(this._showRodTimerId);
         if(this._isMoveAnimationActive == false)
         {
            this._isMoveAnimationActive = true;
            this.hideRodAndShowChar();
         }
      }
      
      public function stopMoveAnimation() : void
      {
         if(this._isMoveAnimationActive == true)
         {
            this._isMoveAnimationActive = false;
            if(this.isNeedShowRod)
            {
               this.isNeedShowRod = false;
               this.showRodAndHideChar();
               this.throwIn(this._lastMouseClickPoint.x,this._lastMouseClickPoint.y,this.rodSfxVolume());
            }
            else
            {
               this.updateGraphic();
            }
            this.onTargetReach();
            this.onMoveEnd();
         }
      }
      
      public function onMoveEnd() : void
      {
         this.inspectCurrentCharPosition();
         this.updateCommandQueue();
      }
      
      public function inspectCurrentCharPosition() : void
      {
         var closeToTheLake:Boolean = this.isCloseToTheLake;
         var isUserCanFishing:Boolean = this.canFishing();
         var isRegularPlayer:Boolean = !(this is PlayerChar) && !(this is NPC);
         if(closeToTheLake && isUserCanFishing && this.isMovingToRaft == false && (this.boat == null || isRegularPlayer || this is PlayerChar && app.user.charState.value == CharStateType.NORMAL))
         {
            clearTimeout(this._showRodTimerId);
            this._showRodTimerId = setTimeout(function():void
            {
               isNeedShowRod = false;
               showRodAndHideChar();
               redrawCircle(_lastX,_lastY);
            },400);
         }
         else if(this.isRodVisible)
         {
            this.hideRodAndShowChar();
         }
      }
      
      public function redrawCircle(param1:int, param2:int) : void
      {
         this._lastX = param1;
         this._lastY = param2;
      }
      
      public function readServerState(param1:String, param2:Object) : void
      {
         var _loc3_:Array = null;
         var _loc4_:StartFishingCommand = null;
         if(this._serverState != param1)
         {
            this._serverState = param1;
            this.locationUser.initialFishingPos = null;
            switch(this._serverState)
            {
               case SERVER_STATE_START_FISHING:
                  _loc3_ = String(param2.fishingPoint).split(",");
                  _loc4_ = new StartFishingCommand(this,_loc3_[0],_loc3_[1]);
                  Cc.log("addCommand (command=" + _loc4_ + ") for " + this.locationUser.username);
                  this.addCommand(_loc4_);
                  break;
               case SERVER_STATE_DIDNT_CATCH:
                  GameSwf.currentLocationDialog.showMissionCompletedDialog();
               case SERVER_STATE_STOP_FISHING:
                  this.addCommand(new ReelInFishingCommand(this));
                  break;
               case SERVER_STATE_BITE:
                  this.addCommand(new BiteFishingCommand(this));
                  break;
               case SERVER_STATE_CAUGHT:
                  this.addCommand(new ReelInFishingCommand(this));
                  break;
               default:
                  this.addCommand(new StopFishingCommand(this));
            }
         }
      }
      
      public function addCommand(param1:ICharCommand) : void
      {
         var _loc2_:MoveCommand = null;
         var _loc3_:ICharCommand = null;
         if(this.moveStrategy != this._forceMoveStrategy)
         {
            if(param1 is MoveCommand && this._moveStrategy is BoatMoveStrategy)
            {
               _loc2_ = param1 as MoveCommand;
               if(BoatMoveStrategy(this._moveStrategy).hitTestWithBoatBoard(_loc2_.x,_loc2_.y))
               {
                  return;
               }
            }
            while(this._commanQueue.length > 0 && param1.canReplace(this._commanQueue[this._commanQueue.length - 1]))
            {
               _loc3_ = this._commanQueue.pop();
               Cc.log("replaced command (popCommand=" + _loc3_ + ") with " + param1);
            }
            if(this._commanQueue.length == 0 && (this._currentCommand == null || this._currentCommand.isComplete() || param1.canReplace(this._currentCommand)))
            {
               this._currentCommand = param1;
               this._currentCommand.execute();
            }
            else
            {
               this._commanQueue.push(param1);
            }
            this.updateCommandQueue();
         }
      }
      
      private function updateCommandQueue() : void
      {
         var _loc1_:ICharCommand = null;
         if(this._currentCommand == null || this._currentCommand.isComplete())
         {
            if(this._commanQueue.length > 0)
            {
               this._currentCommand = this._commanQueue.shift();
               this._currentCommand.execute();
            }
            else
            {
               this._currentCommand = null;
            }
         }
         var _loc2_:String = "";
         if(this._currentCommand != null)
         {
            _loc2_ += "> " + this._currentCommand.toString();
         }
         else
         {
            _loc2_ += "> null";
         }
         for each(_loc1_ in this._commanQueue)
         {
            _loc2_ += "\n" + _loc1_.toString();
         }
         if(this.locationUser.username == "regul")
         {
            Watch.change("u_cmd",_loc2_);
         }
      }
      
      public function clearCommandQueue() : void
      {
         this._currentCommand = null;
         if(this._commanQueue != null)
         {
            this._commanQueue.length = 0;
         }
      }
      
      public function rotateByPoint(param1:Number, param2:Number, param3:Boolean = true) : void
      {
         var _loc4_:Number = IsoMath.getDegreesAlignByPoints(0,0,-param1,param2) - 90;
         if(param3 && this.boat != null)
         {
            _loc4_ = this.boat.transformAlignBack(_loc4_);
         }
         this.position.rotation = _loc4_;
         this.updateGraphic();
      }
      
      public function rotateToChar(param1:FieldChar) : void
      {
         if(param1 != null)
         {
            this.rotateByPoint(param1.position.x - this.position.x,param1.position.y - this.position.y);
            if(this.moveStrategy != null)
            {
               this.moveStrategy.stop();
            }
         }
      }
      
      public function moveToRaft(param1:int, param2:int) : void
      {
         if(GameSwf.currentLocationDialog.raftRectangle != null)
         {
            this.isMovingToRaft = true;
            this.forceMoveTo(param1,param2,this.onCameToRaft);
         }
      }
      
      protected function onCameToRaft() : void
      {
         this.isMovingToRaft = false;
         this.onRaft = true;
      }
      
      public function activateBoat(param1:Boat) : void
      {
         this.boat = param1;
      }
      
      public function moveToBoat(param1:Boat) : void
      {
         this.moveStrategy = this._boatMoveStrategy;
         this._boatMoveStrategy.moveToBoat(param1);
         param1.fieldChar = this;
         this._keyboartMove.setObstacleHitTestFunction(this._boatMoveStrategy.obstacleHitTestFunction);
         this._pathMoveStrategy.setObstacleHitTestFunction(this._boatMoveStrategy.obstacleHitTestFunction);
         this._boatMoveStrategy.setObstacleHitTestFunction(this._boatMoveStrategy.obstacleHitTestFunction);
      }
      
      public function putToBoat(param1:Boat) : void
      {
         this.moveStrategy = this._boatMoveStrategy;
         param1.fieldChar = this;
         this._boatMoveStrategy.putToBoat(param1);
         this._keyboartMove.setObstacleHitTestFunction(this._boatMoveStrategy.obstacleHitTestFunction);
         this._pathMoveStrategy.setObstacleHitTestFunction(this._boatMoveStrategy.obstacleHitTestFunction);
         this._boatMoveStrategy.setObstacleHitTestFunction(this._boatMoveStrategy.obstacleHitTestFunction);
      }
      
      public function releaseBoat() : void
      {
         this.clearCommandQueue();
         this.moveStrategy = this._pathMoveStrategy;
         this.boat = null;
         this._keyboartMove.setObstacleHitTestFunction(null);
         this._pathMoveStrategy.setObstacleHitTestFunction(null);
         this._boatMoveStrategy.setObstacleHitTestFunction(null);
      }
      
      public function destroy() : void
      {
         var _loc1_:ICharCommand = null;
         this.destroyed = true;
         this.removeEmoticon();
         clearTimeout(this._showRodTimerId);
         if(this._currentSurface != null && this._currentSurface.soundFile != null)
         {
            FishaoSoundManager.stopLoopFor(this._currentSurface.soundFile,this);
         }
         this.smartRemoveFromStage();
         if(this._charViewport != null)
         {
            this._charViewport.destroy();
            this._charViewport = null;
         }
         if(this._rod != null)
         {
            this._rod.destroy();
            this._rod = null;
         }
         if(this._charAnimationSource != null)
         {
            this._charAnimationSource.destroy();
            this._charAnimationSource = null;
         }
         this._moveStrategy = null;
         if(this._keyboartMove != null)
         {
            this._keyboartMove.destroy();
            this._keyboartMove = null;
         }
         if(this._pathMoveStrategy != null)
         {
            this._pathMoveStrategy.destroy();
            this._pathMoveStrategy = null;
         }
         if(this._forceMoveStrategy != null)
         {
            this._forceMoveStrategy.destroy();
            this._forceMoveStrategy = null;
         }
         this._fishingArea = null;
         this._lakeCells = null;
         this.locationUser = null;
         if(this._mouseController != null)
         {
            this._mouseController.destroy();
            this._mouseController = null;
         }
         if(this._boatMoveStrategy != null)
         {
            this._boatMoveStrategy.destroy();
            this._boatMoveStrategy = null;
         }
         this._obstacleMap = null;
         this._lakeObstacleMap = null;
         if(this._charShadow != null)
         {
            TweenCube.destroyTweensOf(this._charShadow);
            removeFromParent(this._charShadow);
            this._charShadow = null;
         }
         if(this._chat != null)
         {
            removeFromParent(this._chat);
            this._chat.destroy();
            this._chat = null;
         }
         this._acceleration = null;
         for each(_loc1_ in this._commanQueue)
         {
            _loc1_.destroy();
         }
         if(this._commanQueue != null)
         {
            this._commanQueue.length = 0;
            this._commanQueue = null;
         }
         if(this._charSprite != null)
         {
            TweenCube.destroyTweensOf(this._charSprite);
            removeFromParent(this._charSprite);
            this._charSprite = null;
         }
         if(this._controllerUserPopup != null)
         {
            removeFromParent(this._controllerUserPopup.view.source);
            this._controllerUserPopup.cleanup();
            this._controllerUserPopup = null;
         }
         this._currentSpeed = null;
         this._currentSurface = null;
         this._lastMouseClickPoint = null;
         this._lastSentPosition = null;
         this.boats = null;
         this.finalTargetPosition = null;
         if(graphic != null)
         {
            removeFromParent(graphic);
            graphic = null;
         }
         graphicPosition = null;
         this.position = null;
         this.locationLayers = null;
      }
      
      private function smartRemoveFromStage() : void
      {
         if(graphic != null && graphic.parent != null)
         {
            TweenCube.destroyTweensOf(graphic);
            if(this.locationLayers != null && this.locationLayers.mainLayer == graphic.parent)
            {
               this.locationLayers.removeChar(graphic);
            }
         }
      }
      
      public function moveBoatToByResponse(param1:int, param2:int, param3:int) : void
      {
         this._moveStrategy = this._boatMoveStrategy;
         this._boatMoveStrategy.moveByResponse(param1,param2,param3);
      }
      
      public function forceMoveTo(param1:int, param2:int, param3:Function = null) : void
      {
         Cc.log(this + "forceMoveTo(x:" + param1 + ",y:" + param2 + ")");
         this.clearCommandQueue();
         this.moveStrategy = this._forceMoveStrategy;
         this._forceMoveStrategy.moveTo(param1,param2,NaN,param3);
      }
      
      public function setRodInfo(param1:int, param2:ShopItemColor) : void
      {
         var _loc3_:Object = app.rodsDict.get(param1);
         if(_loc3_ != null)
         {
            this._rodLength = parseInt(_loc3_["length"]);
            this._rodQualityPower = _loc3_["quality_power"];
            this._currentRodRadiusPx = getRodRadiusByLength(this._rodLength);
         }
         this._rod.configureRod(param1,param2);
      }
      
      public function cancelFishing(param1:Boolean = true, param2:Boolean = true) : void
      {
         if(this.getState() == RodState.FISHING || this.getState() == RodState.THROW_IN_ANIMATION)
         {
            if(this is PlayerChar)
            {
               app.user.inFishingProcess.value = false;
               if(param1)
               {
                  FishaoFscModelManager.fishingExtension.sendCancelFishing();
               }
            }
         }
         if(param2)
         {
            this.hideRodAndShowChar();
         }
         else
         {
            this._rod.reelIn();
         }
      }
      
      public function sendCurrentPlayerPosition(param1:Boolean = false) : void
      {
         if(param1 || (this._lastSentPosition.x != this.position.x || this._lastSentPosition.y != this.position.y || this._lastSentPosition.rotation != this.position.rotation) && !this.isMoveToBoat())
         {
            if(this._lastSentPosition.x == this.position.x && this._lastSentPosition.y == this.position.y && this._lastSentPosition.rotation == this.position.rotation)
            {
               ++this._forceSendInRow;
            }
            else
            {
               this._forceSendInRow = 0;
            }
            this._lastSentPosition.x = this.position.x;
            this._lastSentPosition.y = this.position.y;
            this._lastSentPosition.rotation = this.position.rotation;
            this.locationUser.position.x = this.position.x;
            this.locationUser.position.y = this.position.y;
            this.locationUser.position.rotation = this.position.rotation;
            if(this is PlayerChar)
            {
               Watch.change("p.lastSent",this._lastSentPosition);
            }
            if(this._forceSendInRow < 5)
            {
               FishaoFscModelManager.locationExtension.moveTo(-1,-1,-1,this.position.x,this.position.y,this.position.rotation);
            }
         }
      }
      
      public function setPositionWithFade(param1:Number, param2:Number) : void
      {
         this._fadeOutPosition = graphicPosition.clone();
         this.freeze();
         if(this._fadeInPosition == null)
         {
            this.fadeOut(this.setPositionAndFadeIn);
         }
         this._fadeInPosition = new Point(param1,param2);
      }
      
      private function fadeOut(param1:Function) : void
      {
         TweenCube.destroyTweensOf(this.graphic,false);
         TweenCube.to(this.graphic,1,{"alpha":0},{"onComplete":param1});
      }
      
      private function setPositionAndFadeIn() : void
      {
         if(this.graphic != null)
         {
            this.graphic.alpha = 0;
            TweenCube.destroyTweensOf(this.graphic,false);
            TweenCube.to(this.graphic,1,{"alpha":1});
            this.hideRodAndShowChar();
            this.setPosition(this._fadeInPosition.x,this._fadeInPosition.y);
            this._fadeOutPosition = null;
            this._fadeInPosition = null;
            this.unfreeze();
         }
      }
      
      public function setPositionWithFadeIn(param1:Number, param2:Number, param3:Number) : void
      {
         this.graphic.alpha = 0;
         TweenCube.destroyTweensOf(this.graphic,false);
         TweenCube.to(this.graphic,1,{"alpha":1});
         this.hideRodAndShowChar();
         this.setPosition(param1,param2,param3);
      }
      
      public function freeze() : void
      {
         this.moveStrategy = this._freezeMovementStrategy;
      }
      
      public function unfreeze() : void
      {
         if(this.moveStrategy == this._freezeMovementStrategy)
         {
            this.moveStrategy = this._pathMoveStrategy;
         }
      }
      
      public function getCloserPoint(param1:Number, param2:Number) : Point
      {
         var _loc3_:Point = null;
         var _loc4_:LocationDialogPrivateHouse = null;
         var _loc5_:Boolean = false;
         var _loc6_:Point = new Point(param1,param2);
         if(!this.moveStrategy.isWallHit(_loc6_,true,true))
         {
            return _loc6_;
         }
         var _loc7_:int = 1;
         while(true)
         {
            _loc3_ = this.getPointHorVer(_loc6_,_loc7_);
            if(_loc3_ != null)
            {
               break;
            }
            _loc3_ = this.getPointDiag(_loc6_,_loc7_);
            if(_loc3_ != null)
            {
               break;
            }
            if(++_loc7_ > 250)
            {
               if(!(GameSwf.currentLocationDialog is LocationDialogPrivateHouse))
               {
                  return _loc3_;
               }
               _loc4_ = GameSwf.currentLocationDialog as LocationDialogPrivateHouse;
               _loc5_ = this is PlayerChar;
               switch(this._roomCurrent)
               {
                  case EPlayerPosition.EPP_FIRST_FLOOR:
                     _loc3_ = new Point(300,950);
                     break;
                  case EPlayerPosition.EPP_SECOND_FLOOR:
                     if(_loc5_)
                     {
                        _loc4_.isOnObstacleTrap = true;
                     }
                     _loc3_ = new Point(150,LocationDialog.PRIVATE_HOUSE_GARDEN_HEIGHT - 17);
                     break;
                  case EPlayerPosition.EPP_THIRD_FLOOR:
                     if(_loc5_)
                     {
                        _loc4_.isOnObstacleTrap = true;
                     }
                     _loc3_ = new Point(300,LocationDialog.PRIVATE_HOUSE_GARDEN_HEIGHT - 17);
               }
               break;
            }
         }
         return _loc3_;
      }
      
      public function getPointHorVer(param1:Point, param2:int) : Point
      {
         var _loc3_:int = 5 * param2;
         var _loc4_:Point = this.checkPoint(new Point(param1.x,param1.y + _loc3_));
         if(_loc4_ != null)
         {
            return _loc4_;
         }
         _loc4_ = this.checkPoint(new Point(param1.x + _loc3_,param1.y));
         if(_loc4_ != null)
         {
            return _loc4_;
         }
         _loc4_ = this.checkPoint(new Point(param1.x,param1.y - _loc3_));
         if(_loc4_ != null)
         {
            return _loc4_;
         }
         _loc4_ = this.checkPoint(new Point(param1.x - _loc3_,param1.y));
         if(_loc4_ != null)
         {
            return _loc4_;
         }
         return null;
      }
      
      public function getPointDiag(param1:Point, param2:Number) : Point
      {
         var _loc3_:int = 5 * param2;
         var _loc4_:Point = this.checkPoint(new Point(param1.x + _loc3_,param1.y + _loc3_));
         if(_loc4_ != null)
         {
            return _loc4_;
         }
         _loc4_ = this.checkPoint(new Point(param1.x + _loc3_,param1.y - _loc3_));
         if(_loc4_ != null)
         {
            return _loc4_;
         }
         _loc4_ = this.checkPoint(new Point(param1.x - _loc3_,param1.y + _loc3_));
         if(_loc4_ != null)
         {
            return _loc4_;
         }
         _loc4_ = this.checkPoint(new Point(param1.x - _loc3_,param1.y - _loc3_));
         if(_loc4_ != null)
         {
            return _loc4_;
         }
         return null;
      }
      
      private function checkPoint(param1:Point) : Point
      {
         if((this._roomCurrent == EPlayerPosition.EPP_FIRST_FLOOR || this._roomCurrent == EPlayerPosition.EPP_SECOND_FLOOR || this._roomCurrent == EPlayerPosition.EPP_THIRD_FLOOR) && param1.y <= LocationDialog.PRIVATE_HOUSE_GARDEN_HEIGHT)
         {
            return null;
         }
         var _loc2_:int = param1.x;
         var _loc3_:int = param1.y;
         if(_loc2_ < 0)
         {
            _loc2_ = 0;
         }
         if(_loc3_ < 0)
         {
            _loc3_ = 0;
         }
         var _loc4_:Point = new Point(_loc2_,_loc3_);
         if(!this.moveStrategy.isWallHit(_loc4_,true,true))
         {
            return _loc4_;
         }
         return null;
      }
      
      public function curDistanceTo(param1:int, param2:int) : int
      {
         return Math.sqrt((param1 - this.position.x) * (param1 - this.position.x) + (param2 - this.position.y) * (param2 - this.position.y));
      }
      
      public function setFloat(param1:String) : void
      {
         var _loc2_:String = zeroPad(param1,2);
         this._rod.setFloat(parseInt(_loc2_));
      }
      
      public function curDistanceWithFadeInTo(param1:int, param2:int) : int
      {
         if(this.position == null)
         {
            return -1;
         }
         if(this._fadeInPosition != null)
         {
            return Math.sqrt((param1 - this._fadeInPosition.x) * (param1 - this._fadeInPosition.x) + (param2 - this._fadeInPosition.y) * (param2 - this._fadeInPosition.y));
         }
         return this.curDistanceTo(param1,param2);
      }
      
      public function getLastCheckPosLeftMS() : int
      {
         var _loc1_:int = 0;
         if(this._lastCheckPosTimeMS > 0)
         {
            _loc1_ = getTimer() - this._lastCheckPosTimeMS;
         }
         this._lastCheckPosTimeMS = getTimer();
         return _loc1_;
      }
      
      public function handleMovUsrToResp(param1:int, param2:int, param3:int) : void
      {
         var _loc4_:MoveCommand = null;
         if(this.position.x != param1 || this.position.y != param2 || this.position.rotation != param3 && param3 != -1)
         {
            _loc4_ = new MoveCommand(this,param1,param2,param3);
            this.inspectForObstacleMap(_loc4_);
            if(this.position.x != _loc4_.x || this.position.y != _loc4_.y || _loc4_.r != -1 && LocationDialog.equalRotationByDegrees(this.position.rotation,_loc4_.r) == false)
            {
               this.addCommand(_loc4_);
            }
         }
      }
      
      private function inspectForObstacleMap(param1:MoveCommand) : void
      {
         var _loc2_:Point = null;
         if(this._pathMoveStrategy != null && this.isRegularMovement())
         {
            if(this._pathMoveStrategy.isCharCollideWithByCurrentObstacleLogic(param1.x,param1.y))
            {
               _loc2_ = this.getCloserPoint(param1.x,param1.y);
               if(_loc2_ != null)
               {
                  param1.x = _loc2_.x;
                  param1.y = _loc2_.y;
               }
            }
         }
      }
      
      private function inspectForObstacleMapPosition(param1:GraphPoint) : void
      {
         var _loc2_:Point = null;
         if(this._pathMoveStrategy != null && this.isRegularMovement())
         {
            if(this._pathMoveStrategy.isCharCollideWithByCurrentObstacleLogic(param1.x,param1.y))
            {
               _loc2_ = this.getCloserPoint(param1.x,param1.y);
               param1.x = _loc2_.x;
               param1.y = _loc2_.y;
            }
         }
      }
      
      public function stopMovement() : void
      {
         if(this._moveStrategy != null)
         {
            this._moveStrategy.stop();
         }
      }
      
      public function inspectInitFishing() : void
      {
         if(this.locationUser != null)
         {
            if(this.locationUser.initialFishingPos != null)
            {
               this.showRodAndHideChar();
               this.throwIn(this.locationUser.initialFishingPos.x,this.locationUser.initialFishingPos.y,this.rodSfxVolume(),true);
               this.locationUser.initialFishingPos = null;
            }
            else
            {
               this.inspectCurrentCharPosition();
            }
         }
      }
      
      public function toString() : String
      {
         return "[FieldChar(username:" + (this.locationUser != null ? this.locationUser.username : "null") + ")]";
      }
      
      public function showSmallEmoticon() : void
      {
         this.showEmoticon(function(param1:FishCatchEmoticons):MovieClip
         {
            param1.showSmallEmoticon();
            return param1.smallFish;
         });
      }
      
      public function showMediumEmoticon() : void
      {
         this.showEmoticon(function(param1:FishCatchEmoticons):MovieClip
         {
            param1.showMediumEmoticon();
            return param1.mediumFish;
         });
      }
      
      public function showLargeEmoticon() : void
      {
         this.showEmoticon(function(param1:FishCatchEmoticons):MovieClip
         {
            param1.showLargeEmoticon();
            return param1.largeFish;
         });
      }
      
      public function showFiveStarEmoticon() : void
      {
         this.showEmoticon(function(param1:FishCatchEmoticons):MovieClip
         {
            param1.showFiveStarEmoticon();
            return param1.fiveStarFish;
         });
      }
      
      private function showEmoticon(param1:Function) : void
      {
         this.removeEmoticon();
         var _loc2_:FishCatchEmoticons = new FishCatchEmoticons();
         if(graphic != null)
         {
            _loc2_.x = graphic.x;
            _loc2_.y = graphic.y;
         }
         this._fishCatchEmoticons = _loc2_;
         this._fishCatchEmoticonClip = param1(_loc2_);
         LocationLayers.charMessagesLayer.addChild(_loc2_);
         _loc2_.addEventListener(Event.ENTER_FRAME,this.onEmoticonFrame);
      }
      
      private function onEmoticonFrame(param1:Event) : void
      {
         var _loc2_:MovieClip = this._fishCatchEmoticonClip;
         if(_loc2_ == null || _loc2_.currentFrame >= _loc2_.totalFrames)
         {
            this.removeEmoticon();
         }
      }
      
      private function removeEmoticon() : void
      {
         var _loc1_:FishCatchEmoticons = this._fishCatchEmoticons;
         this._fishCatchEmoticons = null;
         this._fishCatchEmoticonClip = null;
         if(_loc1_ == null)
         {
            return;
         }
         _loc1_.removeEventListener(Event.ENTER_FRAME,this.onEmoticonFrame);
         if(_loc1_.parent != null)
         {
            _loc1_.parent.removeChild(_loc1_);
         }
      }
      
      public function destroyFromLocation() : void
      {
         this.destroyed = true;
         TweenCube.to(graphic,1,{"y":graphic.y},{"onComplete":this.destroy});
      }
   }
}

