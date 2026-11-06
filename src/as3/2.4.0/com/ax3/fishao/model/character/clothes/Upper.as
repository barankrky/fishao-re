package com.ax3.fishao.model.character.clothes
{
   import com.ax3.fishao.model.character.Clothes;
   
   public class Upper extends Clothes
   {
      
      public function Upper(param1:int, param2:int)
      {
         super(param1,param2);
         name = "upper";
      }
      
      public static function fromObject(param1:Object) : Upper
      {
         return new Upper(param1.type,param1.color);
      }
   }
}

