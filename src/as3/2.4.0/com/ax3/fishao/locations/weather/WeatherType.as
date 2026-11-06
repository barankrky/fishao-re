package com.ax3.fishao.locations.weather
{
   import com.ax3.fishao.control.managers.FishaoSoundManager;
   import com.ax3.utils.sound.SoundFile;
   
   public class WeatherType
   {
      
      private static var _all:Vector.<WeatherType> = new Vector.<WeatherType>();
      
      public static const SUNNY:WeatherType = new WeatherType("sunny",100,null,null,null);
      
      public static const RAIN:WeatherType = new WeatherType("rain",102,Rain,{
         "fallSpeed":25,
         "dropAlpha":0.25,
         "windSpeed":1,
         "dropRotationDegree":5,
         "dropsDensity":0.0005
      },FishaoSoundManager.SFX_045_AMB_Light_rain);
      
      public static const HEAVY_RAIN:WeatherType = new WeatherType("heavyRain",101,Rain,{
         "fallSpeed":75,
         "dropAlpha":0.5,
         "windSpeed":7.5,
         "dropRotationDegree":10,
         "dropsDensity":0.001
      },FishaoSoundManager.SFX_046_AMB_Heavy_rain);
      
      public static const SNOW:WeatherType = new WeatherType("snow",103,Snow,null,null);
      
      public static const FOG:WeatherType = new WeatherType("fog",105,Fog,null,null);
      
      public static const SANDSTORM:WeatherType = new WeatherType("sandstorm",104,Sandstorm,null,FishaoSoundManager.SFX_044_AMB_Sandstorm);
      
      public static const DEFAULT:WeatherType = SUNNY;
      
      public var name:String;
      
      private var _weatherClass:Class;
      
      private var _config:Object;
      
      public var id:int;
      
      private var _soundFile:SoundFile;
      
      public function WeatherType(param1:String, param2:int, param3:Class, param4:Object, param5:SoundFile)
      {
         super();
         _all.push(this);
         this.name = param1;
         this.id = param2;
         this._weatherClass = param3;
         this._config = param4;
         this._soundFile = param5;
      }
      
      public static function getById(param1:int) : WeatherType
      {
         var _loc2_:WeatherType = null;
         for each(_loc2_ in _all)
         {
            if(_loc2_.id == param1)
            {
               return _loc2_;
            }
         }
         return DEFAULT;
      }
      
      public function createWeather() : Weather
      {
         var _loc1_:Weather = null;
         if(this._weatherClass != null)
         {
            return new this._weatherClass(this._config);
         }
         return null;
      }
      
      public function get soundFile() : SoundFile
      {
         return this._soundFile;
      }
      
      public function set soundFile(param1:SoundFile) : void
      {
         this._soundFile = param1;
      }
   }
}

