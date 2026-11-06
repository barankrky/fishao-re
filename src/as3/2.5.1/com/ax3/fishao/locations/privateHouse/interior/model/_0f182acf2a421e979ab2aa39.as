package com.ax3.fishao.locations.privateHouse.interior.model
{
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.fishao.debug.Debug;
   
   public class _0f182acf2a421e979ab2aa39
   {
      
      public function _0f182acf2a421e979ab2aa39()
      {
         super();
      }
      
      public static function _4fcbc168c330736b4bf223d9(param1:Object, param2:String) : _89bc7f4f6fa46d997b0e149c
      {
         var _loc3_:_89bc7f4f6fa46d997b0e149c = null;
         switch(param2)
         {
            case _2015550cd0ec5b19b791fc93.EIIT_FLOOR:
               §§push(0x243DC317 ^ -2070499971 ^ -661818034 ^ 0x78261B24);
               break;
            case _2015550cd0ec5b19b791fc93.EIIT_FURNITURE:
               §§push(0x758CF115 ^ 0x4A13A5 ^ -1987120796 ^ -62385195);
               break;
            case _2015550cd0ec5b19b791fc93.EIIT_WALL:
               §§push(-2128609763 ^ -1513851040 ^ -1195790339 ^ -1671289214);
               break;
            default:
               §§push(-1229011028 ^ -1043766184 ^ -1250952998 ^ -1038591187);
         }
         switch(§§pop())
         {
            case 0:
               _loc3_ = new _d51bc9c29e742835d21466e4();
               break;
            case 1:
               _loc3_ = new _982f2b0d82c7f64c01e267ee();
               break;
            case 2:
               _loc3_ = new _7c949d23cc4557a570d3160c();
               break;
            default:
               Debug.assert(false,_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၩႍვဏჹၘလ၅းႽ႞ႶႽႧငဝ჏၅ჾႴ႙ၼჂဖჯ္ာმ္იၵჄႠ္ჵႁ၉ჴႇნလჿჭႸႱვႻ჉჊რნႊဖလၷီွၸუႵ჻ၘჺိ၏ჶႴ၂ူၞႯၠ၁၆ႣဟႭ჋ႀ჎ტႋ၌ၵႜ။Ⴂქჼၕၺ႐ဪုု႟ဢဥიშဨဒႵყ႗ွၲႜဍ၌ႥၦჼမဝႳဇဵၭ၉დძႰႧფီႤဎၰႝც္ၓშ","ဟႫာუႸႰ၄ာသ჈ჾႼქၓဧჍ") + param2);
         }
         if(_loc3_ != null)
         {
            _loc3_.deserialize(param1);
         }
         return _loc3_;
      }
   }
}

