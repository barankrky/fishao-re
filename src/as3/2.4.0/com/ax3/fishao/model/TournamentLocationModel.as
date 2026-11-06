package com.ax3.fishao.model
{
   import com.ax3.fishao.events.LocationModelEvent;
   import com.ax3.fishao.locations.base.LocationModel;
   import com.ax3.fishao.locations.weather.WeatherType;
   import com.ax3.fishao.utils.Preloader;
   import com.ax3.fishao.view.dialogs.tournaments.ManagerTournaments;
   
   public class TournamentLocationModel extends LocationModel
   {
      
      private var _managerTournaments:ManagerTournaments;
      
      public function TournamentLocationModel(param1:int)
      {
         super(param1);
         this.init();
      }
      
      override public function get weather() : WeatherType
      {
         return WeatherType.SUNNY;
      }
      
      override public function get absoluteId() : int
      {
         return _id < 200 ? int(_id + 200) : _id;
      }
      
      private function init() : void
      {
         _dayCycleEnabled = false;
         isSublocation = false;
         isTournament = true;
         this._managerTournaments = GameSwf.instance.managerTournaments;
      }
      
      override public function sendEnterToLocation() : void
      {
         addRequestHandlers();
         dispatchEvent(new LocationModelEvent(LocationModelEvent.ENTER_TO_LOCATION));
         this._managerTournaments.onEnterToLocationTournament(Preloader.waitForResponse());
      }
   }
}

