package com.ax3.fishao.locations.base.daycycle
{
   import com.ax3.events.Listeners;
   import com.ax3.fishao.FishaoFscModelManager;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.locations.BitmapCroppedMovieClipWrapper;
   import com.ax3.fishao.locations.EDisplayObjectType;
   import com.ax3.fishao.locations.objects.Lamp;
   import com.ax3.fishao.managers.PerformanceManager;
   import com.ax3.fishao.utils.Utils;
   import com.ax3.fishao.vars.app;
   import com.ax3.jss.requests.server.ServerResp;
   import com.ax3.utils.Callback;
   import com.ax3.utils.math.limit;
   import com.ax3.utils.timer.SingleAlarm;
   import com.junkbyte.console.Cc;
   import flash.display.DisplayObject;
   import flash.events.Event;
   import flash.utils.Dictionary;
   import protocol.sr.dayState.TimeOfDayResp;
   
   public class LocationDayCycleLayers
   {
      
      public static var isDayState:int;
      
      public static var toSunSet:int;
      
      public static var toSunRise:int = 0;
      
      private var _timeOfDayChangeAlarm:SingleAlarm;
      
      protected var _isEnabled:Boolean;
      
      private var _harborLamps:Vector.<Lamp>;
      
      private var _nightFilterByObject:Dictionary;
      
      private var _nightFilterByObjectOrig:Dictionary;
      
      private var _changeDirection:int;
      
      private var _timeOfDayProgress:Number;
      
      private var _helperLake:DayCycleHelper;
      
      private var _helperTree:DayCycleHelper;
      
      private var _helperGround:DayCycleHelper;
      
      private var _timeOfDayObjects:Vector.<DisplayObject>;
      
      private var _waterAnimations:Vector.<DisplayObject>;
      
      private var _state:String;
      
      private var _lastUpdateTime:uint;
      
      public function LocationDayCycleLayers()
      {
         super();
         this.init();
      }
      
      public function set lakesLayer(param1:DisplayObject) : void
      {
         this._helperLake.addObject(param1);
      }
      
      public function set isEnabled(param1:Boolean) : void
      {
         this._isEnabled = param1;
      }
      
      public function set state(param1:String) : void
      {
         if(this._state == param1 || !this._isEnabled)
         {
            return;
         }
         this._state = param1;
         this.updateDayCycle();
      }
      
      private function onDayNightOff(param1:Event) : void
      {
         this.state = EDayCycleState.EDCS_DAY;
      }
      
      private function changeDirectionToNight() : void
      {
         this.changeDirection = EDayCycleDirection.DAY_TO_NIGHT;
      }
      
      private function changeDirectionToDay() : void
      {
         this.changeDirection = EDayCycleDirection.NIGHT_TO_DAY;
      }
      
      private function init() : void
      {
         Cc.addSlashCommand("night",this.changeDirectionToNight);
         Cc.addSlashCommand("day",this.changeDirectionToDay);
         this._changeDirection = -1;
         this._timeOfDayProgress = 0;
         this._helperGround = new DayCycleHelper();
         this._helperTree = new DayCycleHelper();
         this._helperLake = new DayCycleHelper();
         this._waterAnimations = new Vector.<DisplayObject>(0);
         this._timeOfDayObjects = new Vector.<DisplayObject>();
         this._harborLamps = new Vector.<Lamp>();
         this._nightFilterByObject = new Dictionary();
         this._nightFilterByObjectOrig = new Dictionary();
         this._isEnabled = true;
         this._timeOfDayChangeAlarm = new SingleAlarm();
         this.updateTimeOfDayChangeAlarm();
         Listeners.addEventListener(this,app.performanceManager,PerformanceManager.DAY_NIGHT_OFF,this.onDayNightOff);
      }
      
      private function changeTimeOfDayHandler(param1:ServerResp) : void
      {
         if(this._timeOfDayChangeAlarm == null)
         {
            return;
         }
         var _loc2_:TimeOfDayResp = param1 as TimeOfDayResp;
         if(_loc2_ == null)
         {
            return;
         }
         isDayState = _loc2_.getIntData("dayState");
         this.updateTimeOfDayChangeAlarm();
         this.state = isDayState ? EDayCycleState.EDCS_DAY : EDayCycleState.EDCS_NIGHT;
      }
      
      private function updateTimeOfDayChangeAlarm() : void
      {
         if(this._timeOfDayChangeAlarm == null)
         {
            return;
         }
         var _loc1_:Number = isDayState ? toSunSet : toSunRise;
         var _loc2_:Callback = new Callback(FishaoFscModelManager.locationExtension.getTimeOfDay,this.changeTimeOfDayHandler);
         this._timeOfDayChangeAlarm.activateInSec(_loc1_,_loc2_);
      }
      
      private function set changeDirection(param1:int) : void
      {
         if(this._changeDirection == param1)
         {
            return;
         }
         if(this._changeDirection == -1)
         {
            if(param1 == EDayCycleDirection.NIGHT_TO_DAY)
            {
               this.setDay();
            }
            else
            {
               this.setNight();
            }
         }
         else
         {
            this._state = null;
         }
         this._changeDirection = param1;
      }
      
      public function setDay() : void
      {
         this._state = EDayCycleState.EDCS_DAY;
         this._helperGround.clearFilters();
         this._helperTree.clearFilters();
         this._helperLake.clearFilters();
         Utils.applyFiltersTo(this._waterAnimations,[]);
         Utils.applyFiltersTo(this._timeOfDayObjects,[]);
         this.updateHarborLamps();
      }
      
      public function setNight() : void
      {
         var _loc1_:DisplayObject = null;
         this._state = EDayCycleState.EDCS_NIGHT;
         for each(_loc1_ in this._timeOfDayObjects)
         {
            if(_loc1_.name != "$waterAnimated")
            {
               if(_loc1_ in this._nightFilterByObject)
               {
                  _loc1_.filters = this._nightFilterByObject[_loc1_];
               }
               else
               {
                  _loc1_.filters = this._helperTree.nightFilter;
               }
            }
         }
         Utils.applyFiltersTo(this._waterAnimations,this._helperLake.nightFilter);
         this._helperGround.applyFilters();
         this._helperLake.applyFilters();
         this.updateHarborLamps();
      }
      
      private function updateHarborLamps() : void
      {
         var _loc1_:Lamp = null;
         for each(_loc1_ in this._harborLamps)
         {
            _loc1_.state = this._state;
         }
      }
      
      public function update(param1:uint, param2:uint) : void
      {
         if(this._changeDirection == EDayCycleDirection.NONE || this._changeDirection == -1)
         {
            return;
         }
         var _loc3_:Number = param1 - this._lastUpdateTime;
         if(_loc3_ < 100)
         {
            return;
         }
         this._lastUpdateTime = param1;
         var _loc4_:Number = 0.1;
         if(this._changeDirection == EDayCycleDirection.DAY_TO_NIGHT)
         {
            this._timeOfDayProgress += _loc4_;
         }
         else
         {
            this._timeOfDayProgress -= _loc4_;
         }
         this.updateFiltersGivenTimeOfDayProgress();
         this._timeOfDayProgress = limit(this._timeOfDayProgress,0,1);
         if(this._changeDirection == EDayCycleDirection.DAY_TO_NIGHT && this._timeOfDayProgress >= 1)
         {
            this._changeDirection = EDayCycleDirection.NONE;
            this.setNight();
         }
         else if(this._changeDirection == EDayCycleDirection.NIGHT_TO_DAY && this._timeOfDayProgress <= 0 && PerformanceManager.CAN_CHANGE_DAY_NIGHT)
         {
            this._changeDirection = EDayCycleDirection.NONE;
            this.setDay();
         }
      }
      
      private function updateFiltersGivenTimeOfDayProgress() : void
      {
         var _loc1_:DisplayObject = null;
         var _loc2_:Lamp = null;
         var _loc3_:Array = null;
         this._helperGround.processTransparent(this._timeOfDayProgress);
         this._helperTree.processTransparent(this._timeOfDayProgress);
         this._helperLake.processTransparent(this._timeOfDayProgress);
         this._helperGround.applyFilters();
         this._helperLake.applyFilters();
         for each(_loc1_ in this._timeOfDayObjects)
         {
            if(_loc1_.visible)
            {
               if(_loc1_ in this._nightFilterByObjectOrig)
               {
                  _loc3_ = this._nightFilterByObject[_loc1_];
                  Utils.processFiltersTransparent(_loc3_,this._nightFilterByObjectOrig[_loc1_],this._timeOfDayProgress);
                  _loc1_.filters = _loc3_;
               }
               else
               {
                  _loc1_.filters = this._helperTree.nightFilter;
               }
            }
         }
         for each(_loc2_ in this._harborLamps)
         {
            _loc2_.tweenlight(this._timeOfDayProgress);
         }
      }
      
      public function addFilters(param1:String, param2:DisplayObject) : void
      {
         switch(param1)
         {
            case EDisplayObjectType.EDOT_FILTER_NIGHT_TREE:
               param2.parent.removeChild(param2);
               this._helperTree.nightFilter = Utils.findFilters(param2);
               break;
            case EDisplayObjectType.EDOT_FILTER_NIGHT_GROUND:
               this._helperGround.nightFilter = Utils.findFilters(param2);
               break;
            case EDisplayObjectType.EDOT_FILTER_NIGHT_LAKE:
               param2.parent.removeChild(param2);
               this._helperLake.nightFilter = Utils.findFilters(param2);
               break;
            default:
               Debug.assert(false);
         }
      }
      
      public function replaceBitmapCroppedMovieClipNightFilter(param1:BitmapCroppedMovieClipWrapper) : void
      {
         var _loc2_:DisplayObject = null;
         var _loc3_:Array = null;
         var _loc4_:Array = null;
         if(param1 in this._nightFilterByObject)
         {
            _loc3_ = this._nightFilterByObject[param1];
            this._nightFilterByObject[param1] = null;
            delete this._nightFilterByObject[param1];
            _loc4_ = this._nightFilterByObjectOrig[param1];
            this._nightFilterByObjectOrig[param1] = null;
            delete this._nightFilterByObjectOrig[param1];
         }
         var _loc5_:Vector.<DisplayObject> = param1.getChildren();
         for each(_loc2_ in _loc5_)
         {
            if(_loc3_ != null)
            {
               this._nightFilterByObject[_loc2_] = _loc3_;
               this._nightFilterByObjectOrig[_loc2_] = _loc4_;
            }
            this.addObject(_loc2_);
         }
      }
      
      public function processNightFilter(param1:Array, param2:DisplayObject, param3:Object = null) : void
      {
         if(param1 == null || param1.length == 0)
         {
            return;
         }
         if(param3 == null)
         {
            param3 = param2;
         }
         this._nightFilterByObject[param3] = param1;
         this._nightFilterByObjectOrig[param3] = Utils.cloneFilters(param1);
      }
      
      public function addLamp(param1:Lamp) : void
      {
         this._harborLamps.push(param1);
         this.addObject(param1);
      }
      
      public function addObject(param1:DisplayObject) : void
      {
         this._timeOfDayObjects.push(param1);
      }
      
      public function addWater(param1:DisplayObject) : void
      {
         this._waterAnimations.push(param1);
      }
      
      public function addGround(param1:DisplayObject) : void
      {
         this._helperGround.addObject(param1);
      }
      
      public function updateDayCycle() : void
      {
         if(this._state == EDayCycleState.EDCS_DAY)
         {
            this.changeDirection = EDayCycleDirection.NIGHT_TO_DAY;
         }
         else if(PerformanceManager.CAN_CHANGE_DAY_NIGHT)
         {
            this.changeDirection = EDayCycleDirection.DAY_TO_NIGHT;
         }
      }
      
      public function cleanup() : void
      {
         var _loc1_:Lamp = null;
         for each(_loc1_ in this._harborLamps)
         {
            _loc1_.destroy();
         }
         Listeners.removeEventListener(this,app.performanceManager,PerformanceManager.DAY_NIGHT_OFF,this.onDayNightOff);
         if(this._timeOfDayChangeAlarm != null)
         {
            this._timeOfDayChangeAlarm.destroy();
            this._timeOfDayChangeAlarm = null;
         }
         this._nightFilterByObject = null;
         this._nightFilterByObjectOrig = null;
         this._state = null;
         this._helperGround.cleanup();
         this._helperGround = null;
         this._helperTree.cleanup();
         this._helperTree = null;
         this._helperLake.cleanup();
         this._helperLake = null;
      }
   }
}

