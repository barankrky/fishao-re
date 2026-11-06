package com.ax3.fishao.locations.mystic_desert
{
   import com.ax3.fishao.locations.with_club_entrance.LocationLayersWithClubEntrance;
   import flash.geom.Point;
   
   public class LocationLayersMysticDesert extends LocationLayersWithClubEntrance
   {
      
      public function LocationLayersMysticDesert()
      {
         super();
         this.init();
      }
      
      override public function get clubEntrancePosition() : Point
      {
         return new Point(3326,937);
      }
      
      private function init() : void
      {
      }
   }
}

