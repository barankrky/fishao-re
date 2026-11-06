package com.ax3.fishao
{
   public class ConstantsBase
   {
      
      public static const INDEX_NONE:int = -1;
      
      public static const CLUB_EMBLEMS_COUNT:int = 50;
      
      public static const CLUB_NAME_CHARACTERS_MAX:int = 16;
      
      public static const CLUB_DESCRIPTION_CHARACTERS_MAX:int = 120;
      
      public static const IMAGE_NAME_CLUB_EMBLEM:String = "club_emblems/200/";
      
      public static const IMAGE_NAME_FISH_225:String = "fishes/fish_225px_#id#.png";
      
      public static const LEVEL_MAX:int = 200;
      
      public static const EMAIL_REG_EXP_PATTERN:RegExp = /^[0-9a-zA-Z][-\._a-zA-Z0-9]*@([0-9a-zA-Z][-\._0-9a-zA-Z]*\.)+[a-zA-Z]{2,4}$/;
      
      public static const USERNAME_REG_EXP_PATTERN:RegExp = /^[_0-9a-zA-Z]*$/;
      
      public function ConstantsBase()
      {
         super();
      }
   }
}

