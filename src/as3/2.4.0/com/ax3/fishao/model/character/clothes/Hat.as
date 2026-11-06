package com.ax3.fishao.model.character.clothes
{
   import com.ax3.fishao.model.character.Clothes;
   
   public class Hat extends Clothes
   {
      
      public function Hat(param1:int, param2:int)
      {
         super(param1,param2);
         name = "hat";
      }
      
      public static function fromObject(param1:Object) : Hat
      {
         return new Hat(param1.type,param1.color);
      }
   }
}

