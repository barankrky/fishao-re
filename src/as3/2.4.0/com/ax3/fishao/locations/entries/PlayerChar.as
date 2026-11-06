package com.ax3.fishao.locations.entries
{
   import com.adobe.crypto.MD5;
   import com.ax3.display.LineStyle;
   import com.ax3.display.rod.RodState;
   import com.ax3.events.Listeners;
   import com.ax3.events.VariableChangeEvent;
   import com.ax3.fishao.Config;
   import com.ax3.fishao.FishaoFscModelManager;
   import com.ax3.fishao.control.managers.SettingsManager;
   import com.ax3.fishao.display.panels.BiteProcessPanelAsset;
   import com.ax3.fishao.entries.LocationUser;
   import com.ax3.fishao.locations.EBoosterType;
   import com.ax3.fishao.locations.FloatInWaterManager;
   import com.ax3.fishao.locations.base.LocationLayers;
   import com.ax3.fishao.locations.base.LocationModel;
   import com.ax3.fishao.locations.chars.BoatMoveStrategy;
   import com.ax3.fishao.locations.chars.CharStateType;
   import com.ax3.fishao.locations.chars.ForceMoveStrategy;
   import com.ax3.fishao.locations.chars.KeyboardMoveStrategy;
   import com.ax3.fishao.locations.npc.base.NPC;
   import com.ax3.fishao.locations.objects.boat.Boat;
   import com.ax3.fishao.locations.objects.boat.BoatStatusType;
   import com.ax3.fishao.model.ShopItemColor;
   import com.ax3.fishao.model.UserModel;
   import com.ax3.fishao.model.vo.FishInfoVO;
   import com.ax3.fishao.tutorial.TutorialInfo;
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs.FishaoBasePopup;
   import com.ax3.fishao.view.dialogs.boosters.ManagerBoosters;
   import com.ax3.fishao.view.dialogs.boosters.base.BoosterInfo;
   import com.ax3.fishao.view.dialogs.boosters.power.BoosterPower;
   import com.ax3.fishao.view.dialogs.fishes.ManagerFishes;
   import com.ax3.fishao.view.dialogs.tournaments.ManagerTournaments;
   import com.ax3.fishao.view.dialogs.tournaments.models.TournamentInfo;
   import com.ax3.fishao.view.panels.WaterPopup;
   import com.ax3.fishao.watercraft.Raft;
   import com.ax3.jss.requests.server.ServerResp;
   import com.ax3.utils.ArrayUtils;
   import com.ax3.utils.IsoMath;
   import com.ax3.utils.removeFromParent;
   import com.junkbyte.console.Cc;
   import flash.display.BlendMode;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.DataEvent;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.utils.clearTimeout;
   import flash.utils.getTimer;
   import flash.utils.setTimeout;
   import protocol.sr.ErrorResp;
   import protocol.sr.FishingResp;
   
   public class PlayerChar extends FieldChar
   {
      
      public static const MOVE_END:String = "move_end";
      
      public static const THROW_IN:String = "eventThrowIn";
      
      private static const CLOSE_TO_WATER_PX:int = 85;
      
      private const PLAYER_ROPE_LINE_STYLE:LineStyle = new LineStyle(0.25,15658734,1);
      
      private const EVENT_THROW_IN:Event = new Event(THROW_IN);
      
      private const EVENT_MOVE_END:Event = new Event(MOVE_END);
      
      private var _lastForcePositionSentTimeMS:int;
      
      private var _lastPositionSentTimeMS:int;
      
      public var circleSprite:Sprite = new Sprite();
      
      protected var _bitePanel:BiteProcessPanelAsset;
      
      public var bitePanelContainer:DisplayObjectContainer;
      
      private var _lastFishId:int;
      
      private var _lastFishLength:int;
      
      private var _lastFishExp:int;
      
      private var _locationModel:LocationModel;
      
      private var _didntCaughtCounter:int = 0;
      
      private var _lastCellName:String = "";
      
      private var _didntCaughtInCell:int = 0;
      
      private var _didntCaughtWithBait:int = 0;
      
      private var _waterPopup:WaterPopup = new WaterPopup();
      
      private var _programmedMove:Boolean = false;
      
      private const NOT_CAUGHT_MSG:Array = ["not_caught_1","not_caught_2","not_caught_3"];
      
      protected var _bitePanelShowTimeoutId:int = -1;
      
      private var _biteTimeStart:int;
      
      private var _managerBoosters:ManagerBoosters;
      
      private var _managerTournaments:ManagerTournaments;
      
      private var _managerFishes:ManagerFishes;
      
      private var _npc:NPC = null;
      
      public var state:CharStateType = CharStateType.NORMAL;
      
      public function PlayerChar(param1:LocationUser, param2:LocationModel, param3:FloatInWaterManager)
      {
         this._locationModel = param2;
         this.circleSprite.blendMode = BlendMode.OVERLAY;
         this.circleSprite.alpha = 0.3;
         this.initBitePanel();
         super(param1,param3);
         Listeners.addEventListener(this,app.user,UserModel.BAIT_TYPE_CHANGE,this.onBaitChange);
         Listeners.addEventListener(this,GameSwf.settings,SettingsManager.FLOAT_CHANGE,this.onFloatChange);
         this.init();
      }
      
      override protected function get defaultRopeLineStyle() : LineStyle
      {
         return this.PLAYER_ROPE_LINE_STYLE;
      }
      
      protected function get canFishing() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:TutorialInfo = GameSwf.instance.managerTutorial.tutorialInProgress;
         if(_loc2_ != null)
         {
            _loc1_ = _loc2_.canFishing;
         }
         return _loc1_ && !this.isTalkingWithNpc() && (!onRaft || GameSwf.currentLocationDialog.raft != null && GameSwf.currentLocationDialog.raft.state == Raft.ON_THE_MIDDLE) && this.state == CharStateType.NORMAL;
      }
      
      private function get protectKey() : String
      {
         return MD5.hash(this._lastFishId.toString() + this._lastFishLength.toString() + this._biteTimeStart.toString());
      }
      
      private function get powerBoosterMultiplier() : Number
      {
         var _loc1_:Number = 1;
         var _loc2_:BoosterInfo = this._managerBoosters.getBoosterByType(EBoosterType.EBT_POWER_BOOSTER);
         if(_loc2_ != null)
         {
            _loc1_ = (_loc2_ as BoosterPower).powerMultiply;
         }
         return _loc1_;
      }
      
      public function onMouseClick(param1:Number, param2:Number) : void
      {
         app.performanceManager.sleepMode = false;
         if(!app.user.canMove || this.isTalkingWithNpc() || this.inBiteProcess)
         {
            return;
         }
         this.handleMouseClickInternal(param1,param2);
      }
      
      protected function onBiteLost(param1:Event) : void
      {
         app.user.inFishingProcess.value = false;
         this.finishBite();
         FishaoFscModelManager.locationExtension.isCatched(false,this.getTournamentId(),this.protectKey);
         var _loc2_:Class = this._bitePanel.dialogToShowClass;
         var _loc3_:FishaoBasePopup = new _loc2_();
         _loc3_.show();
      }
      
      protected function onUserCatchFishOnHook(param1:int, param2:int, param3:FishInfoVO, param4:Boolean, param5:int) : void
      {
         this._biteTimeStart = param5;
         this._lastFishId = param1;
         this._lastFishLength = param2;
         this._lastFishExp = 10;
         bite();
         clearTimeout(this._bitePanelShowTimeoutId);
         var _loc6_:Number = this._managerFishes.getFishingDurationMultiplier(param1);
         this._bitePanelShowTimeoutId = -1;
         this._bitePanelShowTimeoutId = setTimeout(this.showBitePanel,1200,param2,param3.rating,param4,_loc6_);
      }
      
      private function onBiteClose(param1:Event) : void
      {
         this.finishBite();
         app.user.inFishingProcess.value = false;
      }
      
      private function onBiteCaught(param1:Event) : void
      {
         app.user.inFishingProcess.value = false;
         this.finishBite();
         FishaoFscModelManager.locationExtension.isCatched(true,this.getTournamentId(),this.protectKey);
      }
      
      private function init() : void
      {
         this._managerBoosters = GameSwf.instance.managerBoosters;
         this._managerTournaments = GameSwf.instance.managerTournaments;
         this._managerFishes = GameSwf.instance.managerFishes;
      }
      
      protected function initBitePanel() : void
      {
         this._bitePanel = new BiteProcessPanelAsset();
      }
      
      override public function inspectCurrentCharPosition() : void
      {
         var closeToTheLake:Boolean = isCloseToTheLake;
         var isUserCanFishing:Boolean = this.canFishing;
         var isRegularPlayer:Boolean = !(this is PlayerChar) && !(this is NPC);
         if(closeToTheLake && isUserCanFishing && isMovingToRaft == false && (boat == null || isRegularPlayer || this is PlayerChar && app.user.charState.value == CharStateType.NORMAL))
         {
            clearTimeout(_showRodTimerId);
            _showRodTimerId = setTimeout(function():void
            {
               isNeedShowRod = false;
               showRodAndHideChar();
               redrawCircle(_lastX,_lastY);
            },400);
         }
         else if(isRodVisible)
         {
            this.hideRodAndShowChar();
         }
      }
      
      private function onBaitChange(param1:Event) : void
      {
         this._didntCaughtWithBait = 0;
      }
      
      private function onCharStateChange(param1:VariableChangeEvent) : void
      {
         this.state = app.user.charState.value;
         if(app.user.charState.value == CharStateType.NORMAL)
         {
            this.onMoveEnd();
            _boatMoveStrategy.stop();
            boat.graphic.setBoatStatus(BoatStatusType.NORMAL);
         }
         else if(app.user.charState.value == CharStateType.SAIL_BY_BOAT)
         {
            if(app.user.inFishingProcess.value)
            {
               cancelFishing();
            }
            moveStrategy = _boatMoveStrategy;
            this.hideRodAndShowChar();
            this.clearRodCircle();
         }
      }
      
      protected function handleMouseClickInternal(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = false;
         var _loc5_:Point = null;
         var _loc6_:String = null;
         var _loc7_:Point = null;
         var _loc8_:Point = new Point(param1,param2);
         if(onRaft && !GameSwf.currentLocationDialog.raftRectangle.contains(_loc8_.x - raft.offsetX,_loc8_.y - raft.offsetY))
         {
            if(!moveStrategy.isLakeHit(_loc8_))
            {
               return;
            }
         }
         var _loc9_:Point = _loc8_.clone();
         if(boat != null)
         {
            _loc8_ = boat.transformFromDisplayToReal(_loc8_);
         }
         if(raft != null)
         {
            _loc8_.x -= raft.offsetX;
            _loc8_.y -= raft.offsetY;
         }
         if(moveStrategy is BoatMoveStrategy)
         {
            this.moveByMouseClick(_loc9_.x,_loc9_.y);
         }
         else
         {
            if(_moveStrategy is KeyboardMoveStrategy)
            {
               _pathMoveStrategy.reset();
               _moveStrategy = _pathMoveStrategy;
            }
            if(moveStrategy.isWallHitScreen(_loc9_))
            {
               _loc3_ = moveStrategy.isLakeHit(_loc9_);
               _loc4_ = this._locationModel.dialog.isHitSpecial(_loc9_.x,_loc9_.y);
               if(_loc3_ && this.circleSprite.visible && !_loc4_ && isRodVisible)
               {
                  if(getState() == RodState.READY)
                  {
                     _loc5_ = new Point(graphic.x,graphic.y);
                     if(IsoMath.isPointInCircle(_loc5_,_currentRodRadiusPx,_loc9_))
                     {
                        if(_rod.visible == false)
                        {
                           isNeedShowRod = true;
                        }
                        if(app.user.energy.value == 0 && this._locationModel.isTournament == false)
                        {
                           GameSwf.instance.showBuyEnergyWindow();
                        }
                        else
                        {
                           this.throwIn(_loc9_.x,_loc9_.y,1,false);
                           _loc6_ = this.getLakeCellName(_loc9_);
                           if(_loc6_ != this._lastCellName)
                           {
                              this._lastCellName = _loc6_;
                              this._didntCaughtInCell = 0;
                           }
                           this.sendStartFishing(_loc6_,_loc9_.x,_loc9_.y);
                        }
                     }
                     else
                     {
                        _loc7_ = this.getCloserPointForClick(boat,raft,_loc8_.x,_loc8_.y);
                        if(_loc7_ != null)
                        {
                           this.sendMoveTo(_loc7_.x,_loc7_.y);
                        }
                     }
                  }
                  else if((getState() == RodState.FISHING || getState() == RodState.THROW_IN_ANIMATION) && this.inBiteProcess == false && _rod.inThrowInAnimationProcess == false)
                  {
                     this.cancelPlayerFishing();
                  }
                  else if(getState() == RodState.BITE && this.inBiteProcess == false)
                  {
                     app.user.inFishingProcess.value = false;
                     reelInWithResult();
                  }
               }
               else
               {
                  this.handleMoveTo(this.getCloserPointForClick(boat,raft,_loc8_.x,_loc8_.y));
               }
            }
            else
            {
               this.handleMoveTo(_loc8_);
            }
         }
      }
      
      private function getCloserPointForClick(param1:Boat, param2:Raft, param3:Number, param4:Number) : Point
      {
         return param1 == null && param2 == null ? getCloserPoint(param3,param4) : null;
      }
      
      private function handleMoveTo(param1:Point) : void
      {
         if(param1 != null)
         {
            if(boat == null)
            {
               if(raft != null)
               {
                  this.sendMoveTo(param1.x,param1.y);
               }
               else
               {
                  this.sendMoveTo(param1.x,param1.y);
               }
            }
         }
      }
      
      public function isCanMove() : Boolean
      {
         return _rod.state == RodState.READY && this.inBiteProcess == false && this.isTalkingWithNpc() == false && Boolean(app.user.canMove) && this._programmedMove == false;
      }
      
      public function getLakeCellName(param1:Point) : String
      {
         var _loc2_:DisplayObject = null;
         _lakeCells.visible = true;
         _lakeCells.x = 0;
         _lakeCells.y = 0;
         var _loc3_:Array = MovieClip(_lakeCells).getObjectsUnderPoint(new Point(param1.x,param1.y));
         if(_loc3_.length > 0)
         {
            _loc2_ = _loc3_.pop();
            while(_loc2_.parent.parent != _lakeCells)
            {
               _loc2_ = _loc3_.pop();
            }
            _lakeCells.visible = false;
            return _loc2_.parent.name;
         }
         return "";
      }
      
      override public function redrawCircle(param1:int, param2:int) : void
      {
         super.redrawCircle(param1,param2);
         var _loc3_:Boolean = moveStrategy.isLakeHit(new Point(param1,param2));
         var _loc4_:Boolean = this.isLakeHitClose(param1,param2);
         var _loc5_:Boolean = this._locationModel.dialog.isHitSpecial(param1,param2);
         if(isRodVisible && (!onRaft || GameSwf.currentLocationDialog.raft != null && GameSwf.currentLocationDialog.raft.state == Raft.ON_THE_MIDDLE))
         {
            if(!_loc5_ && _loc3_ && _loc4_)
            {
               this.circleSprite.visible = true;
               this.circleSprite.cacheAsBitmap = false;
               this.circleSprite.graphics.clear();
               this.circleSprite.graphics.lineStyle(3,16777215);
               this.circleSprite.graphics.beginFill(16777215,0.5);
               this.circleSprite.graphics.drawCircle(graphic.x,graphic.y,_currentRodRadiusPx);
               this.circleSprite.graphics.endFill();
               this.circleSprite.cacheAsBitmap = true;
            }
            else
            {
               this.clearRodCircle();
            }
         }
      }
      
      private function sendStartFishing(param1:String, param2:Number, param3:Number) : void
      {
         app.user.inFishingProcess.value = true;
         var _loc4_:Array = param1.split("_");
         FishaoFscModelManager.fishingExtension.startFish(int(_loc4_[1]),int(_loc4_[2]) - 1,param2,param3,this.onResponse);
      }
      
      public function showBitePanel(param1:int = 10, param2:int = 1, param3:Boolean = false, param4:Number = 1) : void
      {
         if(app.user.inFishingProcess.value == false)
         {
            return;
         }
         this.showBitePanelInternal(param1,param2,param3,param4);
      }
      
      protected function showBitePanelInternal(param1:int, param2:int, param3:Boolean, param4:Number) : void
      {
         this._bitePanelShowTimeoutId = -1;
         Listeners.addEventListener(this,this._bitePanel,Event.COMPLETE,this.onBiteCaught);
         Listeners.addEventListener(this,this._bitePanel,Event.CANCEL,this.onBiteLost);
         Listeners.addEventListener(this,this._bitePanel,Event.CLOSE,this.onBiteClose);
         this._bitePanel.minigameDurationMultiplier = param4;
         this._bitePanel.boosterMultiplier = this.powerBoosterMultiplier;
         this._bitePanel.fishingLineLength = app.user.fishingLine.lineLength;
         this._bitePanel.rodSizeCm = _rodQualityPower;
         this._bitePanel.fishSizeCm = param1;
         this._bitePanel.rarity = param2;
         this._bitePanel.fishIsShiny = param3;
         var _loc5_:Point = graphic.parent.localToGlobal(new Point(graphic.x,graphic.y));
         this._bitePanel.y = _loc5_.y;
         this._bitePanel.x = _loc5_.x;
         this.bitePanelContainer.addChild(this._bitePanel);
         var _loc6_:Point = this._bitePanel.parent.localToGlobal(new Point(this._bitePanel.x,this._bitePanel.y));
         if(_loc6_.x + this._bitePanel.width > Config.SCREEN_WIDTH - BiteProcessPanelAsset.RIGHT_PADDING)
         {
            this._bitePanel.x -= _loc6_.x + this._bitePanel.width - (Config.SCREEN_WIDTH - BiteProcessPanelAsset.RIGHT_PADDING);
         }
         else if(_loc6_.x < BiteProcessPanelAsset.RIGHT_PADDING)
         {
            this._bitePanel.x -= _loc6_.x - BiteProcessPanelAsset.RIGHT_PADDING;
         }
         if(_loc6_.y + this._bitePanel.height > Config.SCREEN_HEIGHT - BiteProcessPanelAsset.BOTTOM_PADDING)
         {
            this._bitePanel.y -= _loc6_.y + this._bitePanel.height - (Config.SCREEN_HEIGHT - BiteProcessPanelAsset.BOTTOM_PADDING);
         }
         else if(_loc6_.y < BiteProcessPanelAsset.BOTTOM_PADDING)
         {
            this._bitePanel.y -= _loc6_.y - BiteProcessPanelAsset.BOTTOM_PADDING;
         }
         GameSwf.currentLocationDialog.gui.mainMenu.hideChatAuto();
         this._bitePanel.start();
      }
      
      private function onResponse(param1:ServerResp) : void
      {
         var _loc2_:FishingResp = null;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:Boolean = false;
         var _loc6_:int = 0;
         var _loc7_:FishInfoVO = null;
         if(destroyed)
         {
            return;
         }
         if(param1 is FishingResp)
         {
            if(isPlayerStateFishing())
            {
               _loc2_ = param1 as FishingResp;
               _loc3_ = _loc2_.fishLength;
               _loc4_ = _loc2_.fishId;
               _loc5_ = _loc2_.isShiny;
               _loc6_ = _loc2_.timestamp;
               _loc7_ = FishInfoVO(app.fishDict.get(_loc4_));
               if(_loc4_ > -1 && _loc7_ != null)
               {
                  this.onUserCatchFishOnHook(_loc4_,_loc3_,_loc7_,_loc5_,_loc6_);
               }
               else
               {
                  app.user.inFishingProcess.value = false;
                  this.reelIn();
                  this.checkWaterPopup();
               }
            }
         }
         else if(param1 is ErrorResp && (param1 as ErrorResp).descr == "1008")
         {
            cancelFishing(false,false);
         }
      }
      
      private function checkWaterPopup() : void
      {
         var _loc1_:DisplayObject = null;
         var _loc2_:Point = null;
         if(app.user.level >= 20)
         {
            return;
         }
         ++this._didntCaughtCounter;
         ++this._didntCaughtInCell;
         ++this._didntCaughtWithBait;
         if(this._didntCaughtInCell >= 5)
         {
            this._didntCaughtInCell = 0;
            this._waterPopup.text = I18n.get("not_caught_in_cell");
         }
         else if(this._didntCaughtWithBait >= 5)
         {
            this._didntCaughtWithBait = 0;
            this._waterPopup.text = I18n.get("not_caught_with_some_bait");
         }
         else if(this._didntCaughtCounter >= 5)
         {
            this._didntCaughtCounter = 0;
            this._waterPopup.text = I18n.get(ArrayUtils.randomItem(this.NOT_CAUGHT_MSG));
         }
         if(this._lastCellName != "")
         {
            _loc1_ = MovieClip(_lakeCells).getChildByName(this._lastCellName);
            this._waterPopup.x = _loc1_.x + _loc1_.width - this._waterPopup.width / 2;
            this._waterPopup.y = _loc1_.y + _loc1_.height - this._waterPopup.height / 2;
            LocationLayers.charMessagesLayer.addChild(this._waterPopup);
            _loc2_ = this._waterPopup.parent.localToGlobal(new Point(this._waterPopup.x,this._waterPopup.y));
            if(_loc2_.x + this._waterPopup.width > Config.SCREEN_WIDTH - WaterPopup.SCREEN_PADDING)
            {
               this._waterPopup.x -= _loc2_.x + this._waterPopup.width - (Config.SCREEN_WIDTH - WaterPopup.SCREEN_PADDING);
            }
            else if(_loc2_.x < BiteProcessPanelAsset.RIGHT_PADDING)
            {
               this._waterPopup.x -= _loc2_.x - BiteProcessPanelAsset.RIGHT_PADDING;
            }
            if(_loc2_.y + this._waterPopup.height > Config.SCREEN_HEIGHT - WaterPopup.SCREEN_PADDING)
            {
               this._waterPopup.y -= _loc2_.y + this._waterPopup.height - (Config.SCREEN_HEIGHT - WaterPopup.SCREEN_PADDING);
            }
            else if(_loc2_.y < WaterPopup.SCREEN_PADDING)
            {
               this._waterPopup.y -= _loc2_.y - WaterPopup.SCREEN_PADDING;
            }
         }
      }
      
      private function getTournamentId() : String
      {
         var _loc1_:String = "";
         var _loc2_:TournamentInfo = this._managerTournaments.tournamentCurrent;
         if(_loc2_ != null)
         {
            _loc1_ = _loc2_.id;
         }
         return _loc1_;
      }
      
      private function finishBite() : void
      {
         Listeners.removeEventListener(this,this._bitePanel,Event.COMPLETE,this.onBiteCaught);
         Listeners.removeEventListener(this,this._bitePanel,Event.CANCEL,this.onBiteLost);
         Listeners.removeEventListener(this,this._bitePanel,Event.CLOSE,this.onBiteClose);
         if(this._bitePanel.parent != null)
         {
            this._bitePanel.parent.removeChild(this._bitePanel);
         }
         this.reelIn();
      }
      
      private function sendMoveTo(param1:int, param2:int) : void
      {
         if(!app.user.canMove)
         {
            return;
         }
         var _loc3_:RodState = getState();
         if(_loc3_ == RodState.READY)
         {
            this.clearRodCircle();
            this.moveByMouseClick(param1,param2);
            super.setMouseClickPoint(param1,param2);
         }
      }
      
      public function clearRodCircle() : void
      {
         if(this.circleSprite.visible)
         {
            this.circleSprite.graphics.clear();
            this.circleSprite.visible = false;
         }
      }
      
      override public function onMoveEnd() : void
      {
         if(destroyed)
         {
            return;
         }
         super.onMoveEnd();
         this.eventDispatcher.dispatchEvent(this.EVENT_MOVE_END);
      }
      
      public function get inBiteProcess() : Boolean
      {
         return this._bitePanel.parent != null || this._bitePanelShowTimeoutId > -1;
      }
      
      override public function startMoveAnimation() : void
      {
         this.clearRodCircle();
         super.startMoveAnimation();
      }
      
      override public function moveByMouseClick(param1:Number, param2:Number, param3:Number = NaN) : void
      {
         this.clearRodCircle();
         super.moveByMouseClick(param1,param2,param3);
      }
      
      public function startTalkWithNpc(param1:NPC) : void
      {
         app.user.inTalkWithNPC.value = true;
         this._npc = param1;
         this._npc.player = this;
         if(_rod.visible)
         {
            this.hideRodAndShowChar();
         }
         locationUser.setPosition(position.x,position.y);
         this.moveByMouseClick(position.x,position.y);
         rotateToChar(param1);
         sendCurrentPlayerPosition(true);
      }
      
      public function stopTalkWithNpc() : void
      {
         if(this._npc != null)
         {
            this._npc.player = null;
            this._npc = null;
            this.onMoveEnd();
         }
         app.user.inTalkWithNPC.value = false;
      }
      
      public function isTalkingWithNpc() : Boolean
      {
         return this._npc != null;
      }
      
      override public function setPosition(param1:Number, param2:Number, param3:Number = -1) : void
      {
         super.setPosition(param1,param2,param3);
         if(GameSwf.currentLocationDialog != null)
         {
            GameSwf.currentLocationDialog.moveCameraToChar(1);
         }
      }
      
      override public function activateBoat(param1:Boat) : void
      {
         super.activateBoat(param1);
         app.user.atTheBoat.value = true;
         app.user.charState.value = CharStateType.SAIL_BY_BOAT;
      }
      
      public function activate() : void
      {
         Listeners.addEventListener(this,app.user.charState,VariableChangeEvent.CHANGE,this.onCharStateChange);
      }
      
      public function deactivate() : void
      {
         Listeners.removeEventListener(this,app.user.charState,VariableChangeEvent.CHANGE,this.onCharStateChange);
      }
      
      override public function destroy() : void
      {
         this.deactivate();
         clearTimeout(this._bitePanelShowTimeoutId);
         this._bitePanelShowTimeoutId = -1;
         Listeners.removeEventListener(this,app.user,UserModel.BAIT_TYPE_CHANGE,this.onBaitChange);
         if(this._waterPopup != null)
         {
            this._waterPopup.destroy();
            removeFromParent(this._waterPopup);
            this._waterPopup = null;
         }
         super.destroy();
         if(this.circleSprite != null)
         {
            this.clearRodCircle();
            removeFromParent(this.circleSprite);
            this.circleSprite = null;
         }
         if(this._bitePanel != null)
         {
            this._bitePanel.destroy();
            this._bitePanel = null;
         }
         this.bitePanelContainer = null;
         Listeners.destroyAllSubscriptions(this);
         this._locationModel = null;
         this._npc = null;
         this.state = null;
      }
      
      override public function setRodInfo(param1:int, param2:ShopItemColor) : void
      {
         this.redrawCircle(_lastX,_lastY);
         super.setRodInfo(param1,param2);
      }
      
      public function get eventDispatcher() : EventDispatcher
      {
         return EventDispatcher(_charSprite);
      }
      
      public function get programmedMove() : Boolean
      {
         return this._programmedMove;
      }
      
      public function set programmedMove(param1:Boolean) : void
      {
         this._programmedMove = param1;
      }
      
      override public function throwIn(param1:Number, param2:Number, param3:Number, param4:Boolean = false) : void
      {
         Cc.log("PlayerChar.throw(x:" + param1 + ",y:" + param2 + ",immidiatellyAnimation:" + param4 + ")");
         try
         {
            if(app.user.inFishingProcess.value == true || app.user.inTalkWithNPC.value == true)
            {
               Cc.error("Player throw with wrong status (inFishingProcess=" + app.user.inFishingProcess.value + ", inTalkWithNPC=" + app.user.inTalkWithNPC.value + ", isMenuLocked=" + GameSwf.currentLocationDialog.gui.isMenuLocked + ")");
               GameSwf.sendReportToServer("wrongThrowIn");
            }
         }
         catch(e:Error)
         {
         }
         super.throwIn(param1,param2,param3,param4);
         sendCurrentPlayerPosition();
         this.eventDispatcher.dispatchEvent(this.EVENT_THROW_IN);
      }
      
      protected function cancelPlayerFishing() : void
      {
         app.user.inFishingProcess.value = false;
         clearTimeout(this._bitePanelShowTimeoutId);
         this._bitePanelShowTimeoutId = -1;
         this.reelIn();
         FishaoFscModelManager.fishingExtension.sendCancelFishing();
      }
      
      override protected function initClickUserPopup() : void
      {
         super.initClickUserPopup();
         _controllerUserPopup.buttonPmVisible = false;
      }
      
      override public function releaseBoat() : void
      {
         app.user.charState.value = CharStateType.NORMAL;
         this.clearRodCircle();
         this.hideRodAndShowChar();
         super.releaseBoat();
      }
      
      private function onFloatChange(param1:DataEvent) : void
      {
         var _loc2_:String = param1.data;
         if(_rod != null)
         {
            _rod.setFloat(parseInt(_loc2_));
         }
      }
      
      override public function update(param1:uint, param2:uint, param3:Number) : void
      {
         super.update(param1,param2,param3);
         if(app.user.inLogoutProcess)
         {
            return;
         }
         if(getTimer() - this._lastForcePositionSentTimeMS > 10 * 1000)
         {
            this._lastForcePositionSentTimeMS = getTimer();
            if(this.isCanMove())
            {
               sendCurrentPlayerPosition(true);
            }
            if(boat != null)
            {
               _boatMoveStrategy.sendCurrentPositionToServer(true);
            }
         }
         else if(getTimer() - this._lastPositionSentTimeMS > 500)
         {
            this._lastPositionSentTimeMS = getTimer();
            if(this.isCanMove())
            {
               sendCurrentPlayerPosition();
            }
            if(boat != null)
            {
               _boatMoveStrategy.sendCurrentPositionToServer();
            }
         }
         this.__inspectPlayerIsMovingToRaft();
      }
      
      private function __inspectPlayerIsMovingToRaft() : void
      {
         if(isMovingToRaft && !(_moveStrategy is ForceMoveStrategy))
         {
            Cc.warn("isMovingToRaft==true and _moveStrategy=" + _moveStrategy);
            GameSwf.sendReportToServer();
         }
      }
      
      private function isLakeHitClose(param1:int, param2:int) : Boolean
      {
         var _loc3_:Number = Math.atan2(param2 - graphic.y,param1 - graphic.x);
         var _loc4_:Point = new Point(CLOSE_TO_WATER_PX * Math.cos(_loc3_) + graphic.x,CLOSE_TO_WATER_PX * Math.sin(_loc3_) + graphic.y);
         return _moveStrategy.isLakeHit(_loc4_);
      }
      
      public function isAtObstacle() : Boolean
      {
         return _moveStrategy.isWallHit(position,true);
      }
      
      public function putToFirstFreePoint() : void
      {
         var _loc1_:Point = getCloserPoint(position.x,position.y);
         Cc.log("putToFirstFreePoint(" + position + " to " + _loc1_ + ")");
         setPositionWithFade(_loc1_.x,_loc1_.y);
      }
      
      override protected function onCameToRaft() : void
      {
         super.onCameToRaft();
         this.stopTalkWithNpc();
      }
      
      public function isInForceMovement() : Boolean
      {
         return _moveStrategy is ForceMoveStrategy && (_moveStrategy as ForceMoveStrategy).isArrivedToDestination();
      }
      
      override public function hideRodAndShowChar() : void
      {
         super.hideRodAndShowChar();
         this.removeFishingState();
      }
      
      private function removeFishingState() : void
      {
         app.user.inFishingProcess.value = false;
         if(this._bitePanel != null)
         {
            this._bitePanel.cancel();
            if(this._bitePanelShowTimeoutId != -1)
            {
               this._bitePanelShowTimeoutId = -1;
               clearTimeout(this._bitePanelShowTimeoutId);
            }
         }
      }
      
      override public function reelIn() : void
      {
         super.reelIn();
         this.removeFishingState();
      }
      
      override public function readServerState(param1:String, param2:Object) : void
      {
         if(GameSwf.currentLocationDialog.raft != null && GameSwf.currentLocationDialog.raft.isOnBoard(this) && param1 == FieldChar.SERVER_STATE_STOP_FISHING && app.user.inFishingProcess.value == true)
         {
            super.readServerState(param1,param2);
         }
      }
   }
}

