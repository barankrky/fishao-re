package com.inkora.sound
{
   import flash.display.Shape;
   import flash.events.Event;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundLoaderContext;
   import flash.media.SoundTransform;
   import flash.net.URLRequest;
   import flash.utils.Dictionary;
   
   public class SoundEx extends Sound
   {
      
      protected var soundChn:SoundChannel;
      
      protected var playheadpos:Number;
      
      protected var isplaying:Boolean;
      
      protected var queuePoints:Array;
      
      protected var Queue:Dictionary;
      
      protected var qpCount:int;
      
      protected var shp:Shape;
      
      public function SoundEx(param1:URLRequest = null, param2:SoundLoaderContext = null)
      {
         super(param1,param2);
         this.queuePoints = [];
         this.Queue = new Dictionary(true);
         this.shp = new Shape();
      }
      
      private function playAgain() : void
      {
         this.soundChn = super.play(0,0,null);
         if(this.soundChn != null)
         {
            this.soundChn.removeEventListener(Event.SOUND_COMPLETE,this.soundComplete,false);
         }
         if(!this.soundChn.hasEventListener(Event.SOUND_COMPLETE))
         {
            this.soundChn.addEventListener(Event.SOUND_COMPLETE,this.soundComplete,false,0,true);
         }
      }
      
      override public function play(param1:Number = 0, param2:int = 0, param3:SoundTransform = null) : SoundChannel
      {
         this.soundChn = super.play(param1,param2,param3);
         if(!this.soundChn.hasEventListener(Event.SOUND_COMPLETE))
         {
            this.soundChn.addEventListener(Event.SOUND_COMPLETE,this.soundComplete,false,0,true);
         }
         this.isplaying = true;
         return this.soundChn;
      }
      
      public function pause() : void
      {
         if(Boolean(this.soundChn) && this.isplaying)
         {
            this.playheadpos = this.soundChn.position;
            this.soundChn.stop();
            this.isplaying = false;
         }
      }
      
      public function resume() : void
      {
         if(!this.isplaying)
         {
            this.play(this.playheadpos);
         }
      }
      
      public function get leftPeak() : Number
      {
         return this.soundChn ? this.soundChn.leftPeak : 0;
      }
      
      public function get rightPeak() : Number
      {
         return this.soundChn ? this.soundChn.rightPeak : 0;
      }
      
      public function stop() : void
      {
         if(this.soundChn)
         {
            this.soundChn.stop();
            this.isplaying = false;
            this.resetQueue();
            if(this.soundChn.hasEventListener(Event.SOUND_COMPLETE))
            {
               this.soundChn.removeEventListener(Event.SOUND_COMPLETE,this.soundComplete);
            }
         }
      }
      
      public function restart() : void
      {
         this.resetQueue();
      }
      
      public function get position() : Number
      {
         return this.soundChn ? this.soundChn.position : 0;
      }
      
      public function get soundChannel() : SoundChannel
      {
         return this.soundChn;
      }
      
      public function get soundTransform() : SoundTransform
      {
         return this.soundChn ? this.soundChn.soundTransform : null;
      }
      
      public function set volume(param1:Number) : void
      {
         var _loc2_:SoundTransform = null;
         if(this.soundChn)
         {
            _loc2_ = this.soundChn.soundTransform;
            _loc2_.volume = param1;
            this.soundChn.soundTransform = _loc2_;
         }
      }
      
      public function get volume() : Number
      {
         if(this.soundChn)
         {
            return this.soundChn.soundTransform.volume;
         }
         return 0;
      }
      
      public function set pan(param1:Number) : void
      {
         var _loc2_:SoundTransform = null;
         if(this.soundChn)
         {
            _loc2_ = this.soundChn.soundTransform;
            _loc2_.pan = param1;
            this.soundChn.soundTransform = _loc2_;
         }
      }
      
      public function get pan() : Number
      {
         if(this.soundChn)
         {
            return this.soundChn.soundTransform.pan;
         }
         return 0;
      }
      
      protected function soundComplete(param1:Event) : void
      {
         this.soundChn.removeEventListener(Event.SOUND_COMPLETE,this.soundComplete);
         this.isplaying = false;
         this.dispatchEvent(new SoundExEvent(SoundExEvent.SOUND_COMPLETE,null));
      }
      
      public function addQueuePoint(param1:String, param2:String, param3:Array = null, param4:Number = 1, param5:Number = 0) : void
      {
         var _loc6_:Number = NaN;
         var _loc7_:Array = [];
         _loc7_ = param2.split(":");
         _loc6_ = Number(_loc7_[0]) * 60000 + Number(_loc7_[1]) * 1000;
         var _loc8_:Object = {};
         _loc8_.label = param1;
         _loc8_.time = _loc6_;
         _loc8_.params = param3;
         _loc8_.volume = param4;
         _loc8_.pan = param5;
         _loc8_.called = false;
         this.queuePoints.push(_loc8_);
         this.queuePoints.sortOn("time",Array.NUMERIC);
         var _loc9_:int = int(this.queuePoints.length);
         var _loc10_:int = 0;
         this.qpCount = _loc9_;
         while(_loc10_ < _loc9_)
         {
            this.Queue[String(this.queuePoints[_loc10_].time)] = this.queuePoints[_loc10_];
            _loc10_++;
         }
      }
      
      protected function resetQueue() : void
      {
         var _loc1_:String = null;
         for(_loc1_ in this.Queue)
         {
            this.Queue[_loc1_].called = false;
         }
         this.qpCount = this.queuePoints.length;
      }
      
      protected function ProcessQueue(param1:Event) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:String = null;
         if(!this.isplaying)
         {
            return;
         }
         _loc2_ = this.position >> 0;
         for(_loc3_ in this.Queue)
         {
            if(this.Queue[_loc3_].time <= _loc2_ && !this.Queue[_loc3_].called)
            {
               this.Queue[_loc3_].called = true;
               this.dispatchEvent(new SoundExEvent(SoundExEvent.QUEUE_POINT,this.Queue[_loc3_]));
               if(this.volume != this.Queue[_loc3_].volume)
               {
                  this.volume = this.Queue[_loc3_].volume;
               }
               if(this.pan != this.Queue[_loc3_].pan)
               {
                  this.pan = this.Queue[_loc3_].pan;
               }
               --this.qpCount;
            }
         }
         if(this.qpCount <= 0)
         {
            this.resetQueue();
            this.dispatchEvent(new SoundExEvent(SoundExEvent.QUEUE_COMPLETE,null));
            this.shp.removeEventListener(Event.ENTER_FRAME,this.ProcessQueue);
         }
      }
      
      public function get isPlaying() : Boolean
      {
         return this.isplaying;
      }
   }
}

