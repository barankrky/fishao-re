package com.ax3.fishao.utils
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   
   public class UtilsString
   {
      
      public function UtilsString()
      {
         super();
      }
      
      public static function isNullOrEmpty(param1:String) : Boolean
      {
         return param1 == null || param1.length == (0x185E8974 ^ 0x15E1B101 ^ 0x530DE5ED ^ 0x5EB2DD98);
      }
      
      public static function stringColorToUint(param1:String) : uint
      {
         var _loc2_:String = param1.replace(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၡცဩဖဣႼႄၸဘ႞","ႫჿႎႿႷမႢ႕ႤဎႾუ჉Ⴌჾ။"),_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勦劇勀勡剤剆剄勇剽勁劕剆","劼劋勣劧刍勪劉刮劔刁劰劜勅勂刪勆"));
         return uint(_loc2_);
      }
      
      public static function getFirstCharCapitalized(param1:String) : String
      {
         var value:String = param1;
         var result:String = value.toLowerCase();
         result = result.replace(new RegExp(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("჊ႣၤႬၺႹႤႯ႓ၧဩႰလအრူႍၗႹ჌შဎშႥႂჳႇၚ႖႟ၟၴဵჀဤပვႇႼ၉","ျგၶဦ჌Ⴀၫၞ၃ၰဳၩဴၒဂမ"),_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劙刓剽勚勀劄劆劒分剩","勞勝劮初剃劶勳勿判剒勬劕劄剐劗勻")),function():String
         {
            return arguments[1].toUpperCase();
         });
         return result;
      }
      
      public static function restoreEscapeSqlChars(param1:String) : String
      {
         var _loc2_:String = null;
         return param1.replace(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("刏劮动勓剼剛剦刏切勎剋勳","刄劦剿劖剞劃剄勼刷勒刢勣剢劚刬列"),_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勾剓刿勠刦劸勼劍切励","剾勫劧券剨制剿勢刢勣副劵勆劼劮勤"));
      }
      
      public static function limitCharCount(param1:String, param2:int, param3:String = "") : String
      {
         var _loc4_:String = param1;
         if(param1.length > param2)
         {
            _loc4_ = param1.substr(0x633D0951 ^ 0x69A6E3A9 ^ -1668917950 ^ -1776435270,param2 - param3.length);
            _loc4_ += param3;
         }
         return _loc4_;
      }
      
      public static function createTable(param1:Array, param2:Array, param3:int, param4:String) : String
      {
         var _loc5_:int = 0x2E066B36 ^ 0x131317F4 ^ 0x52609F5D ^ 0x6F75E39F;
         var _loc6_:int = 0x60D3AB93 ^ 0x027B6D14 ^ 0x70783AB5 ^ 0x12D0FC32;
         var _loc7_:String = null;
         var _loc8_:int = -883956562 ^ -1126934680 ^ -278666774 ^ -1728556500;
         var _loc9_:Array = null;
         var _loc10_:String = null;
         var _loc11_:int = int(param1.length);
         var _loc12_:Array = new Array(_loc11_);
         var _loc13_:int = 0x0A18D9B1 ^ -1704370667 ^ 0x2752C49C ^ -1222425800;
         var _loc14_:String = "";
         _loc5_ = 0x51DEAE92 ^ 0x212F4D96 ^ -132736954 ^ -1998095550;
         while(_loc5_ < _loc11_)
         {
            _loc7_ = param1[_loc5_] as String;
            _loc12_[_loc5_] = _loc7_.length;
            _loc6_ = 0x0254C5CD ^ -788578948 ^ -204209056 ^ 0x217FFCD1;
            while(_loc6_ < param2.length)
            {
               _loc9_ = param2[_loc6_] as Array;
               _loc10_ = _loc9_[_loc5_] as String;
               _loc8_ = _loc10_.length;
               if(_loc12_[_loc5_] < _loc8_)
               {
                  _loc12_[_loc5_] = _loc8_;
               }
               _loc6_++;
            }
            _loc13_ += _loc12_[_loc5_];
            _loc5_++;
         }
         var _loc15_:String = "";
         var _loc16_:int = -1550920974 ^ -542344868 ^ -1329562417 ^ -857548959;
         while(_loc16_ < param3)
         {
            _loc15_ += _95da7f1147c669197db81295._8f4866de82b7339154180ecb("刎刬剆勅剗劐剄勛刅刏","刁剣剎剪刿劁勯勢劮列劢動刖劭勪剢");
            _loc16_++;
         }
         _loc14_ += _loc15_ + _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ြၒႀ჏Ⴋက္ၠ႘ს","ဆဨაფჰႳႋဒဍႈအႪၝဓၜဘ");
         _loc5_ = 0x6EDD8E90 ^ 0x242A8374 ^ 0x3223F493 ^ 0x78D4F977;
         while(_loc5_ < _loc11_)
         {
            _loc7_ = param1[_loc5_] as String;
            _loc7_ += _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ႾႰႮ჈ოၘ့ၛႽႶ","ၣ့ჱၯსၥႋမჶႅჍဗიჾဉၰ");
            _loc14_ += _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ტဤტၱၷ၊ნ၂ჲၯၖၝ","Ⴊီნ႑င႑ႲဘჺၯჂჲဠၗჭရ") + _loc7_ + _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ჃჅრႋီ႔ေ႔Ⴑၩ","ၼႁႝဈၹიၾၰဇქၞဝခლၡჭ");
            _loc5_++;
         }
         _loc14_ += _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ყၕე჌Ⴘგ၁ၿၨლၝဴ","ှဴჸႁლဂဿჳၑ္Ⴉ჈ၛၞၔၩ");
         _loc14_ += _loc15_ + _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掘持掭捬换挲捂揌掓掘","挐掗捳挌捅挌掵捠换掔揆掘掓揋捃捒");
         _loc6_ = -575021793 ^ -1744648976 ^ 0x106EF989 ^ 0x55D5E066;
         while(_loc6_ < param2.length)
         {
            _loc9_ = param2[_loc6_] as Array;
            _loc5_ = 0x67031779 ^ -1949114982 ^ -2113468854 ^ 0x6ED6CCA9;
            while(_loc5_ < _loc11_)
            {
               _loc7_ = _loc9_[_loc5_] as String;
               _loc7_ += _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挕挘捴掿揩捐挠揦捔损","捊掍捊揽掝挃捒挄掄捏换捵据揧捋挢");
               _loc14_ += _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揷探捉掄挫揔掔揭揄握捕掇","揬挲捜揹揩捱挓揈捥揨挆掽揳挝揮捙") + _loc7_ + _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၢႃၹ႘აႰၨႪဇဂ","Ⴆ၄რ၂ၛတန჉ბრဤၻ჌჉ძბ");
               _loc5_++;
            }
            _loc14_ += _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挆捽掅挿捧揘挟挸挰挽授捓","掯捡掓掃掔揿捬挂揔揻揽揸揼挗揕掖");
            _loc6_++;
         }
         _loc14_ += _loc15_;
         return _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捽捉掤挠挓掗挿挾採提揵挎揽挌掐捁捓掎捃揂掾掚掟揘揞捻掅揽掩挃推授接挫掔揔掿揎揋挒挱描掄揆揩換捓揹挜掏捓捅","掻捥掰挊挣挹掳捨捶掼掔挀揃捷捗捒") + param4 + _95da7f1147c669197db81295._8f4866de82b7339154180ecb("刽剎勸刱剂列勜勪勁势勧刓","劘勫剰剎勠勻刂勉劷功勄刿勤剦勲勦") + _loc14_ + _95da7f1147c669197db81295._8f4866de82b7339154180ecb("刪劫勭勅劲勌剉勨勶别勹刈勇勬劺剉刮刲刋勁勾剁劗分创剙剢判剨募列劣前勍","劬剣刞刊劒刹刞勸剖勏募助勴剤削剝");
      }
   }
}

