package com.ax3.fishao.locations.base
{
   import com.ax3.fishao.locations.aquayama.LocationLayersAquayama;
   import com.ax3.fishao.locations.club_area.LocationLayersClubArea;
   import com.ax3.fishao.locations.cool_mountain.LocationLayersCoolMountain;
   import com.ax3.fishao.locations.decorationMarket.LocationLayersDecorationMarket;
   import com.ax3.fishao.locations.furniture_factory.LocationLayersFurnitureFactory;
   import com.ax3.fishao.locations.laketown.LocationLayersLaketown;
   import com.ax3.fishao.locations.littleRio.LocationLayersLittleRio;
   import com.ax3.fishao.locations.lostValley.LocationLayersLostValley;
   import com.ax3.fishao.locations.lucky_raft.LocationLayersLuckyRaft;
   import com.ax3.fishao.locations.marshville.LocationLayersMarshville;
   import com.ax3.fishao.locations.mystic_desert.LocationLayersMysticDesert;
   import com.ax3.fishao.locations.palmIsland.LocationLayersPalmIsland;
   import com.ax3.fishao.locations.panheiraBeach.LocationLayersPinheiraBeach;
   import com.ax3.fishao.locations.pirateCave.LocationLayersPirateCave;
   import com.ax3.fishao.locations.privateHouse.LocationLayersPrivateHouse;
   import com.ax3.fishao.locations.rio.LocationLayersRio;
   import com.ax3.fishao.locations.thombani_town.LocationLayersThombaniTown;
   import com.ax3.fishao.locations.treeCave.LocationLayersTreeCave;
   
   public class FactoryLocationLayers
   {
      
      public function FactoryLocationLayers()
      {
         super();
      }
      
      public static function createLocationLayers(param1:int) : LocationLayers
      {
         var _loc2_:LocationLayers = null;
         switch(param1)
         {
            case LocationConfig.LOCATION_1_LAKETOWN.id:
               _loc2_ = new LocationLayersLaketown();
               break;
            case LocationConfig.LOCATION_2_RIO.id:
               _loc2_ = new LocationLayersRio();
               break;
            case LocationConfig.LOCATION_3_PINHEIRA_BEACH.id:
               _loc2_ = new LocationLayersPinheiraBeach();
               break;
            case LocationConfig.LOCATION_4_COOL_MOUNTAIN.id:
               _loc2_ = new LocationLayersCoolMountain();
               break;
            case LocationConfig.LOCATION_5_MYSTIC_DESERT.id:
               _loc2_ = new LocationLayersMysticDesert();
               break;
            case LocationConfig.LOCATION_7_AQUAYAMA.id:
               _loc2_ = new LocationLayersAquayama();
               break;
            case LocationConfig.LOCATION_9_THOMBANI_TOWN.id:
               _loc2_ = new LocationLayersThombaniTown();
               break;
            case LocationConfig.LOCATION_10_MARSHVILLE.id:
               _loc2_ = new LocationLayersMarshville();
               break;
            case LocationConfig.LOCATION_11_PALM_ISLAND.id:
               _loc2_ = new LocationLayersPalmIsland();
               break;
            case LocationConfig.LOCATION_12_LUCKY_RAFT.id:
               _loc2_ = new LocationLayersLuckyRaft();
               break;
            case LocationConfig.CLUB_AREA.id:
               _loc2_ = new LocationLayersClubArea();
               break;
            default:
               _loc2_ = new LocationLayers();
         }
         return _loc2_;
      }
      
      public static function createSublocationLayers(param1:int) : LocationLayers
      {
         var _loc2_:LocationLayers = null;
         var _loc3_:int = param1 < 100 ? int(param1 + 100) : param1;
         switch(_loc3_)
         {
            case LocationConfig.SUBLOCATION_1_DECORMARKET.id:
               _loc2_ = new LocationLayersDecorationMarket();
               break;
            case LocationConfig.SUBLOCATION_2_LITTLE_RIO.id:
               _loc2_ = new LocationLayersLittleRio();
               break;
            case LocationConfig.SUBLOCATION_5_FURNITURE_FACTORY.id:
               _loc2_ = new LocationLayersFurnitureFactory();
               break;
            case LocationConfig.SUBLOCATION_7_LOST_VALLEY.id:
               _loc2_ = new LocationLayersLostValley();
               break;
            case LocationConfig.SUBLOCATION_10_TREE_CAVE.id:
               _loc2_ = new LocationLayersTreeCave();
               break;
            case LocationConfig.SUBLOCATION_11_PIRATE_CAVE.id:
               _loc2_ = new LocationLayersPirateCave();
               break;
            case LocationConfig.PRIVATE_HOUSE.id:
            case LocationConfig.FRIENDS_PRIVATE_HOUSE.id:
               _loc2_ = new LocationLayersPrivateHouse();
               break;
            case LocationConfig.TOURNAMENT_4.id:
               _loc2_ = new LocationLayersPalmIsland();
               break;
            default:
               _loc2_ = new LocationLayers();
         }
         return _loc2_;
      }
   }
}

