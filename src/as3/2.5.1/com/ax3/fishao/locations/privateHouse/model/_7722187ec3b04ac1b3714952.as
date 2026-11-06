package com.ax3.fishao.locations.privateHouse.model
{
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   
   public class _7722187ec3b04ac1b3714952
   {
      
      public static const EPHDP_CENTER:String = _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ჺ၎ႎၼႳဴၻსჀၯმჺდႁუၑဣუၘ჉Ⴀၲူၣ჏ႨဋာၱဧჂဣ","ဏဝႲ႘რჿႋၞၪႿဵးဖဖႭရ");
      
      public static const EPHDP_LEFT:String = _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ხ၁ၕჸဎ၎ႺႾၙჹဓჽႽეႸაၒလႲဃဤၳ჎აဍძၥပ","ဤလႜზၘ჎ႎႊ႙ၥႹჴၫၨွႈ");
      
      public function _7722187ec3b04ac1b3714952()
      {
         super();
      }
      
      public static function _fc21c6fcb1fe49a9d7b25112(param1:String, param2:String) : String
      {
         var _loc3_:String = null;
         switch(param1)
         {
            case _2713ec585daceb8ad62e2797.EPP_FIRST_FLOOR:
               §§push(-2082465294 ^ 0x420A8FDF ^ 0x6B2D9A10 ^ -1429795779);
               break;
            case _2713ec585daceb8ad62e2797.EPP_SECOND_FLOOR:
               §§push(0x275E02DD ^ -269839962 ^ 0x44B86E03 ^ -1945305735);
               break;
            case _2713ec585daceb8ad62e2797.EPP_THIRD_FLOOR:
               §§push(0x7D65CC55 ^ -1279453096 ^ -343618767 ^ 0x255C1F3E);
               break;
            case _2713ec585daceb8ad62e2797.EPP_GARDEN:
               §§push(-54388721 ^ -1289486788 ^ 0x1116AD39 ^ 0x5EF74B09);
               break;
            default:
               §§push(-380082418 ^ 0x1FE31E3C ^ -1755933143 ^ 0x61EDEF1F);
         }
         switch(§§pop())
         {
            case 0:
               switch(param2)
               {
                  case _2713ec585daceb8ad62e2797.EPP_SECOND_FLOOR:
                     §§push(0x7DD67DF8 ^ 0x1F6D159C ^ -1361775208 ^ -865100292);
                     break;
                  case _2713ec585daceb8ad62e2797.EPP_GARDEN:
                     §§push(0x36378300 ^ 0x50945D1C ^ -1408723550 ^ -894743617);
                     break;
                  default:
                     §§push(-374061723 ^ 0x2D3489AA ^ 0x01B14E33 ^ -986610946);
               }
               switch(§§pop())
               {
                  case 0:
                     _loc3_ = EPHDP_LEFT;
                     break;
                  case 1:
                     _loc3_ = EPHDP_CENTER;
               }
               break;
            case 1:
               switch(param2)
               {
                  case _2713ec585daceb8ad62e2797.EPP_FIRST_FLOOR:
                     §§push(-1680438183 ^ 0x43C1DAB1 ^ -1153911915 ^ 0x632FE57D);
                     break;
                  case _2713ec585daceb8ad62e2797.EPP_THIRD_FLOOR:
                     §§push(0x7C384235 ^ 0x3C374929 ^ -420071307 ^ -1493617816);
                     break;
                  default:
                     §§push(-612485125 ^ -1214201476 ^ 0xCBBFF0 ^ 0x6C154975);
               }
               switch(§§pop())
               {
                  case 0:
                     _loc3_ = EPHDP_LEFT;
                     break;
                  case 1:
                     _loc3_ = EPHDP_CENTER;
               }
               break;
            case 2:
               var _loc4_:String = param2;
               switch(_2713ec585daceb8ad62e2797.EPP_SECOND_FLOOR === _loc4_ ? -2038844 ^ 0x3DDE1775 ^ -1787578681 ^ 0x574D4276 : -745067275 ^ 0x47BC93D8 ^ -1987710759 ^ 0x1DAE4FF5)
               {
                  case 0:
                     _loc3_ = EPHDP_CENTER;
               }
               break;
            case 3:
               _loc4_ = param2;
               switch(_2713ec585daceb8ad62e2797.EPP_FIRST_FLOOR === _loc4_ ? 0x7BE2E16C ^ -1825383414 ^ -1566437424 ^ 0x4A7232B6 : -990672817 ^ -199062053 ^ -1846217297 ^ -1591349190)
               {
                  case 0:
                     _loc3_ = EPHDP_CENTER;
               }
         }
         return _loc3_;
      }
   }
}

