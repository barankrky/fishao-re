package com.ax3.fishao.locations.panheiraBeach
{
   import com.ax3.fishao.locations.EDisplayObjectType;
   import com.ax3.fishao.locations.with_club_entrance.LocationLayersWithClubEntrance;
   import flash.display.DisplayObject;
   import flash.geom.Point;
   
   public class LocationLayersPinheiraBeach extends LocationLayersWithClubEntrance
   {
      
      public function LocationLayersPinheiraBeach()
      {
         super();
      }
      
      override public function get clubEntrancePosition() : Point
      {
         return new Point(3278,1641);
      }
      
      override protected function parseDisplayObjectInternal(param1:DisplayObject) : void
      {
         var _loc2_:String = param1.name;
         switch(_loc2_)
         {
            case EDisplayObjectType.EDOT_ADVERTISEMENT_PINHEIRA_BEACH:
            case EDisplayObjectType.EDOT_ADVERTISEMENT_PINHEIRA_JETTY:
               moveToLayerAds(param1);
               break;
            default:
               super.parseDisplayObjectInternal(param1);
         }
      }
   }
}

