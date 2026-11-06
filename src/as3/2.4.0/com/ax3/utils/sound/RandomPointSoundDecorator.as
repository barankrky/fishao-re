package com.ax3.utils.sound
{
   import com.ax3.utils.math.randomRange;
   import flash.events.Event;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class RandomPointSoundDecorator extends PointSoundDecorator
   {
      
      private var _isplaying:Boolean = false;
      
      private var _manager:SoundManager;
      
      private var _soundChn:SoundChannel;
      
      private var _sndTransform:SoundTransform;
      
      private var _trackPlayDelayMS:int = 240;
      
      private var _appearMinMS:int;
      
      private var _appearMaxMS:int;
      
      private var _globalVolume:Number;
      
      private var _distanceVolume:Number;
      
      private const MIN_VOLUME:Number = 0.1;
      
      private var _loops:int = 2147483647;
      
      private var _sounds:Vector.<Sound> = new Vector.<Sound>();
      
      public function RandomPointSoundDecorator(param1:Sound, param2:SoundManager, param3:Object = null)
      {
         var _loc4_:SoundFile = null;
         super(null,null);
         this._manager = param2;
         if(param3.hasOwnProperty("sounds"))
         {
            for each(_loc4_ in param3.sounds)
            {
               param1 = this._manager.getSoundBySoundFile(_loc4_);
               this._sounds.push(param1);
            }
         }
         if(param3 != null && param3.hasOwnProperty("loops"))
         {
            this._loops = param3.loops;
         }
      }
      
      override public function play(param1:Number = 0, param2:int = 0, param3:SoundTransform = null) : SoundChannel
      {
         if(param3 == null)
         {
            param3 = new SoundTransform();
            param3.volume = 1;
         }
         this._sndTransform = param3;
         this._globalVolume = this._sndTransform.volume;
         this._distanceVolume = 0;
         this._isplaying = true;
         this.volume = this._globalVolume;
         return null;
      }
      
      override public function stop() : void
      {
         this.stopChn();
      }
      
      private function stopChn() : void
      {
         if(this._soundChn)
         {
            this._soundChn.stop();
            this._soundChn.removeEventListener(Event.SOUND_COMPLETE,this.onSoundComplete);
            this._isplaying = false;
            this._soundChn = null;
         }
      }
      
      override public function set volume(param1:Number) : void
      {
         var _loc2_:Sound = null;
         this._globalVolume = param1;
         if(this._globalVolume * this._distanceVolume > this.MIN_VOLUME)
         {
            if(this._soundChn == null)
            {
               this._sndTransform.volume = this._distanceVolume * this._globalVolume;
               _loc2_ = this.getRandomSound();
               this._soundChn = _loc2_.play(0,this._loops,this._sndTransform);
               this._soundChn.addEventListener(Event.SOUND_COMPLETE,this.onSoundComplete,false,0,true);
            }
            else
            {
               this._sndTransform = this._soundChn.soundTransform;
               this._sndTransform.volume = this._distanceVolume * this._globalVolume;
               this._soundChn.soundTransform = this._sndTransform;
            }
         }
         else if(this._soundChn != null)
         {
            this._soundChn.stop();
            this._soundChn.removeEventListener(Event.SOUND_COMPLETE,this.onSoundComplete);
            this._soundChn = null;
         }
      }
      
      private function getRandomSound() : Sound
      {
         return this._sounds[randomRange(0,this._sounds.length - 1)];
      }
      
      override public function get volume() : Number
      {
         if(this._sndTransform)
         {
            return this._sndTransform.volume;
         }
         return 0;
      }
      
      override public function set distanceVolume(param1:Number) : void
      {
         this._distanceVolume = param1;
         this.volume = this._globalVolume;
      }
      
      override public function get soundChannel() : SoundChannel
      {
         return this._soundChn;
      }
      
      private function onSoundComplete(param1:Event) : void
      {
         param1.currentTarget.removeEventListener(Event.SOUND_COMPLETE,this.onSoundComplete);
         dispatchEvent(param1);
      }
   }
}

