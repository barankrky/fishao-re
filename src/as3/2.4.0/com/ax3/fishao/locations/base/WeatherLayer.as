package com.ax3.fishao.locations.base
{
   import com.ax3.fishao.control.managers.FishaoSoundManager;
   import com.ax3.fishao.locations.weather.Weather;
   import com.ax3.fishao.locations.weather.WeatherType;
   import com.ax3.fishao.managers.PerformanceManager;
   import com.ax3.utils.removeAllChildren;
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   
   public class WeatherLayer extends Sprite
   {
      
      private var _weatherType:WeatherType;
      
      private var _currentWeather:Weather;
      
      public function WeatherLayer()
      {
         super();
         mouseChildren = false;
         mouseEnabled = false;
      }
      
      public function set weatherType(param1:WeatherType) : void
      {
         var _loc2_:Rectangle = null;
         if(this._weatherType != param1 && (param1 == WeatherType.SUNNY || PerformanceManager.CAN_CHANGE_WEATHER))
         {
            if(Boolean(this._weatherType) && this._weatherType.soundFile != null)
            {
               FishaoSoundManager.stopLoop(this._weatherType.soundFile);
            }
            if(Boolean(param1) && param1.soundFile != null)
            {
               FishaoSoundManager.playLoop(param1.soundFile);
            }
            this._weatherType = param1;
            if(this._currentWeather != null)
            {
               this._currentWeather.destroy();
            }
            this._currentWeather = this._weatherType.createWeather();
            if(this._currentWeather != null)
            {
               _loc2_ = scrollRect;
               if(_loc2_ != null)
               {
                  this._currentWeather.scrollRect = _loc2_;
               }
               addChild(DisplayObject(this._currentWeather));
            }
         }
      }
      
      override public function set scrollRect(param1:Rectangle) : void
      {
         super.scrollRect = param1;
         if(this._currentWeather != null)
         {
            this._currentWeather.scrollRect = param1;
         }
      }
      
      public function destroy() : void
      {
         this._weatherType = null;
         if(this._currentWeather != null)
         {
            this._currentWeather.destroy();
         }
         removeAllChildren(this);
      }
   }
}

