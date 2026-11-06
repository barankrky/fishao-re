package com.ax3.fishao.locations.base
{
   import com.ax3.fishao.Config;
   import com.ax3.fishao.control.managers.FishaoSoundManager;
   import com.ax3.fishao.locations.*;
   import com.ax3.fishao.model.info.BuildConfig;
   import com.ax3.utils.sound.SoundFile;
   import flash.geom.Point;
   
   public class LocationConfig
   {
      
      public static const LOCATION_FOLDER:String = "data/swf/locations/";
      
      private static var _all:Vector.<LocationConfig> = new Vector.<LocationConfig>();
      
      public static const LOCATION_1_LAKETOWN:LocationConfig = new LocationConfig(1,"location_1_laketown",new <SoundFile>[FishaoSoundManager.SFX_001_AMB_Laketown,FishaoSoundManager.SFX_017_AMB_Birds]);
      
      public static const LOCATION_2_RIO:LocationConfig = new LocationConfig(2,"location_2_rio",new <SoundFile>[FishaoSoundManager.SFX_004_AMB_Rio_Tropical,FishaoSoundManager.SFX_018_AMB_Birds,FishaoSoundManager.SFX_019_AMB_Monkey,FishaoSoundManager.SFX_029_AMB_Walkway_wood],new <PositionSoundMediator>[new PositionSoundMediator(FishaoSoundManager.SFX_020_AMB_Campfire,new Point(915,2206),500),new PositionSoundMediator(FishaoSoundManager.SFX_031_AMB_Waterfall,new Point(750,340),1500)],null,-38);
      
      public static const LOCATION_3_PINHEIRA_BEACH:LocationConfig = new LocationConfig(3,"location_3_pinheira_beach",new <SoundFile>[FishaoSoundManager.SFX_005_AMB_Pinheira_Beach],new <PositionSoundMediator>[new LineSoundMediator(FishaoSoundManager.SFX_021_AMB_Waves,new Point(-1,985),600)],null,-32);
      
      public static const LOCATION_4_COOL_MOUNTAIN:LocationConfig = new LocationConfig(4,"location_4_cool_mountain",new <SoundFile>[FishaoSoundManager.SFX_006_AMB_Cool_Mountain,FishaoSoundManager.SFX_017_AMB_Birds]);
      
      public static const LOCATION_5_MYSTIC_DESERT:LocationConfig = new LocationConfig(5,"location_5_mystic_desert",new <SoundFile>[FishaoSoundManager.SFX_007_AMB_Mystic_Desert,FishaoSoundManager.SFX_023_AMB_Sand_gust_SFX],null,null,-38);
      
      public static const LOCATION_6_SIBIRI_CITY:LocationConfig = new LocationConfig(6,"location_6_sibiri_city",new <SoundFile>[FishaoSoundManager.SFX_008_AMB_Sibiri_city,FishaoSoundManager.SFX_025_AMB_Snow_gust_SFX],null,new Point(18,-5),10);
      
      public static const LOCATION_7_AQUAYAMA:LocationConfig = new LocationConfig(7,"location_7_aquayama",new <SoundFile>[FishaoSoundManager.SFX_009_AMB_Aquayama,FishaoSoundManager.SFX_017_AMB_Birds,FishaoSoundManager.SFX_028_AMB_Bamboo_gust_SFX],null,null,-35);
      
      public static const LOCATION_8_SEAGULL_HARBOR:LocationConfig = new LocationConfig(8,"location_8_seagull_harbor",new <SoundFile>[FishaoSoundManager.SFX_010_AMB_Seagull_Harbor],new <PositionSoundMediator>[new LineSoundMediator(FishaoSoundManager.SFX_021_AMB_Waves,new Point(-1,2260),600),new RandomPositionSoundMediator(FishaoSoundManager.SFX_030_AMB_Buoy,new Point(2300,750),1000,5 * 1000,5 * 500)],new Point(14,-31),10);
      
      public static const LOCATION_9_THOMBANI_TOWN:LocationConfig = new LocationConfig(9,"location_9_thombani_town",new <SoundFile>[FishaoSoundManager.SFX_011_AMB_Thombani_Town,FishaoSoundManager.SFX_018_AMB_Birds],null,new Point(-13,-6),-90);
      
      public static const LOCATION_10_MARSHVILLE:LocationConfig = new LocationConfig(10,"location_10_marshville",new <SoundFile>[FishaoSoundManager.SFX_012_AMB_Marshville,FishaoSoundManager.SFX_017_AMB_Birds,FishaoSoundManager.SFX_032_AMB_Swamp_bubble],null,null,-90);
      
      public static const LOCATION_11_PALM_ISLAND:LocationConfig = new LocationConfig(11,"location_11_palm_island",new <SoundFile>[FishaoSoundManager.SFX_005_AMB_Pinheira_Beach],new <PositionSoundMediator>[new LineSoundMediator(FishaoSoundManager.SFX_021_AMB_Waves,new Point(-1,400),900),new LineSoundMediator(FishaoSoundManager.SFX_021_AMB_Waves,new Point(-1,2000),900),new LineSoundMediator(FishaoSoundManager.SFX_021_AMB_Waves,new Point(300,-1),900),new LineSoundMediator(FishaoSoundManager.SFX_021_AMB_Waves,new Point(2100,-1),900)],new Point(-5,-65),-32);
      
      public static const LOCATION_12_LUCKY_RAFT:LocationConfig = new LocationConfig(12,"location_12_lucky_raft",new <SoundFile>[FishaoSoundManager.SFX_010_AMB_Seagull_Harbor],new <PositionSoundMediator>[new LineSoundMediator(FishaoSoundManager.SFX_021_AMB_Waves,new Point(-1,600),900),new LineSoundMediator(FishaoSoundManager.SFX_021_AMB_Waves,new Point(-1,1875),900),new LineSoundMediator(FishaoSoundManager.SFX_021_AMB_Waves,new Point(580,-1),900),new LineSoundMediator(FishaoSoundManager.SFX_021_AMB_Waves,new Point(2350,-1),900)],new Point(0,-50),-32);
      
      public static const SUBLOCATION_1_TROUTFARM:LocationConfig = new LocationConfig(101,"sublocation_1_trout_farm",new <SoundFile>[FishaoSoundManager.SFX_001_AMB_Laketown]);
      
      public static const SUBLOCATION_1_BAKER:LocationConfig = new LocationConfig(102,"sublocation_1_baker");
      
      public static const SUBLOCATION_1_DECORMARKET:LocationConfig = new LocationConfig(107,"private_house");
      
      public static const SUBLOCATION_2_LITTLE_RIO:LocationConfig = new LocationConfig(110,"sublocation_2_little_rio",new <SoundFile>[FishaoSoundManager.SFX_004_AMB_Rio_Tropical,FishaoSoundManager.SFX_018_AMB_Birds,FishaoSoundManager.SFX_019_AMB_Monkey,FishaoSoundManager.SFX_029_AMB_Walkway_wood],null,null,-38);
      
      public static const SUBLOCATION_3_FISHMARKET:LocationConfig = new LocationConfig(106,"sublocation_3_fishmarket",new <SoundFile>[FishaoSoundManager.SFX_027_AMB_Iglo_indoor]);
      
      public static const SUBLOCATION_4_CORAL:LocationConfig = new LocationConfig(103,"sublocation_4_coral",new <SoundFile>[FishaoSoundManager.SFX_022_AMB_Coral_indoor]);
      
      public static const SUBLOCATION_5_DESERT:LocationConfig = new LocationConfig(104,"sublocation_5_desert",new <SoundFile>[FishaoSoundManager.SFX_024_AMB_Pyramid_indoor],null,null,-15);
      
      public static const SUBLOCATION_5_FURNITURE_FACTORY:LocationConfig = new LocationConfig(113,"sublocation_5_furniture_factory",new <SoundFile>[FishaoSoundManager.SFX_024_AMB_Pyramid_indoor],null,null,-15);
      
      public static const SUBLOCATION_6_SIBIRI:LocationConfig = new LocationConfig(105,"sublocation_6_sibiri",new <SoundFile>[FishaoSoundManager.SFX_027_AMB_Iglo_indoor]);
      
      public static const SUBLOCATION_7_LOST_VALLEY:LocationConfig = new LocationConfig(108,"sublocation_7_lost_valley",new <SoundFile>[FishaoSoundManager.SFX_001_AMB_Laketown,FishaoSoundManager.SFX_017_AMB_Birds],new <PositionSoundMediator>[new PositionSoundMediator(FishaoSoundManager.SFX_031_AMB_Waterfall,new Point(1600,150),1500),new PositionSoundMediator(FishaoSoundManager.SFX_072_AMB_Dino_eating,new Point(460,430),400)],null,35);
      
      public static const SUBLOCATION_10_TREE_CAVE:LocationConfig = new LocationConfig(109,"sublocation_10_tree_cave",new <SoundFile>[FishaoSoundManager.SFX_012_AMB_Marshville,FishaoSoundManager.SFX_017_AMB_Birds,FishaoSoundManager.SFX_032_AMB_Swamp_bubble]);
      
      public static const SUBLOCATION_11_PIRATE_CAVE:LocationConfig = new LocationConfig(111,"sublocation_11_pirate_cave",new <SoundFile>[FishaoSoundManager.SFX_024_AMB_Pyramid_indoor],new <PositionSoundMediator>[new PositionSoundMediator(FishaoSoundManager.SFX_076_AMB_Waterfall_small,new Point(500,160),3200)]);
      
      public static const TOURNAMENT_1:LocationConfig = new LocationConfig(201,"tournament_1",new <SoundFile>[FishaoSoundManager.SFX_034_AMB_Tournament_01],new <PositionSoundMediator>[new PositionSoundMediator(FishaoSoundManager.SFX_033_AMB_Boat_tournament,new Point(1900,1300),1000),new RandomPositionSoundMediator(FishaoSoundManager.SFX_068_Tournament_boat_horn,new Point(1335,1250),1000,45 * 1000,150 * 1000)],null,10);
      
      public static const TOURNAMENT_2:LocationConfig = new LocationConfig(202,"tournament_2",new <SoundFile>[FishaoSoundManager.SFX_035_AMB_Tournament_02],null,null,-12);
      
      public static const TOURNAMENT_3:LocationConfig = new LocationConfig(203,"tournament_3",new <SoundFile>[FishaoSoundManager.SFX_017_AMB_Birds,FishaoSoundManager.SFX_036_AMB_Tournament_03],null,null,-12);
      
      public static const TOURNAMENT_4:LocationConfig = new LocationConfig(204,"location_11_palm_island",new <SoundFile>[FishaoSoundManager.SFX_005_AMB_Pinheira_Beach],new <PositionSoundMediator>[new LineSoundMediator(FishaoSoundManager.SFX_021_AMB_Waves,new Point(-1,400),900),new LineSoundMediator(FishaoSoundManager.SFX_021_AMB_Waves,new Point(-1,2000),900),new LineSoundMediator(FishaoSoundManager.SFX_021_AMB_Waves,new Point(300,-1),900),new LineSoundMediator(FishaoSoundManager.SFX_021_AMB_Waves,new Point(2100,-1),900)],null,-32);
      
      public static const WORLD_MAP_999:LocationConfig = new LocationConfig(999,"location_999_worldmap",new <SoundFile>[FishaoSoundManager.SFX_031_AMB_Waterfall_WM,FishaoSoundManager.SFX_017_AMB_Birds_WM]);
      
      public static const PRIVATE_HOUSE:LocationConfig = new LocationConfig(300,"private_house",new <SoundFile>[FishaoSoundManager.SFX_001_AMB_Laketown],null,null,-12);
      
      public static const FRIENDS_PRIVATE_HOUSE:LocationConfig = new LocationConfig(400,"private_house",new <SoundFile>[FishaoSoundManager.SFX_001_AMB_Laketown],null,null,-12);
      
      public static const CLUB_AREA:LocationConfig = new LocationConfig(112,"club_area/",new <SoundFile>[FishaoSoundManager.SFX_017_AMB_Birds],null,null,-12,true);
      
      public var id:int;
      
      public var filename:String;
      
      public var ambientSoundFiles:Vector.<SoundFile>;
      
      public var pointSounds:Vector.<PositionSoundMediator>;
      
      public var tooltipPosition:Point;
      
      public var waterColorHueShift:int;
      
      private var _newFormat:Boolean;
      
      public function LocationConfig(param1:int, param2:String, param3:Vector.<SoundFile> = null, param4:Vector.<PositionSoundMediator> = null, param5:Point = null, param6:int = 0, param7:Boolean = false)
      {
         super();
         this._newFormat = param7;
         this.id = param1;
         this.filename = param2;
         this.ambientSoundFiles = param3;
         this.pointSounds = param4;
         this.tooltipPosition = param5 != null ? param5 : new Point(0,0);
         this.waterColorHueShift = param6;
         _all.push(this);
      }
      
      public static function findById(param1:int) : LocationConfig
      {
         var _loc2_:LocationConfig = null;
         for each(_loc2_ in _all)
         {
            if(param1 == _loc2_.id)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function getLocationSwfUrl() : String
      {
         var _loc1_:String = this.getLocationEmptyUrl();
         if(this._newFormat)
         {
            _loc1_ += "location";
         }
         return _loc1_ + (".swf?r=" + BuildConfig.VERSION);
      }
      
      public function getLocationObstacleUrl() : String
      {
         if(this.id == 107)
         {
            return Config.SERVER + LOCATION_FOLDER + "sublocation_1_decormarket_obstacle.gif?r=" + BuildConfig.VERSION;
         }
         var _loc1_:String = this.getLocationEmptyUrl();
         if(!this._newFormat)
         {
            _loc1_ += "_";
         }
         return _loc1_ + ("obstacle.gif?r=" + BuildConfig.VERSION);
      }
      
      public function getLocationLakeObstacleUrl() : String
      {
         var _loc1_:String = this.getLocationEmptyUrl();
         if(!this._newFormat)
         {
            _loc1_ += "_";
         }
         return _loc1_ + ("lake_obstacle.gif?r=" + BuildConfig.VERSION);
      }
      
      public function getLocationSoundMapUrl() : String
      {
         var _loc1_:String = this.getLocationEmptyUrl();
         if(!this._newFormat)
         {
            _loc1_ += "_";
         }
         return _loc1_ + ("sound_map.gif?r=" + BuildConfig.VERSION);
      }
      
      private function getLocationEmptyUrl() : String
      {
         return Config.ASSET_2_SERVER + LOCATION_FOLDER + this.filename;
      }
   }
}

