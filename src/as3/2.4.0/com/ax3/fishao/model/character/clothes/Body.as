package com.ax3.fishao.model.character.clothes
{
   import com.ax3.fishao.model.character.Clothes;
   
   public class Body extends Clothes
   {
      
      public function Body(param1:int, param2:int)
      {
         super(param1,param2);
         name = "body";
      }
      
      public static function fromObject(param1:Object) : Body
      {
         return new Body(param1.type,param1.color);
      }
      
      public function toString() : String
      {
         return "Body(type: " + type + ", color: " + color + ")";
      }
   }
}

