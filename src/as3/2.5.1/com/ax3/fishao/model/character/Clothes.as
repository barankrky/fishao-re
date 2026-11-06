package com.ax3.fishao.model.character
{
   public class Clothes
   {
      
      public var type:int;
      
      public var color:int;
      
      public var name:String = "clothes";
      
      public function Clothes(param1:int, param2:int)
      {
         super();
         this.type = param1;
         this.color = param2;
      }
      
      public static function fromObject(param1:Object) : Clothes
      {
         return new Clothes(param1.type,param1.color);
      }
   }
}

