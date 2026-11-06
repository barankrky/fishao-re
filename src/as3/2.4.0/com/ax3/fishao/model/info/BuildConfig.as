package com.ax3.fishao.model.info
{
   public class BuildConfig
   {
      
      public static const VERSION:String = "2.4.0";
      
      public static const BUILD_TYPE:String = "prod";
      
      public function BuildConfig()
      {
         super();
      }
      
      public static function isLocal() : Boolean
      {
         return BUILD_TYPE == "local";
      }
      
      public static function isProd() : Boolean
      {
         return BUILD_TYPE == "prod";
      }
      
      public static function isOlderThan(param1:String) : Boolean
      {
         var _loc2_:Array = VERSION.split(".");
         var _loc3_:Array = param1.split(".");
         var _loc4_:int = Math.max(_loc2_.length,_loc3_.length);
         var _loc5_:int = 0;
         while(_loc5_ < _loc4_)
         {
            if(int(_loc2_[_loc5_]) != int(_loc3_[_loc5_]))
            {
               return int(_loc2_[_loc5_]) < int(_loc3_[_loc5_]);
            }
            _loc5_++;
         }
         return false;
      }
      
      public static function getLangList() : Object
      {
         if(isProd())
         {
            return {
               "br":"Português",
               "de":"Deutsch",
               "dk":"Dansk",
               "en":"English",
               "fr":"Français",
               "it":"Italiano",
               "nl":"Nederlands",
               "no":"Norsk",
               "ro":"Română",
               "tr":"Türkçe",
               "us":"US English",
               "se":"Svenska",
               "es":"Español",
               "pl":"Polski",
               "cz":"Český",
               "sk":"Slovenský",
               "rs":"Српски",
               "ru":"Русский"
            };
         }
         return {
            "sk":"Slovenský",
            "rs":"Српски",
            "br":"Português",
            "cn":"中國的",
            "cz":"Český",
            "de":"Deutsch",
            "dk":"Dansk",
            "en":"English",
            "es":"Español",
            "fr":"Français",
            "it":"Italiano",
            "nl":"Nederlands",
            "no":"Norsk",
            "pl":"Polski",
            "pt":"Português ",
            "ro":"Română",
            "ru":"Русский",
            "se":"Svenska",
            "tr":"Türkçe",
            "us":"US English",
            "vn":"Việt"
         };
      }
   }
}

