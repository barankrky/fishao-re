package com.ax3.fishao.model.character.clothes
{
   import com.ax3.fishao.model.character.Clothes;
   
   public class Lower extends Clothes
   {
      
      public function Lower(param1:int, param2:int)
      {
         super(param1,param2);
         name = "lower";
      }
      
      public static function fromObject(param1:Object) : Lower
      {
         return new Lower(param1.type,param1.color);
      }
   }
}

