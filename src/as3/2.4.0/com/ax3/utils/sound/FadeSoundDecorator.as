package com.ax3.utils.sound
{
   import com.ax3.fishao.control.managers.FishaoSoundManager;
   import com.ax3.fishao.locations.IDestroy;
   import com.inkora.easing.Exponential;
   import com.inkora.tween.TweenCube;
   import flash.events.Event;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class FadeSoundDecorator extends Sound implements IDestroy
   {
      
      private var _sound:Sound;
      
      private var _manager:SoundManager;
      
      private var isplaying:Boolean = false;
      
      private var soundChn:SoundChannel;
      
      public function FadeSoundDecorator(param1:Sound, param2:SoundManager, param3:Object = null)
      {
         super();
         this._sound = param1;
         this._manager = param2;
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
         param3.volume = 0;
         TweenCube.destroyTweensOf(this,false);
         if(this.soundChn != null)
         {
            this.stopChn();
         }
         this.isplaying = true;
         this.soundChn = this._sound.play(param1,param2,param3);
         TweenCube.to(this,6,{"channelVolume":this._manager.getVolume(FishaoSoundManager.GROUP_BACKGROUND_MUSIC)},{"ease":Exponential.easeIn});
         return this.soundChn;
      }
      
      public function stop() : void
      {
         TweenCube.destroyTweensOf(this,false);
         TweenCube.to(this,3,{"channelVolume":0},{
            "onComplete":this.stopChn,
            "ease":Exponential.easeOut
         });
         this.isplaying = false;
      }
      
      private function stopChn() : void
      {
         if(this.soundChn)
         {
            this.soundChn.stop();
            this.soundChn = null;
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
         TweenCube.destroyTweensOf(this,false);
         this.channelVolume = param1;
      }
      
      public function set channelVolume(param1:Number) : void
      {
         var _loc2_:SoundTransform = null;
         if(this.soundChn)
         {
            _loc2_ = this.soundChn.soundTransform;
            _loc2_.volume = param1;
            this.soundChn.soundTransform = _loc2_;
         }
      }
      
      public function get channelVolume() : Number
      {
         return this.volume;
      }
      
      public function get volume() : Number
      {
         if(this.soundChn)
         {
            return this.soundChn.soundTransform.volume;
         }
         return 0;
      }
      
      public function destroy() : void
      {
         this._sound = null;
      }
   }
}

