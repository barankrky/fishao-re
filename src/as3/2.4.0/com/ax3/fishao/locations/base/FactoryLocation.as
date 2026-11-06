package com.ax3.fishao.locations.base
{
   import com.ax3.fishao.locations.aquayama.LocationDialogAquayama;
   import com.ax3.fishao.locations.club_area.LocationDialogClubArea;
   import com.ax3.fishao.locations.cool_mountain.LocationDialogCoolMountain;
   import com.ax3.fishao.locations.decorationMarket.LocationDialogDecorationMarket;
   import com.ax3.fishao.locations.furniture_factory.LocationDialogFurnitureFactory;
   import com.ax3.fishao.locations.laketown.LocationDialogLaketown;
   import com.ax3.fishao.locations.littleRio.LocationDialogLittleRio;
   import com.ax3.fishao.locations.lostValley.LocationDialogLostValley;
   import com.ax3.fishao.locations.lucky_raft.LocationDialogLuckyRaft;
   import com.ax3.fishao.locations.marshville.LocationDialogMarshville;
   import com.ax3.fishao.locations.mystic_desert.LocationDialogMysticDesert;
   import com.ax3.fishao.locations.palmIsland.LocationDialogPalmIsland;
   import com.ax3.fishao.locations.panheiraBeach.LocationDialogPinheiraBeach;
   import com.ax3.fishao.locations.pirateCave.LocationDialogPirateCave;
   import com.ax3.fishao.locations.privateHouse.LocationDialogPrivateHouse;
   import com.ax3.fishao.locations.rio.LocationDialogRio;
   import com.ax3.fishao.locations.thombani_town.LocationDialogThombaniTown;
   import com.ax3.fishao.locations.tournaments.LocationDialogTournament;
   import com.ax3.fishao.locations.tournaments.LocationDialogTournamentMoray;
   import com.ax3.fishao.locations.treeCave.LocationDialogTreeCave;
   
   public class FactoryLocation
   {
      
      public function FactoryLocation()
      {
         super();
      }
      
      public static function createLocation(param1:int, param2:LocationModel) : LocationDialog
      {
         var _loc3_:LocationDialog = null;
         switch(param1)
         {
            case LocationConfig.LOCATION_1_LAKETOWN.id:
               _loc3_ = new LocationDialogLaketown(param2);
               break;
            case LocationConfig.LOCATION_2_RIO.id:
               _loc3_ = new LocationDialogRio(param2);
               break;
            case LocationConfig.LOCATION_3_PINHEIRA_BEACH.id:
               _loc3_ = new LocationDialogPinheiraBeach(param2);
               break;
            case LocationConfig.LOCATION_4_COOL_MOUNTAIN.id:
               _loc3_ = new LocationDialogCoolMountain(param2);
               break;
            case LocationConfig.LOCATION_5_MYSTIC_DESERT.id:
               _loc3_ = new LocationDialogMysticDesert(param2);
               break;
            case LocationConfig.LOCATION_7_AQUAYAMA.id:
               _loc3_ = new LocationDialogAquayama(param2);
               break;
            case LocationConfig.LOCATION_9_THOMBANI_TOWN.id:
               _loc3_ = new LocationDialogThombaniTown(param2);
               break;
            case LocationConfig.LOCATION_10_MARSHVILLE.id:
               _loc3_ = new LocationDialogMarshville(param2);
               break;
            case LocationConfig.LOCATION_11_PALM_ISLAND.id:
               _loc3_ = new LocationDialogPalmIsland(param2);
               break;
            case LocationConfig.LOCATION_12_LUCKY_RAFT.id:
               _loc3_ = new LocationDialogLuckyRaft(param2);
               break;
            default:
               _loc3_ = new LocationDialog(param2);
         }
         return _loc3_;
      }
      
      public static function createSublocation(param1:int, param2:LocationModel) : LocationDialog
      {
         var _loc3_:LocationDialog = null;
         var _loc4_:int = param1 < 100 ? int(param1 + 100) : param1;
         switch(_loc4_)
         {
            case LocationConfig.SUBLOCATION_1_DECORMARKET.id:
               _loc3_ = new LocationDialogDecorationMarket(param2);
               break;
            case LocationConfig.SUBLOCATION_2_LITTLE_RIO.id:
               _loc3_ = new LocationDialogLittleRio(param2);
               break;
            case LocationConfig.SUBLOCATION_5_FURNITURE_FACTORY.id:
               _loc3_ = new LocationDialogFurnitureFactory(param2);
               break;
            case LocationConfig.SUBLOCATION_7_LOST_VALLEY.id:
               _loc3_ = new LocationDialogLostValley(param2);
               break;
            case LocationConfig.SUBLOCATION_10_TREE_CAVE.id:
               _loc3_ = new LocationDialogTreeCave(param2);
               break;
            case LocationConfig.SUBLOCATION_11_PIRATE_CAVE.id:
               _loc3_ = new LocationDialogPirateCave(param2);
               break;
            case LocationConfig.PRIVATE_HOUSE.id:
            case LocationConfig.FRIENDS_PRIVATE_HOUSE.id:
               _loc3_ = new LocationDialogPrivateHouse(param2);
               break;
            case LocationConfig.TOURNAMENT_1.id:
            case LocationConfig.TOURNAMENT_2.id:
            case LocationConfig.TOURNAMENT_3.id:
               _loc3_ = new LocationDialogTournament(param2);
               break;
            case LocationConfig.TOURNAMENT_4.id:
               _loc3_ = new LocationDialogTournamentMoray(param2);
               break;
            case LocationConfig.CLUB_AREA.id:
               _loc3_ = new LocationDialogClubArea(param2);
               break;
            default:
               _loc3_ = new LocationDialog(param2);
         }
         return _loc3_;
      }
   }
}

