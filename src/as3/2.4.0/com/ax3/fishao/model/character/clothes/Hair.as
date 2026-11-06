package com.ax3.fishao.model.character.clothes
{
   import com.ax3.fishao.model.character.Clothes;
   
   public class Hair extends Clothes
   {
      
      public function Hair(param1:int, param2:int)
      {
         super(param1,param2);
         name = "hair";
      }
      
      public static function fromObject(param1:Object) : Hair
      {
         return new Hair(param1.type,param1.color);
      }
   }
}

