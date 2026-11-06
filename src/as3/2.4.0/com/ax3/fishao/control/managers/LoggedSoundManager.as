package com.ax3.fishao.control.managers
{
   import com.ax3.utils.sound.SoundFile;
   import com.ax3.utils.sound.SoundManager;
   
   public class LoggedSoundManager extends SoundManager
   {
      
      public function LoggedSoundManager()
      {
         super();
      }
      
      override public function play(param1:SoundFile, param2:int = 0, param3:Number = NaN) : *
      {
         return super.play(param1,param2,param3);
      }
   }
}

