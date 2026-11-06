package com.ax3.fishao.locations.littleRio
{
   import com.ax3.fishao.locations.EDisplayObjectType;
   import com.ax3.fishao.locations.base.LocationLayers;
   import flash.display.DisplayObject;
   
   public class LocationLayersLittleRio extends LocationLayers
   {
      
      public function LocationLayersLittleRio()
      {
         super();
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

