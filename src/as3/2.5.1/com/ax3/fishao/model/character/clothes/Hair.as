package com.ax3.fishao.model.character.clothes
{
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.fishao.model.character.Clothes;
   
   public class Hair extends Clothes
   {
      
      public function Hair(param1:int, param2:int)
      {
         super(param1,param2);
         name = _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ჿယႧဒဢၗဥ၏ဴၪ့၌ဘ္Ⴞჯ","ჀဂေဿူႤ჌Ⴔრၢဆဝကၟჭ၏");
      }
      
      public static function fromObject(param1:Object) : Hair
      {
         return new Hair(param1.type,param1.color);
      }
   }
}

