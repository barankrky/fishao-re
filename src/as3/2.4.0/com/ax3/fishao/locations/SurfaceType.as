package com.ax3.fishao.locations
{
   import com.ax3.fishao.control.managers.FishaoSoundManager;
   import com.ax3.utils.sound.SoundFile;
   import flash.utils.Dictionary;
   
   public class SurfaceType
   {
      
      public static var _typeByColor:Dictionary = new Dictionary();
      
      public static const NONE:SurfaceType = new SurfaceType("none",0,null);
      
      public static const SOIL:SurfaceType = new SurfaceType("soil",4294901760,FishaoSoundManager.SFX_003_MOV_Step_soil_MERGED);
      
      public static const GRASS:SurfaceType = new SurfaceType("grass",4278255360,FishaoSoundManager.SFX_013_MOV_Step_grass_MERGED);
      
      public static const SNOW:SurfaceType = new SurfaceType("snow",4278190335,FishaoSoundManager.SFX_014_MOV_Step_snow_MERGED);
      
      public static const WOOD:SurfaceType = new SurfaceType("wood",4278190080,FishaoSoundManager.SFX_015_MOV_Step_bridge_MERGED);
      
      public static const SAND:SurfaceType = new SurfaceType("sand",4294967040,FishaoSoundManager.SFX_016_MOV_Step_sand_MERGED);
      
      public static const GRAVEL:SurfaceType = new SurfaceType("gravel",4294902015,FishaoSoundManager.SFX_055_MOV_Step_gravel_MERGED);
      
      public static const WATER:SurfaceType = new SurfaceType("water",4278255615,FishaoSoundManager.SFX_056_MOV_Step_water_MERGED);
      
      public static const STEEL:SurfaceType = new SurfaceType("steel",4294967295,FishaoSoundManager.SFX_071_MOV_Step_metal);
      
      public var name:String;
      
      public var color:uint;
      
      public var soundFile:SoundFile;
      
      public function SurfaceType(param1:String, param2:uint, param3:SoundFile)
      {
         super();
         this.name = param1;
         this.color = param2;
         this.soundFile = param3;
         _typeByColor[param2] = this;
      }
      
      public static function findByColor(param1:uint) : SurfaceType
      {
         return param1 in _typeByColor ? _typeByColor[param1] : NONE;
      }
      
      public function toString() : String
      {
         return this.name;
      }
   }
}

