package com.ax3.fishao.locations.cool_mountain
{
   import com.ax3.fishao.locations.with_club_entrance.LocationLayersWithClubEntrance;
   import flash.geom.Point;
   
   public class LocationLayersCoolMountain extends LocationLayersWithClubEntrance
   {
      
      public function LocationLayersCoolMountain()
      {
         super();
         this.init();
      }
      
      override public function get clubEntrancePosition() : Point
      {
         return new Point(1330,616);
      }
      
      private function init() : void
      {
      }
   }
}

