package com.ax3.fishao.model.character.clothes
{
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import com.ax3.fishao.model.character.CharViewConfig;
   import com.ax3.fishao.model.character.Clothes;
   
   public class Suit extends Clothes
   {
      
      private static const COSTUME:int = -603188848 ^ -1520404751 ^ -16123989 ^ -2040164145;
      
      public function Suit(param1:int, param2:int)
      {
         super(param1,param2);
         name = _95da7f1147c669197db81295._8f4866de82b7339154180ecb("刅勭剡劀劢刁勮剈勧勱刏労劑劦加勾","剑刂劆刡剴剹刟剗勄列勡劳力劎剹勄");
      }
      
      public static function fromObject(param1:Object) : Suit
      {
         return new Suit(param1.type,param1.color);
      }
      
      public function isExistsForFemale() : Boolean
      {
         return type == (0x2101701C ^ -910507961 ^ -2137296849 ^ 0x6820C076) || type == (-1780218892 ^ -2027098532 ^ 0x309E4C5A ^ 0x2256A1F1);
      }
      
      public function isAbleHasHat() : Boolean
      {
         return type == CharViewConfig.NO_SUIT || type == COSTUME;
      }
   }
}

