package com.ax3.utils
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   
   public class TimeConverter
   {
      
      public static const HOUR_MINUTE_SECOND_TYPE:String = _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("႗ေၦႉှရၹშၡႻၵჺႤცငႏႅჁဃတဴႍჀთအႵခဇာၤ႙ნჃအၠတჩဿ႟Ⴊႀီ၇ၜၾზႄႧ","ჾပဥူဋჯႷ၈ႚဣႝლჄწထႌ");
      
      public static const HOUR_MINUTE_TYPE:String = _95da7f1147c669197db81295._8f4866de82b7339154180ecb("劶剅剽动勪剘劊勭剖刍勨劯剀剽删劔刯勮剔勢劭劏劾劅勭勭则勪剳刍劮创剟勞勹創","剜刏勩劈剡剃剙勨勷划列勱剃劅勈刐");
      
      public static const MINUTE_SECOND_TYPE:String = _95da7f1147c669197db81295._8f4866de82b7339154180ecb("劎副刼剾务勩勾劯刃办剮剶勿劣刋劺削刅刿剘刴刓刚剴勴刏勹劒剻勃勍劦勹劎勍勏劲劗劇剹","务勼剋剡勓刃刉動勊劇劏刯剪剔勜刻");
      
      public static const DYNAMIC_TWO_VALUES_TYPE:String = _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ခႳႡူ္ႆၹႼ့კွၯႫၻჺ၅ဟဤႺဤ჌ၭၟჇ჎ႃႌყჍ၌ဠ႒ႨၚჃႏႸၞစဈ၆ဿ჻჋Ⴡ჌ႫႡ","ၴေწၦძნၓပ႓ၷိဴ၇၇Ⴏဝ");
      
      public function TimeConverter()
      {
         super();
      }
      
      public static function fromMinutes(param1:Number) : uint
      {
         return Math.round(fromSeconds(param1 * (-1868148718 ^ 0x3185E04F ^ -148316632 ^ 0x560B6E49)));
      }
      
      public static function fromSeconds(param1:Number) : uint
      {
         return Math.round(param1 * (-751096164 ^ 0x76C6ED0D ^ 0x04BEAE8C ^ -1589416203));
      }
      
      public static function fromHours(param1:Number) : uint
      {
         return Math.round(fromMinutes(param1 * (-752064282 ^ 0x4E3D9278 ^ -1222507130 ^ 0x2A33FF24)));
      }
      
      public static function fromTime(param1:Number, param2:Number, param3:Number) : uint
      {
         return fromHours(param1) + fromMinutes(param2) + fromSeconds(param3);
      }
      
      public static function toSeconds(param1:Number) : Number
      {
         return param1 / (0x1BED27CD ^ 0x07747A8C ^ 0x2CA7A78A ^ 0x303EF923);
      }
      
      public static function toMinutes(param1:Number) : Number
      {
         return toSeconds(param1) / (-1517487156 ^ -1176535329 ^ 0x1DB6B8FE ^ 0x01E53DD1);
      }
      
      public static function toHours(param1:Number) : Number
      {
         return toMinutes(param1) / (-77197422 ^ 0x163017DD ^ 0x643492B0 ^ -1990030653);
      }
      
      public static function toDays(param1:Number) : Number
      {
         return toHours(param1) / (0x1F8CB20E ^ 0x04CF263D ^ 0x08EFF7AC ^ 0x13AC6387);
      }
      
      public static function toObjectTime(param1:Number) : Object
      {
         param1 = Math.abs(param1);
         var _loc2_:Number = Math.round(toSeconds(param1));
         var _loc3_:uint = _loc2_ % (-533702839 ^ 0x4A9AA386 ^ -1176564102 ^ 0x1375FA89);
         var _loc4_:uint = Math.floor(_loc2_ / (0x739E6AF2 ^ 0x689C7B62 ^ -1203908896 ^ -1556095156)) % (-1579445857 ^ 0x72D6C35F ^ -1761111609 ^ 0x440AC33B);
         var _temp_3:* = Math;
         var _temp_2:* = _loc2_;
         var _temp_1:* = -868322067 ^ -1632645660 ^ 0x1D8C6D09 ^ 0x4F1DD43C;
         var _loc5_:uint = uint(_temp_3.floor(_temp_2 / (_temp_1 * _temp_1) % (0x2050D7FB ^ -239227239 ^ 0x5965308E ^ -2004334092)));
         var _temp_6:* = Math;
         var _temp_5:* = _loc2_;
         var _temp_4:* = 0x1B85698F ^ -1572985263 ^ 0x0FB3DB9A ^ -1240951688;
         var _loc6_:uint = uint(_temp_6.floor(_temp_5 / (_temp_4 * _temp_4)));
         var _temp_9:* = Math;
         var _temp_8:* = _loc2_;
         var _temp_7:* = -1479733381 ^ -262679242 ^ 0x1BBEE3B4 ^ 0x4C2439C5;
         var _loc7_:uint = uint(_temp_9.floor(_temp_8 / (_temp_7 * _temp_7 * (0x10978604 ^ -342593447 ^ -1558799868 ^ 0x58156C41))));
         return {
            (_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劤劈劷勊刘剈勜刷剗利劜勢勌勝删剋","剭勋剔剞劺劥刅剡勶劐剃刯勒劻剓刚")):_loc7_,
            (_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捖挐揸插插揚捗挲挆揢揸掉挨挱挥挦挷揙","捿掬捜捋採捋揬揂挀掳揟捉揃捾掙掘")):_loc5_,
            (_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၸႣဒႚၧႨံეႌჂ၂ზၻထ၃ႃျၷႫ႘ႂმ","ဉ၍၀႙ဖჵခ჊႑ႜဵိჂႼၰမ")):_loc4_,
            (_95da7f1147c669197db81295._8f4866de82b7339154180ecb("券刕勿剴劺劆勯剽勞刭势勘刊励劲勿刵刖勡劧剰剫","剅劊劒勀功劳劃勇勊剑勽剤刚勾勹劯")):_loc3_,
            (_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ႋოოဈმႵ჉၎ၣႲၛჼრႬქၹဎ၍ႸჀၢშႣၮႊႤၹၩ","ုလိ့နႹဘၟႸსჰუၖႋმჍ")):_loc6_
         };
      }
      
      public static function toTime(param1:Number, param2:String = "hourMinuteSecondType", param3:String = ":") : String
      {
         var _loc4_:Object = toObjectTime(param1);
         var _loc5_:uint = uint(_loc4_.seconds);
         var _loc6_:uint = uint(_loc4_.minutes);
         var _loc7_:uint = uint(_loc4_.totalHours);
         var _loc8_:String = String(_loc5_);
         if(_loc8_.length == (-610465027 ^ -1893485348 ^ -780445105 ^ -2050628497))
         {
            _loc8_ = _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("授掵挹掦挼揔捆据揪掊","揊掸掵揟揖捽捪挒揋挦排掏揦挍掏揲") + _loc8_;
         }
         var _loc9_:String = String(_loc6_);
         if(_loc9_.length == (-81984400 ^ -1997155481 ^ -1098122698 ^ -849138400))
         {
            _loc9_ = _95da7f1147c669197db81295._8f4866de82b7339154180ecb("勍务劣判劕剢劍募勋刳","刌刅刐劒劝剭劗刍劜劜剁刢劔勥刖劗") + _loc9_;
         }
         var _loc10_:String = String(_loc7_);
         if(_loc10_.length == (-880246664 ^ 0x4C2C382E ^ -1601329260 ^ 0x27291FC3))
         {
            _loc10_ = _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၘႩ჋ၗაჱႱံ႑ၗ","჆ၳံႊပႹၧ႕ဳၑ၃ჅႂႫსბ") + _loc10_;
         }
         var _loc11_:String = "";
         if(param2 == HOUR_MINUTE_SECOND_TYPE)
         {
            _loc11_ = _loc10_ + param3 + _loc9_ + param3 + _loc8_;
         }
         else if(param2 == HOUR_MINUTE_TYPE)
         {
            _loc11_ = _loc10_ + param3 + _loc9_;
         }
         else if(param2 == MINUTE_SECOND_TYPE)
         {
            _loc11_ = _loc9_ + param3 + _loc8_;
         }
         else if(param2 == DYNAMIC_TWO_VALUES_TYPE)
         {
            if(_loc7_ > (0x427B8A7F ^ 0x7B2D4EDC ^ 0x63B4F901 ^ 0x5AE23DA2))
            {
               _loc11_ = _loc10_ + param3 + _loc9_;
            }
            else
            {
               _loc11_ = _loc9_ + param3 + _loc8_;
            }
         }
         return _loc11_;
      }
      
      public static function toHMSString(param1:int) : String
      {
         return toTime(param1,HOUR_MINUTE_SECOND_TYPE);
      }
      
      public static function toHMString(param1:int) : String
      {
         return toTime(param1,HOUR_MINUTE_TYPE);
      }
      
      public static function getTimeString(param1:int) : String
      {
         var _loc2_:String = "";
         var _temp_2:* = param1;
         var _temp_1:* = -905309102 ^ 0x1057A123 ^ -1065586008 ^ 0x1A21C7E5;
         var _loc3_:uint = _temp_2 / (_temp_1 * _temp_1);
         var _loc4_:uint = param1 / (-1258915031 ^ -1452699444 ^ -1722176786 ^ -2067381961) % (-834824348 ^ -257002440 ^ -589190293 ^ -495826933);
         var _loc5_:uint = param1 % (0x3AA46F56 ^ -1304061562 ^ -994659423 ^ 0x4C57454D);
         if(_loc3_ > (-205037766 ^ 0x6CAC6258 ^ -256088480 ^ 0x6FD75B02))
         {
            _loc2_ += doubleDigitFormat(_loc3_) + _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ဗၦოთဝႉဉႛ၂ძ","ႏ႐ၯဗၰოဈၖဌღဴှ჋ၭ႕စ");
         }
         else
         {
            _loc2_ += _95da7f1147c669197db81295._8f4866de82b7339154180ecb("剼則劖劉刳勶刕刢勶剘则勸勄劉","劀刿務劊刂劕刌剙剛刔剟刑剄刞刑剳");
         }
         if(_loc4_ > (-1667606693 ^ 0x277D2628 ^ -1936802584 ^ 0x3769CD9B))
         {
            _loc2_ += doubleDigitFormat(_loc4_) + _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ႉႳႅၔბ႗ეျၯ჈","၊ႚႠ჆რႤႉხၽၦႮდဤဒღၮ");
         }
         else
         {
            _loc2_ += _95da7f1147c669197db81295._8f4866de82b7339154180ecb("刴剼刼刞劏勎勦刘刜勋刔划剅剢","刴劷勑劮勏劵劰勴刪剿剚労勱剦刋劥");
         }
         if(_loc5_ > (0x7E5594B5 ^ 0x07832F99 ^ 0x7558DB18 ^ 0x0C8E6034))
         {
            _loc2_ += doubleDigitFormat(_loc5_);
         }
         else
         {
            _loc2_ += _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ညსၹါႳၿဏ႐შႎ်႔","ိၪჯ၊ာၢၮပოძႀႌႎ၂ယა");
         }
         return _loc2_;
      }
      
      public static function toMicroTime(param1:int) : String
      {
         var _loc2_:int = param1 / (-1214539396 ^ 0x693E694C ^ 0x3BE538A6 ^ -448416042);
         var _loc3_:int = (param1 - _loc2_ * (-1729675740 ^ 0x6BEF6C64 ^ 0x3974F683 ^ -897983869)) / (0x3F8532F5 ^ -1586110475 ^ 0x3596924E ^ -1419340498);
         var _loc4_:int = (param1 - _loc2_ * (-327971815 ^ -454356759 ^ 0x6EE4E68D ^ 0x6679043D) - _loc3_ * (0x6E1FF09B ^ 0x15D50741 ^ 0x13F38807 ^ 0x683995BD)) / (0x19E578DD ^ -1012032559 ^ 0x243E2A58 ^ -25769284);
         var _loc5_:int = param1 % (0x0761790C ^ -979744845 ^ -452616168 ^ 0x27FE9D4F);
         var _loc6_:String = _loc2_ + _95da7f1147c669197db81295._8f4866de82b7339154180ecb("労剺剫劐勤刼务剌劶剥","剗务剘劵劃劔剫勬创刅剟勖刨剜刨勡");
         _loc6_ += _loc3_ < (0x23E5A56B ^ 0x4017A012 ^ -404447823 ^ -2078893886) ? _95da7f1147c669197db81295._8f4866de82b7339154180ecb("勯刍勠劐勞劰刪勓劦刁","劣剜勲剩动刧势務划劮剳勧剈劘刮勮") + _loc3_ : "" + _loc3_;
         _loc6_ += _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၐဓစრტყვဟၥႲ","პဖჯჯႨဠၔဌာხၚჟၬ჆ဨဘ");
         _loc6_ += _loc4_ < (-427513898 ^ 0x2C06CC6C ^ -306039373 ^ 0x27405E03) ? _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၤၲၤၦံထႇၝဖႽ","ဆ၅ძ႔ၮၥၬဏဵုႸ၇ၫၓ႘Ⴗ") + _loc4_ : "" + _loc4_;
         _loc6_ += _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掐挗控捩措描掊挅捀掔","掅捳捆捅挷揫挔捸排揗掮接掆捲捛掑");
         return _loc6_ + (_loc5_ < (0x24DF4949 ^ -1585101594 ^ 0x1E17EE80 ^ -1689394395) ? _95da7f1147c669197db81295._8f4866de82b7339154180ecb("刓刱創利勚刚勢别剔剻剂剌","别勌加刵動勌到勳劼剑劽勁劗剂劈剆") + _loc5_ : (_loc5_ < (0x1BCFB4F4 ^ 0x4A91456F ^ -2134126973 ^ -778748036) ? _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ႆჁႈႭႬႚႎႶ႓ၞ","ჭၓႹ႐ငၜနၳჹၚႂမოးო၊") + _loc5_ : "" + _loc5_));
      }
      
      public static function convertToMMSS(param1:Number) : String
      {
         var _loc2_:Number = param1 % (0x7AB748D8 ^ -589030892 ^ 0x6FCF1B02 ^ -912504334);
         var _loc3_:Number = int(param1 / (-1669351044 ^ 0x724F7277 ^ 0x22F4F62D ^ -859554534));
         var _loc4_:String = doubleDigitFormat(_loc3_) + _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ႍႹდႰၩဤဏၶႝဳ","႗ငႂ်ႾၭဤႴႃဢ႖ုခဓႴၫ");
         var _loc5_:String = doubleDigitFormat(_loc2_);
         return _loc4_ + _loc5_;
      }
      
      private static function doubleDigitFormat(param1:uint) : String
      {
         var _loc2_:String = param1.toString();
         if(param1 < (0x741D7FE4 ^ 0x434DC17D ^ -1128735203 ^ -1947705202))
         {
            _loc2_ = _95da7f1147c669197db81295._8f4866de82b7339154180ecb("剏勡刪判劈勮勏剶勋劥","刽勀勋刣劌力副勁刼刼劵劦刵劦剙刿") + _loc2_;
         }
         return _loc2_;
      }
   }
}

