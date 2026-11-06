package com.ax3.fishao.locations.laketown
{
   import com.ax3.fishao.locations.EDisplayObjectType;
   import com.ax3.fishao.locations.with_club_entrance.LocationLayersWithClubEntrance;
   import flash.display.DisplayObject;
   import flash.geom.Point;
   
   public class LocationLayersLaketown extends LocationLayersWithClubEntrance
   {
      
      public function LocationLayersLaketown()
      {
         super();
      }
      
      override public function get clubEntrancePosition() : Point
      {
         return new Point(1370,1855);
      }
      
      override protected function parseDisplayObjectInternal(param1:DisplayObject) : void
      {
         var _loc2_:String = param1.name;
         switch(_loc2_)
         {
            case EDisplayObjectType.EDOT_ADVERTISEMENT_LAKETOWN_CENTER:
               moveToLayerAds(param1);
               break;
            default:
               super.parseDisplayObjectInternal(param1);
         }
      }
   }
}

