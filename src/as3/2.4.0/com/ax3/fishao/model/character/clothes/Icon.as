package com.ax3.fishao.model.character.clothes
{
   import com.ax3.fishao.model.character.Clothes;
   
   public class Icon extends Clothes
   {
      
      public function Icon(param1:int, param2:int)
      {
         super(param1,param2);
         name = "icon";
      }
      
      public static function fromObject(param1:Object) : Icon
      {
         return new Icon(param1.type,param1.color);
      }
   }
}

