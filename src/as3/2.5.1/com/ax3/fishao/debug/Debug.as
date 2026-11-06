package com.ax3.fishao.debug
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import avmplus.getQualifiedClassName;
   import com.junkbyte.console.Cc;
   import flash.utils.Dictionary;
   import flash.utils.getTimer;
   
   public class Debug
   {
      
      public static const AUTO_LOGIN:Boolean = false;
      
      public static const AUTO_SELECT_WORLD:Boolean = false;
      
      public static const AUTO_SELECT_LOCATION:Boolean = false;
      
      public static const AUTO_SELECT_PRIVATE_HOUSE:Boolean = false;
      
      public static const AUTO_SELECT_BACKYARD:Boolean = false;
      
      public static const INCREASE_MOVEMENT_SPEED:Boolean = false;
      
      public static var AUTO_OPEN_DIALOG:Boolean = false;
      
      public static var DISABLE_MUSIC:Boolean = false;
      
      public static var LOG_ENABLED:Boolean = true;
      
      private static var _logMap:Dictionary = new Dictionary();
      
      private static var _excludedLogs:Array = [_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剬勼募剕勰刧劶剂刹剽刚勝勌刏剂刀勳动劑勐勿刍劲劍","勷劥剌剚剥勢劆勏刞劖勏劾勽刑削别"),_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ცႴႂ႓၃ဧჵშႍჄၫ႔ဉၶჩဒခჱူ჎ჷ႙္Ⴕ့ჵ","ငႌဓဓე၅ဌშ႘ၢ၍დ႘Ⴑლဤ"),_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၟဤၟႄၲ၇ႛႦျ჋၌ჱძၑကဂုဥႾၠღၟရ၇ჾეဵႭၗႃ჏ဉၦჭၺႰၝაႁႇႿရღႃၲဆრნშႸ","ႌ჆ၐხမဥဩ။Ⴁၔ჈ၫღტဦႥ"),_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挣揆挠揋揶描揲揭捸捩掆揇挭挭揮提捙揅挭挡掎揔捃挎挏掑掰掂掜挩掅掍掓捪捻措揝掞捜捿掌掖掋捽揯掸挛揻掻掖挧捛捣挸揥揞揨接","挣捤挊推掞挒挳掺挊揚揦挿掗揗掍挒"),_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捏掕揰捪揘掇捈挭掏掯掕挡提揌捉掝揁换捗掘掆挆揎揥揽揔捶掬挗挛揞捓揳揭掴捎揿揉捝挎掫挆掴捈挾挒揸掚揝授揹捋掬掵揕挴挪揦捂挙掽插挈挂捪挊捣揚捉捠","挳揷捩挝捚捣捎掣捃揍振挂捌捭挄掝"),_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劧励剗劙労劄剑剁刣到刜勆劯剺刧剟勫劉剀劰分削勦勷勃剅剗勮刄劸劆刹","劮剋助勬劑刋劶剻制勌劫剪刻剪劻劳"),_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挥挪掳揥挝挝掹挫捁掶揅挞掜捦掞捍捽挳掲揊捴揪损捃捪挈揈挈掤揦捃捄捏揧捒揀挒揈挜掣挧揵揶挈挝揤揟捿揨捈振挀","揋掇捘揅挍揟揶捓挀揗挱揾振掎揵掏"),_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剼刞劕剷劭剈刋副勮勔劖剼勧剐勫剰勓刢刏剓刞劘劂勱勖勬剾劧劉勅","刔刞勗労利勴勆勻勮剩制剔劌剻剋勰"),_433075a5d49397e40222eeae
      ._aa70f30b6c8db4826c832ff5("ზဉႬუႼဿဵၙ჎ၚ႟ၲဇႨၬဃဇთဦၺရၕჾლ႔ზჾႬႯၨ","ူၹုၥဩსႋჶၥၭႾၹႵၓ၁ရ"),_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劐劦刅劥刔劶割刡劋勣剰勏劸刁刂勪勞労剼勗副剆劍到剆動剭劭","剐勁刚勯助刲勜别劲剂勃剢勀判剥勻"),_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勢剛勗剐剁刡刧劤別勗劸劶剭勰剦勱剂勉勜勉刯力剚刚効剠勴刯剓剤剖勂刏創剈劈劤劎勗剱","劋別刲劫勘勺劽刦刖刹创剕剆劕剣勞"),_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("စ္႒ၫჰჟၺၥဧႮჇိႤႈႜჶ႖ဋ၉ჰၼჯუ့ვႠၜႭႥႋၭၽ","ၦၶဓ၁ဨၰရတဵၞၟၺცိ჈ხ")];
      
      public function Debug()
      {
         super();
      }
      
      public static function getPropertyOrDefault(param1:Object, param2:String, param3:Object) : *
      {
         return param1.hasOwnProperty(param2) ? param1[param2] : param3;
      }
      
      public static function assertProperty(param1:Object, param2:String, param3:Class = null) : *
      {
         var _loc4_:int = 0x7217291D ^ -912645252 ^ 0x1E3B6ED1 ^ 0x430512A2;
         loop0:
         while(true)
         {
            switch(_loc4_ ^ (0x06901A0A ^ 0x33FC6F3D ^ -1576523251 ^ 0x71D72929))
            {
               case 0:
                  assert(param1[param2] is param3);
                  _loc4_ = 0x3572A49A ^ 0x5DC00BD2 ^ -1091641746 ^ 0x30EF0737;
                  break;
               case 1:
                  assert(param1 != null);
                  assert(param1.hasOwnProperty(param2),_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揩捾捘捕接挧捼挀揊揖据捩捃捳掯掭掭捛捖描捤挡捌挔揖捀挊挆揾揗掫掀掌掕捂捤掋揢掺振捥捲","控捐捭掌捽揖揸揙握揋挺挪掂挍捐挝") + param2 + _95da7f1147c669197db81295._8f4866de82b7339154180ecb("劶刮勎剷剼勰剖刴刨剼勐劰削勄劅勥制剛刅刲劷勤劎别勧剤划刑勱勸効刽劅勥勪勽剰剸刬勋剥別劦勰","劝劖劺利勽制勮刟劔勛刲勷劻剘劔勐") + getQualifiedClassName(param1));
                  if(param3 != null)
                  {
                     _loc4_ = 0x17ECC419 ^ -1941457525 ^ 0x19CD082D ^ 0x64D50FAC;
                  }
                  else
                  {
                     _loc4_ = -822537829 ^ -1090405170 ^ 0x1247EF50 ^ -2062797804;
                  }
                  break;
               case 2:
                  return param1[param2];
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public static function assert(param1:Boolean, param2:String = "Assertion failed!") : void
      {
         var _loc3_:int = -1557171289 ^ 0x6FAC031C ^ 0x50B7C5D5 ^ -2145553420;
         loop0:
         while(true)
         {
            switch(_loc3_ ^ (-574059251 ^ -1413444527 ^ -526918105 ^ -1967777309))
            {
               case 0:
                  return;
               case 1:
                  Cc.log(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ტჳၑၶႡႰဵသၮჂၱჯ႖ၣჿ၃ჁဲဈႱႄჸဲჵჾႅ","ၺႠწႨူၫႍႧဦဗ႑ာႆၞႚာ") + param2);
                  Cc.log(new Error().getStackTrace());
                  throw new Error(param2);
               case 2:
                  if(!param1)
                  {
                     _loc3_ = 0x146C22E0 ^ 0x56EF9A41 ^ 0x4BE63556 ^ 0x154C4B6E;
                  }
                  else
                  {
                     _loc3_ = -1770770179 ^ -2078766469 ^ -1326328871 ^ -1095454777;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public static function assertEqual(param1:Object, param2:Object, param3:String = null) : *
      {
         var _loc4_:String = param3 || objectToString(param1) + _95da7f1147c669197db81295._8f4866de82b7339154180ecb("勮刾勤劰力勊务刦勌勧剦劄劑劉券勺刽削勷利剰劌刞劺劼券勶刢剽勳勈勴剞剰刓刏劼剰劃剻动刃剷劰","剦劓刾劂剏剰勆劦剢剒剱劰剋剳刚刽") + objectToString(param2);
         assert(param1 == param2,_loc4_);
         return param1;
      }
      
      public static function assertNotEqual(param1:Object, param2:Object, param3:String = null) : *
      {
         var _loc4_:String = param3 || objectToString(param1) + _95da7f1147c669197db81295._8f4866de82b7339154180ecb("劜劾劗剭剳勖勚勋勻力剅剆动刎劃劻刋削剝刨劦劶剸劮刷勨剕劓刞劷刹刢勊刞剮剨刯劗勖剶勳勸務剦","剔劣劤劆劁剠剄勪别剛勦勞別剘剷勩") + objectToString(param2);
         assert(param1 != param2,_loc4_);
         return param1;
      }
      
      private static function objectToString(param1:Object) : String
      {
         return param1 == null ? _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捍揭揕掝捐揰揽捉揊捥掲捯捿挥掃捠","揚挵揳振挟掟揅描掴揅掫捊揢揶掦捕") : param1.toString();
      }
      
      public static function benchmark(param1:String, param2:uint) : void
      {
         var _loc3_:int = getTimer();
      }
      
      public static function log(param1:String, param2:Boolean = false) : void
      {
         var _loc3_:int = -1819821804 ^ -1452846348 ^ 0x64C0A3B3 ^ 0x5E204853;
         if(!LOG_ENABLED || isLogExcluded(param1))
         {
            return;
         }
         if(param2)
         {
            delete _logMap[param1];
         }
         if(param1 in _logMap)
         {
            _loc3_ = int(_logMap[param1]);
            Cc.warn(param1 + _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("၉ႫႝႪဎჰဎဏၥჅ","ဌრႪေထჹဟ჻ႩႂლႭဈ႟ၿု") + _loc3_);
            _logMap[param1] = _loc3_ + (-592809757 ^ 0x11262CED ^ -1708227499 ^ 0x57A2D85A);
         }
         else
         {
            Cc.warn(param1 + _95da7f1147c669197db81295._8f4866de82b7339154180ecb("剭劚勖勪勎刽刔勎剃勵勞勋勒剕劔剓別剙勞劋","勯刭劝剧剱劃剴刣剿勵刞剂剬劘刹剠"));
            _logMap[param1] = -736196520 ^ -1720205563 ^ 0x198FCF1C ^ 0x54E6F841;
         }
      }
      
      public static function logEnd(param1:String) : void
      {
         if(!LOG_ENABLED || isLogExcluded(param1))
         {
            return;
         }
         Cc.warn(param1 + _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掋揃捒掅掁挲捿掌揾掚捭挗掺挔捄捨","挗揀捝掗揦揷揽捱掟挕揭揮掁揥挸掉"));
         delete _logMap[param1];
      }
      
      private static function isLogExcluded(param1:String) : Boolean
      {
         var _loc2_:String = null;
         var _loc3_:Boolean = false;
         for each(_loc2_ in _excludedLogs)
         {
            if(param1.indexOf(_loc2_) != (0x236852D3 ^ -447996526 ^ -421035765 ^ -549703243))
            {
               _loc3_ = true;
               break;
            }
         }
         return _loc3_;
      }
   }
}

