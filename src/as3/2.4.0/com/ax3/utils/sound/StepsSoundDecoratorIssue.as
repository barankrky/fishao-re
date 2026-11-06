package com.ax3.utils.sound
{
   import com.ax3.utils.math.randomRange;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   import flash.utils.getTimer;
   
   public class StepsSoundDecoratorIssue
   {
      
      private static var _globalId:int = 0;
      
      private var _volumeCoef:Number;
      
      private var _sndTransform:SoundTransform;
      
      private var _sounds:Vector.<Sound>;
      
      private var _soundsLength:uint = 0;
      
      private var _lastPlaySoundIndex:int = -1;
      
      private var _lastPlayTimestampMS:int;
      
      private var _trackPlayDelayMS:int = 240;
      
      private var _soundChn:SoundChannel;
      
      private var _instanceId:int;
      
      private var _target:Object;
      
      public function StepsSoundDecoratorIssue(param1:Object, param2:Number, param3:Vector.<Sound>, param4:int)
      {
         super();
         this._target = param1;
         this._instanceId = _globalId++;
         this._volumeCoef = param2;
         this._sounds = param3;
         this._trackPlayDelayMS = param4;
         this._soundsLength = this._sounds.length;
      }
      
      public function play(param1:SoundTransform) : void
      {
         if(this._sndTransform == null)
         {
            this._sndTransform = new SoundTransform();
            this._sndTransform.volume = 1;
         }
         if(param1 == null)
         {
            this._sndTransform.volume = 1;
         }
         else
         {
            this._sndTransform.volume = param1.volume;
         }
         this._sndTransform.volume *= this._volumeCoef;
         this.playNext(getTimer());
      }
      
      private function playNext(param1:uint) : void
      {
         var _loc2_:int = 0;
         if(this._soundsLength > 1)
         {
            do
            {
               _loc2_ = randomRange(0,this._sounds.length - 1);
            }
            while(_loc2_ == this._lastPlaySoundIndex);
         }
         this._lastPlaySoundIndex = _loc2_;
         this._lastPlayTimestampMS = param1;
         this._soundChn = this._sounds[this._lastPlaySoundIndex].play(0,0,this._sndTransform);
      }
      
      public function stop() : void
      {
         this.stopChn();
         this._target = null;
         this._soundChn = null;
      }
      
      private function stopChn() : void
      {
         if(this._soundChn)
         {
            this._soundChn.stop();
         }
      }
      
      public function update(param1:uint, param2:uint) : void
      {
         if(param1 - this._lastPlayTimestampMS >= this._trackPlayDelayMS)
         {
            this.playNext(param1);
         }
      }
      
      public function set volume(param1:Number) : void
      {
         if(this._soundChn != null)
         {
            this._sndTransform = this._soundChn.soundTransform;
            this._sndTransform.volume = param1 * this._volumeCoef;
            this._soundChn.soundTransform = this._sndTransform;
         }
      }
      
      public function get volume() : Number
      {
         return this._sndTransform != null ? this._sndTransform.volume : 0;
      }
      
      public function changeVolume(param1:Number, param2:Number) : void
      {
         this._volumeCoef = param1;
         this.volume = param2;
      }
   }
}

