package com.ax3.utils.sound
{
   import com.ax3.utils.math.randomRange;
   import com.ax3.utils.timer.IUpdate;
   import com.ax3.utils.timer.UpdateGroup;
   import com.ax3.utils.timer.UpdateManager;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   import flash.utils.getTimer;
   
   public class RandomSoundDecorator extends Sound implements IUpdate
   {
      
      private var _isplaying:Boolean = false;
      
      private var _sounds:Vector.<Sound>;
      
      private var _soundsLength:uint = 0;
      
      private var _manager:SoundManager;
      
      private var _lastPlaySoundIndex:int = -1;
      
      private var _soundChn:SoundChannel;
      
      private var _sndTransform:SoundTransform;
      
      private var _trackPlayDelayMS:int = 240;
      
      private var _lastPlayTimestampMS:int;
      
      private var _appearMinMS:int;
      
      private var _appearMaxMS:int;
      
      private var _volumeMim:Number;
      
      private var _volumeMax:Number;
      
      public function RandomSoundDecorator(param1:Sound, param2:SoundManager, param3:Object = null)
      {
         var _loc4_:SoundFile = null;
         super();
         this._manager = param2;
         this._sounds = new Vector.<Sound>();
         for each(_loc4_ in param3.sounds)
         {
            param1 = this._manager.getSoundBySoundFile(_loc4_);
            this._sounds.push(param1);
         }
         this._soundsLength = this._sounds.length;
         this._appearMinMS = param3.appearMinMS;
         this._appearMaxMS = param3.appearMaxMS;
         this._volumeMim = param3.volumeMim;
         this._volumeMax = param3.volumeMax;
      }
      
      override public function play(param1:Number = 0, param2:int = 0, param3:SoundTransform = null) : SoundChannel
      {
         if(param3 == null)
         {
            param3 = new SoundTransform();
            param3.volume = 1;
         }
         this._sndTransform = param3;
         this._trackPlayDelayMS = randomRange(this._appearMinMS,this._appearMaxMS);
         this._lastPlayTimestampMS = getTimer();
         this._isplaying = true;
         UpdateManager.getInstance().getGroup(UpdateGroup.ENTER_FRAME).add(this);
         return null;
      }
      
      private function playNext() : void
      {
         var _loc1_:int = 0;
         if(this._soundsLength > 1)
         {
            do
            {
               _loc1_ = randomRange(0,this._sounds.length - 1);
            }
            while(_loc1_ == this._lastPlaySoundIndex);
         }
         this._lastPlaySoundIndex = _loc1_;
         this._lastPlayTimestampMS = getTimer();
         this._sndTransform.volume *= randomRange(this._volumeMim * 100,this._volumeMax * 100) / 100;
         this._sndTransform.pan = randomRange(-100,100) / 100;
         this._soundChn = this._sounds[this._lastPlaySoundIndex].play(0,0,this._sndTransform);
      }
      
      public function stop() : void
      {
         this._isplaying = false;
         UpdateManager.getInstance().getGroup(UpdateGroup.ENTER_FRAME).remove(this);
         this.stopChn();
      }
      
      private function stopChn() : void
      {
         if(this._soundChn)
         {
            this._soundChn.stop();
            this._isplaying = false;
         }
      }
      
      public function set volume(param1:Number) : void
      {
         if(this._soundChn)
         {
            this._sndTransform = this._soundChn.soundTransform;
            this._sndTransform.volume = param1;
            this._soundChn.soundTransform = this._sndTransform;
         }
      }
      
      public function get volume() : Number
      {
         if(this._sndTransform)
         {
            return this._sndTransform.volume;
         }
         return 0;
      }
      
      public function update(param1:uint, param2:uint) : void
      {
         if(param1 - this._lastPlayTimestampMS >= this._trackPlayDelayMS)
         {
            this.playNext();
         }
      }
      
      public function playFor(param1:Object, param2:Number) : void
      {
      }
   }
}

