package com.ax3.fishao.model.character.clothes
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import com.ax3.fishao.model.character.Clothes;
   
   public class Lower extends Clothes
   {
      
      public function Lower(param1:int, param2:int)
      {
         super(param1,param2);
         name = _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捹挳掊捎捳揑挐捉掎挤揦挴揤掋捷挬挅挍","掏捯挈揞捌捖掘振掲捼探捜掏掁揗掓");
      }
      
      public static function fromObject(param1:Object) : Lower
      {
         return new Lower(param1.type,param1.color);
      }
   }
}

