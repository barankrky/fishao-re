package com.ax3.fishao.view.dialogs.boosters.base
{
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.locations._01cf9a78594a0bb30b57b0c3;
   import com.ax3.fishao.view.dialogs.boosters.power._c0f6f454d344211cfc065be1;
   
   public class _2d8948bae31fcd19e45d6dae
   {
      
      public function _2d8948bae31fcd19e45d6dae()
      {
         super();
      }
      
      public static function _81016c1c4045a0e51fdd99f3(param1:String, param2:int) : _862e2792496d13d3dff5b3ca
      {
         var _loc3_:_862e2792496d13d3dff5b3ca = null;
         switch(param1)
         {
            case _01cf9a78594a0bb30b57b0c3.EBT_POWER_BOOSTER:
               §§push(-629254687 ^ -1387518937 ^ -1886715112 ^ -122064162);
               break;
            case _01cf9a78594a0bb30b57b0c3.EBT_EXP:
               §§push(-271593934 ^ -904299328 ^ -684203417 ^ -220114796);
               break;
            case _01cf9a78594a0bb30b57b0c3.EBT_LUCKY_POTION:
               §§push(0x49F681AA ^ -2050787756 ^ 0x604F1669 ^ -1401233003);
               break;
            case _01cf9a78594a0bb30b57b0c3.EBT_MAGIC_WATCH:
               §§push(0x35B0AA21 ^ -2137693924 ^ -125318241 ^ 0x4DA200A1);
               break;
            case _01cf9a78594a0bb30b57b0c3.EBT_RADAR:
               §§push(0x67F5A892 ^ -1039943146 ^ 0x36C4490A ^ -1825416310);
               break;
            case _01cf9a78594a0bb30b57b0c3.EBT_SHINY_POTION:
               §§push(-132555977 ^ 0x12FBBB64 ^ -860173156 ^ 0x26582CCA);
               break;
            default:
               §§push(0x5ECDC8AB ^ 0x2C38F1E7 ^ 0x6395202B ^ 0x11601961);
         }
         switch(§§pop())
         {
            case 0:
               _loc3_ = new _c0f6f454d344211cfc065be1(param2);
               break;
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
               _loc3_ = new _862e2792496d13d3dff5b3ca(param1,param2);
               break;
            default:
               Debug.assert(false,_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ႊჿၰჱ჊დაၯပနჩჅგဧႥဩ၅ုဲჯဂရအညჟႲგၫ႔ဖႱဈၩჟ၊ჯၗდၦးჿღკჯ၅ၼძႃၮၠႌၠၾသဥ႒ျႻჱၫၕစჂჵჹၻၫႨၹအ၆ၒၭႺၰ၈კရႵဈၨၑჷၠ႘ဳဨ၏ჺჺၮჶჩၜၳ၊ႂဃဎწဗါၑႲဟႵ჈ၷဳႈტႨ၎ეႇდ","႘္ჾ჊ႛၝၻါႼყ႑ჃႳ႐ၔၵ") + param1);
         }
         return _loc3_;
      }
   }
}

