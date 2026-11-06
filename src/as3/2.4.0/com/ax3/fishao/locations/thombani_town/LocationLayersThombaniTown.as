package com.ax3.fishao.locations.thombani_town
{
   import com.ax3.fishao.locations.with_club_entrance.LocationLayersWithClubEntrance;
   import flash.geom.Point;
   
   public class LocationLayersThombaniTown extends LocationLayersWithClubEntrance
   {
      
      public function LocationLayersThombaniTown()
      {
         super();
         this.init();
      }
      
      override public function get clubEntrancePosition() : Point
      {
         return new Point(2738,2176);
      }
      
      private function init() : void
      {
      }
   }
}

