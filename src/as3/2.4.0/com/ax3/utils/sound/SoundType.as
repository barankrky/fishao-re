package com.ax3.utils.sound
{
   public class SoundType
   {
      
      public static const DEFAULT:SoundType = new SoundType("default",null);
      
      public static const SFX:SoundType = new SoundType("default",SoundExDecorator);
      
      public static const SFX_AMBIENT_BG:SoundType = new SoundType("sfxAmbientBg",SoundExDecorator);
      
      public static const SFX_AMBIENT_RANDOM:SoundType = new SoundType("sfxAmbientRandom",RandomSoundDecorator);
      
      public static const SFX_AMBIENT_POINT:SoundType = new SoundType("sfxAmbientPoint",PointSoundDecorator);
      
      public static const SFX_AMBIENT_RANDOM_POINT:SoundType = new SoundType("sfxAmbientRandomPoint",PointSoundDecorator);
      
      public static const SFX_AMBIENT_RANDOM_POINT_LIST:SoundType = new SoundType("sfxAmbientRandomPointList",RandomPointSoundDecorator);
      
      public static const SFX_AMBIENT_LINE:SoundType = new SoundType("sfxAmbientLine",PointSoundDecorator);
      
      public static const LOCATION_BACKGROUND:SoundType = new SoundType("locationBackground",FadeSoundDecorator);
      
      public static const WEATHER:SoundType = new SoundType("weather",FadeSoundDecorator);
      
      public static const STEPS:SoundType = new SoundType("steps",StepsSoundDecorator);
      
      public static const SFX_POSITION:SoundType = new SoundType("steps",PointSoundDecorator);
      
      public var decorator:Class;
      
      public var name:String;
      
      public function SoundType(param1:String, param2:Class)
      {
         super();
         this.name = param1;
         this.decorator = param2;
      }
   }
}

