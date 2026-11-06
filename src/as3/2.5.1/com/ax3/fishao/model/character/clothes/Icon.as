package com.ax3.fishao.model.character.clothes
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import com.ax3.fishao.model.character.Clothes;
   
   public class Icon extends Clothes
   {
      
      public function Icon(param1:int, param2:int)
      {
         super(param1,param2);
         name = _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捡挠捭捤挑揩揗挳揪揜捷揧掍挶揋掗","揦揺持揋揮掃挭掇捩挙挒揚捱捦挭捒");
      }
      
      public static function fromObject(param1:Object) : Icon
      {
         return new Icon(param1.type,param1.color);
      }
   }
}

