package com.ax3.fishao.locations.privateHouse.interior.model
{
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.locations.privateHouse.interior.controller._21338c66f3aee498aad8da98;
   import com.ax3.fishao.locations.privateHouse.interior.controller._33aca7ac1e49b5f2d10a6bbc;
   import com.ax3.fishao.locations.privateHouse.interior.controller._3f7831b50d1ca2f67d06a9e9;
   import com.ax3.fishao.locations.privateHouse.interior.controller._afb131a8b7579a7c44d03bf8;
   import com.ax3.fishao.locations.privateHouse.interior.controller._ccce16899ad948b5d891d439;
   import com.ax3.fishao.locations.privateHouse.interior.controller._f8c8c3f93673c99ef8724991;
   
   public class _16a3f09beca9f69fddfa1665
   {
      
      public function _16a3f09beca9f69fddfa1665()
      {
         super();
      }
      
      public static function _98ed5bcf28617f7970877016(param1:_89bc7f4f6fa46d997b0e149c, param2:_afb131a8b7579a7c44d03bf8, param3:Boolean = false) : _33aca7ac1e49b5f2d10a6bbc
      {
         var _loc4_:_33aca7ac1e49b5f2d10a6bbc = null;
         switch(param1.type)
         {
            case _2015550cd0ec5b19b791fc93.EIIT_FLOOR:
               §§push(0x3F01E920 ^ 0x773E7265 ^ -751870408 ^ -1693399683);
               break;
            case _2015550cd0ec5b19b791fc93.EIIT_FURNITURE:
               §§push(0x52B45BA1 ^ -1744266639 ^ 0x704BE24C ^ -1158208611);
               break;
            case _2015550cd0ec5b19b791fc93.EIIT_WALL:
               §§push(0x33707DF9 ^ -1376750072 ^ 0x3424FC92 ^ -1432029343);
               break;
            default:
               §§push(0x75434752 ^ 0x6272CCAE ^ -1032978492 ^ -715361221);
         }
         switch(§§pop())
         {
            case 0:
               _loc4_ = new _ccce16899ad948b5d891d439(param1 as _d51bc9c29e742835d21466e4,param2);
               break;
            case 1:
               if(param3)
               {
                  _loc4_ = new _3f7831b50d1ca2f67d06a9e9(param1 as _982f2b0d82c7f64c01e267ee,param2);
               }
               else
               {
                  _loc4_ = new _21338c66f3aee498aad8da98(param1 as _982f2b0d82c7f64c01e267ee,param2);
               }
               break;
            case 2:
               _loc4_ = new _f8c8c3f93673c99ef8724991(param1 as _7c949d23cc4557a570d3160c,param2);
               break;
            default:
               Debug.assert(false,_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ჱှၭ႒ဣီခ႓ဎဴူწႢၙၹႿဝဗၹ႘ႝႪ჋႖Ⴛ၅ႄ႘သဗ჋ႸႧႁဵဌႊဦဨဌႆ၊ၢ႔ၾ၉რႺဗဎႃ႘ဴხႢჩოჵ၍ၸყ႓Ⴂါ်ၩၖქჰႝჾႉ჌ႲခၬႵ႘ၶႽၥჍႭოႎჽဂလဒဧთ၅ნဩႠჹ჉ဨ၏ჿၺၣၦ჎ჀၿႧွဎႝႍဂღႎဏၞ၃၍စეဝ၎ჱ႒ႆ၄ႿဤჂၞိႧါၙ၃ဎညნာဥစံၰၗဗჩၗၲၮံႝღၧိ","ဩစ჊Ⴐသ၊၆ႨჃ႓ႎၢპႳက္") + param1.type);
         }
         return _loc4_;
      }
   }
}

