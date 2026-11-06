package com.ax3.fishao.model.character.clothes
{
   import com.ax3.fishao.model.character.Clothes;
   
   public class Shoes extends Clothes
   {
      
      public function Shoes(param1:int, param2:int)
      {
         super(param1,param2);
         name = "shoes";
      }
      
      public static function fromObject(param1:Object) : Shoes
      {
         return new Shoes(param1.type,param1.color);
      }
   }
}

