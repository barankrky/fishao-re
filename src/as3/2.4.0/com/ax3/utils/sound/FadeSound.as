package com.ax3.utils.sound
{
   import com.inkora.sound.SoundEx;
   import com.inkora.tween.TweenCube;
   import flash.media.SoundChannel;
   import flash.media.SoundLoaderContext;
   import flash.media.SoundTransform;
   import flash.net.URLRequest;
   
   public class FadeSound extends SoundEx
   {
      
      public function FadeSound(param1:URLRequest = null, param2:SoundLoaderContext = null)
      {
         super(param1,param2);
      }
      
      override public function play(param1:Number = 0, param2:int = 0, param3:SoundTransform = null) : SoundChannel
      {
         if(param3 == null)
         {
            param3 = new SoundTransform();
         }
         param3.volume = 0;
         TweenCube.destroyTweensOf(this,false);
         TweenCube.to(this,3,{"volume":1});
         return super.play(param1,param2,param3);
      }
      
      override public function stop() : void
      {
         TweenCube.destroyTweensOf(this,false);
         TweenCube.to(this,2,{"volume":0},{"onComplete":super.stop});
      }
   }
}

