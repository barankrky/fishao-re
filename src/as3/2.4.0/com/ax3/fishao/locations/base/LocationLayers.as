package com.ax3.fishao.locations.base
{
   import assets.common.DebugLakeCell;
   import assets.common.FishingZone;
   import com.ax3.events.Listeners;
   import com.ax3.fishao.Config;
   import com.ax3.fishao.debug.Watch;
   import com.ax3.fishao.events.LocationDialogEvent;
   import com.ax3.fishao.locations.*;
   import com.ax3.fishao.locations.base.daycycle.LocationDayCycleLayers;
   import com.ax3.fishao.locations.chars.CharAnimationSource;
   import com.ax3.fishao.locations.entries.FieldChar;
   import com.ax3.fishao.locations.items.view.ViewItem;
   import com.ax3.fishao.locations.objects.BoatSourceWrapper;
   import com.ax3.fishao.locations.objects.FarmBuilding;
   import com.ax3.fishao.locations.objects.FrozenLake;
   import com.ax3.fishao.locations.objects.IsoTree;
   import com.ax3.fishao.locations.objects.KeyRoad;
   import com.ax3.fishao.locations.objects.Lamp;
   import com.ax3.fishao.locations.objects.RaftWall;
   import com.ax3.fishao.locations.objects.SpecialWall;
   import com.ax3.fishao.locations.objects.boat.Boat;
   import com.ax3.fishao.locations.sublocation.SublocationEnter;
   import com.ax3.fishao.locations.tournaments.TournamentWalls;
   import com.ax3.fishao.locations.water.LeavesEffect;
   import com.ax3.fishao.locations.water.WaterEffect;
   import com.ax3.fishao.locations.weather.WeatherType;
   import com.ax3.fishao.utils.Utils;
   import com.ax3.fishao.view.dialogs.holidays.views.ViewHolidayItem;
   import com.ax3.fishao.view.dialogs.tournaments.models.TournamentInfo;
   import com.ax3.fishao.watercraft.Raft;
   import com.ax3.geom.GraphPoint;
   import com.ax3.managers.DisplayObjectGridManager;
   import com.ax3.managers.GridManagerObject;
   import com.ax3.net.BinaryLoaderRepeatable;
   import com.ax3.utils.ArrayUtils;
   import com.ax3.utils.BitmapUtil;
   import com.ax3.utils.ColorMatrix;
   import com.ax3.utils.DisplayObjectUtil;
   import com.ax3.utils.display.disableMouse;
   import com.ax3.utils.empty;
   import com.ax3.utils.emptyVector;
   import com.ax3.utils.removeAllChildren;
   import com.ax3.utils.removeAllChildrenRecursive;
   import com.ax3.utils.removeFromParent;
   import com.ax3.utils.timer.IUpdate;
   import com.ax3.utils.timer.UpdateGroup;
   import com.ax3.utils.timer.UpdateManager;
   import com.inkora.tween.TweenCube;
   import com.junkbyte.console.Cc;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.InteractiveObject;
   import flash.display.MovieClip;
   import flash.display.Shape;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.filters.ColorMatrixFilter;
   import flash.filters.GlowFilter;
   import flash.geom.ColorTransform;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.net.URLRequest;
   import flash.system.ApplicationDomain;
   import flash.system.System;
   import flash.text.TextField;
   import flash.utils.Dictionary;
   import flash.utils.getTimer;
   import protocol.sr.debugging.FishBlocksAtLakesDataResp;
   
   public class LocationLayers extends Sprite implements IUpdate
   {
      
      internal static var lastScrollRectUpdateTimestampMS:int;
      
      public static var charMessagesLayer:Sprite = new Sprite();
      
      public static var DEBUG_SPRITE:Sprite = new Sprite();
      
      private static const FISHRADAR_CIRCLE:BitmapData = createFishradarCircle();
      
      private const PARSE_FRAME_TIMELIMIT:int = 10;
      
      private var _locationAsset:MovieClip;
      
      protected var _bottomLayer:DisplayObjectContainer;
      
      private var _waterEffect:WaterEffect;
      
      private var _fishRadarLayer:DisplayObjectContainer;
      
      public var _bottom2Layer:DisplayObjectContainer;
      
      public var mainLayer:Sprite;
      
      public var floatingGuiLayer:Sprite;
      
      protected var _topLayer:DisplayObjectContainer;
      
      private var _weather:WeatherLayer;
      
      private var _layerAdvertising:DisplayObjectContainer;
      
      private var _debugFishBlocksLayer:Sprite;
      
      private var _leavesEffect:LeavesEffect;
      
      protected var _layerSpecial:DisplayObjectContainer;
      
      public var _zSorter:FishaoZSorter;
      
      private var _locationFullSize:Point;
      
      private var _lakeCells:DisplayObjectContainer;
      
      private var _updateList:Vector.<IUpdate> = new Vector.<IUpdate>();
      
      private var _waterAnimationUpdateList:Vector.<IUpdate> = new Vector.<IUpdate>();
      
      protected var _visibilityManager:VisibilityManager;
      
      protected var _obstacleMapBitmapData:BitmapData;
      
      private var _lakeObstacleMapBitmapData:BitmapData;
      
      public var soundMapBitmapData:BitmapData;
      
      private var _npcPathesSprite:DisplayObjectContainer;
      
      private var _displayObjectsToParse:Vector.<DisplayObject>;
      
      private var _totalRootItemsToParse:uint;
      
      private var _leftRootItemsToParse:uint;
      
      private var _parseFrames:int;
      
      protected var _applicationDomain:ApplicationDomain;
      
      private var _bitmapCroppedMovieClipByClassName:Dictionary = new Dictionary();
      
      private var _raft:Raft;
      
      protected var _sublocationEnters:Vector.<SublocationEnter> = new Vector.<SublocationEnter>(0);
      
      public var wallButtonEnters:Vector.<WallButtonEnter> = new Vector.<WallButtonEnter>(0);
      
      private var _landingMap:MovieClip;
      
      private var _boatSourceWrapper:BoatSourceWrapper;
      
      public var boatByIndex:Dictionary = new Dictionary();
      
      private var _shellBitmaps:Vector.<BitmapData>;
      
      private var _shellGrid:DisplayObjectGridManager;
      
      private var _boatObstacleMap:BitmapData;
      
      private var _bobsMinigameGrid:DisplayObjectGridManager;
      
      private var _bobsMinigameFishCoins:Vector.<FieldBobsMinigameFishCoin> = new Vector.<FieldBobsMinigameFishCoin>();
      
      private var _fishboxGridManager:DisplayObjectGridManager;
      
      private var _fishbonesDailyQuestMinigame:DisplayObjectGridManager;
      
      public var bestPlayer:MovieClip;
      
      public var topPlayerBoard:MovieClip;
      
      private var _activeBitmapParser:IAsyncTask;
      
      private var _objectsToDestory:Array;
      
      private var _fishMarketDoors:MovieClip;
      
      private var _decorationShowShadow:MovieClip;
      
      public var specialWall:SpecialWall;
      
      public var landingWall:RaftWall;
      
      public var keyRoad:KeyRoad;
      
      public var frozenLake:FrozenLake;
      
      public var boats:Vector.<Boat> = new Vector.<Boat>();
      
      public var tournamentWalls:TournamentWalls;
      
      public var tournamentFinish:SublocationEnter;
      
      private var _obstacleMapLoader:BinaryLoaderRepeatable;
      
      private var _obstacleMapBitmap:Bitmap;
      
      private var _lakeObstacleMapLoader:BinaryLoaderRepeatable;
      
      private var _lakeObstacleMapBitmap:Bitmap;
      
      private var _soundMapLoader:BinaryLoaderRepeatable;
      
      private var _soundMapBitmap:Bitmap;
      
      private var _obstacleMapBitmapAlpha:Number = 0;
      
      private var _soundMapBitmapAlpha:Number = 0;
      
      private var _shells:Vector.<FieldShell> = new Vector.<FieldShell>();
      
      private var _dailyQuestFishbones:Vector.<FieldFishbone> = new Vector.<FieldFishbone>();
      
      private var _closedDecMarketDoor:MovieClip;
      
      private var _openedDecMarketDoor:MovieClip;
      
      public var friendHouseDoor:MovieClip;
      
      private var _isDecorationMarketOpen:Boolean = false;
      
      private var _isFishMarketOpen:Boolean = false;
      
      private var _active:Boolean = true;
      
      private var _dayCycle:LocationDayCycleLayers;
      
      public var startLineCounter:MovieClip;
      
      public function LocationLayers()
      {
         super();
         this._weather = new WeatherLayer();
         this._weather.weatherType = WeatherType.SUNNY;
         this._waterEffect = new WaterEffect();
         this._waterEffect.mouseEnabled = false;
         UpdateManager.getInstance().getGroup(UpdateGroup.TIMER_200).add(this._waterEffect);
         this._leavesEffect = new LeavesEffect();
         this._topLayer = new Sprite();
         this._topLayer.mouseEnabled = false;
         this._topLayer.mouseChildren = false;
         this._fishRadarLayer = new Sprite();
         this._layerSpecial = new Sprite();
         this._layerSpecial = new Sprite();
         this.mainLayer = new Sprite();
         this.floatingGuiLayer = new Sprite();
         this._bottomLayer = new Sprite();
         this._bottom2Layer = new Sprite();
         this._layerAdvertising = new Sprite();
         this._layerAdvertising.alpha = 0;
         this._zSorter = new FishaoZSorter(this.mainLayer);
         this._visibilityManager = new VisibilityManager(DEBUG_SPRITE);
         this._bottomLayer.name = ELayerType.ELT_BOTTOM;
         this._bottom2Layer.name = ELayerType.ELT_BOTTOM_2;
         this.mainLayer.name = ELayerType.ELT_MAIN;
         this._layerAdvertising.name = ELayerType.ELT_ADVERTISING;
         this.floatingGuiLayer.name = ELayerType.ELT_FLOAT_GUI;
         this._topLayer.name = ELayerType.ELT_TOP;
         this._fishRadarLayer.name = ELayerType.ELT_RADAR;
         this._layerSpecial.name = ELayerType.ELT_SPECIAL;
         charMessagesLayer.name = ELayerType.ELT_MESSAGES_CHAR;
         this._weather.name = ELayerType.ELT_WEATHER;
         this._waterEffect.name = ELayerType.ELT_EFFECTS_WATER;
         DEBUG_SPRITE.name = ELayerType.ELT_DEBUG;
         this.addLayers();
         DEBUG_SPRITE.mouseEnabled = false;
         Cc.addSlashCommand("generateNpcPath",this.generateNpcPath);
         Cc.addSlashCommand("highLightIsoObjects",this.highLightIsoObjects);
         Cc.addSlashCommand("highLightTopObjects",this.highTopIsoObjects);
      }
      
      protected static function moveLayer(param1:DisplayObject, param2:DisplayObjectContainer) : void
      {
         var _loc3_:Point = null;
         if(param1.parent != null)
         {
            _loc3_ = new Point(param1.x,param1.y);
            _loc3_ = param1.parent.localToGlobal(_loc3_);
            _loc3_ = param2.globalToLocal(_loc3_);
            param1.x = _loc3_.x;
            param1.y = _loc3_.y;
         }
         param2.addChild(param1);
      }
      
      private static function removeIfEmpty(param1:DisplayObjectContainer) : void
      {
         if(param1.numChildren == 0)
         {
            param1.parent.removeChild(param1);
         }
      }
      
      private static function clearFilters(param1:DisplayObject) : void
      {
         var _loc2_:Boolean = ColorMatrix.isColorTransformNotEmpty(param1.transform.colorTransform);
         if(_loc2_)
         {
            param1.transform.colorTransform = new ColorTransform();
         }
         if(param1.filters != null && param1.filters.length > 0)
         {
            param1.filters = null;
         }
      }
      
      private static function invert(param1:BitmapData) : BitmapData
      {
         var _loc2_:BitmapData = param1;
         var _loc3_:Rectangle = new Rectangle(0,0,param1.width,param1.height);
         _loc2_.threshold(param1,_loc3_,new Point(),"==",0,4285944882);
         _loc2_.threshold(param1,_loc3_,new Point(),"!=",4285944882,65280);
         return _loc2_;
      }
      
      public static function hitTestFishMarketWall(param1:int, param2:int, param3:FieldChar) : Boolean
      {
         var _loc4_:Boolean = param1 > 790 && param2 > 1618 && param1 < 250 + 790 && param2 < 217 + 1618;
         var _loc5_:GraphPoint = param3.position;
         return _loc4_ && !(_loc5_.x > 790 && _loc5_.y > 1618 && _loc5_.x < 250 + 790 && _loc5_.y < 217 + 1618);
      }
      
      public static function hitTestDecorationMarketWall(param1:int, param2:int) : Boolean
      {
         var _loc3_:Rectangle = new Rectangle(231,1256,120,112);
         return param1 > _loc3_.x && param2 > _loc3_.y && param1 < _loc3_.width + _loc3_.x && param2 < _loc3_.height + _loc3_.y;
      }
      
      public static function hitTestFriendsHomesWall(param1:int, param2:int) : Boolean
      {
         return param1 > 3287 && param2 > 260 && param1 < 3287 + 70 && param2 < 260 + 10;
      }
      
      private static function createFishradarCircle() : BitmapData
      {
         var _loc1_:Shape = new Shape();
         var _loc2_:Sprite = new Sprite();
         var _loc3_:BitmapData = new BitmapData(200,200,true,0);
         _loc1_.graphics.beginFill(16742731);
         _loc1_.graphics.drawCircle(100,100,100);
         _loc1_.graphics.endFill();
         _loc2_.addChild(_loc1_);
         _loc3_.draw(_loc2_);
         return _loc3_;
      }
      
      public function set dayCycle(param1:LocationDayCycleLayers) : void
      {
         this._dayCycle = param1;
      }
      
      public function get locationFullSize() : Point
      {
         return this._locationFullSize;
      }
      
      protected function onParseComplete() : void
      {
      }
      
      private function drawRects(param1:Array, param2:uint) : void
      {
         var _loc3_:Object = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         this.mainLayer.graphics.beginFill(param2,0.4);
         for each(_loc3_ in param1)
         {
            _loc4_ = Number(_loc3_["x"]);
            _loc5_ = Number(_loc3_["y"]);
            _loc6_ = Number(_loc3_["width"]);
            _loc7_ = Number(_loc3_["height"]);
            this.mainLayer.graphics.drawRect(_loc4_,_loc5_,_loc6_,_loc7_);
         }
         this.mainLayer.graphics.endFill();
      }
      
      private function addLayers() : void
      {
         super.addChild(this._bottomLayer);
         super.addChild(this._waterEffect);
         super.addChild(this._fishRadarLayer);
         super.addChild(this._layerSpecial);
         super.addChild(this._bottom2Layer);
         super.addChild(this.mainLayer);
         super.addChild(this._layerAdvertising);
         super.addChild(this.floatingGuiLayer);
         super.addChild(this._topLayer);
         removeAllChildren(charMessagesLayer);
         super.addChild(charMessagesLayer);
         super.addChild(this._weather);
         super.addChild(DEBUG_SPRITE);
      }
      
      private function generateNpcPath() : void
      {
         var _loc1_:int = 0;
         var _loc2_:DisplayObjectContainer = null;
         var _loc3_:int = 0;
         var _loc4_:DisplayObject = null;
         var _loc5_:Object = {};
         if(this._npcPathesSprite != null)
         {
            _loc1_ = 0;
            while(_loc1_ < this._npcPathesSprite.numChildren)
            {
               _loc2_ = DisplayObjectContainer(this._npcPathesSprite.getChildAt(_loc1_));
               _loc5_[_loc2_.name] = [];
               _loc3_ = 0;
               while(_loc3_ < _loc2_.numChildren)
               {
                  _loc4_ = _loc2_.getChildAt(_loc3_);
                  _loc5_[_loc2_.name].push({
                     "x":int(_loc4_.x),
                     "y":int(_loc4_.y),
                     "width":int(_loc4_.width),
                     "height":int(_loc4_.height)
                  });
                  _loc3_++;
               }
               _loc1_++;
            }
         }
         var _loc6_:String = JSON.stringify(_loc5_);
         Cc.log(_loc6_);
         System.setClipboard(_loc6_);
      }
      
      private function highLightIsoObjects() : void
      {
         var _loc1_:DisplayObject = null;
         var _loc2_:Vector.<DisplayObject> = this._zSorter.getAll();
         var _loc3_:GlowFilter = new GlowFilter(65280);
         for each(_loc1_ in _loc2_)
         {
            _loc1_.filters = ArrayUtils.addToArray(_loc1_.filters,_loc3_);
         }
      }
      
      private function highTopIsoObjects() : void
      {
         var _loc1_:DisplayObject = null;
         var _loc2_:uint = uint(this._topLayer.numChildren);
         var _loc3_:GlowFilter = new GlowFilter(65535);
         var _loc4_:int = 0;
         while(_loc4_ < _loc2_)
         {
            _loc1_ = this._topLayer.getChildAt(_loc4_);
            _loc1_.filters = ArrayUtils.addToArray(_loc1_.filters,_loc3_);
            _loc4_++;
         }
      }
      
      public function parseLocationAsset(param1:MovieClip, param2:Point, param3:ApplicationDomain) : void
      {
         this._objectsToDestory = [];
         this._locationAsset = param1;
         this._locationFullSize = param2;
         this._applicationDomain = param3;
         DisplayObjectUtil.alignCoordinatesToInt(this._locationAsset);
         this._bottomLayer.addChild(this._locationAsset);
         var _loc4_:MovieClip = MovieClip(this._locationAsset.getChildByName("obstacleMap"));
         if(_loc4_ != null)
         {
            if(_loc4_.getChildByName("$landing"))
            {
               this.parseDisplayObject(_loc4_.getChildByName("$landing"));
            }
            _loc4_.visible = false;
            _loc4_.parent.removeChild(_loc4_);
            _loc4_ = null;
         }
         this.addShells();
         this.separateByLayers(this._locationAsset);
      }
      
      private function addShells() : void
      {
         this._shellBitmaps = new Vector.<BitmapData>();
         var _loc1_:MovieClip = new gViewShells();
         var _loc2_:int = _loc1_.totalFrames;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            _loc1_.gotoAndStop(_loc3_);
            this._shellBitmaps.push(BitmapUtil.clone(_loc1_));
            _loc3_++;
         }
         this._shellGrid = new DisplayObjectGridManager(150,150);
      }
      
      private function processNightFilter(param1:Array, param2:DisplayObject, param3:Object = null) : void
      {
         this._dayCycle.processNightFilter(param1,param2,param3);
      }
      
      protected function moveChildrenToIsoLayer(param1:DisplayObjectContainer, param2:Boolean, param3:Boolean = true) : void
      {
         var _loc4_:DisplayObject = null;
         var _loc5_:Number = param1.numChildren;
         var _loc6_:Array = Utils.findFilters(param1);
         clearFilters(param1);
         while(param1.numChildren > 0)
         {
            _loc4_ = param1.getChildAt(0);
            if(param2)
            {
               this.processNightFilter(_loc6_,_loc4_);
               this.processNightFilter(Utils.findFilters(_loc4_),_loc4_);
               this._dayCycle.addObject(_loc4_);
            }
            clearFilters(_loc4_);
            if(_loc4_ is InteractiveObject)
            {
               InteractiveObject(_loc4_).mouseEnabled = false;
            }
            moveLayer(_loc4_,this.mainLayer);
            this._zSorter.handleAddChild(_loc4_);
            if(param3)
            {
               this._visibilityManager.addObject(_loc4_);
            }
         }
      }
      
      protected function moveToLayerAds(param1:DisplayObject) : void
      {
         moveLayer(param1,this._layerAdvertising);
         disableMouse(param1);
         param1.cacheAsBitmap = true;
         this._visibilityManager.addObject(param1);
      }
      
      private function separateByLayers(param1:DisplayObjectContainer) : void
      {
         this._displayObjectsToParse = new Vector.<DisplayObject>();
         this.addChildrenToParse(param1);
         this._totalRootItemsToParse = this._displayObjectsToParse.length;
         this._leftRootItemsToParse = this._totalRootItemsToParse;
         this._parseFrames = 0;
         Listeners.addEventListener(this,this,Event.ENTER_FRAME,this.onEnterFrame);
      }
      
      protected function addChildrenToParse(param1:DisplayObjectContainer) : void
      {
         var _loc2_:Number = param1.numChildren;
         var _loc3_:int = 0;
         while(_loc3_ < _loc2_)
         {
            this._displayObjectsToParse.push(param1.getChildAt(_loc3_));
            _loc3_++;
         }
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         var startTimetampMS:int = 0;
         var event:Event = param1;
         var child:DisplayObject = null;
         var updateList:Vector.<IUpdate> = null;
         var displayObjectList:Vector.<DisplayObject> = null;
         var offsetX:int = 0;
         var offsetY:int = 0;
         var dayOfNightObject:DisplayObject = null;
         var displayObject:DisplayObject = null;
         ++this._parseFrames;
         startTimetampMS = getTimer();
         while(getTimer() - startTimetampMS < this.PARSE_FRAME_TIMELIMIT)
         {
            if(this._activeBitmapParser == null || this._activeBitmapParser.isComplete())
            {
               if(this._displayObjectsToParse.length > 0)
               {
                  child = this._displayObjectsToParse.shift();
                  try
                  {
                     this.parseDisplayObject(child);
                  }
                  catch(e:Error)
                  {
                     Cc.error("parseDisplayObject error");
                     Cc.error(e);
                     Cc.error(e.getStackTrace());
                  }
               }
               else
               {
                  Cc.log("LocationLayers parse COMPLETE, _parseFrames = " + this._parseFrames);
                  Listeners.removeEventListener(this,this,Event.ENTER_FRAME,this.onEnterFrame);
                  this.onParseComplete();
                  dispatchEvent(new Event(Event.COMPLETE));
               }
            }
            else
            {
               this._activeBitmapParser.parseTick();
               if(this._activeBitmapParser.isComplete())
               {
                  updateList = this._activeBitmapParser.getUpdateList();
                  if(!emptyVector(updateList))
                  {
                     this._waterAnimationUpdateList = this._waterAnimationUpdateList.concat(updateList);
                  }
                  displayObjectList = this._activeBitmapParser.getDisplayObjectList();
                  if(!emptyVector(displayObjectList))
                  {
                     offsetX = 0;
                     offsetY = 0;
                     if(this._activeBitmapParser is BitmapAsyncParser)
                     {
                        (this._activeBitmapParser as BitmapAsyncParser).replaceSourceAsset();
                        offsetX = (this._activeBitmapParser as BitmapAsyncParser).container.x;
                        offsetY = (this._activeBitmapParser as BitmapAsyncParser).container.y;
                        for each(dayOfNightObject in displayObjectList)
                        {
                           if((this._activeBitmapParser as BitmapAsyncParser).name == "$ground")
                           {
                              dayOfNightObject.cacheAsBitmap = true;
                              this._dayCycle.addGround(dayOfNightObject);
                           }
                           else
                           {
                              this._dayCycle.addObject(dayOfNightObject);
                           }
                        }
                     }
                     if(this._activeBitmapParser is AnimatedRiverWrapper)
                     {
                        offsetX = (this._activeBitmapParser as AnimatedRiverWrapper).asset.x;
                        offsetY = (this._activeBitmapParser as AnimatedRiverWrapper).asset.y;
                        for each(displayObject in displayObjectList)
                        {
                           this._dayCycle.addWater(displayObject);
                        }
                     }
                     this._visibilityManager.addObjects(displayObjectList,offsetX,offsetY);
                  }
               }
            }
         }
         if(this._leftRootItemsToParse > this._displayObjectsToParse.length)
         {
            this._leftRootItemsToParse = this._displayObjectsToParse.length;
         }
      }
      
      private function parseDisplayObject(param1:DisplayObject) : void
      {
         if(param1 is InteractiveObject)
         {
            InteractiveObject(param1).mouseEnabled = false;
         }
         if(param1 is DisplayObjectContainer)
         {
            DisplayObjectContainer(param1).mouseChildren = false;
         }
         this.parseDisplayObjectInternal(param1);
      }
      
      protected function parseDisplayObjectInternal(param1:DisplayObject) : void
      {
         var _loc2_:WallButtonEnter = null;
         var _loc3_:DisplayObject = null;
         var _loc4_:Vector.<DisplayObject> = null;
         var _loc5_:BitmapCroppedMovieClipWrapper = null;
         var _loc6_:DisplayObject = null;
         var _loc7_:Array = null;
         var _loc8_:int = 0;
         var _loc9_:AnimatedRiverWrapper = null;
         var _loc10_:IsoTree = null;
         var _loc11_:DisplayObject = null;
         var _loc12_:DisplayObject = null;
         var _loc13_:FarmBuilding = null;
         var _loc14_:DisplayObject = null;
         var _loc15_:Lamp = null;
         var _loc16_:BitmapAsyncParser = null;
         var _loc17_:Number = NaN;
         var _loc18_:Array = null;
         var _loc19_:SublocationEnter = null;
         var _loc20_:String = null;
         var _loc21_:Array = null;
         var _loc22_:DisplayObject = null;
         var _loc23_:String = null;
         var _loc24_:BitmapCroppedSourceWrapper = null;
         var _loc25_:Point = null;
         var _loc26_:BitmapCroppedViewportWrapper = null;
         var _loc27_:Boat = null;
         var _loc28_:Class = null;
         var _loc29_:TournamentInfo = null;
         var _loc30_:String = param1.name;
         switch(_loc30_)
         {
            case EDisplayObjectType.EDOT_TOP:
               disableMouse(param1);
               param1.cacheAsBitmap = true;
               moveLayer(param1,this._topLayer);
               this._dayCycle.addObject(param1);
               this._visibilityManager.addObject(param1);
               break;
            case EDisplayObjectType.EDOT_LAKES:
               this._dayCycle.lakesLayer = param1;
               this.addChildrenToParse(DisplayObjectContainer(param1));
               break;
            case EDisplayObjectType.EDOT_ANIMATION:
               this.processChildAsAnimation(param1);
               break;
            case EDisplayObjectType.EDOT_ANIMATION_CROP:
               this.processChildAsAnimation(param1,true);
               break;
            case EDisplayObjectType.EDOT_ANIMATION_CONTAINER:
               this.addChildrenToParse(DisplayObjectContainer(param1));
               break;
            case EDisplayObjectType.EDOT_ANIMATION_RIVER:
               _loc9_ = new AnimatedRiverWrapper(DisplayObjectContainer(param1));
               this._activeBitmapParser = _loc9_;
               this._objectsToDestory.push(_loc9_);
               break;
            case EDisplayObjectType.EDOT_ANIMATION_WATER:
               clearFilters(param1);
               _loc5_ = new BitmapCroppedMovieClipWrapper(MovieClip(param1),false,true,this.onCropWaterAnimationComplete);
               _loc5_.name = param1.name;
               this._objectsToDestory.push(_loc5_);
               this._activeBitmapParser = _loc5_;
               _loc5_.framePerSec = 10;
               _loc5_.play();
               this._waterAnimationUpdateList.push(_loc5_);
               this._dayCycle.addWater(_loc5_);
               break;
            case EDisplayObjectType.EDOT_FILTER_NIGHT_CUSTOM:
               this.processNightFilter(Utils.findFilters(param1),param1);
               param1.filters = null;
               this._dayCycle.addObject(param1);
               break;
            case EDisplayObjectType.EDOT_FILTER_NIGHT_LAKE:
            case EDisplayObjectType.EDOT_FILTER_NIGHT_GROUND:
            case EDisplayObjectType.EDOT_FILTER_NIGHT_TREE:
               this._dayCycle.addFilters(_loc30_,param1);
               break;
            case EDisplayObjectType.EDOT_STATIC:
               _loc7_ = Utils.findFilters(param1);
               this.processNightFilter(_loc7_,param1);
               clearFilters(param1);
               this._dayCycle.addObject(param1);
               this._visibilityManager.addObject(param1);
               break;
            case EDisplayObjectType.EDOT_ISO:
               this.parseFriendHouseIso(DisplayObjectContainer(param1));
               this.moveChildrenToIsoLayer(DisplayObjectContainer(param1),true);
               removeIfEmpty(DisplayObjectContainer(param1));
               break;
            case EDisplayObjectType.EDOT_ISO_NO_FILTERS:
               this.moveChildrenToIsoLayer(DisplayObjectContainer(param1),false,false);
               break;
            case EDisplayObjectType.EDOT_ISO_VISIBLE:
            case EDisplayObjectType.EDOT_ISO_VISIBLE_INVERTED:
               this.moveChildrenToIsoLayer(DisplayObjectContainer(param1),true,false);
               break;
            case EDisplayObjectType.EDOT_ISO_FARM:
               this.moveChildrenToIsoLayer(DisplayObjectContainer(param1),true);
               removeIfEmpty(DisplayObjectContainer(param1));
               break;
            case EDisplayObjectType.EDOT_ISO_MARKET:
               this.parseDecorationMarketIso(DisplayObjectContainer(param1));
               this.changeDecorationMarketDoorState(false);
               break;
            case EDisplayObjectType.EDOT_SYSTEM_LAKE_CELLS:
               this._lakeCells = DisplayObjectContainer(param1);
               this._lakeCells.visible = false;
               break;
            case EDisplayObjectType.EDOT_SYSTEM_OBSTACLE_BOAT:
               this._boatObstacleMap = BitmapUtil.clone(param1);
               param1.parent.removeChild(param1);
               break;
            case EDisplayObjectType.EDOT_SYSTEM_PATH_LEAVES:
               if(this._leavesEffect != null)
               {
                  UpdateManager.getInstance().getGroup(UpdateGroup.TIMER_200).add(this._leavesEffect);
                  this._leavesEffect.setLavesPathClip(DisplayObjectContainer(param1));
                  this._visibilityManager.addObjects(this._leavesEffect.getLeaves(),0,0,0,0,true);
               }
               break;
            case EDisplayObjectType.EDOT_SYSTEM_PATH_NPC:
               this._npcPathesSprite = DisplayObjectContainer(param1);
               this._npcPathesSprite.visible = false;
               this._npcPathesSprite.parent.removeChild(this._npcPathesSprite);
               break;
            case EDisplayObjectType.EDOT_SPECIAL_FROZEN_LAKE:
               this.frozenLake = new FrozenLake();
               this.frozenLake.process(param1);
               moveLayer(param1,this.mainLayer);
               this._zSorter.handleAddChild(param1);
               this._visibilityManager.addObject(this.frozenLake,this.frozenLake.origX,this.frozenLake.origY);
               this._dayCycle.addObject(param1);
               break;
            case EDisplayObjectType.EDOT_SHELLS:
               this.processNightFilter(Utils.findFilters(param1),param1);
               break;
            case EDisplayObjectType.EDOT_TREE:
               _loc10_ = new IsoTree(param1);
               _loc11_ = _loc10_.iso;
               if(_loc11_ != null)
               {
                  moveLayer(_loc11_,this.mainLayer);
                  this._zSorter.handleAddChild(_loc11_);
                  this._visibilityManager.addObject(_loc11_);
               }
               _loc6_ = _loc10_.top;
               if(_loc6_ != null)
               {
                  moveLayer(_loc6_,this._topLayer);
                  this._visibilityManager.addObject(_loc6_);
               }
               _loc12_ = _loc10_.shadow;
               if(_loc12_ != null)
               {
                  moveLayer(_loc12_,this._topLayer);
                  this._visibilityManager.addObject(_loc12_);
               }
               removeIfEmpty(DisplayObjectContainer(param1));
               this._dayCycle.addObject(_loc10_);
               break;
            case EDisplayObjectType.EDOT_TREE_WITH_ISO:
               this.parseTreeWithIso(param1 as DisplayObjectContainer);
               break;
            case EDisplayObjectType.EDOT_FARM:
               _loc13_ = new FarmBuilding(param1);
               this.processNightFilter(param1.filters,_loc13_);
               _loc6_ = _loc13_.top;
               if(_loc6_)
               {
                  disableMouse(_loc6_);
                  _loc6_.cacheAsBitmap = true;
                  moveLayer(_loc6_,this._topLayer);
                  this._visibilityManager.addObject(_loc6_);
               }
               _loc14_ = _loc13_.iso;
               if(_loc14_ != null)
               {
                  moveLayer(_loc14_,this.mainLayer);
                  this._zSorter.handleAddChild(_loc14_);
                  this._visibilityManager.addObject(_loc14_);
               }
               else
               {
                  this._visibilityManager.addObject(_loc13_.asset);
               }
               this._dayCycle.addObject(_loc13_);
               break;
            case EDisplayObjectType.EDOT_LAND_ROAD:
               this.keyRoad = new KeyRoad();
               this.keyRoad.process(param1);
               moveLayer(param1,this.mainLayer);
               this._zSorter.handleAddChild(param1);
               this._visibilityManager.addObject(param1,param1.x,param1.y);
               this._dayCycle.addObject(param1);
               break;
            case EDisplayObjectType.EDOT_LANDING:
               this._landingMap = MovieClip(param1);
               if(this._landingMap != null)
               {
                  this._landingMap.parent.removeChild(this._landingMap);
               }
               this._landingMap.mouseEnabled = false;
               break;
            case EDisplayObjectType.EDOT_LANDING_WALL:
               this.landingWall = new RaftWall();
               this.landingWall.process(param1);
               break;
            case EDisplayObjectType.EDOT_SPECIAL_WALL:
               _loc7_ = Utils.findFilters(param1);
               this.processNightFilter(_loc7_,param1);
               clearFilters(param1);
               this.specialWall = new SpecialWall();
               this.specialWall.process(param1);
               moveLayer(param1,this.mainLayer);
               this._zSorter.handleAddChild(param1);
               this._visibilityManager.addObject(param1,param1.x,param1.y);
               this._dayCycle.addObject(param1);
               break;
            case EDisplayObjectType.EDOT_START_LINE:
               this.processStartLine(param1);
               break;
            case EDisplayObjectType.EDOT_TOURNAMENT_FINISH:
               this.tournamentFinish = new SublocationEnter();
               this.tournamentFinish.process(param1);
               break;
            case EDisplayObjectType.EDOT_TOP_PLAYER:
               this.bestPlayer = MovieClip(param1);
               this.bestPlayer.visible = false;
               this.setBestPlayer("","","");
               break;
            case EDisplayObjectType.EDOT_TOP_PLAYER_BOARD:
               param1.alpha = 0;
               this.topPlayerBoard = MovieClip(param1);
               param1.cacheAsBitmap = true;
               moveLayer(param1,this._topLayer);
               break;
            case EDisplayObjectType.EDOT_RAFT:
               _loc7_ = Utils.findFilters(param1);
               clearFilters(param1);
               _loc5_ = new BitmapCroppedMovieClipWrapper(MovieClip(param1),true,false);
               _loc5_.name = param1.name;
               this._objectsToDestory.push(_loc5_);
               _loc5_.framePerSec = 10;
               _loc5_.play();
               _loc4_ = _loc5_.getChildren();
               this._visibilityManager.addObjects(_loc4_,_loc5_.x,_loc5_.y);
               for each(_loc3_ in _loc4_)
               {
                  this.processNightFilter(_loc7_,_loc3_);
                  this._dayCycle.addObject(_loc3_);
               }
               this._updateList.push(_loc5_);
               this._raft = new Raft(Sprite(_loc5_));
               break;
            case EDisplayObjectType.EDOT_LAMP:
               _loc15_ = new Lamp(param1,this.pushToUpdate);
               moveLayer(_loc15_.asset,this.mainLayer);
               this._zSorter.handleAddChild(_loc15_.asset);
               this._visibilityManager.addObject(_loc15_.asset);
               this._dayCycle.addLamp(_loc15_);
               break;
            case EDisplayObjectType.EDOT_MARKET_DOOR:
               this._fishMarketDoors = MovieClip(param1);
               break;
            case EDisplayObjectType.EDOT_SHADOW:
               this._decorationShowShadow = MovieClip(param1);
               if(this._decorationShowShadow != null)
               {
                  moveLayer(this._decorationShowShadow,this.mainLayer);
                  this._zSorter.handleAddChild(this._decorationShowShadow);
                  this._visibilityManager.addObject(this._decorationShowShadow);
               }
               break;
            case EDisplayObjectType.EDOT_GROUND:
               _loc16_ = new BitmapAsyncParser(param1 as DisplayObject,475,520,this.fullWidth,this.fullHeight);
               _loc16_.addToDayNight = true;
               _loc16_.name = param1.name;
               this._activeBitmapParser = _loc16_;
               this._objectsToDestory.push(this._activeBitmapParser);
               break;
            case EDisplayObjectType.EDOT_GROUND_HOUSE_FRIENDS:
            case EDisplayObjectType.EDOT_GROUND_HOUSE_PRIVATE:
               _loc17_ = -50 * (255 / 250);
               _loc18_ = [];
               _loc18_ = _loc18_.concat([1,0,0,0,_loc17_]);
               _loc18_ = _loc18_.concat([0,1,0,0,_loc17_]);
               _loc18_ = _loc18_.concat([0,0,1,0,_loc17_]);
               _loc18_ = _loc18_.concat([0,0,0,1,0]);
               this.processNightFilter([new ColorMatrixFilter(_loc18_)],param1);
               this._dayCycle.addObject(param1);
               break;
            default:
               if(_loc30_.indexOf(EDisplayObjectType.EDOT_SYSTEM_SUBLOCATION) > -1)
               {
                  _loc19_ = new SublocationEnter();
                  _loc19_.process(param1);
                  this._sublocationEnters.push(_loc19_);
               }
               else if(_loc30_.indexOf(EDisplayObjectType.EDOT_ANIMATION_ISO) > -1)
               {
                  if(_loc30_.indexOf(EDisplayObjectType.EDOT_ANIMATION_ISO + "_") > -1)
                  {
                     _loc20_ = _loc30_.split("_")[1];
                  }
                  _loc21_ = Utils.findFilters(param1);
                  this.processNightFilter(_loc21_,param1);
                  clearFilters(param1);
                  moveLayer(param1,this.mainLayer);
                  this._zSorter.handleAddChild(param1);
                  _loc22_ = DisplayObjectContainer(param1).getChildByName(EDisplayObjectType.EDOT_ANIMATION);
                  if(_loc22_ != null)
                  {
                     _loc5_ = new BitmapCroppedMovieClipWrapper(MovieClip(_loc22_),false,false,this.postProcessBMP);
                     if(!empty(_loc21_))
                     {
                        this.processNightFilter(_loc21_,param1);
                        this._dayCycle.addObject(param1);
                     }
                     _loc5_.name = param1.name;
                     _loc5_.origX = param1.x;
                     _loc5_.origY = param1.y;
                     this._objectsToDestory.push(_loc5_);
                     this._activeBitmapParser = _loc5_;
                     if(!empty(_loc20_))
                     {
                        _loc5_.framePerSec = parseInt(_loc20_);
                     }
                     else
                     {
                        _loc5_.framePerSec = 10;
                     }
                     _loc5_.play();
                     this._updateList.push(_loc5_);
                  }
               }
               else if(_loc30_.indexOf(EDisplayObjectType.EDOT_ANIMATION_INSTANCE) > -1)
               {
                  _loc23_ = _loc30_.split("_")[2];
                  _loc24_ = this.getBitmapCroppedViewportSource(_loc23_);
                  if(_loc24_ != null)
                  {
                     _loc25_ = new Point(param1.x,param1.y);
                     _loc26_ = new BitmapCroppedViewportWrapper(_loc24_,param1);
                     _loc4_ = _loc26_.getChildren();
                     this._visibilityManager.addObjects(_loc4_,_loc25_.x,_loc25_.y);
                     if(_loc23_ == "WaterAnimation")
                     {
                        this._dayCycle.addWater(_loc26_);
                     }
                     else if(_loc23_ == "BuoyAnimation")
                     {
                        this._dayCycle.addObject(_loc26_);
                     }
                  }
               }
               else if(_loc30_.indexOf(EDisplayObjectType.EDOT_WALL_AREA) > -1)
               {
                  _loc8_ = SublocationEnter.findIdByName(param1.name);
                  _loc2_ = this.getWallItemById(_loc8_);
                  _loc2_.process(param1);
               }
               else if(_loc30_.indexOf(EDisplayObjectType.EDOT_WALL_BUTTON) > -1)
               {
                  _loc7_ = Utils.findFilters(param1);
                  this.processNightFilter(_loc7_,param1);
                  clearFilters(param1);
                  _loc8_ = SublocationEnter.findIdByName(param1.name);
                  _loc2_ = this.getWallItemById(_loc8_);
                  _loc2_.processButton(param1);
                  this._dayCycle.addObject(param1);
               }
               else if(_loc30_.indexOf(EDisplayObjectType.EDOT_BOAT) > -1)
               {
                  if(this._boatSourceWrapper == null)
                  {
                     this._boatSourceWrapper = new BoatSourceWrapper();
                     _loc28_ = this.getDefinition("BoatAsset");
                     this._boatSourceWrapper.process(new _loc28_());
                  }
                  _loc27_ = new Boat(this._boatSourceWrapper);
                  _loc27_.process(param1);
                  this.boatByIndex[_loc27_.index] = _loc27_;
                  this.boats.push(_loc27_);
                  moveLayer(_loc27_.graphic,this._bottom2Layer);
                  this._visibilityManager.addObject(_loc27_.graphic,0,0,0,0,true);
                  this._dayCycle.addObject(_loc27_.graphic);
               }
               else if(_loc30_.indexOf(EDisplayObjectType.EDOT_WALL) > -1)
               {
                  if(this.tournamentWalls == null)
                  {
                     _loc29_ = GameSwf.instance.managerTournaments.tournamentCurrent;
                     this.tournamentWalls = new TournamentWalls(_loc29_);
                  }
                  this.tournamentWalls.process(param1);
                  disableMouse(param1);
                  param1.cacheAsBitmap = true;
                  moveLayer(param1,this._topLayer);
               }
               else if(param1 is Bitmap || param1 is Shape)
               {
                  this._dayCycle.addGround(param1);
               }
               else if(param1 is DisplayObjectContainer)
               {
                  this.addChildrenToParse(DisplayObjectContainer(param1));
               }
         }
      }
      
      private function parseTreeWithIso(param1:DisplayObjectContainer) : void
      {
         var _loc2_:IsoTree = new IsoTree(param1);
         var _loc3_:DisplayObjectContainer = _loc2_.iso as DisplayObjectContainer;
         if(_loc3_ != null)
         {
            this.moveChildrenToIsoLayer(_loc3_,true);
         }
         var _loc4_:DisplayObject = _loc2_.top;
         if(_loc4_ != null)
         {
            moveLayer(_loc4_,this._topLayer);
            this._visibilityManager.addObject(_loc4_);
         }
         var _loc5_:DisplayObject = _loc2_.shadow;
         if(_loc5_ != null)
         {
            moveLayer(_loc5_,this._topLayer);
            this._visibilityManager.addObject(_loc5_);
         }
         this._dayCycle.addObject(_loc2_);
      }
      
      private function parseDecorationMarketIso(param1:DisplayObjectContainer) : void
      {
         var _loc2_:DisplayObject = null;
         var _loc3_:MovieClip = MovieClip(param1.getChildByName("doorClosed"));
         var _loc4_:MovieClip = MovieClip(param1.getChildByName("doorOpened"));
         for each(_loc2_ in param1)
         {
            this._dayCycle.addObject(_loc2_);
            moveLayer(_loc2_,this.mainLayer);
            this._zSorter.handleAddChild(_loc2_);
            this._visibilityManager.addObject(_loc2_);
         }
         if(_loc3_ != null)
         {
            this._closedDecMarketDoor = _loc3_;
         }
         if(_loc4_ != null)
         {
            this._openedDecMarketDoor = _loc4_;
         }
      }
      
      private function postProcessBMP(param1:BitmapCroppedMovieClipWrapper) : void
      {
         var _loc2_:Vector.<DisplayObject> = param1.getChildren();
         this._visibilityManager.addObjects(_loc2_,param1.origX,param1.origY);
         this._dayCycle.replaceBitmapCroppedMovieClipNightFilter(param1);
      }
      
      private function onCropWaterAnimationComplete(param1:BitmapCroppedMovieClipWrapper) : void
      {
         var _loc2_:Vector.<DisplayObject> = param1.getChildren();
         this._visibilityManager.addObjects(_loc2_,param1.origX,param1.origY);
      }
      
      private function pushToUpdate(param1:Sprite) : void
      {
         this._updateList.push(param1);
      }
      
      private function processStartLine(param1:DisplayObject) : void
      {
         var _loc2_:DisplayObject = (param1 as DisplayObjectContainer).getChildByName("iso");
         this._dayCycle.addObject(_loc2_);
         moveLayer(_loc2_,this.mainLayer);
         this._zSorter.handleAddChild(_loc2_);
         this._visibilityManager.addObject(_loc2_);
         this.startLineCounter = MovieClip((param1 as DisplayObjectContainer).getChildByName("counter"));
         this.startLineCounter.stop();
         disableMouse(this.startLineCounter);
         this.startLineCounter.cacheAsBitmap = true;
         moveLayer(this.startLineCounter,this._topLayer);
         this._visibilityManager.addObject(_loc2_);
      }
      
      protected function processChildAsAnimation(param1:DisplayObject, param2:Boolean = false) : void
      {
         var _loc3_:Array = Utils.findFilters(param1);
         clearFilters(param1);
         var _loc4_:BitmapCroppedMovieClipWrapper = new BitmapCroppedMovieClipWrapper(MovieClip(param1),false,param2,this.postProcessBMP);
         _loc4_.name = param1.name;
         this._objectsToDestory.push(_loc4_);
         this._activeBitmapParser = _loc4_;
         if(!empty(_loc3_))
         {
            this.processNightFilter(_loc3_,param1,_loc4_);
            this._dayCycle.addObject(param1);
         }
         _loc4_.framePerSec = 10;
         _loc4_.play();
         this._updateList.push(_loc4_);
      }
      
      private function getWallItemById(param1:int) : WallButtonEnter
      {
         var _loc2_:WallButtonEnter = null;
         var _loc3_:WallButtonEnter = null;
         for each(_loc3_ in this.wallButtonEnters)
         {
            if(param1 == _loc3_.id)
            {
               return _loc3_;
            }
         }
         _loc2_ = new WallButtonEnter();
         this.wallButtonEnters.push(_loc2_);
         return _loc2_;
      }
      
      private function getDefinition(param1:String) : Class
      {
         var _loc2_:Class = null;
         if(this._applicationDomain != null && this._applicationDomain.hasDefinition(param1))
         {
            return Class(this._applicationDomain.getDefinition(param1));
         }
         return null;
      }
      
      private function getBitmapCroppedViewportSource(param1:String) : BitmapCroppedSourceWrapper
      {
         var _loc2_:BitmapCroppedSourceWrapper = null;
         var _loc3_:Class = null;
         if(this._bitmapCroppedMovieClipByClassName[param1] == null)
         {
            if(this._applicationDomain != null && this._applicationDomain.hasDefinition(param1))
            {
               _loc3_ = Class(this._applicationDomain.getDefinition(param1));
               _loc2_ = new BitmapCroppedSourceWrapper(new _loc3_());
               _loc2_.framePerSec = 10;
               _loc2_.play();
               this._updateList.push(_loc2_);
            }
            this._bitmapCroppedMovieClipByClassName[param1] = _loc2_;
         }
         return this._bitmapCroppedMovieClipByClassName[param1];
      }
      
      public function addLocationItem(param1:ViewItem) : void
      {
         this.addChild(param1.source);
         param1.show();
      }
      
      public function removeLocationItem(param1:ViewItem) : void
      {
         this.removeChild(param1.source);
         disableMouse(param1.source);
         this._topLayer.addChild(param1.source);
         param1.hide();
      }
      
      public function addHolidayItem(param1:ViewHolidayItem) : void
      {
         var _loc2_:DisplayObject = null;
         var _loc3_:DisplayObjectContainer = param1.source as DisplayObjectContainer;
         this.mainLayer.addChild(_loc3_);
         var _loc4_:int = 0;
         while(_loc4_ < _loc3_.numChildren)
         {
            _loc2_ = _loc3_.getChildAt(_loc4_);
            this.parseDisplayObject(_loc2_);
            _loc4_++;
         }
      }
      
      override public function addChild(param1:DisplayObject) : DisplayObject
      {
         var _loc2_:DisplayObject = null;
         if(param1 != null && param1.parent != this.mainLayer && this._zSorter != null)
         {
            _loc2_ = this.mainLayer.addChild(param1);
            this._zSorter.handleAddChild(_loc2_);
         }
         return _loc2_;
      }
      
      override public function removeChild(param1:DisplayObject) : DisplayObject
      {
         if(param1.parent == this.mainLayer && this._zSorter != null)
         {
            this._zSorter.handleRemoveChild(param1);
         }
         return param1;
      }
      
      public function getObstacleMap() : BitmapData
      {
         return this._obstacleMapBitmapData;
      }
      
      public function get fullWidth() : Number
      {
         return this._locationFullSize != null ? this._locationFullSize.x : 0;
      }
      
      public function get fullHeight() : Number
      {
         return this._locationFullSize != null ? this._locationFullSize.y : 0;
      }
      
      public function getLakeCells() : DisplayObject
      {
         return this._lakeCells;
      }
      
      public function setRodRound(param1:Sprite) : void
      {
         if(this._topLayer.hasOwnProperty("rodCircle"))
         {
            this._topLayer.removeChild(this._topLayer.getChildByName("rodCircle"));
         }
         this._topLayer.addChildAt(param1,0);
      }
      
      override public function set scrollRect(param1:Rectangle) : void
      {
         var _loc2_:Rectangle = scrollRect;
         if(_loc2_ != null && param1.x == _loc2_.x && param1.y == _loc2_.y && param1.height == _loc2_.height && param1.width == _loc2_.width)
         {
            return;
         }
         lastScrollRectUpdateTimestampMS = getTimer();
         Watch.change("rect",this.x + "x" + this.y + "-" + param1.x + "x" + param1.y);
         super.scrollRect = param1;
         this._weather.x = param1.x;
         this._weather.y = param1.y;
         this._weather.scrollRect = param1;
         this._waterEffect.scrollRect = param1.clone();
         this._visibilityManager.scrollRect = param1;
         FieldChar.locationLayersScrollRect = param1;
      }
      
      public function set weather(param1:WeatherType) : void
      {
         this._weather.weatherType = param1;
      }
      
      public function update(param1:uint, param2:uint) : void
      {
         var _loc3_:IUpdate = null;
         var _loc4_:IUpdate = null;
         this._zSorter.update();
         this._dayCycle.update(param1,param2);
         for each(_loc3_ in this._updateList)
         {
            _loc3_.update(param1,param2);
         }
         if(Config.WATER_ANIMATION_EFFECT)
         {
            for each(_loc4_ in this._waterAnimationUpdateList)
            {
               _loc4_.update(param1,param2);
            }
         }
         this._visibilityManager.updateSelfMoveObjects();
      }
      
      public function addChar(param1:DisplayObject, param2:Boolean = true) : void
      {
         if(param2)
         {
            param1.alpha = 0;
            TweenCube.to(param1,2,{"alpha":1});
         }
         else
         {
            param1.alpha = 1;
         }
         this.addChild(param1);
         this._visibilityManager.addObject(param1,-param1.width / 2,-param1.height + 20,0,0,true);
      }
      
      public function removeChar(param1:DisplayObject) : void
      {
         if(param1.parent != null)
         {
            TweenCube.to(param1,2,{"alpha":0},{
               "onComplete":this.removeChild,
               "onCompleteParams":[param1]
            });
         }
      }
      
      public function get lakeObstacleMap() : BitmapData
      {
         return this._lakeObstacleMapBitmapData;
      }
      
      public function get progress() : Number
      {
         return this._displayObjectsToParse == null ? 0 : (this._totalRootItemsToParse - this._leftRootItemsToParse) / this._totalRootItemsToParse;
      }
      
      public function get landingMap() : MovieClip
      {
         return this._landingMap;
      }
      
      public function get raftRectangle() : Rectangle
      {
         if(this._raft != null)
         {
            return this._raft.rectangle;
         }
         return new Rectangle(0,0,0,0);
      }
      
      public function get raft() : Raft
      {
         return this._raft;
      }
      
      public function loadObstacleMap(param1:String) : void
      {
         if(this._obstacleMapLoader != null)
         {
            Listeners.removeEventListener(this,this._obstacleMapLoader,Event.COMPLETE,this.onCompleteLoadingObstacleMap);
         }
         this._obstacleMapLoader = new BinaryLoaderRepeatable(3);
         Listeners.addEventListener(this,this._obstacleMapLoader,Event.COMPLETE,this.onCompleteLoadingObstacleMap);
         this._obstacleMapLoader.load(new URLRequest(param1));
      }
      
      protected function onCompleteLoadingObstacleMap(param1:Event) : void
      {
         Listeners.removeEventListener(this,this._obstacleMapLoader,Event.COMPLETE,this.onCompleteLoadingObstacleMap);
         if(this._obstacleMapLoader.content != null && this._obstacleMapLoader.content is Bitmap && Bitmap(this._obstacleMapLoader.content).bitmapData != null)
         {
            this._obstacleMapBitmapData = Bitmap(this._obstacleMapLoader.content).bitmapData;
            if(this._obstacleMapBitmap == null)
            {
               this._obstacleMapBitmap = new Bitmap();
               this._obstacleMapBitmap.alpha = this._obstacleMapBitmapAlpha;
            }
            this._obstacleMapBitmap.bitmapData = this._obstacleMapBitmapData;
            dispatchEvent(new LocationDialogEvent(LocationDialogEvent.UPDATE_OBSTACLE_MAP));
         }
         else
         {
            Cc.error("Obstacle map loading error, url = " + this._obstacleMapLoader.url);
         }
      }
      
      public function loadLakeObstacleMap(param1:String) : void
      {
         if(this._lakeObstacleMapLoader != null)
         {
            Listeners.removeEventListener(this,this._lakeObstacleMapLoader,Event.COMPLETE,this.onCompleteLoadingLakeObstacleMap);
         }
         this._lakeObstacleMapLoader = new BinaryLoaderRepeatable(3);
         Listeners.addEventListener(this,this._lakeObstacleMapLoader,Event.COMPLETE,this.onCompleteLoadingLakeObstacleMap);
         this._lakeObstacleMapLoader.load(new URLRequest(param1));
      }
      
      public function loadSoundMap(param1:String) : void
      {
         if(this._soundMapLoader != null)
         {
            Listeners.removeEventListener(this,this._soundMapLoader,Event.COMPLETE,this.onCompleteLoadingSoundMap);
         }
         this._soundMapLoader = new BinaryLoaderRepeatable();
         Listeners.addEventListener(this,this._soundMapLoader,Event.COMPLETE,this.onCompleteLoadingSoundMap);
         this._soundMapLoader.load(new URLRequest(param1));
      }
      
      private function onCompleteLoadingLakeObstacleMap(param1:Event) : void
      {
         Listeners.removeEventListener(this,this._lakeObstacleMapLoader,Event.COMPLETE,this.onCompleteLoadingLakeObstacleMap);
         if(this._lakeObstacleMapLoader.content != null && this._lakeObstacleMapLoader.content is Bitmap && Bitmap(this._lakeObstacleMapLoader.content).bitmapData != null)
         {
            this._lakeObstacleMapBitmapData = Bitmap(this._lakeObstacleMapLoader.content).bitmapData;
            if(this._lakeObstacleMapBitmap == null)
            {
               this._lakeObstacleMapBitmap = new Bitmap();
               this._lakeObstacleMapBitmap.alpha = this._obstacleMapBitmapAlpha;
            }
            this._lakeObstacleMapBitmap.bitmapData = this._lakeObstacleMapBitmapData;
            this._waterEffect.lakeObstacleMapBitmap = this._lakeObstacleMapBitmapData;
            dispatchEvent(new LocationDialogEvent(LocationDialogEvent.UPDATE_LAKE_OBSTACLE_MAP));
         }
         else
         {
            Cc.error("Lake obstacle map loading error, url = " + this._obstacleMapLoader.url);
         }
      }
      
      private function onCompleteLoadingSoundMap(param1:Event) : void
      {
         Listeners.removeEventListener(this,this._soundMapLoader,Event.COMPLETE,this.onCompleteLoadingSoundMap);
         if(this._soundMapLoader.content != null && this._soundMapLoader.content is Bitmap && Bitmap(this._soundMapLoader.content).bitmapData != null)
         {
            this.soundMapBitmapData = Bitmap(this._soundMapLoader.content).bitmapData;
            if(this._soundMapBitmap == null)
            {
               this._soundMapBitmap = new Bitmap();
               this._soundMapBitmap.alpha = this._soundMapBitmapAlpha;
            }
            this._soundMapBitmap.bitmapData = this.soundMapBitmapData;
            dispatchEvent(new LocationDialogEvent(LocationDialogEvent.UPDATE_SOUND_MAP));
         }
         else
         {
            Cc.error("Lake sound loading error, url = " + this._soundMapLoader.url);
         }
      }
      
      public function setObstacleMapsAlpha(param1:Number) : void
      {
         if(this._obstacleMapBitmap != null)
         {
            if(param1 > 0)
            {
               this._obstacleMapBitmap.visible = true;
               this._obstacleMapBitmap.alpha = param1;
               if(this._obstacleMapBitmap.parent == null)
               {
                  DEBUG_SPRITE.addChild(this._obstacleMapBitmap);
               }
            }
            else
            {
               this._obstacleMapBitmap.visible = false;
            }
         }
         if(this._lakeObstacleMapBitmap != null)
         {
            if(param1 > 0)
            {
               this._lakeObstacleMapBitmap.visible = true;
               this._lakeObstacleMapBitmap.alpha = param1;
            }
            else
            {
               this._lakeObstacleMapBitmap.visible = false;
            }
         }
         this._obstacleMapBitmapAlpha = param1;
      }
      
      public function setSoundMapAlpha(param1:Number) : void
      {
         if(this._soundMapBitmap != null)
         {
            if(param1 > 0)
            {
               this._soundMapBitmap.visible = true;
               this._soundMapBitmap.alpha = param1;
            }
            else
            {
               this._soundMapBitmap.visible = false;
            }
         }
         this._soundMapBitmapAlpha = param1;
      }
      
      public function destroy() : void
      {
         var _loc1_:Object = null;
         var _loc2_:SublocationEnter = null;
         var _loc3_:WallButtonEnter = null;
         var _loc4_:BitmapData = null;
         var _loc5_:Boat = null;
         var _loc6_:FieldShell = null;
         var _loc7_:FieldBobsMinigameFishCoin = null;
         UpdateManager.getInstance().getGroup(UpdateGroup.TIMER_200).remove(this._waterEffect);
         UpdateManager.getInstance().getGroup(UpdateGroup.TIMER_200).remove(this._leavesEffect);
         if(this._raft != null)
         {
            this._raft.destroy();
         }
         this.bestPlayer = null;
         removeFromParent(this._fishMarketDoors);
         this._fishMarketDoors = null;
         removeFromParent(this._decorationShowShadow);
         this._decorationShowShadow = null;
         this._closedDecMarketDoor = null;
         this._openedDecMarketDoor = null;
         for each(_loc1_ in this._objectsToDestory)
         {
            if(_loc1_ is IDestroy)
            {
               IDestroy(_loc1_).destroy();
            }
         }
         this._objectsToDestory = null;
         removeAllChildrenRecursive(this);
         Listeners.destroyAllSubscriptions(this);
         if(this.parent != null)
         {
            this.parent.removeChild(this);
         }
         if(this.bestPlayer != null)
         {
            TweenCube.destroyTweensOf(this.bestPlayer,false);
            this.bestPlayer = null;
         }
         removeFromParent(this._locationAsset);
         this._locationAsset = null;
         removeFromParent(this._topLayer);
         this._topLayer = null;
         removeAllChildren(this._bottomLayer);
         removeFromParent(this._bottomLayer);
         this._bottomLayer = null;
         removeAllChildren(this._layerAdvertising);
         removeFromParent(this._layerAdvertising);
         this._layerAdvertising = null;
         removeAllChildren(this._fishRadarLayer);
         removeFromParent(this._fishRadarLayer);
         this._fishRadarLayer = null;
         removeAllChildren(this._layerSpecial);
         removeFromParent(this._layerSpecial);
         this._layerSpecial = null;
         removeFromParent(this._bottom2Layer);
         this._bottom2Layer = null;
         removeFromParent(this.mainLayer);
         this.mainLayer = null;
         this._zSorter.destroy();
         this._zSorter = null;
         this._locationFullSize = null;
         this._lakeCells = null;
         if(this._weather != null)
         {
            this._weather.destroy();
            removeFromParent(this._weather);
            this._weather = null;
         }
         removeFromParent(charMessagesLayer,this);
         this._updateList = null;
         this._waterAnimationUpdateList = null;
         if(this._visibilityManager != null)
         {
            this._visibilityManager.destroy();
            this._visibilityManager = null;
         }
         removeFromParent(DEBUG_SPRITE,this);
         if(this._obstacleMapBitmapData != null)
         {
            this._obstacleMapBitmapData.dispose();
            this._obstacleMapBitmapData = null;
         }
         if(this._lakeObstacleMapBitmapData != null)
         {
            this._lakeObstacleMapBitmapData.dispose();
            this._lakeObstacleMapBitmapData = null;
         }
         if(this.soundMapBitmapData != null)
         {
            this.soundMapBitmapData.dispose();
            this.soundMapBitmapData = null;
         }
         this._npcPathesSprite = null;
         this._displayObjectsToParse = null;
         this._applicationDomain = null;
         this._bitmapCroppedMovieClipByClassName = null;
         if(this._waterEffect != null)
         {
            this._waterEffect.destroy();
            this._waterEffect = null;
         }
         if(this._leavesEffect != null)
         {
            this._leavesEffect.destroy();
            this._leavesEffect = null;
         }
         for each(_loc2_ in this._sublocationEnters)
         {
            _loc2_.destroy();
         }
         this._sublocationEnters = null;
         for each(_loc3_ in this.wallButtonEnters)
         {
            _loc3_.destroy();
         }
         this.wallButtonEnters = null;
         this._landingMap = null;
         if(this._boatSourceWrapper != null)
         {
            this._boatSourceWrapper.destroy();
         }
         this._boatSourceWrapper = null;
         this.boatByIndex = null;
         for each(_loc4_ in this._shellBitmaps)
         {
            _loc4_.dispose();
         }
         this._shellBitmaps = null;
         if(this._shellGrid != null)
         {
            this._shellGrid.destroy();
            this._shellGrid = null;
         }
         if(this._boatObstacleMap != null)
         {
            this._boatObstacleMap.dispose();
            this._boatObstacleMap = null;
         }
         if(this._bobsMinigameGrid != null)
         {
            this._bobsMinigameGrid.destroy();
            this._bobsMinigameGrid = null;
         }
         if(this._fishboxGridManager != null)
         {
            this._fishboxGridManager.destroy();
            this._fishboxGridManager = null;
         }
         if(this._fishbonesDailyQuestMinigame != null)
         {
            this._fishbonesDailyQuestMinigame.destroy();
            this._fishbonesDailyQuestMinigame = null;
         }
         this.bestPlayer = null;
         this.topPlayerBoard = null;
         this._activeBitmapParser = null;
         if(this.specialWall != null)
         {
            this.specialWall.destroy();
            this.specialWall = null;
         }
         if(this.landingWall != null)
         {
            this.landingWall.destroy();
            this.landingWall = null;
         }
         if(this.keyRoad != null)
         {
            this.keyRoad.destroy();
            this.keyRoad = null;
         }
         if(this.frozenLake != null)
         {
            this.frozenLake.destroy();
            this.frozenLake = null;
         }
         if(this.boats != null)
         {
            for each(_loc5_ in this.boats)
            {
               _loc5_.destroy();
            }
            this.boats = null;
         }
         if(this.tournamentWalls != null)
         {
            this.tournamentWalls.destroy();
            this.tournamentWalls = null;
         }
         if(this.tournamentFinish != null)
         {
            this.tournamentFinish.destroy();
            this.tournamentFinish = null;
         }
         if(this._obstacleMapLoader != null)
         {
            this._obstacleMapLoader.destroy();
            this._obstacleMapLoader = null;
         }
         this._obstacleMapBitmap = null;
         if(this._lakeObstacleMapLoader != null)
         {
            this._lakeObstacleMapLoader.destroy();
            this._lakeObstacleMapLoader = null;
         }
         this._lakeObstacleMapBitmap = null;
         if(this._soundMapLoader != null)
         {
            this._soundMapLoader.destroy();
            this._soundMapLoader = null;
         }
         this._soundMapBitmap = null;
         if(this._shells != null)
         {
            for each(_loc6_ in this._shells)
            {
               _loc6_.destroy();
            }
            this._shells = null;
         }
         if(this._bobsMinigameFishCoins != null)
         {
            for each(_loc7_ in this._bobsMinigameFishCoins)
            {
               _loc7_.destroy();
            }
            this._bobsMinigameFishCoins = null;
         }
      }
      
      public function getSublocationAt(param1:Number, param2:Number) : SublocationEnter
      {
         var _loc3_:SublocationEnter = null;
         for each(_loc3_ in this._sublocationEnters)
         {
            if(_loc3_.hitTestPoint(param1,param2))
            {
               return _loc3_;
            }
         }
         return null;
      }
      
      public function getBoatByIndex(param1:int) : Boat
      {
         return this.boatByIndex[param1];
      }
      
      public function addShell(param1:Point) : void
      {
         var _loc2_:FieldShell = null;
         if(this._shellBitmaps != null)
         {
            for each(_loc2_ in this._shells)
            {
               if(_loc2_.position.equals(param1))
               {
                  return;
               }
            }
            _loc2_ = new FieldShell();
            _loc2_.position = param1;
            _loc2_.x = param1.x;
            _loc2_.y = param1.y;
            _loc2_.bitmapData = this._shellBitmaps[param1.x * param1.y % this._shellBitmaps.length];
            _loc2_.add();
            this.addChild(_loc2_);
            this._shellGrid.addDisplayObject(_loc2_);
            this._dayCycle.addObject(_loc2_);
         }
      }
      
      public function getShellAt(param1:Number, param2:Number, param3:int) : GridManagerObject
      {
         return this._shellGrid != null ? this._shellGrid.getFirstObjectAt(param1,param2,param3) : null;
      }
      
      public function removeShell(param1:GridManagerObject) : void
      {
         var _loc2_:FieldShell = null;
         var _loc3_:FieldShell = FieldShell(param1.data);
         this._zSorter.handleRemoveChild(_loc3_);
         disableMouse(_loc3_);
         _loc3_.cacheAsBitmap = true;
         this._topLayer.addChild(_loc3_);
         _loc3_.remove();
         this._shellGrid.removeObject(param1);
         for each(_loc2_ in this._shells)
         {
            if(_loc2_.position.equals(_loc3_.position))
            {
               this._shells.splice(this._shells.indexOf(_loc2_),1);
               return;
            }
         }
      }
      
      public function addFishbox(param1:Point) : void
      {
         if(this._fishboxGridManager == null)
         {
            this._fishboxGridManager = new DisplayObjectGridManager(150,150);
         }
         var _loc2_:FieldFishbox = new FieldFishbox();
         _loc2_.position = param1;
         _loc2_.x = param1.x;
         _loc2_.y = param1.y;
         _loc2_.add();
         this.mainLayer.addChildAt(_loc2_,0);
         this._zSorter.handleAddChild(_loc2_);
         this._fishboxGridManager.addDisplayObject(_loc2_);
      }
      
      public function getFishboxAt(param1:Number, param2:Number, param3:int) : GridManagerObject
      {
         var _loc4_:GridManagerObject = null;
         if(this._fishboxGridManager != null)
         {
            _loc4_ = this._fishboxGridManager.getFirstObjectAt(param1,param2,param3);
         }
         return _loc4_;
      }
      
      public function removeFishbox(param1:GridManagerObject) : void
      {
         var _loc2_:FieldFishbox = FieldFishbox(param1.data);
         this._zSorter.handleRemoveChild(_loc2_);
         disableMouse(_loc2_);
         this._topLayer.addChild(_loc2_);
         _loc2_.remove();
         this._fishboxGridManager.removeObject(param1);
      }
      
      public function destroyFishbox(param1:GridManagerObject) : void
      {
         var _loc2_:FieldFishbox = FieldFishbox(param1.data);
         this._zSorter.handleRemoveChild(_loc2_);
         _loc2_.remove();
         this._fishboxGridManager.removeObject(param1);
      }
      
      public function get bobsMinigameFishCoinsLength() : int
      {
         return this._bobsMinigameFishCoins.length;
      }
      
      public function addBobsMinigameFishCoin(param1:Point) : void
      {
         if(this._bobsMinigameGrid == null)
         {
            this._bobsMinigameGrid = new DisplayObjectGridManager(150,150);
         }
         var _loc2_:FieldBobsMinigameFishCoin = new FieldBobsMinigameFishCoin(param1);
         this._bobsMinigameFishCoins.push(_loc2_);
         _loc2_.add();
         this.mainLayer.addChildAt(_loc2_,0);
         this._zSorter.handleAddChild(_loc2_);
         this._bobsMinigameGrid.addDisplayObject(_loc2_,new Rectangle(_loc2_.x - _loc2_.width / 2,_loc2_.y - _loc2_.height,_loc2_.width,_loc2_.height));
      }
      
      public function removeBobsMinigameFishCoin(param1:GridManagerObject) : void
      {
         var _loc2_:FieldBobsMinigameFishCoin = FieldBobsMinigameFishCoin(param1.data);
         this._zSorter.handleRemoveChild(_loc2_);
         disableMouse(_loc2_);
         this._topLayer.addChild(_loc2_);
         _loc2_.remove();
         this._bobsMinigameGrid.removeObject(param1);
         var _loc3_:int = this._bobsMinigameFishCoins.indexOf(_loc2_);
         if(_loc3_ != -1)
         {
            this._bobsMinigameFishCoins.splice(_loc3_,1);
         }
      }
      
      public function getBobsMinigameFishCoinAt(param1:Number, param2:Number, param3:int) : GridManagerObject
      {
         if(this._bobsMinigameGrid == null)
         {
            return null;
         }
         return this._bobsMinigameGrid.getFirstObjectAt(param1,param2,param3);
      }
      
      public function removeBobsMinigameAll() : void
      {
         var _loc1_:int = 0;
         while(_loc1_ < this._bobsMinigameFishCoins.length)
         {
            this._zSorter.handleRemoveChild(this._bobsMinigameFishCoins[_loc1_]);
            disableMouse(this._bobsMinigameFishCoins[_loc1_]);
            this._topLayer.addChild(this._bobsMinigameFishCoins[_loc1_]);
            this._bobsMinigameFishCoins[_loc1_].remove();
            _loc1_++;
         }
         this._bobsMinigameFishCoins = new Vector.<FieldBobsMinigameFishCoin>();
         this._bobsMinigameGrid = null;
      }
      
      public function addDailyQuestMinigameFishbone(param1:Point) : void
      {
         if(this._fishbonesDailyQuestMinigame == null)
         {
            this._fishbonesDailyQuestMinigame = new DisplayObjectGridManager(150,150);
         }
         var _loc2_:FieldFishbone = new FieldFishbone();
         _loc2_.position = param1;
         _loc2_.x = param1.x;
         _loc2_.y = param1.y;
         this._dailyQuestFishbones.push(_loc2_);
         _loc2_.add();
         this.mainLayer.addChildAt(_loc2_,0);
         this._zSorter.handleAddChild(_loc2_);
         this._fishbonesDailyQuestMinigame.addDisplayObject(_loc2_);
      }
      
      public function getDailyQuestMinigameFishboneAt(param1:Number, param2:Number, param3:int) : GridManagerObject
      {
         var _loc4_:GridManagerObject = null;
         if(this._fishbonesDailyQuestMinigame != null)
         {
            _loc4_ = this._fishbonesDailyQuestMinigame.getFirstObjectAt(param1,param2,param3);
         }
         return _loc4_;
      }
      
      public function removeDailyQuestMinigameFishbone(param1:GridManagerObject) : void
      {
         var _loc2_:FieldFishbone = FieldFishbone(param1.data);
         this._zSorter.handleRemoveChild(_loc2_);
         disableMouse(_loc2_);
         _loc2_.cacheAsBitmap = true;
         this._topLayer.addChild(_loc2_);
         _loc2_.remove();
         this._fishbonesDailyQuestMinigame.removeObject(param1);
         var _loc3_:int = 0;
         while(_loc3_ < this._dailyQuestFishbones.length)
         {
            if(this._dailyQuestFishbones[_loc3_] == _loc2_)
            {
               this._dailyQuestFishbones.splice(_loc3_,1);
            }
            _loc3_++;
         }
      }
      
      public function getBoatObstacleMap() : BitmapData
      {
         return this._boatObstacleMap;
      }
      
      public function reorder() : void
      {
         this._zSorter.fullUpdate();
      }
      
      public function activate() : void
      {
         if(this._active == false)
         {
            this._active = true;
            this._zSorter.fullUpdate();
            this.addLayers();
         }
      }
      
      public function deactivate() : void
      {
         if(this._active)
         {
            this._active = false;
         }
         if(this._debugFishBlocksLayer != null)
         {
            removeAllChildren(this._debugFishBlocksLayer);
         }
      }
      
      public function showFishBlocks(param1:FishBlocksAtLakesDataResp, param2:int, param3:Array) : void
      {
         var lakesCellData:Object = null;
         var resp:FishBlocksAtLakesDataResp = param1;
         var radarType:int = param2;
         var targetFishCountCell:Array = param3;
         var temp:Object = null;
         var lakeId:String = null;
         var lakeCellData:Array = null;
         var length:uint = 0;
         var cellFishCount:int = 0;
         var originalLakeCell:DisplayObject = null;
         var i:int = 0;
         var debugLakeCell:DebugLakeCell = null;
         var bitmapData:BitmapData = null;
         var isBlockHitGround:Boolean = false;
         var isBlockHitSpecial:Boolean = false;
         var fishingZone:FishingZone = null;
         Cc.log("showFishBlocks(resp:" + resp + ",radarType:" + radarType + ", targetFishCountCell:" + targetFishCountCell + ")");
         lakesCellData = JSON.parse(resp.data);
         try
         {
            if(GameSwf.isDebugLakeCellsVisible)
            {
               if(this._debugFishBlocksLayer == null)
               {
                  if(DEBUG_SPRITE.getChildByName("debugFishBlocksLayer") != null)
                  {
                     temp = DEBUG_SPRITE.getChildByName("debugFishBlocksLayer");
                     DEBUG_SPRITE.removeChild(Sprite(temp));
                  }
                  this._debugFishBlocksLayer = new Sprite();
                  this._debugFishBlocksLayer.name = "debugFishBlocksLayer";
                  DEBUG_SPRITE.addChild(this._debugFishBlocksLayer);
               }
               removeAllChildren(this._debugFishBlocksLayer);
               for(lakeId in lakesCellData)
               {
                  lakeCellData = lakesCellData[lakeId];
                  Cc.log("lakeCellData = " + lakeCellData);
                  length = lakeCellData.length;
                  i = 0;
                  while(i < length)
                  {
                     cellFishCount = int(lakeCellData[i]);
                     Cc.log("cellFishCount = " + cellFishCount);
                     originalLakeCell = this._lakeCells.getChildByName("lake_" + lakeId + "_" + (i + 1));
                     debugLakeCell = new DebugLakeCell();
                     debugLakeCell.x = originalLakeCell.x;
                     debugLakeCell.y = originalLakeCell.y;
                     debugLakeCell.gotoAndStop(cellFishCount + 1);
                     this._debugFishBlocksLayer.addChild(debugLakeCell);
                     i++;
                  }
               }
            }
            else if(DEBUG_SPRITE.getChildByName("debugFishBlocksLayer") != null)
            {
               temp = DEBUG_SPRITE.getChildByName("debugFishBlocksLayer");
               DEBUG_SPRITE.removeChild(Sprite(temp));
            }
         }
         catch(e:Error)
         {
            Cc.error(e);
            Cc.error(e.getStackTrace());
            GameSwf.sendReportToServer("debug_lake_cells");
            throw e;
         }
         try
         {
            if(radarType != 0)
            {
               removeAllChildren(this._fishRadarLayer);
               for(lakeId in lakesCellData)
               {
                  lakeCellData = lakesCellData[lakeId];
                  length = lakeCellData.length;
                  bitmapData = new BitmapData(200,200);
                  i = 0;
                  while(i < length)
                  {
                     cellFishCount = int(lakeCellData[i]);
                     if(targetFishCountCell.indexOf(cellFishCount) != -1)
                     {
                        originalLakeCell = this._lakeCells.getChildByName("lake_" + lakeId + "_" + (i + 1));
                        if(originalLakeCell != null)
                        {
                           bitmapData.copyPixels(this._lakeObstacleMapBitmap.bitmapData,new Rectangle(originalLakeCell.x,originalLakeCell.y,200,200),new Point());
                           bitmapData = invert(bitmapData);
                           isBlockHitGround = bitmapData.hitTest(CharAnimationSource.ZERO_POINT,255,FISHRADAR_CIRCLE,CharAnimationSource.ZERO_POINT,255);
                           isBlockHitSpecial = false;
                           if(!isBlockHitGround && !isBlockHitSpecial)
                           {
                              fishingZone = new FishingZone();
                              fishingZone.x = originalLakeCell.x;
                              fishingZone.y = originalLakeCell.y;
                              fishingZone.alpha = 0.7;
                              fishingZone.gotoAndStop(radarType);
                              this._fishRadarLayer.addChild(fishingZone);
                           }
                        }
                        else
                        {
                           Cc.warn("Missed lake cells: " + "lake_" + lakeId + "_" + (i + 1));
                           GameSwf.sendReportToServer("warn");
                        }
                     }
                     i++;
                  }
               }
            }
         }
         catch(e:Error)
         {
            Cc.error(e);
            Cc.error(e.getStackTrace());
            GameSwf.sendReportToServer("show_radar");
            throw e;
         }
      }
      
      public function findBoatByUsername(param1:String) : Boat
      {
         var _loc2_:Boat = null;
         for each(_loc2_ in this.boats)
         {
            if(_loc2_.lastFieldCharUsername == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function removeAllShells() : void
      {
         var _loc1_:Vector.<GridManagerObject> = null;
         var _loc2_:GridManagerObject = null;
         if(this._shellGrid != null)
         {
            _loc1_ = this._shellGrid.getAll();
            for each(_loc2_ in _loc1_)
            {
               this.removeShell(_loc2_);
            }
         }
         if(this._shells != null)
         {
            this._shells = new Vector.<FieldShell>();
         }
      }
      
      public function removeAllFishbones() : void
      {
         var _loc1_:Vector.<GridManagerObject> = null;
         var _loc2_:GridManagerObject = null;
         if(this._dailyQuestFishbones != null)
         {
            this._dailyQuestFishbones = new Vector.<FieldFishbone>();
         }
         if(this._fishbonesDailyQuestMinigame != null)
         {
            _loc1_ = this._fishbonesDailyQuestMinigame.getAll();
            for each(_loc2_ in _loc1_)
            {
               this.removeDailyQuestMinigameFishbone(_loc2_);
            }
         }
      }
      
      public function removeAllFishboxes() : void
      {
         var _loc1_:Vector.<GridManagerObject> = null;
         var _loc2_:GridManagerObject = null;
         if(this._fishboxGridManager != null)
         {
            _loc1_ = this._fishboxGridManager.getAll();
            for each(_loc2_ in _loc1_)
            {
               this.removeFishbox(_loc2_);
            }
         }
      }
      
      public function setBestPlayer(param1:String, param2:String, param3:String) : void
      {
         if(this.bestPlayer != null)
         {
            TextField(this.bestPlayer.getChildByName("bestPlayerName")).text = param1;
            TextField(this.bestPlayer.getChildByName("bestFishName")).text = param2;
            TextField(this.bestPlayer.getChildByName("bestFishSize")).text = param3;
         }
      }
      
      public function setMarketDoorOpen(param1:Boolean) : void
      {
         this._isFishMarketOpen = param1;
         if(this._fishMarketDoors == null)
         {
            return;
         }
         if(this._isFishMarketOpen == true)
         {
            removeFromParent(this._fishMarketDoors);
         }
         else
         {
            moveLayer(this._fishMarketDoors,this.mainLayer);
            this._zSorter.handleRemoveChild(this._fishMarketDoors);
            this._zSorter.handleAddChild(this._fishMarketDoors);
            this._visibilityManager.addObject(this._fishMarketDoors);
         }
      }
      
      public function isFishMarketOpen() : Boolean
      {
         if(this._fishMarketDoors == null && this._isFishMarketOpen)
         {
            return true;
         }
         return this._isFishMarketOpen;
      }
      
      public function setBestPlayerVisibility(param1:Boolean) : void
      {
         if(this.bestPlayer != null)
         {
            if(param1 == true)
            {
               if(this.bestPlayer.visible == false)
               {
                  this.bestPlayer.alpha = 0;
                  this.bestPlayer.visible = true;
                  TweenCube.to(this.bestPlayer,2,{"alpha":1});
               }
            }
            else
            {
               this.bestPlayer.visible = false;
            }
         }
      }
      
      public function changeDecorationMarketDoorState(param1:Boolean) : void
      {
         if(this._closedDecMarketDoor == null || this._openedDecMarketDoor == null)
         {
            return;
         }
         this._isDecorationMarketOpen = param1;
         if(param1 == true)
         {
            if(this._closedDecMarketDoor.parent != null)
            {
               this._zSorter.handleRemoveChild(this._closedDecMarketDoor);
               removeFromParent(this._closedDecMarketDoor);
            }
            if(this._openedDecMarketDoor.parent == null)
            {
               moveLayer(this._openedDecMarketDoor,this.mainLayer);
               this._zSorter.handleAddChild(this._openedDecMarketDoor);
            }
         }
         else
         {
            if(this._openedDecMarketDoor.parent != null)
            {
               this._zSorter.handleRemoveChild(this._openedDecMarketDoor);
               removeFromParent(this._openedDecMarketDoor);
            }
            if(this._closedDecMarketDoor.parent == null)
            {
               moveLayer(this._closedDecMarketDoor,this.mainLayer);
               this._zSorter.handleAddChild(this._closedDecMarketDoor);
            }
         }
      }
      
      public function get isDecorationMarketOpen() : Boolean
      {
         return this._isDecorationMarketOpen;
      }
      
      private function parseFriendHouseIso(param1:DisplayObjectContainer) : void
      {
         if(this.friendHouseDoor == null)
         {
            this.friendHouseDoor = MovieClip(param1.getChildByName("friend_door"));
         }
      }
      
      public function addFriendHouseDoor() : void
      {
         this._dayCycle.addObject(this.friendHouseDoor);
         moveLayer(this.friendHouseDoor,this.mainLayer);
         this._zSorter.handleAddChild(this.friendHouseDoor);
         this._visibilityManager.addObject(this.friendHouseDoor);
      }
      
      protected function processChildAsISO(param1:DisplayObjectContainer, param2:Boolean = true, param3:Boolean = true) : void
      {
         if(param2)
         {
            moveLayer(param1,this.mainLayer);
         }
         this._zSorter.handleAddChild(param1);
         if(param3)
         {
            this._visibilityManager.addObject(param1);
         }
      }
      
      public function removeFriendHouseDoor() : void
      {
         removeFromParent(this.friendHouseDoor);
      }
      
      public function removeFishingZones() : void
      {
         removeAllChildren(this._fishRadarLayer);
         removeFromParent(this._fishRadarLayer);
         GameSwf.radarType = 0;
      }
   }
}

