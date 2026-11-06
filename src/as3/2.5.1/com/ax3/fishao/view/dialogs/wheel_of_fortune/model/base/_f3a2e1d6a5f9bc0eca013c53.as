package com.ax3.fishao.view.dialogs.wheel_of_fortune.model.base
{
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.view.dialogs.wheel_of_fortune.model.currency._8bf346648b0baa08d5e12dc6;
   import com.ax3.fishao.view.dialogs.wheel_of_fortune.model.fish_unlock._b30f54e5c1371cc4975d9da8;
   import com.ax3.fishao.view.dialogs.wheel_of_fortune.model.resource._b504c01dae642e51c7d46382;
   
   public class _f3a2e1d6a5f9bc0eca013c53
   {
      
      public function _f3a2e1d6a5f9bc0eca013c53()
      {
         super();
      }
      
      public static function _7df53f2fe7017dd295353dbc(param1:Object) : _60d64d32c61de9fe092aecc7
      {
         var _loc2_:_60d64d32c61de9fe092aecc7 = null;
         switch(param1.type)
         {
            case _c09200cfbfabf4d55af08be2.EWOFRT_FISH_UNLOCK:
               §§push(0x021D53DF ^ 0x5AFD5192 ^ 0x5BA2DEFE ^ 0x0342DCB3);
               break;
            case _c09200cfbfabf4d55af08be2.EWOFRT_BAIT_MONSTER:
               §§push(0x04A28095 ^ -1812624053 ^ -1272560386 ^ 0x23714921);
               break;
            case _c09200cfbfabf4d55af08be2.EWOFRT_BAIT_RANDOM:
               §§push(0x0BA0463C ^ 0x2521F394 ^ -1321546153 ^ -1615102979);
               break;
            case _c09200cfbfabf4d55af08be2.EWOFRT_BAIT_SPECIAL:
               §§push(0x599383A1 ^ 0x01D175F8 ^ 0x7FD209D1 ^ 0x2790FF8B);
               break;
            case _c09200cfbfabf4d55af08be2.EWOFRT_GADGET_RANDOM:
               §§push(0x5A707E17 ^ 0x79E77571 ^ -628012656 ^ -117030158);
               break;
            case _c09200cfbfabf4d55af08be2.EWOFRT_ROD_GLOWING:
               §§push(-2925251 ^ 0x15C941F4 ^ -1912976983 ^ 0x67E05565);
               break;
            case _c09200cfbfabf4d55af08be2.EWOFRT_ROD_RANDOM:
               §§push(0x4D4A4E8F ^ 0x4F8F483E ^ 0x54C18A4A ^ 0x56048CFD);
               break;
            case _c09200cfbfabf4d55af08be2.EWOFRT_ENERGY:
               §§push(0x1FB5B8C8 ^ -1447896552 ^ -506896852 ^ 0x57CE3CFB);
               break;
            case _c09200cfbfabf4d55af08be2.EWOFRT_EXP:
               §§push(-1365495837 ^ -1714517259 ^ 0x680F2A92 ^ 0x5F5D8F8C);
               break;
            case _c09200cfbfabf4d55af08be2.EWOFRT_FISHBUCKS:
               §§push(-189911917 ^ 0x28A6EE8A ^ 0x43A80597 ^ -1616853113);
               break;
            case _c09200cfbfabf4d55af08be2.EWOFRT_FISHCOINS_FEW:
               §§push(0x3E4679DE ^ -1058650552 ^ 0x61572A15 ^ -1611197047);
               break;
            case _c09200cfbfabf4d55af08be2.EWOFRT_FISHCOINS_MANY:
               §§push(0x681B7DE3 ^ 0x47F62B06 ^ 0x531B8C15 ^ 0x7CF6DAFB);
               break;
            default:
               §§push(0x4D96A032 ^ -541869379 ^ 0x207F58D1 ^ -1302707630);
         }
         switch(§§pop())
         {
            case 0:
               _loc2_ = new _b30f54e5c1371cc4975d9da8();
               break;
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
            case 6:
               _loc2_ = new _b504c01dae642e51c7d46382();
               break;
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
               _loc2_ = new _8bf346648b0baa08d5e12dc6();
               break;
            default:
               Debug.assert(false,_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ဧၛဠႤჃჾ჏ဃბၟ၊Ⴃၯ႘့ეၪჲ჌၏ဒၨဗျႎႼၹ၇Ⴎင჊ၗႢႌაၬႧၞჲးჀဖၹ၇ဒ჌ჷႭၭအၵ၀ၪဪႹჀႱြႣၸၠჳ၀ၑျဉႛႏႊდ჈ဒზჭဠ၃ာ၆ၠႛႺဂ႞ჄდၒၺႭဥჹဎထၐჴ၈ႜူၢ჎Ⴧჼဴႊံယ႘ႤႉႽც჎၊ဢကွჸၢ၈ჭხေၜ၈ჟყႃႂဵၵ၀ჄႸြႫჼကဵၺ","჻ჄბნბჀჹჸႅၱჄၧ္ဉ၄ჵ") + param1.type);
         }
         return _loc2_;
      }
   }
}

