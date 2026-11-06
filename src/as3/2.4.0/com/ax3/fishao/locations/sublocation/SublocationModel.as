package com.ax3.fishao.locations.sublocation
{
   import com.ax3.fishao.locations.ELocationType;
   import com.ax3.fishao.locations.base.LocationModel;
   import com.ax3.fishao.locations.weather.WeatherType;
   import protocol.sr.EnterSublocationSuccessResp;
   
   public class SublocationModel extends LocationModel
   {
      
      public function SublocationModel(param1:int)
      {
         super(param1);
         this.init();
      }
      
      override public function get type() : String
      {
         return ELocationType.ELT_SUBLOCATION;
      }
      
      public function onEnterSublocation(param1:EnterSublocationSuccessResp) : void
      {
      }
      
      override public function get weather() : WeatherType
      {
         return WeatherType.SUNNY;
      }
      
      override public function get absoluteId() : int
      {
         return _id + 100;
      }
      
      private function init() : void
      {
         isSublocation = true;
         _dayCycleEnabled = false;
      }
   }
}

