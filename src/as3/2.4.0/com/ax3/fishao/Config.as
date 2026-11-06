package com.ax3.fishao
{
   import com.ax3.fishao.model.info.BuildConfig;
   import com.ax3.utils.math.randomRange;
   
   public class Config
   {
      
      public static const IS_BETA:Boolean = false;
      
      public static const DEFAULT_LANGUAGE:String = "en";
      
      public static var LANGUAGE:String = DEFAULT_LANGUAGE;
      
      public static var FULLSCREEN:Boolean = false;
      
      public static var SCREEN_WIDTH:int = 800;
      
      public static var SCREEN_HEIGHT:int = 600;
      
      public static var ORIGIN_SCREEN_WIDTH:int = 900;
      
      public static var ORIGIN_SCREEN_HEIGHT:int = 600;
      
      public static var FISH_MAX_RATE:int = 5;
      
      public static var IS_GUEST:Boolean = false;
      
      public static var GUEST_DISABLED:Boolean = true;
      
      public static var SEND_WELCOME_EMAIL:Boolean = true;
      
      public static var HIDE_FORGOT_PASS:Boolean = true;
      
      public static var SKIP_CONFIRM_PASSWORD:Boolean = false;
      
      public static var HIDE_SETTINGS_EMAIL:Boolean = false;
      
      public static var NEWS_DISABLED:Boolean = false;
      
      public static const MAX_USERS_IN_WORLD:int = 500;
      
      public static const RAFT_TIMER_NAME:String = "raftFishing";
      
      public static const FISH_CAUGHT_TIMER_NAME:String = "caught";
      
      public static const FISH_DIDNT_CAUGHT_TIMER_NAME:String = "didnt catch";
      
      public static var showFishingTimes:Boolean = false;
      
      public static var OBSTACLE_CHEAT:Boolean = false;
      
      public static const DEBUG_DRAW_ISO_LINE:Boolean = false;
      
      public static var SYNC_DEBUG:Boolean = false;
      
      public static var DEBUG_DRAW_LOCATION:Boolean = false;
      
      public static var DEBUG_DRAW_PATH:Boolean = false;
      
      public static var DEBUG_SHOW_OBSTACLE_MAP:Boolean = false;
      
      public static var DEBUG_DRAW_VISIBILITY:Boolean = false;
      
      public static var CLEAR_DRAW_VISIBILITY:Boolean = false;
      
      public static var WATER_ANIMATION_EFFECT:Boolean = true;
      
      public static var IS_SECURE_CONNECTION_PROTOCOL:Boolean = false;
      
      public static var NO_EMAIL_ACTIVATION:Boolean = false;
      
      public static const BAITS_DATA_URL:String = SERVER + "data/baits.json?r=" + randomRange(0,10000);
      
      public static const RODS_DATA_URL:String = SERVER + "data/rods.json?r=" + randomRange(0,10000);
      
      public static const FISH_DATA_URL:String = SERVER + "data/fish.json?r=" + randomRange(0,10000);
      
      public static const COUNTRIES_URL:String = SERVER + "data/countries.json?r=" + randomRange(0,10000);
      
      public static const TIMEZONES_URL:String = SERVER + "data/timezones.json?r=" + randomRange(0,10000);
      
      public static const CLOTHES_DATA_URL:String = SERVER + "data/clothes.json?r=" + randomRange(0,10000);
      
      public static const RESOURCES_DATA_URL:String = SERVER + "data/resources.json?r=" + randomRange(0,10000);
      
      public static const LOOKS_DATA_URL:String = SERVER + "data/looks.json?r=" + randomRange(0,10000);
      
      public static const EXTRA_FLOATS_DATA_URL:String = SERVER + "data/bobbers.json?r=" + randomRange(0,10000);
      
      public static const FOSSILS_DATA_URL:String = SERVER + "data/fossils.json?r=" + randomRange(0,10000);
      
      public static const FRUITS_DATA_URL:String = SERVER + "data/fruits.json?r=" + randomRange(0,10000);
      
      public static const PRIVATE_HOUSE_INTERIOR_ITEM_DATA_URL:String = SERVER + "data/private.house.interior.json?r=" + randomRange(0,10000);
      
      public static const GAME_BACKGROUND:uint = 196655;
      
      public static const LAKETOWN_ID:int = 1;
      
      public static const RIO_TROPICAL_ID:int = 2;
      
      public static const PINHERIRA_BEACH_ID:int = 3;
      
      public static const COOL_MOUNTAIN_ID:int = 4;
      
      public static const MYSTIC_DESERT_ID:int = 5;
      
      public static const SIBIRI_CITY_ID:int = 6;
      
      public static const AQUAYAMA_ID:int = 7;
      
      public static const SEAGULL_HARBOR_ID:int = 8;
      
      public static const THOMBANI_TOWN_ID:int = 9;
      
      public static const MARSHVILLE_ID:int = 10;
      
      public static const AVALON_ID:int = 13;
      
      public static const SUBLOCATION_TROUT_FARM_ID:int = 11;
      
      public static const SUBLOCATION_BAKER_ID:int = 12;
      
      public static const SUBLOCATION_CORAL_ID:int = 41;
      
      public static const LANGUAGE_URL:String = SERVER + "data/langs/";
      
      public static var AFFILIATE_ID:int = 0;
      
      public static var FORGOT_PASSWORD_URL:String = SERVER + "recover";
      
      public static var CONDITIONS_URL:String = SERVER + "terms";
      
      public static var SHARE_GAME_URL:String = SERVER + "play";
      
      public static var IMAGE_DIR:String = ASSET_SERVER + "data/image/";
      
      public static const FISHAO_BLUE_BACKGROUND_COLOR:int = 196655;
      
      public static const MAX_TOURNAMENT_PLAYERS:int = 25;
      
      public static var CAMPAIGN_ID:int = 0;
      
      public static var PROMO_CODE:String = "";
      
      public static var CAMPAIGN_REC_ID:int = 0;
      
      public function Config()
      {
         super();
      }
      
      public static function get SERVER() : String
      {
         if(BuildConfig.isLocal())
         {
            return "http://localhost:8080/";
         }
         if(BuildConfig.isProd())
         {
            return "https://play.fishao.net/";
         }
         return "";
      }
      
      public static function get ASSET_2_SERVER() : String
      {
         if(BuildConfig.isLocal())
         {
            return "http://localhost:8080/";
         }
         if(BuildConfig.isProd())
         {
            return "https://play.fishao.net/";
         }
         return "";
      }
      
      public static function get ASSET_SERVER() : String
      {
         if(BuildConfig.isLocal())
         {
            return "http://localhost:8080/";
         }
         if(BuildConfig.isProd())
         {
            return "https://play.fishao.net/";
         }
         return "";
      }
      
      public static function get BUG_REPORT_URL() : String
      {
         if(BuildConfig.isLocal())
         {
            return "http://localhost:8080/bug_report";
         }
         if(BuildConfig.isProd())
         {
            return "https://play.fishao.net/bug_report";
         }
         return "";
      }
      
      public static function get DIALOG_SERVER() : String
      {
         if(BuildConfig.isLocal())
         {
            return "http://localhost:8080/";
         }
         if(BuildConfig.isProd())
         {
            return "https://play.fishao.net/";
         }
         return "";
      }
      
      public static function get WS_URL() : String
      {
         if(BuildConfig.isLocal())
         {
            return "ws://localhost:8080/ws";
         }
         if(BuildConfig.isProd())
         {
            return "wss://play.fishao.net/ws";
         }
         return "";
      }
      
      public static function get CHARACTER_EDITOR_URL() : String
      {
         return ASSET_SERVER + "data/swf/FlashFishaoCharacterEditor_1_0_218.swf?r=" + BuildConfig.VERSION;
      }
      
      public static function get ANIMATED_CHARACTERS_URL() : String
      {
         return ASSET_2_SERVER + "data/swf/AnimatedCharacter_2.swf";
      }
   }
}

