package com.ax3.fishao.locations.club_area
{
   import com.ax3.fishao.FishaoFscModelManager;
   import com.ax3.fishao.locations.base.LocationModelOnVirtualWorld;
   import com.ax3.fishao.locations.weather.WeatherType;
   import com.ax3.fishao.utils.Preloader;
   import com.ax3.fishao.vars.app;
   
   public class LocationModelClubArea extends LocationModelOnVirtualWorld
   {
      
      public function LocationModelClubArea(param1:int)
      {
         super(param1);
         this.init();
      }
      
      override public function get weather() : WeatherType
      {
         return WeatherType.SUNNY;
      }
      
      private function init() : void
      {
         _dayCycleEnabled = false;
      }
      
      override public function sendEnterToLocation() : void
      {
         tryInitWorldConfig();
         app.char.isFreeze = false;
         addRequestHandlers();
         FishaoFscModelManager.locationExtension.enterClubArea(Preloader.waitForResponse());
      }
      
      override public function destroy() : void
      {
         super.destroy();
      }
   }
}

