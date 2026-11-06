package com.ax3.utils.timer
{
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   import flash.utils.getTimer;
   
   public class UpdateGroup
   {
      
      public static const TIMER_10M:String = "600000";
      
      public static const TIMER_30S:String = "30000";
      
      public static const TIMER_10S:String = "10000";
      
      public static const TIMER_2S:String = "2000";
      
      public static const TIMER_1S:String = "1000";
      
      public static const TIMER_500:String = "500";
      
      public static const TIMER_200:String = "200";
      
      public static const ENTER_FRAME:String = "enterFrame";
      
      private var _timer:Timer;
      
      private var _durationMS:Number = NaN;
      
      private var _stage:Stage;
      
      private var _updateObjectList:Vector.<IUpdate> = new Vector.<IUpdate>();
      
      private var _updateFunctionList:Vector.<Function> = new Vector.<Function>();
      
      public var currentCount:int = 0;
      
      private var _lastTimestamp:int;
      
      public function UpdateGroup(param1:Stage, param2:Number)
      {
         super();
         this._stage = param1;
         this._durationMS = param2;
         if(this._durationMS > 0)
         {
            this._timer = new Timer(this._durationMS);
            this._timer.addEventListener(TimerEvent.TIMER,this.onUpdate);
            this._timer.start();
         }
         else if(this._durationMS == -1)
         {
            UpdateManager.frameRate = this._stage.frameRate;
            UpdateManager.frameTimeMs = 1000 / UpdateManager.frameRate;
            this._stage.addEventListener(Event.ENTER_FRAME,this.onEnterFrame);
         }
         this._lastTimestamp = getTimer();
      }
      
      private function onUpdate(param1:TimerEvent) : void
      {
         this.update();
      }
      
      private function onEnterFrame(param1:Event) : void
      {
         this.update();
      }
      
      private function update() : void
      {
         var _loc1_:IUpdate = null;
         var _loc2_:Function = null;
         var _loc3_:int = getTimer();
         var _loc4_:int = _loc3_ - this._lastTimestamp;
         ++this.currentCount;
         for each(_loc1_ in this._updateObjectList)
         {
            _loc1_.update(_loc3_,_loc4_);
         }
         for each(_loc2_ in this._updateFunctionList)
         {
            _loc2_(_loc3_,_loc4_);
         }
         this._lastTimestamp = _loc3_;
      }
      
      public function add(param1:IUpdate) : void
      {
         if(this._updateObjectList.indexOf(param1) == -1)
         {
            this._updateObjectList.push(param1);
         }
      }
      
      public function remove(param1:IUpdate) : void
      {
         if(this._updateObjectList.indexOf(param1) > -1)
         {
            this._updateObjectList.splice(this._updateObjectList.indexOf(param1),1);
         }
      }
      
      public function addFunction(param1:Function) : void
      {
         if(this._updateFunctionList.indexOf(param1) == -1)
         {
            this._updateFunctionList.push(param1);
         }
      }
      
      public function removeFunction(param1:Function) : void
      {
         var _loc2_:int = this._updateFunctionList.indexOf(param1);
         if(_loc2_ > -1)
         {
            this._updateFunctionList.splice(_loc2_,1);
         }
      }
      
      public function toString() : String
      {
         return "[object UpdateGroup(duration=" + this._durationMS + ",_updateObjectList=" + this._updateObjectList.length + ",_updateFunctionList=" + this._updateFunctionList.length + ")]";
      }
   }
}

