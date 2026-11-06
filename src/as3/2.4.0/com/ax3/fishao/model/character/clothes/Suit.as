package com.ax3.fishao.model.character.clothes
{
   import com.ax3.fishao.model.character.CharViewConfig;
   import com.ax3.fishao.model.character.Clothes;
   
   public class Suit extends Clothes
   {
      
      private static const COSTUME:int = 5;
      
      public function Suit(param1:int, param2:int)
      {
         super(param1,param2);
         name = "suit";
      }
      
      public static function fromObject(param1:Object) : Suit
      {
         return new Suit(param1.type,param1.color);
      }
      
      public function isExistsForFemale() : Boolean
      {
         return type == 2 || type == 3;
      }
      
      public function isAbleHasHat() : Boolean
      {
         return type == CharViewConfig.NO_SUIT || type == COSTUME;
      }
   }
}

