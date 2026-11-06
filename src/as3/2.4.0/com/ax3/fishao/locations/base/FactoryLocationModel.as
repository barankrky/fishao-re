package com.ax3.fishao.locations.base
{
   import com.ax3.fishao.locations.aquayama.LocationModelAquayama;
   import com.ax3.fishao.locations.club_area.LocationModelClubArea;
   import com.ax3.fishao.locations.decorationMarket.LocationModelDecorationMarket;
   import com.ax3.fishao.locations.furniture_factory.LocationModelFurnitureFactory;
   import com.ax3.fishao.locations.laketown.LocationModelLaketown;
   import com.ax3.fishao.locations.littleRio.LocationModelLittleRio;
   import com.ax3.fishao.locations.lostValley.LocationModelLostValley;
   import com.ax3.fishao.locations.lucky_raft.LocationModelLuckyRaft;
   import com.ax3.fishao.locations.marshville.LocationModelMarshville;
   import com.ax3.fishao.locations.mystic_desert.LocationModelMysticDesert;
   import com.ax3.fishao.locations.palmIsland.LocationModelPalmIsland;
   import com.ax3.fishao.locations.panheiraBeach.LocationModelPinheiraBeach;
   import com.ax3.fishao.locations.pirateCave.LocationModelPirateCave;
   import com.ax3.fishao.locations.privateHouse.LocationModelPrivateHouse;
   import com.ax3.fishao.locations.rio.LocationModelRio;
   import com.ax3.fishao.locations.sublocation.SublocationModel;
   import com.ax3.fishao.locations.treeCave.LocationModelTreeCave;
   import com.ax3.fishao.model.TournamentLocationModel;
   
   public class FactoryLocationModel
   {
      
      public function FactoryLocationModel()
      {
         super();
      }
      
      public static function createLocationModel(param1:int) : LocationModel
      {
         var _loc2_:LocationModel = null;
         switch(param1)
         {
            case LocationConfig.LOCATION_1_LAKETOWN.id:
               _loc2_ = new LocationModelLaketown(param1);
               break;
            case LocationConfig.LOCATION_2_RIO.id:
               _loc2_ = new LocationModelRio(param1);
               break;
            case LocationConfig.LOCATION_3_PINHEIRA_BEACH.id:
               _loc2_ = new LocationModelPinheiraBeach(param1);
               break;
            case LocationConfig.LOCATION_5_MYSTIC_DESERT.id:
               _loc2_ = new LocationModelMysticDesert(param1);
               break;
            case LocationConfig.LOCATION_7_AQUAYAMA.id:
               _loc2_ = new LocationModelAquayama(param1);
               break;
            case LocationConfig.LOCATION_10_MARSHVILLE.id:
               _loc2_ = new LocationModelMarshville(param1);
               break;
            case LocationConfig.LOCATION_11_PALM_ISLAND.id:
               _loc2_ = new LocationModelPalmIsland(param1);
               break;
            case LocationConfig.LOCATION_12_LUCKY_RAFT.id:
               _loc2_ = new LocationModelLuckyRaft(param1);
               break;
            default:
               _loc2_ = new LocationModel(param1);
         }
         return _loc2_;
      }
      
      public static function createSublocationModel(param1:int) : LocationModel
      {
         var _loc2_:LocationModel = null;
         var _loc3_:int = param1 < 100 ? int(param1 + 100) : param1;
         switch(_loc3_)
         {
            case LocationConfig.SUBLOCATION_1_DECORMARKET.id:
               _loc2_ = new LocationModelDecorationMarket(param1);
               break;
            case LocationConfig.SUBLOCATION_2_LITTLE_RIO.id:
               _loc2_ = new LocationModelLittleRio(param1);
               break;
            case LocationConfig.SUBLOCATION_5_FURNITURE_FACTORY.id:
               _loc2_ = new LocationModelFurnitureFactory(param1);
               break;
            case LocationConfig.SUBLOCATION_7_LOST_VALLEY.id:
               _loc2_ = new LocationModelLostValley(param1);
               break;
            case LocationConfig.SUBLOCATION_10_TREE_CAVE.id:
               _loc2_ = new LocationModelTreeCave(param1);
               break;
            case LocationConfig.SUBLOCATION_11_PIRATE_CAVE.id:
               _loc2_ = new LocationModelPirateCave(param1);
               break;
            case LocationConfig.PRIVATE_HOUSE.id:
            case LocationConfig.FRIENDS_PRIVATE_HOUSE.id:
               _loc2_ = new LocationModelPrivateHouse(param1);
               break;
            case LocationConfig.TOURNAMENT_1.id:
            case LocationConfig.TOURNAMENT_2.id:
            case LocationConfig.TOURNAMENT_3.id:
            case LocationConfig.TOURNAMENT_4.id:
               _loc2_ = new TournamentLocationModel(param1);
               break;
            case LocationConfig.CLUB_AREA.id:
               _loc2_ = new LocationModelClubArea(param1);
               break;
            default:
               _loc2_ = new SublocationModel(param1);
         }
         return _loc2_;
      }
   }
}

