package com.ax3.fishao.locations.chars.commands
{
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.fishao.locations.entries._08c120b706560fce9302bcab;
   import flash.utils.getTimer;
   
   public class _16c375dcd3d66ff8ae819841 implements _3ba073024ca466d13112f68e
   {
      
      private var _ae356fb2ce398ce6604f5933:_08c120b706560fce9302bcab;
      
      private var _84456a74315a1287407501f9:int = 0;
      
      private var _1122c9d31191fc1b010d54c7:int = 0;
      
      private var _dd156e72cd6a7c26c312de14:String = "";
      
      public function _16c375dcd3d66ff8ae819841(param1:_08c120b706560fce9302bcab)
      {
         super();
         this._84456a74315a1287407501f9 = getTimer();
         this._ae356fb2ce398ce6604f5933 = param1;
         if(param1 != null && param1.locationUser != null)
         {
            this._dd156e72cd6a7c26c312de14 = param1.locationUser.username;
         }
      }
      
      public function execute() : void
      {
         var _loc1_:int = 0x41A6F3CA ^ -586956409 ^ 0x1F013D69 ^ -1215214108;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (0x5A9AD497 ^ -1886078719 ^ 0x5FC1A05F ^ -1090875639))
            {
               case 0:
                  this._1122c9d31191fc1b010d54c7 = getTimer();
                  if(this._ae356fb2ce398ce6604f5933 != null)
                  {
                     _loc1_ = -1478291886 ^ 0x798DA023 ^ 0x1F094654 ^ -179131673;
                  }
                  else
                  {
                     _loc1_ = -786828018 ^ 0x09B0AEE5 ^ 0x7C035614 ^ -1868607682;
                  }
                  break;
               case 1:
                  return;
               case 2:
                  this._ae356fb2ce398ce6604f5933.reelIn();
                  _loc1_ = 0x5F43FD80 ^ 0x0BF81324 ^ -2142547703 ^ -523895444;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function _ce2e77815ef99a99d836c418(param1:_3ba073024ca466d13112f68e) : Boolean
      {
         return false;
      }
      
      public function isComplete() : Boolean
      {
         return true;
      }
      
      public function toString() : String
      {
         return _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၴႦმ္ၰ၊ၱဩႦႼဇဳႺ႞შႀမბဓჯၩၟၤၢჯၼჸჂေზმჅჷိႎჇၝၖၨს႟ဍ႟ၽပჰဏၧၻჸိႮဦႁ","Ⴣ჈ტჱ့მဂ႘၂ၔဉჄၿღႲႱ") + this._dd156e72cd6a7c26c312de14 + _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ჶပ჻ခလၢძ჻ႄဎ","ႴႇႰဪႉၢႍဪၼႈဣჼႧညჇၶ");
      }
      
      public function destroy() : void
      {
         this._ae356fb2ce398ce6604f5933 = null;
      }
   }
}

