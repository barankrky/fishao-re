package com.ax3.fishao.model.character.clothes
{
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import com.ax3.fishao.model.character.Clothes;
   
   public class Hat extends Clothes
   {
      
      public function Hat(param1:int, param2:int)
      {
         super(param1,param2);
         name = _95da7f1147c669197db81295._8f4866de82b7339154180ecb("刃副剑勰剈刣刖勨剏助劶剰劄剤","勐务剟勁劔剴勘勮効勡剅劊則刽劓剝");
      }
      
      public static function fromObject(param1:Object) : Hat
      {
         return new Hat(param1.type,param1.color);
      }
   }
}

