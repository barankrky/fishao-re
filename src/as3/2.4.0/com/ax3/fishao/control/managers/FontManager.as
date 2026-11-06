package com.ax3.fishao.control.managers
{
   import flash.text.AntiAliasType;
   import flash.text.Font;
   import flash.utils.Dictionary;
   
   public class FontManager
   {
      
      public static var IS_NEW_MESSAGE_FONT:String;
      
      public static var IS_READED_MESSAGE_FONT:String;
      
      public static var Font_VAGRoundedStdBold:Class = FontManager_Font_VAGRoundedStdBold;
      
      public static var vagRoundedBold:Font = new Font_VAGRoundedStdBold();
      
      public static var fontNameMap:Dictionary = new Dictionary();
      
      public static const DEFAULT_FONT:String = vagRoundedBold.fontName;
      
      public static const DEFAULT_FONT_BOLD:String = vagRoundedBold.fontName;
      
      public static const FORMAT_LOCAL_PRELODER:Object = {
         "font":vagRoundedBold.fontName,
         "color":16777215,
         "size":18,
         "align":"left",
         "letterSpacing":1
      };
      
      public static const PARAMS_LOCAL_PRELODER:Object = {
         "autoSize":"left",
         "width":102,
         "embedFonts":true,
         "antiAliasType":AntiAliasType.NORMAL
      };
      
      public function FontManager()
      {
         super();
      }
   }
}

