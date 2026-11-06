package com.inkora.core
{
   import flash.display.Shape;
   import flash.events.Event;
   import flash.utils.Dictionary;
   import flash.utils.getTimer;
   
   public class TweenEngine
   {
      
      protected static var shape:Shape;
      
      public static const version:Number = 1.25;
      
      protected static var TickerTweenList:Dictionary = new Dictionary(false);
      
      protected static var tweenList:Dictionary = new Dictionary(false);
      
      protected static var GCframeCount:Number = 0;
      
      protected static var pauseAllTweens:Boolean = false;
      
      StartEngine();
      
      protected var garbageCollect:Boolean;
      
      protected var time:Number;
      
      protected var _paused:Boolean;
      
      protected var _delay:Number;
      
      protected var _currentPosition:Number;
      
      protected var frameratio:Number;
      
      protected var _loop:int;
      
      protected var _framerate:Number;
      
      protected var tweenProps:Object;
      
      protected var playedTime:Number;
      
      protected var tweenTime:Number;
      
      protected var ended:Boolean;
      
      public var duration:Number;
      
      public var ease:Function;
      
      public var useFrames:Boolean;
      
      public var timeScale:Number;
      
      public var ratio:Number;
      
      public var yoyo:Boolean;
      
      public var data:*;
      
      public var active:Boolean;
      
      public function TweenEngine(param1:Number = 1, param2:Object = null)
      {
         super();
         this.duration = param1;
         this.tweenProps = param2 != null ? param2 : {};
         this._delay = Number(this.tweenProps.delay) || 0;
         this.useFrames = Boolean(this.tweenProps.useFrames);
         this.timeScale = Number(this.tweenProps.timeScale) || 1;
         this.ease = this.tweenProps.ease ? this.tweenProps.ease : linear;
         this._loop = this.tweenProps.loop != null ? int(Number(this.tweenProps.loop)) : 1;
         this.yoyo = Boolean(this.tweenProps.yoyo);
         this.playedTime = this._delay == 0 ? 0 : -this._delay;
         this.active = false;
      }
      
      public static function linear(param1:Number, param2:Number, param3:Number, param4:Number) : Number
      {
         return param1 / param4;
      }
      
      protected static function StartEngine() : void
      {
         shape = new Shape();
         shape.addEventListener(Event.ENTER_FRAME,TickerTick);
      }
      
      protected static function TickerTick(param1:Event) : void
      {
         var _loc2_:TweenEngine = null;
         var _loc3_:Number = NaN;
         var _loc4_:Object = null;
         var _loc5_:Object = null;
         var _loc6_:Array = null;
         var _loc7_:int = 0;
         ++GCframeCount;
         var _loc8_:Number = getTimer() * 0.001;
         for(_loc4_ in TickerTweenList)
         {
            _loc2_ = TweenEngine(_loc4_);
            _loc3_ = _loc8_ - _loc2_.time;
            _loc2_.time = _loc8_;
            _loc2_.updateTime = (_loc2_.useFrames ? _loc2_.frameratio : _loc3_) * _loc2_.timeScale;
         }
         if(!(GCframeCount % 60))
         {
            for(_loc5_ in tweenList)
            {
               _loc6_ = tweenList[_loc5_];
               _loc7_ = int(_loc6_.length);
               _loc7_ = int(_loc6_.length);
               while(--_loc7_ > -1)
               {
                  if(TweenEngine(_loc6_[_loc7_]).garbageCollect)
                  {
                     TickerTweenList[_loc6_[_loc7_]] = null;
                     delete TickerTweenList[_loc6_[_loc7_]];
                     _loc6_.splice(_loc7_,1);
                  }
                  if(_loc6_.length == 0)
                  {
                     tweenList[_loc5_] = null;
                     delete tweenList[_loc5_];
                  }
               }
            }
         }
      }
      
      public function play() : void
      {
         TickerTweenList[this] = true;
         this.time = getTimer() * 0.001;
         this._paused = false;
         this.active = true;
      }
      
      public function pause() : void
      {
         TickerTweenList[this] = null;
         delete TickerTweenList[this];
         this._paused = true;
      }
      
      public function resume() : void
      {
         if(this._loop != 0 && this.playedTime >= this._loop * this.duration)
         {
            this.reset();
         }
         TickerTweenList[this] = true;
         this.time = getTimer() * 0.001;
         this._paused = false;
      }
      
      public function restart(param1:Boolean = false) : void
      {
         this.garbageCollect = false;
         this.playedTime = param1 ? -this._delay : 0;
         this.play();
      }
      
      public function stop() : void
      {
         TickerTweenList[this] = null;
         delete TickerTweenList[this];
         this.active = false;
      }
      
      protected function reset() : void
      {
         this.tweenTime = this.ratio = 0;
         this.playedTime = -this._delay;
      }
      
      protected function set updateTime(param1:Number) : void
      {
         var _loc2_:Boolean = false;
         if(this.garbageCollect || pauseAllTweens)
         {
            return;
         }
         this.playedTime += param1;
         var _loc3_:Number = (this._loop << int(this.yoyo)) * this.duration;
         _loc2_ = this.playedTime >= _loc3_ && this._loop > 0;
         if(_loc2_)
         {
            this.playedTime = _loc3_;
            this.tweenTime = this.yoyo && !(this._loop & 1) ? 0 : this.duration;
         }
         else
         {
            this.tweenTime = this.playedTime < 0 ? 0 : this.playedTime % this.duration;
            if(this.yoyo && Boolean(this.playedTime / this.duration & 1))
            {
               this.tweenTime = this.duration - this.tweenTime;
            }
         }
         this.ratio = this.duration == 0 && this.playedTime >= 0 ? 1 : Number(this.ease(this.tweenTime,0,1,this.duration));
         this.renderTween(this.ratio,_loc2_);
         if(_loc2_)
         {
            this.active = false;
            this.ended = true;
            this.tweenEnd();
         }
      }
      
      public function renderTween(param1:Number, param2:Boolean) : void
      {
      }
      
      public function tweenEnd() : void
      {
      }
      
      protected function invalidate() : void
      {
         if(this.playedTime > 0)
         {
            this.playedTime = 0;
         }
         this.garbageCollect = false;
      }
      
      protected function get framerate() : Number
      {
         return this._framerate;
      }
      
      protected function set framerate(param1:Number) : void
      {
         this.frameratio = 0.03 / (30 / param1);
         this._framerate = param1;
      }
      
      public function get delay() : Number
      {
         return this._delay;
      }
      
      public function set delay(param1:Number) : void
      {
         if(this.playedTime <= 0)
         {
            this.playedTime = -param1;
         }
         this._delay = param1;
      }
      
      public function get loop() : Number
      {
         return this._loop;
      }
      
      public function set loop(param1:Number) : void
      {
         this._loop = param1;
      }
      
      public function gotoBeginning() : void
      {
         this.playedTime = 0;
         this.pause();
      }
      
      public function gotoEnd() : void
      {
         this.playedTime = this._loop > 0 ? this._loop * this.duration : this.duration;
      }
   }
}

