package com.ax3.fishao.events
{
   import flash.events.Event;
   
   public class PreloadEvent extends Event
   {
      
      public static const RESPONSE_LOGIN_SUCCESS:String = "responseLoginSuccess";
      
      public static const RESPONSE_LOGIN_ERROR:String = "responseLoginError";
      
      public static const INIT_GAME_CONFIG:String = "initConfig";
      
      public static const GAME_LOADED:String = "gameLoaded";
      
      public static const RESOURCES_LOADED:String = "resourcesLoaded";
      
      public static const SHOW_PRELOADER:String = "showPreloader";
      
      public static const HIDE_PRELOADER:String = "hidePreloader";
      
      public static const SHOW_LOGIN:String = "showLogin";
      
      public static const SHOW_MAP:String = "showMap";
      
      public static const SHOW_CHARACTER_EDITOR:String = "showCharacterEditor";
      
      public function PreloadEvent(param1:String)
      {
         super(param1);
      }
   }
}

