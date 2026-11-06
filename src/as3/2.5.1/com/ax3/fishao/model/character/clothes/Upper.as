package com.ax3.fishao.model.character.clothes
{
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.fishao.model.character.Clothes;
   
   public class Upper extends Clothes
   {
      
      public function Upper(param1:int, param2:int)
      {
         super(param1,param2);
         name = _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ႝၪ႖ჟჯႹၰႣიქ၉ယႴအჷၝჺႅ","ႳလဏႁၲႵဣმဇဥၓნၙႨ၊၎");
      }
      
      public static function fromObject(param1:Object) : Upper
      {
         return new Upper(param1.type,param1.color);
      }
   }
}

