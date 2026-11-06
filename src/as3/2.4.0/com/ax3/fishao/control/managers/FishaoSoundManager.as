package com.ax3.fishao.control.managers
{
   import com.ax3.control.managers.SoundSwfFileSource;
   import com.ax3.display.buttons.StandardBitmapButton;
   import com.ax3.fishao.Config;
   import com.ax3.fishao.locations.base.LocationConfig;
   import com.ax3.fishao.model.info.BuildConfig;
   import com.ax3.utils.sound.PointSoundDecorator;
   import com.ax3.utils.sound.SoundExDecorator;
   import com.ax3.utils.sound.SoundFile;
   import com.ax3.utils.sound.SoundManager;
   import com.ax3.utils.sound.SoundSwfFile;
   import com.ax3.utils.sound.SoundType;
   import com.ax3.utils.sound.StepsSoundDecorator;
   import com.junkbyte.console.Cc;
   import flash.events.DataEvent;
   import flash.events.Event;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.net.SharedObject;
   import flash.utils.Dictionary;
   
   public class FishaoSoundManager
   {
      
      private static var _currentSeqSound:SoundFile;
      
      public static const MUTE_VOLUME:Number = 0.1;
      
      private static const _soundManager:SoundManager = new LoggedSoundManager();
      
      private static var _backGroundMusicFilename:String = "background_music_ep";
      
      private static var _currentBGMusic:SoundFile = null;
      
      private static var _currentLocationBGMusic:SoundFile = null;
      
      private static var settings:SharedObject = SharedObject.getLocal("settings","/");
      
      public static const GROUP_BACKGROUND_MUSIC:Object = "background music";
      
      public static const GROUP_AMBIENT_SFX:Object = "ambient sfx";
      
      public static const GROUP_SFX:Object = "sfx";
      
      public static const WATER_SPLASH:SoundFile = new SoundFile("sfx/water_splash.mp3",GROUP_SFX,true);
      
      public static const SFX_SWF_FILE:SoundSwfFileSource = new SoundSwfFileSource(getFileURL("sfx/sfx"));
      
      public static const SAW:SoundFile = new SoundSwfFile("SAW",SFX_SWF_FILE,"assets.sounds.Saw",GROUP_SFX,true);
      
      public static const SFX_001_AMB_Laketown:SoundFile = new SoundSwfFile("SFX_001_AMB_Laketown",SFX_SWF_FILE,"assets.sounds.001_AMB_Laketown",GROUP_SFX,true,SoundType.SFX_AMBIENT_BG);
      
      public static const SFX_003_MOV_Step_soil_01:SoundFile = new SoundSwfFile("SFX_003_MOV_Step_soil_01",SFX_SWF_FILE,"assets.sounds.003_MOV_Step_soil_01",GROUP_SFX,true);
      
      public static const SFX_003_MOV_Step_soil_02:SoundFile = new SoundSwfFile("SFX_003_MOV_Step_soil_02",SFX_SWF_FILE,"assets.sounds.003_MOV_Step_soil_02",GROUP_SFX,true);
      
      public static const SFX_003_MOV_Step_soil_03:SoundFile = new SoundSwfFile("SFX_003_MOV_Step_soil_03",SFX_SWF_FILE,"assets.sounds.003_MOV_Step_soil_03",GROUP_SFX,true);
      
      public static const SFX_003_MOV_Step_soil_04:SoundFile = new SoundSwfFile("SFX_003_MOV_Step_soil_04",SFX_SWF_FILE,"assets.sounds.003_MOV_Step_soil_04",GROUP_SFX,true);
      
      public static const SFX_003_MOV_Step_soil_MERGED:SoundFile = new SoundSwfFile("SFX_003_MOV_Step_soil_MERGED",SFX_SWF_FILE,"assets.sounds.003_MOV_Step_soil_MERGED",GROUP_SFX,true,SoundType.STEPS,{
         "sounds":[SFX_003_MOV_Step_soil_01,SFX_003_MOV_Step_soil_02,SFX_003_MOV_Step_soil_03,SFX_003_MOV_Step_soil_04],
         "trackPlayDelayMS":240
      });
      
      public static const SFX_004_AMB_Rio_Tropical:SoundFile = new SoundSwfFile("SFX_004_AMB_Rio_Tropical",SFX_SWF_FILE,"assets.sounds.004_AMB_Rio_Tropical",GROUP_AMBIENT_SFX,true,SoundType.SFX_AMBIENT_BG);
      
      public static const SFX_005_AMB_Pinheira_Beach:SoundFile = new SoundSwfFile("SFX_005_AMB_Pinheira_Beach",SFX_SWF_FILE,"assets.sounds.005_AMB_Pinheira_Beach",GROUP_AMBIENT_SFX,true,SoundType.SFX_AMBIENT_BG);
      
      public static const SFX_006_AMB_Cool_Mountain:SoundFile = new SoundSwfFile("SFX_006_AMB_Cool_Mountain",SFX_SWF_FILE,"assets.sounds.006_AMB_Cool_Mountain",GROUP_AMBIENT_SFX,true,SoundType.SFX_AMBIENT_BG);
      
      public static const SFX_007_AMB_Mystic_Desert:SoundFile = new SoundSwfFile("SFX_007_AMB_Mystic_Desert",SFX_SWF_FILE,"assets.sounds.007_AMB_Mystic_Desert",GROUP_AMBIENT_SFX,true,SoundType.SFX_AMBIENT_BG);
      
      public static const SFX_008_AMB_Sibiri_city:SoundFile = new SoundSwfFile("SFX_008_AMB_Sibiri_city",SFX_SWF_FILE,"assets.sounds.008_AMB_Sibiri_city",GROUP_AMBIENT_SFX,true,SoundType.SFX_AMBIENT_BG);
      
      public static const SFX_009_AMB_Aquayama:SoundFile = new SoundSwfFile("SFX_009_AMB_Aquayama",SFX_SWF_FILE,"assets.sounds.009_AMB_Aquayama",GROUP_AMBIENT_SFX,true,SoundType.SFX_AMBIENT_BG);
      
      public static const SFX_010_AMB_Seagull_Harbor:SoundFile = new SoundSwfFile("SFX_010_AMB_Seagull_Harbor",SFX_SWF_FILE,"assets.sounds.010_AMB_Seagull_Harbor",GROUP_AMBIENT_SFX,true,SoundType.SFX_AMBIENT_BG);
      
      public static const SFX_011_AMB_Thombani_Town:SoundFile = new SoundSwfFile("SFX_011_AMB_Thombani_Town",SFX_SWF_FILE,"assets.sounds.011_AMB_Thombani_Town",GROUP_AMBIENT_SFX,true,SoundType.SFX_AMBIENT_BG);
      
      public static const SFX_012_AMB_Marshville:SoundFile = new SoundSwfFile("SFX_012_AMB_Marshville",SFX_SWF_FILE,"assets.sounds.012_AMB_Marshville",GROUP_AMBIENT_SFX,true,SoundType.SFX_AMBIENT_BG);
      
      public static const SFX_013_MOV_Step_grass_01:SoundFile = new SoundSwfFile("SFX_013_MOV_Step_grass_01",SFX_SWF_FILE,"assets.sounds.013_MOV_Step_grass_01",GROUP_SFX,true);
      
      public static const SFX_013_MOV_Step_grass_02:SoundFile = new SoundSwfFile("SFX_013_MOV_Step_grass_02",SFX_SWF_FILE,"assets.sounds.013_MOV_Step_grass_02",GROUP_SFX,true);
      
      public static const SFX_013_MOV_Step_grass_03:SoundFile = new SoundSwfFile("SFX_013_MOV_Step_grass_03",SFX_SWF_FILE,"assets.sounds.013_MOV_Step_grass_03",GROUP_SFX,true);
      
      public static const SFX_013_MOV_Step_grass_04:SoundFile = new SoundSwfFile("SFX_013_MOV_Step_grass_04",SFX_SWF_FILE,"assets.sounds.013_MOV_Step_grass_04",GROUP_SFX,true);
      
      public static const SFX_013_MOV_Step_grass_MERGED:SoundFile = new SoundSwfFile("SFX_013_MOV_Step_grass",SFX_SWF_FILE,"assets.sounds.013_MOV_Step_grass_MERGED",GROUP_SFX,true,SoundType.STEPS,{
         "sounds":[SFX_013_MOV_Step_grass_01,SFX_013_MOV_Step_grass_02,SFX_013_MOV_Step_grass_03,SFX_013_MOV_Step_grass_04],
         "trackPlayDelayMS":240
      });
      
      public static const SFX_014_MOV_Step_snow_01:SoundFile = new SoundSwfFile("SFX_014_MOV_Step_snow_01",SFX_SWF_FILE,"assets.sounds.014_MOV_Step_snow_01",GROUP_SFX,true);
      
      public static const SFX_014_MOV_Step_snow_02:SoundFile = new SoundSwfFile("SFX_014_MOV_Step_snow_02",SFX_SWF_FILE,"assets.sounds.014_MOV_Step_snow_02",GROUP_SFX,true);
      
      public static const SFX_014_MOV_Step_snow_03:SoundFile = new SoundSwfFile("SFX_014_MOV_Step_snow_03",SFX_SWF_FILE,"assets.sounds.014_MOV_Step_snow_03",GROUP_SFX,true);
      
      public static const SFX_014_MOV_Step_snow_04:SoundFile = new SoundSwfFile("SFX_014_MOV_Step_snow_04",SFX_SWF_FILE,"assets.sounds.014_MOV_Step_snow_04",GROUP_SFX,true);
      
      public static const SFX_014_MOV_Step_snow_MERGED:SoundFile = new SoundSwfFile("SFX_014_MOV_Step_snow",SFX_SWF_FILE,"assets.sounds.014_MOV_Step_snow_MERGED",GROUP_SFX,true,SoundType.STEPS,{
         "sounds":[SFX_014_MOV_Step_snow_01,SFX_014_MOV_Step_snow_02,SFX_014_MOV_Step_snow_03,SFX_014_MOV_Step_snow_04],
         "trackPlayDelayMS":240
      });
      
      public static const SFX_015_MOV_Step_bridge_01:SoundFile = new SoundSwfFile("SFX_015_MOV_Step_bridge_01",SFX_SWF_FILE,"assets.sounds.015_MOV_Step_bridge_01",GROUP_SFX,true);
      
      public static const SFX_015_MOV_Step_bridge_02:SoundFile = new SoundSwfFile("SFX_015_MOV_Step_bridge_02",SFX_SWF_FILE,"assets.sounds.015_MOV_Step_bridge_02",GROUP_SFX,true);
      
      public static const SFX_015_MOV_Step_bridge_03:SoundFile = new SoundSwfFile("SFX_015_MOV_Step_bridge_03",SFX_SWF_FILE,"assets.sounds.015_MOV_Step_bridge_03",GROUP_SFX,true);
      
      public static const SFX_015_MOV_Step_bridge_04:SoundFile = new SoundSwfFile("SFX_015_MOV_Step_bridge_04",SFX_SWF_FILE,"assets.sounds.015_MOV_Step_bridge_04",GROUP_SFX,true);
      
      public static const SFX_015_MOV_Step_bridge_MERGED:SoundFile = new SoundSwfFile("SFX_015_MOV_Step_bridge",SFX_SWF_FILE,"assets.sounds.015_MOV_Step_bridge_MERGED",GROUP_SFX,true,SoundType.STEPS,{
         "sounds":[SFX_015_MOV_Step_bridge_01,SFX_015_MOV_Step_bridge_02,SFX_015_MOV_Step_bridge_03,SFX_015_MOV_Step_bridge_04],
         "trackPlayDelayMS":240
      });
      
      public static const SFX_016_MOV_Step_sand_01:SoundFile = new SoundSwfFile("SFX_016_MOV_Step_sand_01",SFX_SWF_FILE,"assets.sounds.016_MOV_Step_sand_01",GROUP_SFX,true);
      
      public static const SFX_016_MOV_Step_sand_02:SoundFile = new SoundSwfFile("SFX_016_MOV_Step_sand_02",SFX_SWF_FILE,"assets.sounds.016_MOV_Step_sand_02",GROUP_SFX,true);
      
      public static const SFX_016_MOV_Step_sand_03:SoundFile = new SoundSwfFile("SFX_016_MOV_Step_sand_03",SFX_SWF_FILE,"assets.sounds.016_MOV_Step_sand_03",GROUP_SFX,true);
      
      public static const SFX_016_MOV_Step_sand_04:SoundFile = new SoundSwfFile("SFX_016_MOV_Step_sand_04",SFX_SWF_FILE,"assets.sounds.016_MOV_Step_sand_04",GROUP_SFX,true);
      
      public static const SFX_016_MOV_Step_sand_MERGED:SoundFile = new SoundSwfFile("SFX_016_MOV_Step_sand",SFX_SWF_FILE,"assets.sounds.016_MOV_Step_sand_MERGED",GROUP_SFX,true,SoundType.STEPS,{
         "sounds":[SFX_016_MOV_Step_sand_01,SFX_016_MOV_Step_sand_02,SFX_016_MOV_Step_sand_03,SFX_016_MOV_Step_sand_04],
         "trackPlayDelayMS":240
      });
      
      public static const SFX_017_AMB_Birds_regular_01:SoundFile = new SoundSwfFile("SFX_017_AMB_Birds_regular_01",SFX_SWF_FILE,"assets.sounds.017_AMB_Birds_regular_01",GROUP_AMBIENT_SFX,true);
      
      public static const SFX_017_AMB_Birds_regular_02:SoundFile = new SoundSwfFile("SFX_017_AMB_Birds_regular_02",SFX_SWF_FILE,"assets.sounds.017_AMB_Birds_regular_02",GROUP_AMBIENT_SFX,true);
      
      public static const SFX_017_AMB_Birds_regular_03:SoundFile = new SoundSwfFile("SFX_017_AMB_Birds_regular_03",SFX_SWF_FILE,"assets.sounds.017_AMB_Birds_regular_03",GROUP_AMBIENT_SFX,true);
      
      public static const SFX_017_AMB_Birds_regular_04:SoundFile = new SoundSwfFile("SFX_017_AMB_Birds_regular_04",SFX_SWF_FILE,"assets.sounds.017_AMB_Birds_regular_04",GROUP_AMBIENT_SFX,true);
      
      public static const SFX_017_AMB_Birds_regular_05:SoundFile = new SoundSwfFile("SFX_017_AMB_Birds_regular_05",SFX_SWF_FILE,"assets.sounds.017_AMB_Birds_regular_05",GROUP_AMBIENT_SFX,true);
      
      public static const SFX_017_AMB_Birds:SoundFile = new SoundSwfFile("SFX_017_AMB_Birds",SFX_SWF_FILE,"assets.sounds.017_AMB_Birds_regular_01",GROUP_AMBIENT_SFX,true,SoundType.SFX_AMBIENT_RANDOM,{
         "sounds":[SFX_017_AMB_Birds_regular_01,SFX_017_AMB_Birds_regular_02,SFX_017_AMB_Birds_regular_03,SFX_017_AMB_Birds_regular_04,SFX_017_AMB_Birds_regular_05],
         "appearMinMS":30 * 1000,
         "appearMaxMS":90 * 1000,
         "volumeMim":0.85,
         "volumeMax":1
      });
      
      public static const SFX_017_AMB_Birds_WM:SoundFile = new SoundSwfFile("SFX_017_AMB_Birds",SFX_SWF_FILE,"assets.sounds.017_AMB_Birds_regular_01",GROUP_AMBIENT_SFX,true,SoundType.SFX_AMBIENT_RANDOM,{
         "sounds":[SFX_017_AMB_Birds_regular_01,SFX_017_AMB_Birds_regular_02,SFX_017_AMB_Birds_regular_03,SFX_017_AMB_Birds_regular_04,SFX_017_AMB_Birds_regular_05],
         "appearMinMS":3 * 1000,
         "appearMaxMS":7 * 1000,
         "volumeMim":0.85,
         "volumeMax":1
      });
      
      public static const SFX_018_AMB_Birds_tropical_01:SoundFile = new SoundSwfFile("SFX_018_AMB_Birds_tropical_01",SFX_SWF_FILE,"assets.sounds.018_AMB_Birds_tropical_01",GROUP_AMBIENT_SFX,true);
      
      public static const SFX_018_AMB_Birds_tropical_02:SoundFile = new SoundSwfFile("SFX_018_AMB_Birds_tropical_02",SFX_SWF_FILE,"assets.sounds.018_AMB_Birds_tropical_02",GROUP_AMBIENT_SFX,true);
      
      public static const SFX_018_AMB_Birds_tropical_03:SoundFile = new SoundSwfFile("SFX_018_AMB_Birds_tropical_03",SFX_SWF_FILE,"assets.sounds.018_AMB_Birds_tropical_03",GROUP_AMBIENT_SFX,true);
      
      public static const SFX_018_AMB_Birds_tropical_04:SoundFile = new SoundSwfFile("SFX_018_AMB_Birds_tropical_04",SFX_SWF_FILE,"assets.sounds.018_AMB_Birds_tropical_04",GROUP_AMBIENT_SFX,true);
      
      public static const SFX_018_AMB_Birds_tropical_05:SoundFile = new SoundSwfFile("SFX_018_AMB_Birds_tropical_05",SFX_SWF_FILE,"assets.sounds.018_AMB_Birds_tropical_05",GROUP_AMBIENT_SFX,true);
      
      public static const SFX_018_AMB_Birds:SoundFile = new SoundSwfFile("",SFX_SWF_FILE,"assets.sounds.018_AMB_Birds_tropical_01",GROUP_AMBIENT_SFX,true,SoundType.SFX_AMBIENT_RANDOM,{
         "sounds":[SFX_018_AMB_Birds_tropical_01,SFX_018_AMB_Birds_tropical_02,SFX_018_AMB_Birds_tropical_03,SFX_018_AMB_Birds_tropical_04,SFX_018_AMB_Birds_tropical_05],
         "appearMinMS":30 * 1000,
         "appearMaxMS":90 * 1000,
         "volumeMim":0.85,
         "volumeMax":1
      });
      
      public static const SFX_019_AMB_Monkey_01:SoundFile = new SoundSwfFile("SFX_019_AMB_Monkey_01",SFX_SWF_FILE,"assets.sounds.019_AMB_Monkey_01",GROUP_AMBIENT_SFX,true);
      
      public static const SFX_019_AMB_Monkey_02:SoundFile = new SoundSwfFile("SFX_019_AMB_Monkey_02",SFX_SWF_FILE,"assets.sounds.019_AMB_Monkey_02",GROUP_AMBIENT_SFX,true);
      
      public static const SFX_019_AMB_Monkey_03:SoundFile = new SoundSwfFile("SFX_019_AMB_Monkey_03",SFX_SWF_FILE,"assets.sounds.019_AMB_Monkey_03",GROUP_AMBIENT_SFX,true);
      
      public static const SFX_019_AMB_Monkey_04:SoundFile = new SoundSwfFile("SFX_019_AMB_Monkey_04",SFX_SWF_FILE,"assets.sounds.019_AMB_Monkey_04",GROUP_AMBIENT_SFX,true);
      
      public static const SFX_019_AMB_Monkey_05:SoundFile = new SoundSwfFile("SFX_019_AMB_Monkey_05",SFX_SWF_FILE,"assets.sounds.019_AMB_Monkey_05",GROUP_AMBIENT_SFX,true);
      
      public static const SFX_019_AMB_Monkey:SoundFile = new SoundSwfFile("SFX_019_AMB_Monkey",SFX_SWF_FILE,"assets.sounds.019_AMB_Monkey_01",GROUP_AMBIENT_SFX,true,SoundType.SFX_AMBIENT_RANDOM,{
         "sounds":[SFX_019_AMB_Monkey_01,SFX_019_AMB_Monkey_02,SFX_019_AMB_Monkey_03,SFX_019_AMB_Monkey_04,SFX_019_AMB_Monkey_05],
         "appearMinMS":30 * 1000,
         "appearMaxMS":90 * 1000,
         "volumeMim":0.85,
         "volumeMax":1
      });
      
      public static const SFX_020_AMB_Campfire:SoundFile = new SoundSwfFile("SFX_020_AMB_Campfire",SFX_SWF_FILE,"assets.sounds.020_AMB_Campfire",GROUP_AMBIENT_SFX,true,SoundType.SFX_AMBIENT_POINT);
      
      public static const SFX_021_AMB_Waves:SoundFile = new SoundSwfFile("SFX_021_AMB_Waves",SFX_SWF_FILE,"assets.sounds.021_AMB_Waves",GROUP_AMBIENT_SFX,true,SoundType.SFX_AMBIENT_LINE);
      
      public static const SFX_022_AMB_Coral_indoor:SoundFile = new SoundSwfFile("SFX_022_AMB_Coral_indoor",SFX_SWF_FILE,"assets.sounds.022_AMB_Coral_indoor",GROUP_AMBIENT_SFX,true,SoundType.SFX_AMBIENT_BG);
      
      public static const SFX_023_AMB_Sand_gust_SOUND:SoundFile = new SoundSwfFile("SFX_023_AMB_Sand_gust_SOUND",SFX_SWF_FILE,"assets.sounds.023_AMB_Sand_gust",GROUP_AMBIENT_SFX,true);
      
      public static const SFX_023_AMB_Sand_gust_SFX:SoundFile = new SoundSwfFile("SFX_023_AMB_Sand_gust_SFX",SFX_SWF_FILE,"assets.sounds.023_AMB_Sand_gust",GROUP_AMBIENT_SFX,true,SoundType.SFX_AMBIENT_RANDOM,{
         "sounds":[SFX_023_AMB_Sand_gust_SOUND],
         "appearMinMS":60 * 1000,
         "appearMaxMS":180 * 1000,
         "volumeMim":1,
         "volumeMax":1
      });
      
      public static const SFX_024_AMB_Pyramid_indoor:SoundFile = new SoundSwfFile("SFX_024_AMB_Pyramid_indoor",SFX_SWF_FILE,"assets.sounds.024_AMB_Pyramid_indoor",GROUP_AMBIENT_SFX,true,SoundType.SFX_AMBIENT_BG);
      
      public static const SFX_025_AMB_Snow_gust_SOUND:SoundFile = new SoundSwfFile("SFX_025_AMB_Snow_gust_SOUND",SFX_SWF_FILE,"assets.sounds.025_AMB_Snow_gust",GROUP_AMBIENT_SFX,true);
      
      public static const SFX_025_AMB_Snow_gust_SFX:SoundFile = new SoundSwfFile("SFX_025_AMB_Snow_gust_SFX",SFX_SWF_FILE,"assets.sounds.025_AMB_Snow_gust",GROUP_AMBIENT_SFX,true,SoundType.SFX_AMBIENT_RANDOM,{
         "sounds":[SFX_025_AMB_Snow_gust_SOUND],
         "appearMinMS":60 * 1000,
         "appearMaxMS":180 * 1000,
         "volumeMim":1,
         "volumeMax":1
      });
      
      public static const SFX_026_AMB_Ice_MERGED:SoundFile = new SoundSwfFile("SFX_026_AMB_Ice_MERGED",SFX_SWF_FILE,"assets.sounds.026_AMB_Ice_MERGED",GROUP_AMBIENT_SFX,true);
      
      public static const SFX_027_AMB_Iglo_indoor:SoundFile = new SoundSwfFile("SFX_027_AMB_Iglo_indoor",SFX_SWF_FILE,"assets.sounds.027_AMB_Iglo_indoor",GROUP_AMBIENT_SFX,true,SoundType.SFX_AMBIENT_BG);
      
      public static const SFX_028_AMB_Bamboo_gust_SOUND:SoundFile = new SoundSwfFile("SFX_028_AMB_Bamboo_gust_SOUND",SFX_SWF_FILE,"assets.sounds.028_AMB_Bamboo_gust",GROUP_AMBIENT_SFX,true);
      
      public static const SFX_028_AMB_Bamboo_gust_SFX:SoundFile = new SoundSwfFile("SFX_028_AMB_Bamboo_gust_SFX",SFX_SWF_FILE,"assets.sounds.028_AMB_Bamboo_gust",GROUP_AMBIENT_SFX,true,SoundType.SFX_AMBIENT_RANDOM,{
         "sounds":[SFX_028_AMB_Bamboo_gust_SOUND],
         "appearMinMS":60 * 1000,
         "appearMaxMS":180 * 1000,
         "volumeMim":1,
         "volumeMax":1
      });
      
      public static const SFX_029_AMB_Walkway_wood_01:SoundFile = new SoundSwfFile("SFX_029_AMB_Walkway_wood_01",SFX_SWF_FILE,"assets.sounds.029_AMB_Walkway_wood_01",GROUP_AMBIENT_SFX,true);
      
      public static const SFX_029_AMB_Walkway_wood_02:SoundFile = new SoundSwfFile("SFX_029_AMB_Walkway_wood_02",SFX_SWF_FILE,"assets.sounds.029_AMB_Walkway_wood_02",GROUP_AMBIENT_SFX,true);
      
      public static const SFX_029_AMB_Walkway_wood:SoundFile = new SoundSwfFile("SFX_029_AMB_Walkway_wood",SFX_SWF_FILE,"assets.sounds.029_AMB_Walkway_wood_02",GROUP_AMBIENT_SFX,true,SoundType.SFX_AMBIENT_RANDOM,{
         "sounds":[SFX_029_AMB_Walkway_wood_01,SFX_029_AMB_Walkway_wood_02],
         "appearMinMS":60 * 1000,
         "appearMaxMS":180 * 1000,
         "volumeMim":1,
         "volumeMax":1
      });
      
      public static const SFX_030_AMB_Buoy_01:SoundFile = new SoundSwfFile("",SFX_SWF_FILE,"assets.sounds.030_AMB_Buoy_01",GROUP_AMBIENT_SFX,true);
      
      public static const SFX_030_AMB_Buoy_02:SoundFile = new SoundSwfFile("",SFX_SWF_FILE,"assets.sounds.030_AMB_Buoy_02",GROUP_AMBIENT_SFX,true);
      
      public static const SFX_030_AMB_Buoy:SoundFile = new SoundSwfFile("",SFX_SWF_FILE,"assets.sounds.030_AMB_Buoy_01",GROUP_AMBIENT_SFX,true,SoundType.SFX_AMBIENT_RANDOM_POINT_LIST,{
         "sounds":[SFX_030_AMB_Buoy_01,SFX_030_AMB_Buoy_02],
         "loops":0
      });
      
      public static const SFX_031_AMB_Waterfall:SoundFile = new SoundSwfFile("SFX_031_AMB_Waterfall",SFX_SWF_FILE,"assets.sounds.031_AMB_Waterfall",GROUP_AMBIENT_SFX,true,SoundType.SFX_AMBIENT_POINT);
      
      public static const SFX_031_AMB_Waterfall_WM:SoundFile = new SoundSwfFile("SFX_031_AMB_Waterfall",SFX_SWF_FILE,"assets.sounds.031_AMB_Waterfall",GROUP_AMBIENT_SFX,true,SoundType.SFX_AMBIENT_BG,{"volume":0.1});
      
      public static const SFX_032_AMB_Swamp_bubble_01:SoundFile = new SoundSwfFile("SFX_032_AMB_Swamp_bubble_01",SFX_SWF_FILE,"assets.sounds.032_AMB_Swamp_bubble_01",GROUP_AMBIENT_SFX,true);
      
      public static const SFX_032_AMB_Swamp_bubble_02:SoundFile = new SoundSwfFile("SFX_032_AMB_Swamp_bubble_02",SFX_SWF_FILE,"assets.sounds.032_AMB_Swamp_bubble_02",GROUP_AMBIENT_SFX,true);
      
      public static const SFX_032_AMB_Swamp_bubble_03:SoundFile = new SoundSwfFile("SFX_032_AMB_Swamp_bubble_03",SFX_SWF_FILE,"assets.sounds.032_AMB_Swamp_bubble_03",GROUP_AMBIENT_SFX,true);
      
      public static const SFX_032_AMB_Swamp_bubble:SoundFile = new SoundSwfFile("SFX_032_AMB_Swamp_bubble",SFX_SWF_FILE,"assets.sounds.032_AMB_Swamp_bubble_01",GROUP_AMBIENT_SFX,true,SoundType.SFX_AMBIENT_RANDOM,{
         "sounds":[SFX_032_AMB_Swamp_bubble_01,SFX_032_AMB_Swamp_bubble_02,SFX_032_AMB_Swamp_bubble_03],
         "appearMinMS":30 * 1000,
         "appearMaxMS":90 * 1000,
         "volumeMim":1,
         "volumeMax":1
      });
      
      public static const SFX_033_AMB_Boat_tournament:SoundFile = new SoundSwfFile("SFX_033_AMB_Boat_tournament",SFX_SWF_FILE,"assets.sounds.033_AMB_Boat_tournament",GROUP_AMBIENT_SFX,true,SoundType.SFX_AMBIENT_POINT);
      
      public static const SFX_034_AMB_Tournament_01:SoundFile = new SoundSwfFile("SFX_034_AMB_Tournament_01",SFX_SWF_FILE,"assets.sounds.034_AMB_Tournament_01",GROUP_AMBIENT_SFX,true,SoundType.SFX_AMBIENT_BG);
      
      public static const SFX_035_AMB_Tournament_02:SoundFile = new SoundSwfFile("SFX_035_AMB_Tournament_02",SFX_SWF_FILE,"assets.sounds.035_AMB_Tournament_02",GROUP_AMBIENT_SFX,true,SoundType.SFX_AMBIENT_BG);
      
      public static const SFX_036_AMB_Tournament_03:SoundFile = new SoundSwfFile("SFX_036_AMB_Tournament_03",SFX_SWF_FILE,"assets.sounds.036_AMB_Tournament_03",GROUP_AMBIENT_SFX,true,SoundType.SFX_AMBIENT_BG);
      
      public static const SFX_038_MOV_Throw_line:SoundFile = new SoundSwfFile("SFX_038_MOV_Throw_line",SFX_SWF_FILE,"assets.sounds.038_MOV_Throw_line",GROUP_SFX,true);
      
      public static const SFX_039_MOV_Line_hit_water_01:SoundFile = new SoundSwfFile("SFX_039_MOV_Line_hit_water_01",SFX_SWF_FILE,"assets.sounds.039_MOV_Line_hit_water_01",GROUP_SFX,true);
      
      public static const SFX_039_MOV_Line_hit_water_02:SoundFile = new SoundSwfFile("SFX_039_MOV_Line_hit_water_02",SFX_SWF_FILE,"assets.sounds.039_MOV_Line_hit_water_02",GROUP_SFX,true);
      
      public static const SFX_040_UI_Catch_fish:SoundFile = new SoundSwfFile("",SFX_SWF_FILE,"assets.sounds.040_UI_Catch_fish",GROUP_SFX,true);
      
      public static const SFX_041_UI_Hover_button:SoundFile = new SoundSwfFile("SFX_041_UI_Hover_button",SFX_SWF_FILE,"assets.sounds.041_UI_Hover_button",GROUP_SFX,true,SoundType.SFX);
      
      public static const SFX_042_UI_Click_button:SoundFile = new SoundSwfFile("SFX_042_UI_Click_button",SFX_SWF_FILE,"assets.sounds.042_UI_Click_button",GROUP_SFX,true,SoundType.SFX);
      
      public static const SFX_043_UI_Chat_message:SoundFile = new SoundSwfFile("SFX_043_UI_Chat_message",SFX_SWF_FILE,"assets.sounds.043_UI_Chat_message",GROUP_SFX,true,SoundType.SFX);
      
      public static const SFX_044_AMB_Sandstorm:SoundFile = new SoundSwfFile("SFX_044_AMB_Sandstorm",SFX_SWF_FILE,"assets.sounds.044_AMB_Sandstorm",GROUP_SFX,true,SoundType.WEATHER);
      
      public static const SFX_045_AMB_Light_rain:SoundFile = new SoundSwfFile("SFX_045_AMB_Light_rain",SFX_SWF_FILE,"assets.sounds.045_AMB_Light_rain",GROUP_SFX,true,SoundType.WEATHER);
      
      public static const SFX_046_AMB_Heavy_rain:SoundFile = new SoundSwfFile("SFX_046_AMB_Heavy_rain",SFX_SWF_FILE,"assets.sounds.046_AMB_Heavy_rain",GROUP_SFX,true,SoundType.WEATHER);
      
      public static const SFX_047_MUS_Catch_fail:SoundFile = new SoundSwfFile("SFX_047_MUS_Catch_fail",SFX_SWF_FILE,"assets.sounds.047_MUS_Catch_fail",GROUP_SFX,true,SoundType.SFX);
      
      public static const SFX_047_MUS_Catch_music:SoundFile = new SoundSwfFile("SFX_047_MUS_Catch_music",SFX_SWF_FILE,"assets.sounds.047_MUS_Catch_music",GROUP_SFX,true,SoundType.SFX);
      
      public static const SFX_047_MUS_Catch_success:SoundFile = new SoundSwfFile("SFX_047_MUS_Catch_success",SFX_SWF_FILE,"assets.sounds.047_MUS_Catch_success",GROUP_SFX,true,SoundType.SFX);
      
      public static const SFX_048_UI_Catch_no_fish:SoundFile = new SoundSwfFile("SFX_048_UI_Catch_no_fish",SFX_SWF_FILE,"assets.sounds.048_UI_Catch_no_fish",GROUP_SFX,true,SoundType.SFX);
      
      public static const SFX_049_UI_Switch_tab:SoundFile = new SoundSwfFile("SFX_049_UI_Switch_tab",SFX_SWF_FILE,"assets.sounds.049_UI_Switch_tab",GROUP_SFX,true,SoundType.SFX);
      
      public static const SFX_050_UI_Select_item:SoundFile = new SoundSwfFile("SFX_050_UI_Select_item",SFX_SWF_FILE,"assets.sounds.050_UI_Select_item",GROUP_SFX,true,SoundType.SFX);
      
      public static const SFX_051_UI_Open_menu:SoundFile = new SoundSwfFile("SFX_051_UI_Open_menu",SFX_SWF_FILE,"assets.sounds.051_UI_Open_menu",GROUP_SFX,true,SoundType.SFX);
      
      public static const SFX_052_UI_Close_menu:SoundFile = new SoundSwfFile("SFX_052_UI_Close_menu",SFX_SWF_FILE,"assets.sounds.052_UI_Close_menu",GROUP_SFX,true,SoundType.SFX);
      
      public static const SFX_053_UI_Confirm_click:SoundFile = new SoundSwfFile("SFX_053_UI_Confirm_click",SFX_SWF_FILE,"assets.sounds.053_UI_Confirm_click",GROUP_SFX,true,SoundType.SFX);
      
      public static const SFX_054_UI_Buy_click:SoundFile = new SoundSwfFile("SFX_054_UI_Buy_click",SFX_SWF_FILE,"assets.sounds.054_UI_Buy_click",GROUP_SFX,true,SoundType.SFX);
      
      public static const SFX_055_MOV_Step_gravel_01:SoundFile = new SoundSwfFile("SFX_055_MOV_Step_gravel_01",SFX_SWF_FILE,"assets.sounds.055_MOV_Step_gravel_01",GROUP_SFX,true);
      
      public static const SFX_055_MOV_Step_gravel_02:SoundFile = new SoundSwfFile("SFX_055_MOV_Step_gravel_02",SFX_SWF_FILE,"assets.sounds.055_MOV_Step_gravel_02",GROUP_SFX,true);
      
      public static const SFX_055_MOV_Step_gravel_03:SoundFile = new SoundSwfFile("SFX_055_MOV_Step_gravel_03",SFX_SWF_FILE,"assets.sounds.055_MOV_Step_gravel_03",GROUP_SFX,true);
      
      public static const SFX_055_MOV_Step_gravel_04:SoundFile = new SoundSwfFile("SFX_055_MOV_Step_gravel_04",SFX_SWF_FILE,"assets.sounds.055_MOV_Step_gravel_04",GROUP_SFX,true);
      
      public static const SFX_055_MOV_Step_gravel_MERGED:SoundFile = new SoundSwfFile("SFX_055_MOV_Step_gravel_MERGED",SFX_SWF_FILE,"assets.sounds.055_MOV_Step_gravel_MERGED",GROUP_SFX,true,SoundType.STEPS,{
         "sounds":[SFX_055_MOV_Step_gravel_01,SFX_055_MOV_Step_gravel_02,SFX_055_MOV_Step_gravel_03,SFX_055_MOV_Step_gravel_04],
         "trackPlayDelayMS":240
      });
      
      public static const SFX_056_MOV_Step_water_01:SoundFile = new SoundSwfFile("SFX_056_MOV_Step_water_01",SFX_SWF_FILE,"assets.sounds.056_MOV_Step_water_01",GROUP_SFX,true);
      
      public static const SFX_056_MOV_Step_water_02:SoundFile = new SoundSwfFile("SFX_056_MOV_Step_water_02",SFX_SWF_FILE,"assets.sounds.056_MOV_Step_water_02",GROUP_SFX,true);
      
      public static const SFX_056_MOV_Step_water_03:SoundFile = new SoundSwfFile("SFX_056_MOV_Step_water_03",SFX_SWF_FILE,"assets.sounds.056_MOV_Step_water_03",GROUP_SFX,true);
      
      public static const SFX_056_MOV_Step_water_04:SoundFile = new SoundSwfFile("SFX_056_MOV_Step_water_04",SFX_SWF_FILE,"assets.sounds.056_MOV_Step_water_04",GROUP_SFX,true);
      
      public static const SFX_056_MOV_Step_water_MERGED:SoundFile = new SoundSwfFile("SFX_056_MOV_Step_water_MERGED",SFX_SWF_FILE,"assets.sounds.056_MOV_Step_water_MERGED",GROUP_SFX,true,SoundType.STEPS,{
         "sounds":[SFX_056_MOV_Step_water_01,SFX_056_MOV_Step_water_02,SFX_056_MOV_Step_water_03,SFX_056_MOV_Step_water_04],
         "trackPlayDelayMS":240
      });
      
      public static const SFX_057_MOV_Reel_rod:SoundFile = new SoundSwfFile("SFX_057_MOV_Reel_rod",SFX_SWF_FILE,"assets.sounds.057_MOV_Reel_rod",GROUP_SFX,true,SoundType.SFX);
      
      public static const SFX_059_UI_Level_increase_count:SoundFile = new SoundSwfFile("SFX_059_UI_Level_increase_count",SFX_SWF_FILE,"assets.sounds.059_UI_Level_increase_count",GROUP_SFX,true,SoundType.SFX);
      
      public static const SFX_059_UI_Level_increase_ending:SoundFile = new SoundSwfFile("SFX_059_UI_Level_increase_ending",SFX_SWF_FILE,"assets.sounds.059_UI_Level_increase_ending",GROUP_SFX,true,SoundType.SFX);
      
      public static const SFX_060_UI_Fish_coin:SoundFile = new SoundSwfFile("SFX_060_UI_Fish_coin",SFX_SWF_FILE,"assets.sounds.060_UI_Fish_coin",GROUP_SFX,true,SoundType.SFX);
      
      public static const SFX_061_UI_Seashell_collect:SoundFile = new SoundSwfFile("SFX_061_UI_Seashell_collect",SFX_SWF_FILE,"assets.sounds.061_UI_Seashell_collect",GROUP_SFX,true,SoundType.SFX);
      
      public static const SFX_062_UI_Timer_count_end:SoundFile = new SoundSwfFile("SFX_062_UI_Timer_count_end",SFX_SWF_FILE,"assets.sounds.062_UI_Timer_count_end",GROUP_SFX,true,SoundType.SFX);
      
      public static const SFX_062_UI_Timer_count_normal:SoundFile = new SoundSwfFile("SFX_062_UI_Timer_count_normal",SFX_SWF_FILE,"assets.sounds.062_UI_Timer_count_normal",GROUP_SFX,true,SoundType.SFX);
      
      public static const SFX_063_MOV_Raft_float:SoundFile = new SoundSwfFile("SFX_063_MOV_Raft_float",SFX_SWF_FILE,"assets.sounds.063_MOV_Raft_float",GROUP_SFX,true,SoundType.SFX);
      
      public static const SFX_064_MOV_Thombani_pillars_end:SoundFile = new SoundSwfFile("SFX_064_MOV_Thombani_pillars_end",SFX_SWF_FILE,"assets.sounds.064_MOV_Thombani_pillars_end",GROUP_SFX,true,SoundType.SFX);
      
      public static const SFX_064_MOV_Thombani_pillars_loop:SoundFile = new SoundSwfFile("SFX_064_MOV_Thombani_pillars_loop",SFX_SWF_FILE,"assets.sounds.064_MOV_Thombani_pillars_loop",GROUP_SFX,true,SoundType.SFX);
      
      public static const SFX_065_MOV_Tournament_doors:SoundFile = new SoundSwfFile("SFX_065_MOV_Tournament_doors",SFX_SWF_FILE,"assets.sounds.065_MOV_Tournament_doors",GROUP_SFX,true,SoundType.SFX);
      
      public static const SFX_066_MUS_Tournament_win:SoundFile = new SoundSwfFile("SFX_066_MUS_Tournament_win",SFX_SWF_FILE,"assets.sounds.066_MUS_Tournament_win",GROUP_SFX,true,SoundType.SFX);
      
      public static const SFX_067_MUS_Tournament_lose:SoundFile = new SoundSwfFile("SFX_067_MUS_Tournament_lose",SFX_SWF_FILE,"assets.sounds.067_MUS_Tournament_lose",GROUP_SFX,true,SoundType.SFX);
      
      public static const SFX_068_Tournament_boat_horn:SoundFile = new SoundSwfFile("SFX_068_Tournament_boat_horn",SFX_SWF_FILE,"assets.sounds.068_Tournament_boat_horn",GROUP_SFX,true,SoundType.SFX_AMBIENT_RANDOM_POINT,{"loops":0});
      
      public static const SFX_069_Fish_bites_splash:SoundFile = new SoundSwfFile("SFX_069_Fish_bites_splash",SFX_SWF_FILE,"assets.sounds.069_Fish_bites_splash",GROUP_SFX,true,SoundType.SFX);
      
      public static const SFX_070_UI_Generic_ping:SoundFile = new SoundSwfFile("SFX_070_UI_Generic_ping",SFX_SWF_FILE,"assets.sounds.070_UI_Generic_ping",GROUP_SFX,true,SoundType.SFX);
      
      public static const SFX_071_MOV_Step_metal_01:SoundFile = new SoundSwfFile("SFX_071_MOV_Step_metal_01",SFX_SWF_FILE,"assets.sounds.071_MOV_Step_metal_01",GROUP_SFX,true);
      
      public static const SFX_071_MOV_Step_metal_02:SoundFile = new SoundSwfFile("SFX_071_MOV_Step_metal_02",SFX_SWF_FILE,"assets.sounds.071_MOV_Step_metal_02",GROUP_SFX,true);
      
      public static const SFX_071_MOV_Step_metal_03:SoundFile = new SoundSwfFile("SFX_071_MOV_Step_metal_03",SFX_SWF_FILE,"assets.sounds.071_MOV_Step_metal_03",GROUP_SFX,true);
      
      public static const SFX_071_MOV_Step_metal_04:SoundFile = new SoundSwfFile("SFX_071_MOV_Step_metal_04",SFX_SWF_FILE,"assets.sounds.071_MOV_Step_metal_04",GROUP_SFX,true);
      
      public static const SFX_071_MOV_Step_metal:SoundFile = new SoundSwfFile("SFX_071_MOV_Step_metal",SFX_SWF_FILE,"assets.sounds.071_MOV_Step_metal_04",GROUP_SFX,true,SoundType.STEPS,{
         "sounds":[SFX_071_MOV_Step_metal_01,SFX_071_MOV_Step_metal_02,SFX_071_MOV_Step_metal_03,SFX_071_MOV_Step_metal_04],
         "trackPlayDelayMS":240
      });
      
      public static const SFX_072_AMB_Dino_eating:SoundFile = new SoundSwfFile("SFX_072_AMB_Dino_eating",SFX_SWF_FILE,"sDinoEating",GROUP_AMBIENT_SFX,true,SoundType.SFX_AMBIENT_POINT);
      
      public static const SFX_073_AMB_Fruits_crushing:SoundFile = new SoundSwfFile("SFX_073_AMB_Fruits_crushing",SFX_SWF_FILE,"sFruitsCrushing",GROUP_SFX,true,SoundType.SFX);
      
      public static const SFX_074_UI_Fruit_collect:SoundFile = new SoundSwfFile("SFX_074_UI_Fruit_collect",SFX_SWF_FILE,"sFruitCollect",GROUP_SFX,true,SoundType.SFX);
      
      public static const SFX_075_UI_Fossil_collect:SoundFile = new SoundSwfFile("SFX_075_UI_Fossil_collect",SFX_SWF_FILE,"sFossilCollect",GROUP_SFX,true,SoundType.SFX);
      
      public static const SFX_076_AMB_Waterfall_small:SoundFile = new SoundSwfFile("SFX_076_AMB_Waterfall_small",SFX_SWF_FILE,"sWaterfallSmall",GROUP_AMBIENT_SFX,true,SoundType.SFX_AMBIENT_POINT,{"volume":0.6});
      
      public static const SFX_077_CLUB_AREA_ENTRANCE:SoundFile = new SoundSwfFile("sf_077_club_area_entrance",SFX_SWF_FILE,"sClubAreaEntrance",GROUP_AMBIENT_SFX,true,SoundType.SFX_AMBIENT_POINT,{"volume":0.6});
      
      public static const SFX_078_UI_Wheel_of_fortune_win:SoundFile = new SoundSwfFile("SFX_078_UI_Wheel_of_fortune_win",SFX_SWF_FILE,"sWheelOfFortuneWin",GROUP_SFX,true,SoundType.SFX,{"volume":1});
      
      public static const SFX_079_UI_Wheel_of_fortune_spin:SoundFile = new SoundSwfFile("SFX_079_UI_Wheel_of_fortune_spin",SFX_SWF_FILE,"sWheelOfFortuneSpin",GROUP_SFX,true,SoundType.SFX,{"volume":1});
      
      public static const LOCATION_BG_MUSIC:Dictionary = new Dictionary();
      
      private static var _volumeSounds:Array = [];
      
      private static var _ambSounds:Array = [];
      
      private static var _seq:Vector.<SoundFile> = new Vector.<SoundFile>();
      
      LOCATION_BG_MUSIC[1] = new SoundSwfFile("AREA_01_Laketown",new SoundSwfFileSource(getFileURL("AREA_01_Laketown")),"assets.sounds.LocationBackgroundMusic",GROUP_BACKGROUND_MUSIC,false,SoundType.LOCATION_BACKGROUND);
      LOCATION_BG_MUSIC[2] = new SoundSwfFile("AREA_02_Rio_Tropical",new SoundSwfFileSource(getFileURL("AREA_02_Rio_Tropical")),"assets.sounds.LocationBackgroundMusic",GROUP_BACKGROUND_MUSIC,false,SoundType.LOCATION_BACKGROUND);
      LOCATION_BG_MUSIC[3] = new SoundSwfFile("AREA_03_Pinheira_Beach",new SoundSwfFileSource(getFileURL("AREA_03_Pinheira_Beach")),"assets.sounds.LocationBackgroundMusic",GROUP_BACKGROUND_MUSIC,false,SoundType.LOCATION_BACKGROUND);
      LOCATION_BG_MUSIC[4] = new SoundSwfFile("AREA_04_Cool_Mountain",new SoundSwfFileSource(getFileURL("AREA_04_Cool_Mountain")),"assets.sounds.LocationBackgroundMusic",GROUP_BACKGROUND_MUSIC,false,SoundType.LOCATION_BACKGROUND);
      LOCATION_BG_MUSIC[5] = new SoundSwfFile("AREA_05_Mystic_Desert",new SoundSwfFileSource(getFileURL("AREA_05_Mystic_Desert")),"assets.sounds.LocationBackgroundMusic",GROUP_BACKGROUND_MUSIC,false,SoundType.LOCATION_BACKGROUND);
      LOCATION_BG_MUSIC[6] = new SoundSwfFile("AREA_06_Sibiri_City",new SoundSwfFileSource(getFileURL("AREA_06_Sibiri_City")),"assets.sounds.LocationBackgroundMusic",GROUP_BACKGROUND_MUSIC,false,SoundType.LOCATION_BACKGROUND);
      LOCATION_BG_MUSIC[7] = new SoundSwfFile("AREA_07_Aquayama",new SoundSwfFileSource(getFileURL("AREA_07_Aquayama")),"assets.sounds.LocationBackgroundMusic",GROUP_BACKGROUND_MUSIC,false,SoundType.LOCATION_BACKGROUND);
      LOCATION_BG_MUSIC[8] = new SoundSwfFile("AREA_08_Seagull_Harbor",new SoundSwfFileSource(getFileURL("AREA_08_Seagull_Harbor")),"assets.sounds.LocationBackgroundMusic",GROUP_BACKGROUND_MUSIC,false,SoundType.LOCATION_BACKGROUND);
      LOCATION_BG_MUSIC[9] = new SoundSwfFile("AREA_09_Thombani_Town",new SoundSwfFileSource(getFileURL("AREA_09_Thombani_Town")),"assets.sounds.LocationBackgroundMusic",GROUP_BACKGROUND_MUSIC,false,SoundType.LOCATION_BACKGROUND);
      LOCATION_BG_MUSIC[10] = new SoundSwfFile("AREA_10_Marshville",new SoundSwfFileSource(getFileURL("AREA_10_Marshville")),"assets.sounds.LocationBackgroundMusic",GROUP_BACKGROUND_MUSIC,false,SoundType.LOCATION_BACKGROUND);
      LOCATION_BG_MUSIC[11] = new SoundSwfFile("AREA_11_Palm_Island",new SoundSwfFileSource(getFileURL("AREA_11_Palm_Island")),"sLocationBackgroundMusic",GROUP_BACKGROUND_MUSIC,false,SoundType.LOCATION_BACKGROUND);
      LOCATION_BG_MUSIC[12] = new SoundSwfFile("AREA_12_Lucky_Raft",new SoundSwfFileSource(getFileURL("AREA_12_Lucky_Raft")),"sLocationBackgroundMusic",GROUP_BACKGROUND_MUSIC,false,SoundType.LOCATION_BACKGROUND);
      LOCATION_BG_MUSIC[101] = LOCATION_BG_MUSIC[1];
      LOCATION_BG_MUSIC[102] = null;
      LOCATION_BG_MUSIC[103] = null;
      LOCATION_BG_MUSIC[104] = new SoundSwfFile("AREA_05_Mystic_Desert_Pyramid",new SoundSwfFileSource(getFileURL("AREA_05_Mystic_Desert_Pyramid")),"assets.sounds.LocationBackgroundMusic",GROUP_BACKGROUND_MUSIC,false,SoundType.LOCATION_BACKGROUND);
      LOCATION_BG_MUSIC[105] = new SoundSwfFile("AREA_06_Sibiri_City_Igloo",new SoundSwfFileSource(getFileURL("AREA_06_Sibiri_City_Igloo")),"assets.sounds.LocationBackgroundMusic",GROUP_BACKGROUND_MUSIC,false,SoundType.LOCATION_BACKGROUND);
      LOCATION_BG_MUSIC[106] = new SoundSwfFile("AREA_03_Pinheira_Beach_Fishmarket",new SoundSwfFileSource(getFileURL("AREA_03_Pinheira_Beach_Fishmarket")),"assets.sounds.LocationBackgroundMusic",GROUP_BACKGROUND_MUSIC,false,SoundType.LOCATION_BACKGROUND);
      LOCATION_BG_MUSIC[107] = new SoundSwfFile("AREA_01_Laketown_DecoShop",new SoundSwfFileSource(getFileURL("AREA_01_Laketown_DecoShop")),"assets.sounds.LocationBackgroundMusic",GROUP_BACKGROUND_MUSIC,false,SoundType.LOCATION_BACKGROUND);
      LOCATION_BG_MUSIC[108] = new SoundSwfFile("AREA_07_Aquayama_Lost_Valley",new SoundSwfFileSource(getFileURL("AREA_07_Aquayama_Lost_Valley")),"sBackground",GROUP_BACKGROUND_MUSIC,false,SoundType.LOCATION_BACKGROUND);
      LOCATION_BG_MUSIC[109] = null;
      LOCATION_BG_MUSIC[110] = LOCATION_BG_MUSIC[2];
      LOCATION_BG_MUSIC[111] = new SoundSwfFile("AREA_11_Palm_Island_Pirate_Cave",new SoundSwfFileSource(getFileURL("AREA_11_Palm_Island_Pirate_Cave")),"sLocationBackgroundMusic",GROUP_BACKGROUND_MUSIC,false,SoundType.LOCATION_BACKGROUND);
      LOCATION_BG_MUSIC[112] = new SoundSwfFile("area_12_club_area",new SoundSwfFileSource(getFileURL("area_12_club_area")),"sLocationBackgroundMusic",GROUP_BACKGROUND_MUSIC,false,SoundType.LOCATION_BACKGROUND);
      LOCATION_BG_MUSIC[201] = new SoundSwfFile("TOURNAMENT_01_Boat_On_Sea",new SoundSwfFileSource(getFileURL("TOURNAMENT_01_Boat_On_Sea")),"assets.sounds.LocationBackgroundMusic",GROUP_BACKGROUND_MUSIC,false,SoundType.LOCATION_BACKGROUND);
      LOCATION_BG_MUSIC[202] = new SoundSwfFile("TOURNAMENT_02_Lake_Run",new SoundSwfFileSource(getFileURL("TOURNAMENT_02_Lake_Run")),"assets.sounds.LocationBackgroundMusic",GROUP_BACKGROUND_MUSIC,false,SoundType.LOCATION_BACKGROUND);
      LOCATION_BG_MUSIC[203] = new SoundSwfFile("TOURNAMENT_03_Race",new SoundSwfFileSource(getFileURL("TOURNAMENT_03_Race")),"assets.sounds.LocationBackgroundMusic",GROUP_BACKGROUND_MUSIC,false,SoundType.LOCATION_BACKGROUND);
      LOCATION_BG_MUSIC[204] = LOCATION_BG_MUSIC[11];
      LOCATION_BG_MUSIC[300] = new SoundSwfFile("PrivateHouse_own",new SoundSwfFileSource(getFileURL("PrivateHouse")),"assets.sounds.LocationBackgroundMusicOwn",GROUP_BACKGROUND_MUSIC,false,SoundType.LOCATION_BACKGROUND);
      LOCATION_BG_MUSIC[400] = new SoundSwfFile("PrivateHouse_friend",new SoundSwfFileSource(getFileURL("PrivateHouse")),"assets.sounds.LocationBackgroundMusicFriend",GROUP_BACKGROUND_MUSIC,false,SoundType.LOCATION_BACKGROUND);
      
      public function FishaoSoundManager()
      {
         super();
      }
      
      public static function load() : void
      {
         var _loc1_:SoundFile = null;
         for each(_loc1_ in SoundFile.loadOnCreation)
         {
            loadSoundFile(_loc1_);
         }
         GameSwf.settings.addEventListener(SettingsManager.MUSIC_VOLUME,onMusicVolume);
         GameSwf.settings.addEventListener(SettingsManager.SFX_VOLUME,onSfxVolume);
         onMusicVolume();
         onSfxVolume();
      }
      
      private static function onMusicVolume(param1:DataEvent = null) : void
      {
         if(GameSwf.settings.music)
         {
            setVolume(GROUP_BACKGROUND_MUSIC,GameSwf.settings.getSettings().backMusic);
            unMuteGroup(GROUP_BACKGROUND_MUSIC);
         }
         else
         {
            mute(GROUP_BACKGROUND_MUSIC);
         }
      }
      
      private static function onSfxVolume(param1:DataEvent = null) : void
      {
         if(GameSwf.settings.sfx)
         {
            setVolume(GROUP_SFX,GameSwf.settings.getSettings().soundEffects);
            setVolume(GROUP_AMBIENT_SFX,GameSwf.settings.getSettings().soundEffects);
            unMuteGroup(GROUP_SFX);
            unMuteGroup(GROUP_AMBIENT_SFX);
         }
         else
         {
            mute(GROUP_SFX);
            mute(GROUP_AMBIENT_SFX);
         }
      }
      
      public static function loadSoundFile(param1:SoundFile) : void
      {
         if(param1 is SoundSwfFile)
         {
            _soundManager.loadSwfSoundFile(SoundSwfFile(param1));
         }
         else
         {
            _soundManager.loadSoundFile(param1,getFileURL(String(param1.source)));
         }
      }
      
      private static function getFileURL(param1:String) : String
      {
         return Config.ASSET_2_SERVER + "data/sounds/" + param1 + ".swf?r=" + BuildConfig.VERSION;
      }
      
      public static function playLoopPosition(param1:SoundFile) : *
      {
         var _loc2_:* = _soundManager.playLoop(param1);
         if(_loc2_ != null)
         {
            if(_loc2_ is PointSoundDecorator)
            {
               if(_volumeSounds.indexOf(_loc2_) == -1)
               {
                  _volumeSounds.push(_loc2_);
               }
            }
         }
         return _loc2_;
      }
      
      public static function playPosition(param1:SoundFile) : *
      {
         var _loc2_:* = _soundManager.play(param1);
         if(_loc2_ != null)
         {
            if(_loc2_ is PointSoundDecorator)
            {
               if(_volumeSounds.indexOf(_loc2_) == -1)
               {
                  _volumeSounds.push(_loc2_);
               }
            }
         }
         return _loc2_;
      }
      
      public static function stopPosition(param1:SoundFile) : void
      {
         var _loc2_:int = _volumeSounds.indexOf(param1);
         if(_loc2_ > -1)
         {
            _volumeSounds.splice(_loc2_,1);
         }
         stopLoop(param1);
      }
      
      public static function play(param1:SoundFile, param2:Number = NaN) : *
      {
         return _soundManager.play(param1,0,param2);
      }
      
      public static function playLoop(param1:SoundFile, param2:Number = NaN) : void
      {
         _soundManager.playLoop(param1,param2);
      }
      
      public static function setVolume(param1:Object, param2:Number) : void
      {
         var _loc3_:* = undefined;
         var _loc4_:SoundFile = null;
         _soundManager.setVolume(param1,param2);
         if(param1 == GROUP_SFX || param1 == GROUP_AMBIENT_SFX)
         {
            for each(_loc3_ in _volumeSounds)
            {
               if(_loc3_ is StepsSoundDecorator)
               {
                  StepsSoundDecorator(_loc3_).volume = param2;
               }
               if(_loc3_ is PointSoundDecorator)
               {
                  PointSoundDecorator(_loc3_).volume = param2;
               }
            }
            for each(_loc4_ in _ambSounds)
            {
               _loc3_ = _soundManager.getLoopSound(_loc4_);
               if(_loc3_ is StepsSoundDecorator)
               {
                  StepsSoundDecorator(_loc3_).volume = param2;
               }
               if(_loc3_ is SoundExDecorator)
               {
                  SoundExDecorator(_loc3_).volume = param2;
               }
               if(_loc3_ is PointSoundDecorator)
               {
                  PointSoundDecorator(_loc3_).volume = param2;
               }
            }
         }
      }
      
      public static function getVolume(param1:Object) : Number
      {
         return _soundManager.getVolume(param1);
      }
      
      public static function stopLoop(param1:SoundFile) : void
      {
         _soundManager.stopLoop(param1);
      }
      
      public static function mute(param1:Object) : void
      {
         var _loc2_:Object = null;
         if(_soundManager.isEnabled(param1))
         {
            _soundManager.mute(param1);
            if(param1 == GROUP_SFX)
            {
               for each(_loc2_ in _volumeSounds)
               {
                  if(_loc2_ is StepsSoundDecorator)
                  {
                     StepsSoundDecorator(_loc2_).stopAll();
                  }
                  if(_loc2_ is PointSoundDecorator)
                  {
                     PointSoundDecorator(_loc2_).stop();
                  }
               }
            }
         }
      }
      
      public static function unMuteGroup(param1:Object) : void
      {
         if(!_soundManager.isEnabled(param1))
         {
            _soundManager.unMuteGroup(param1);
         }
         if(param1 == GROUP_SFX)
         {
            if(GameSwf.currentLocationDialog != null)
            {
               GameSwf.currentLocationDialog.inspectPositionSounds(true);
            }
         }
      }
      
      public static function isEnabled(param1:Object) : Boolean
      {
         return _soundManager.isEnabled(param1);
      }
      
      public static function loadForLocation(param1:int) : void
      {
         var _loc2_:SoundFile = LOCATION_BG_MUSIC[param1];
         if(_loc2_ != null)
         {
            loadSoundFile(_loc2_);
         }
      }
      
      public static function playForLocation(param1:int) : void
      {
         var _loc2_:SoundFile = null;
         Cc.logch("sound","playForLocation(" + param1 + ")");
         if(param1 in LOCATION_BG_MUSIC)
         {
            _loc2_ = LOCATION_BG_MUSIC[param1];
            loadForLocation(param1);
            if(_currentLocationBGMusic != null && _currentLocationBGMusic != _loc2_)
            {
               stopLoop(_currentLocationBGMusic);
            }
            _currentLocationBGMusic = _loc2_;
            playLoop(_currentLocationBGMusic);
         }
      }
      
      public static function stopLocationMusic(param1:int = -1) : void
      {
         Cc.logch("sound","stopLocationMusic(" + param1 + ")");
         if(param1 == -1)
         {
            if(_currentLocationBGMusic != null)
            {
               stopLoop(_currentLocationBGMusic);
               destroy(_currentLocationBGMusic);
               _currentLocationBGMusic = null;
            }
         }
         else if(param1 in LOCATION_BG_MUSIC && LOCATION_BG_MUSIC[param1] == _currentLocationBGMusic)
         {
            stopLoop(_currentLocationBGMusic);
            destroy(_currentLocationBGMusic);
            _currentLocationBGMusic = null;
         }
      }
      
      private static function destroy(param1:SoundFile) : void
      {
         _soundManager.destroy(param1);
      }
      
      public static function init() : void
      {
         StandardBitmapButton.globalOverCallback = globalOverCallback;
         StandardBitmapButton.globalClickCallback = globalClickCallback;
         GlobalSoundHandlers.globalSelectItemCallback = globalSelectItemCallback;
         GlobalSoundHandlers.globalSwitchTabCallback = globalSwitchTabCallback;
         GlobalSoundHandlers.globalConfirmClickCallback = globalConfirmClickCallback;
         GlobalSoundHandlers.globalUICloseMenuCallback = globalUICloseMenuCallback;
      }
      
      private static function globalUICloseMenuCallback() : void
      {
         FishaoSoundManager.play(FishaoSoundManager.SFX_052_UI_Close_menu);
      }
      
      private static function globalConfirmClickCallback() : void
      {
         FishaoSoundManager.play(FishaoSoundManager.SFX_053_UI_Confirm_click);
      }
      
      private static function globalOverCallback() : void
      {
         FishaoSoundManager.play(FishaoSoundManager.SFX_041_UI_Hover_button);
      }
      
      private static function globalClickCallback() : void
      {
         FishaoSoundManager.play(FishaoSoundManager.SFX_042_UI_Click_button);
      }
      
      private static function globalSelectItemCallback() : void
      {
         FishaoSoundManager.play(FishaoSoundManager.SFX_050_UI_Select_item);
      }
      
      private static function globalSwitchTabCallback() : void
      {
         FishaoSoundManager.play(FishaoSoundManager.SFX_049_UI_Switch_tab);
      }
      
      public static function stopAllLoopSounds() : void
      {
         var _loc1_:Object = null;
         for each(_loc1_ in _volumeSounds)
         {
            if(_loc1_ is PointSoundDecorator)
            {
               PointSoundDecorator(_loc1_).stop();
            }
            if(_loc1_ is StepsSoundDecorator)
            {
               StepsSoundDecorator(_loc1_).stop();
               StepsSoundDecorator(_loc1_).stopAll();
            }
         }
         _volumeSounds = [];
         _soundManager.stopAllLoopSounds();
      }
      
      public static function playAmbientForLocation(param1:int) : void
      {
         var _loc2_:SoundFile = null;
         stopCurrentAmbientMusic();
         Cc.logch("sound","playAmbientForLocation(" + param1 + ")");
         var _loc3_:LocationConfig = LocationConfig.findById(param1);
         if(_loc3_.ambientSoundFiles != null)
         {
            for each(_loc2_ in _loc3_.ambientSoundFiles)
            {
               _ambSounds.push(_loc2_);
               Cc.logch("sound","playLoop(" + _loc2_ + ")");
               playLoop(_loc2_);
            }
         }
      }
      
      public static function stopCurrentAmbientMusic() : void
      {
         var _loc1_:SoundFile = null;
         Cc.logch("sound","stopCurrentAmbientMusic()");
         for each(_loc1_ in _ambSounds)
         {
            Cc.logch("sound","stopLoop(" + _loc1_ + ")");
            stopLoop(_loc1_);
         }
         _ambSounds = [];
      }
      
      public static function playLoopFor(param1:SoundFile, param2:Object, param3:Number) : void
      {
         var _loc4_:Sound = null;
         if(isEnabled(param1.group))
         {
            _loc4_ = _soundManager.getSoundBySoundFile(param1);
            if(_loc4_ is StepsSoundDecorator)
            {
               if(_volumeSounds.indexOf(_loc4_) == -1)
               {
                  _volumeSounds.push(_loc4_);
               }
               StepsSoundDecorator(_loc4_).playFor(param2,param3,_soundManager.getVolume(GROUP_SFX));
            }
         }
      }
      
      public static function stopLoopFor(param1:SoundFile, param2:Object) : void
      {
         var _loc3_:Sound = _soundManager.getSoundBySoundFile(param1);
         if(_loc3_ is StepsSoundDecorator)
         {
            StepsSoundDecorator(_loc3_).stopFor(param2);
            if(!StepsSoundDecorator(_loc3_).isActive())
            {
               if(_volumeSounds.indexOf(_loc3_) > -1)
               {
                  _volumeSounds.splice(_volumeSounds.indexOf(_loc3_),1);
               }
            }
         }
      }
      
      public static function lowerBgSound(param1:Number = 0.25) : void
      {
         setVolume(GROUP_BACKGROUND_MUSIC,GameSwf.settings.getSettings().backMusic * param1);
         setVolume(GROUP_AMBIENT_SFX,GameSwf.settings.getSettings().soundEffects * param1);
      }
      
      public static function upperBgSound() : void
      {
         setVolume(GROUP_BACKGROUND_MUSIC,GameSwf.settings.getSettings().backMusic);
         setVolume(GROUP_AMBIENT_SFX,GameSwf.settings.getSettings().soundEffects);
      }
      
      public static function playAndLowerBgSound(param1:SoundFile) : void
      {
         lowerBgSound();
         var _loc2_:* = playPosition(param1);
         if(_loc2_ is SoundExDecorator)
         {
            SoundExDecorator(_loc2_).soundChannel.addEventListener(Event.SOUND_COMPLETE,onSoundCompleteForBgUpper);
         }
      }
      
      private static function onSoundCompleteForBgUpper(param1:Event) : void
      {
         param1.currentTarget.removeEventListener(param1,onSoundCompleteForBgUpper);
         upperBgSound();
      }
      
      private static function updateSeq() : void
      {
         var _loc1_:* = undefined;
         if(_currentSeqSound == null)
         {
            if(_seq.length > 0)
            {
               _currentSeqSound = _seq.shift();
               _loc1_ = playPosition(_currentSeqSound);
               if(_loc1_ is SoundChannel)
               {
                  SoundChannel(_loc1_).addEventListener(Event.SOUND_COMPLETE,onSeqSoundComplete);
               }
               if(_loc1_ is SoundExDecorator)
               {
                  SoundExDecorator(_loc1_).soundChannel.addEventListener(Event.SOUND_COMPLETE,onSeqSoundComplete);
               }
            }
         }
      }
      
      private static function onSeqSoundComplete(param1:Event) : void
      {
         param1.currentTarget.removeEventListener(Event.SOUND_COMPLETE,onSeqSoundComplete);
         _currentSeqSound = null;
         updateSeq();
      }
   }
}

