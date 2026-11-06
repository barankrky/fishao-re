package com.ax3.fishao.model.character.clothes
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import com.ax3.fishao.model.character.Clothes;
   
   public class Shoes extends Clothes
   {
      
      public function Shoes(param1:int, param2:int)
      {
         super(param1,param2);
         name = _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捓捈揄挛挦揹捒揞挏掛挵捬捌揄握挝捞揈","揜掄捫揶据捨掝揯掴揖挑掓挹捥捡挪");
      }
      
      public static function fromObject(param1:Object) : Shoes
      {
         return new Shoes(param1.type,param1.color);
      }
   }
}

