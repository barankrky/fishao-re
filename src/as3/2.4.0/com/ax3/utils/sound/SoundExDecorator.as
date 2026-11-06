package com.ax3.utils.sound
{
   import flash.events.Event;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class SoundExDecorator extends Sound
   {
      
      private var _sound:Sound;
      
      private var isplaying:Boolean = false;
      
      private var soundChn:SoundChannel;
      
      private var _params:Object;
      
      public function SoundExDecorator(param1:Sound, param2:SoundManager, param3:Object = null)
      {
         super();
         this._params = param3;
         this._sound = param1;
         this._sound.addEventListener(Event.COMPLETE,this.onComplete);
      }
      
      private function onComplete(param1:Event) : void
      {
         dispatchEvent(param1);
      }
      
      override public function play(param1:Number = 0, param2:int = 0, param3:SoundTransform = null) : SoundChannel
      {
         if(param3 == null)
         {
            param3 = new SoundTransform();
         }
         this.affectParamsVolumeCoef(param3);
         this.isplaying = true;
         this.soundChn = this._sound.play(param1,param2,param3);
         return this.soundChn;
      }
      
      private function affectParamsVolumeCoef(param1:SoundTransform) : void
      {
         if(this._params != null && this._params.hasOwnProperty("volume"))
         {
            param1.volume *= this._params.volume;
         }
      }
      
      public function stop() : void
      {
         this.stopChn();
         this.isplaying = false;
      }
      
      private function stopChn() : void
      {
         if(this.soundChn)
         {
            this.soundChn.stop();
            this.isplaying = false;
         }
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
            this.affectParamsVolumeCoef(_loc2_);
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
   }
}

