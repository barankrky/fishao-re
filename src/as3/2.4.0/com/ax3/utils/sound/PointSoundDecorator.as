package com.ax3.utils.sound
{
   import flash.events.Event;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class PointSoundDecorator extends Sound
   {
      
      private var _isplaying:Boolean = false;
      
      private var _manager:SoundManager;
      
      private var _soundChn:SoundChannel;
      
      private var _sndTransform:SoundTransform;
      
      private var _trackPlayDelayMS:int = 240;
      
      private var _appearMinMS:int;
      
      private var _appearMaxMS:int;
      
      private var _sound:Sound;
      
      private var _globalVolume:Number;
      
      private var _distanceVolume:Number;
      
      private const MIN_VOLUME:Number = 0.1;
      
      private var _loops:int = 2147483647;
      
      private var _itemDefaultVolume:Number = 1;
      
      public function PointSoundDecorator(param1:Sound, param2:SoundManager, param3:Object = null)
      {
         super();
         this._sound = param1;
         this._manager = param2;
         if(param3 != null)
         {
            if(param3.hasOwnProperty("loops"))
            {
               this._loops = param3.loops;
            }
            if(param3.hasOwnProperty("volume"))
            {
               this._itemDefaultVolume = param3.volume;
            }
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
         return null;
      }
      
      public function stop() : void
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
      
      public function set volume(param1:Number) : void
      {
         this._globalVolume = param1;
         var _loc2_:Number = this._globalVolume * this._distanceVolume * this._itemDefaultVolume;
         if(_loc2_ > this.MIN_VOLUME)
         {
            if(this._soundChn == null)
            {
               this._sndTransform.volume = _loc2_;
               this._soundChn = this._sound.play(0,this._loops,this._sndTransform);
               if(this._soundChn != null)
               {
                  this._soundChn.addEventListener(Event.SOUND_COMPLETE,this.onSoundComplete,false,0,true);
               }
            }
            else
            {
               this._sndTransform = this._soundChn.soundTransform;
               this._sndTransform.volume = _loc2_;
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
      
      public function get volume() : Number
      {
         if(this._sndTransform)
         {
            return this._sndTransform.volume;
         }
         return 0;
      }
      
      public function set distanceVolume(param1:Number) : void
      {
         this._distanceVolume = param1;
         this.volume = this._globalVolume;
      }
      
      public function get soundChannel() : SoundChannel
      {
         return this._soundChn;
      }
      
      private function onSoundComplete(param1:Event) : void
      {
         param1.target.removeEventListener(Event.SOUND_COMPLETE,this.onSoundComplete);
         dispatchEvent(param1);
      }
      
      public function set globalVolume(param1:Number) : void
      {
         this._globalVolume = param1;
      }
   }
}

