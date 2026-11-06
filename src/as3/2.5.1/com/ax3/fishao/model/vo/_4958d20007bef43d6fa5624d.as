package com.ax3.fishao.model.vo
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.fishao.model.types._3e150da9e23ba0916ccbf8e9;
   import com.ax3.fishao.model.types._5b7284c7fd381f8e2dcb8905;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   
   public class _4958d20007bef43d6fa5624d
   {
      
      public static const UNKNOWN_PUNISHABLE:int = -1477396096 ^ 0x2082B897 ^ -1571467920 ^ 0x25274C67;
      
      public static const ABUSER_PUNISHABLE:int = 0x2DFD4D7C ^ -1812408698 ^ 0x01C31B67 ^ -1077509988;
      
      public static const REPORTER_PUNISHABLE:int = 0x2D3C9DB9 ^ 0x4FDD2795 ^ -769019764 ^ -1329067358;
      
      public var key:String;
      
      public var reportKey:String;
      
      public var date:String;
      
      public var dateShort:String;
      
      public var reporterUsername:String;
      
      public var opponentUsername:String;
      
      public var abuserUsername:String;
      
      public var status:_5b7284c7fd381f8e2dcb8905;
      
      public var banType:_3e150da9e23ba0916ccbf8e9;
      
      public var lang:String;
      
      public var timeAgoSec:int;
      
      public var description:String;
      
      public var subject:String;
      
      public var abuserLang:String;
      
      public var abuserMessages:String;
      
      public var reporterLang:String;
      
      public var reporterMessages:String;
      
      public var penaltyDesc:String;
      
      public var punishableSide:int = 0;
      
      public function _4958d20007bef43d6fa5624d()
      {
         super();
      }
      
      public function _aa26310566acafc06106a99c(param1:Object) : void
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = false;
         var _loc4_:String = null;
         if(param1.hasOwnProperty(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ႈႊႹှვၔၥჳၽဿ႐჋ႅႽ","Ⴟ်ၝၳႅဪႊჽၙံჰყႄოႳ၄")))
         {
            this.key = param1.key;
         }
         if(param1.hasOwnProperty(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ჵეზဃာ჻၂ှ။ဒ႗႘ဗဆ၂ၪႫဣႻჶဲၚმဂႫႋာ၇","ႷၬႳვႽဗႋၛၻၱွၨႭმၣည")))
         {
            this.key = param1.penaltyKey;
         }
         if(param1.hasOwnProperty(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၒჳၜჍ჌ႅტ჎჉ႊ၃ဂှხဲဘ္ვ၁ှးဝၻီლဴ","იჶညႌဗ჋းှჂ႔ပမၶႭျ႘")))
         {
            this.reportKey = param1.reportKey;
         }
         if(param1.hasOwnProperty(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劅刴剕剠勲勬剣勳券勼勫勄务勅刘剾刡刜刈勚创勓勶勏劳劾刧剿","刖勩剰刘刘刡剃刷劣別劉勲勦剙劦勦")))
         {
            this.lang = param1.abuserLang;
         }
         if(param1.hasOwnProperty(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ုၖ჈ဵဵႋယႝၩဎჶ၅၂ၐ჻Ⴭ","ჽဲၓၭოဪနၲႱဎႽႍღဳဌჇ")))
         {
            this.lang = param1.lang;
         }
         if(param1.hasOwnProperty(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("႐႔ဒ႓ႅၗႶၔဒ၅ფဪဌဠზၹၞლႵဋ႘ႈႋი","းၐႲႪၱႏႶၼჷ჊ჩၨ၇ჽဏ჈")))
         {
            this.reporterUsername = param1.reporter;
         }
         if(param1.hasOwnProperty(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("႐ၟၕဩႲဒဥၻ။ႯံჯვၚဤဍႲ჏ညဃჵၑჵ჈ႊၲႁႺႳၦၞၢႴါ","ჿၱဂိထၢჲ႓Ⴡၷ႔ႊ჏႕აჃ")))
         {
            this.reporterUsername = param1.reporterLogin;
         }
         if(param1.hasOwnProperty(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၵဳჩ၁ဟჹဤ႞ဗၓူဃკႃဝျწၧჶ၁ၽႼႮငၝ္","ၴ၅ႷჟႫပဘႛၻ჌ႷჸၳႡმၔ")))
         {
            this.reporterUsername = param1.moderator;
         }
         if(param1.hasOwnProperty(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ႧသႫဢၺၪအာႨქႊႯ၎ႣႅပဥკေွထႂဆႩ","Ⴚ႙မဵဥႇჰၴ႔ဗၘၯႉဓၽဆ")))
         {
            this.opponentUsername = param1.opponent;
         }
         if(param1.hasOwnProperty(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劍勊务剼剺剁剂勚刐勨勗剧勤剽劺劰剩判剟剚","制劎剦刋剧劢刦刢剴劙勇功勔労勑劇")))
         {
            this.abuserUsername = param1.abuser;
         }
         if(param1.hasOwnProperty(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("სဥ၂ၞ჈၂ჴၜწႱႡၦႳაဠ჊ჰႥငှჀၒၳၠ႕ဝႹႛ၆ဏွၷဧႎ႗ူဤ၅ဈ჊ၬჿႁၛ","჋ႺပႠႫხხ჋჈ჳၭეჄႺფၵ")))
         {
            this.punishableSide = param1.punishableIsAbuser;
         }
         if(param1.hasOwnProperty(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("჉ჴႶစဠၵတၯ჌ၼჰႨႝვဧႀၱႫဉცႭ၍Ⴔ္ႤဦဎႡჿდ","ႊၶღ჎႙ဦၗၝၜၟ၈ႇ჆უკმ")))
         {
            this.abuserUsername = param1.abuserLogin;
         }
         if(param1.hasOwnProperty(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劂劦剁剼剅剆勛劔劶剿办勩刺勫剂劐刞勌創功勢劧劢剕刲刪勈剷","勞劋剪剴刬刚勄勶劳劎勐刉刏剭剻剧")))
         {
            this.abuserUsername = param1.punishable;
         }
         if(param1.hasOwnProperty(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ႤၹთႽဆჯ჉ဤၞႷ၏ၹး႖႑ိ","ძဨၼუ႒ბჶႯჹဟဓါႏၽရႻ")))
         {
            this.description = param1.text;
         }
         if(param1.hasOwnProperty(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挽捂挑挆揂捉挑挘挜捒挂揵捒掄掁捗掟捰掬挑挧揪掦捼掽掂揟捝","挸掄掔捡掽揂指挈掘掙揮挕捝挲捈捋")))
         {
            this.description = param1.reportDesc;
         }
         if(param1.hasOwnProperty(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剝勨動剰剺剅劷切别勬劧勎劔刍剨劒剎剟利勝刄刏","刬勬剹劄勲勑剆勽劙刋努剁劶到劧刅")))
         {
            this.subject = param1.subject;
         }
         if(param1.hasOwnProperty(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捼捲掰挜掖揵掋揿提揾掷掖揄捊掷捑揊挞掻挺掛揊挣揢排按揵捛","揆挌揻振捩揗捙掌掔掖捔掏掻揘捆挾")))
         {
            this.timeAgoSec = param1.timeAgoSec;
         }
         this.date = _c2ad9d37d7be0097d6d2e977._e7ea8192c5aef265a8636557(this.timeAgoSec,true);
         this.dateShort = _c2ad9d37d7be0097d6d2e977._8b1d7fc46fc7ed5e413daf7a(this.timeAgoSec);
         if(param1.hasOwnProperty(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("თ႑၎ဥဇႏနႄძ၈ဲဝჼၞႫခယႉဲၱၲဟႥႾხჯဦზႎႁၤ်ၓპ","Ⴚၓၪჭ჉ჼႺႋၘၗၩთოჀღင")))
         {
            _loc2_ = Boolean(param1.isConsidering);
            if(_loc2_)
            {
               this.status = _5b7284c7fd381f8e2dcb8905.PROCESSING;
            }
            else
            {
               this.status = _5b7284c7fd381f8e2dcb8905.OPEN;
            }
         }
         if(param1.hasOwnProperty(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("။ჀႂၱဳႀჩႿ၆႞ေ႖ၕႃႁ႓ႡჃ","჈ၨ၈၅ဤံჺႺႍႮကၽးၶႍႋ")))
         {
            _loc3_ = Boolean(param1.isNew);
            if(_loc3_)
            {
               this.status = _5b7284c7fd381f8e2dcb8905.OPEN;
            }
         }
         if(param1.hasOwnProperty(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("၃႘ၨშရၦဝႺၒမဏၥဣဴႂၷჵႪၫნဉჟ","ၕဒႥၡဇၨჸ႐ბႨჽბ႞ၣ၍့")))
         {
            _loc4_ = param1.banType;
            this.status = _5b7284c7fd381f8e2dcb8905.CLOSED;
            this.banType = _3e150da9e23ba0916ccbf8e9._4f0abf31624ad8d39f1e1bfd(_loc4_);
         }
         if(param1.hasOwnProperty(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勿勻剷到動剸劊劉剑劕劮剬刐勛删剙剹剂剨勞勬勬制劑刑劃剄勰","势刾劕劸勉刼勵勄剹剗勁务剫勋剳勳")))
         {
            this.abuserLang = param1.abuserLang;
         }
         if(param1.hasOwnProperty(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("助劶勉勴刔劔勦劋列剁勥劮劎劶劰刅剖劇創劄勅划刷勞剑剈划刷勔动刪劮","劁劣刹劇劷劆剓劻勫勍剑勳剦剻办勋")))
         {
            this.reporterLang = param1.reporterLang;
         }
         if(param1.hasOwnProperty(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勂则劰劆剆勤剧劑劫勾剡刈労劦劇則剹前劾勾刐刔劘刻势刦剴劣剭勑刋劂刱剱刈劀","劾削刋勾務勏剧剄刪剐勬劋剗剁剰劰")))
         {
            this.abuserMessages = param1.abuserMessages;
         }
         if(param1.hasOwnProperty(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ဟႌ႓ႾჇჺဩႡჾထ჊ုၐဟႼႶႎဲဏႠყႄူ။ქးဢဟၮႋგ်နဩთၬ႘ွ႙ა","ွဿၔဗၗႏၙ႕ဴ၁ႹဢშစႷჭ")))
         {
            this.reporterMessages = param1.reporterMessages;
         }
         if(param1.hasOwnProperty(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剮勫剃勠勭勨刈努劑勲勆劼勀劜劚剞刄刉勍势剋効勫刊剄剘剸刌剸刚","刪刌劲制勃刍刢劧励剆勠劳勎办勋功")))
         {
            this.penaltyDesc = param1.penaltyDesc;
         }
         if(param1.hasOwnProperty(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捸揊掳挼揾掴捕捎捌揱揺掠揋挧揾捥換挬掂挕掏掉捴挎掔掅掛揎挓挥捡掽挗揣挲捒","挶揃揨掑捰揞挟捈揽捠揍捸挃揍掇掴")))
         {
            this.timeAgoSec = param1.banTimeLeftSec;
         }
      }
      
      public function _24c5dc30ce79f46fd9fea526() : String
      {
         var _loc1_:Array = null;
         var _loc2_:Object = null;
         var _loc3_:Object = null;
         var _loc4_:Object = null;
         var _loc5_:String = "";
         var _loc6_:Array = [];
         var _loc7_:String = null;
         var _loc8_:String = null;
         if(this.punishableSide == _4958d20007bef43d6fa5624d.REPORTER_PUNISHABLE)
         {
            _loc7_ = this.opponentUsername;
            _loc8_ = this.abuserUsername;
         }
         else
         {
            _loc7_ = this.abuserUsername;
            if(this.status == _5b7284c7fd381f8e2dcb8905.CLOSED)
            {
               _loc8_ = this.opponentUsername;
            }
            else
            {
               _loc8_ = this.reporterUsername;
            }
         }
         if(this.abuserMessages != null)
         {
            _loc6_ = JSON.parse(this.abuserMessages) as Array;
            for each(_loc3_ in _loc6_)
            {
               _loc3_.username = _loc7_;
               _loc3_.isAbuser = true;
            }
         }
         var _loc9_:Array = [];
         if(this.reporterMessages != null)
         {
            _loc9_ = JSON.parse(this.reporterMessages) as Array;
            for each(_loc4_ in _loc9_)
            {
               _loc4_.username = _loc8_;
               _loc4_.isAbuser = false;
            }
         }
         _loc1_ = _loc6_.concat(_loc9_);
         _loc1_.sortOn(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("႒ဴ჆ၭ့ტၿဒၩၥႷႁღတၞႅႱႉჟ႔Ⴎႉဌ჆ႵႥၲၠ","ჂႦႥႃါု။მဘၼ჉პჅ၈ჽဵ"),Array.NUMERIC);
         for each(_loc2_ in _loc1_)
         {
            if(_loc5_.length > (0x3BD5F0AD ^ -1692738874 ^ -389867910 ^ 0x480C3C11))
            {
               _loc5_ += _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掤捭掃掑捍揼掻掆挮挋掖揸揖挂捏捷","掕揤揾措揼挶据推捜揀揆捏揷揃揖揀");
            }
            _loc5_ += _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掙揌揫授按揼捃挼捌掿掐揎掾挥揶挤挍捿挸捿揠描揩揙挅揿掶挃捀揮掭捓捃掾揅捙揨捷挶挞揎捪捁掠掲揼挲揅揋揌挸挄挄挷","振揀掺挂掟挊揤捼掷掛掩接挥揝挎揟") + _c2ad9d37d7be0097d6d2e977._1f795313254eb7a1d6322c89(_loc2_.timeAgoSec) + _95da7f1147c669197db81295._8f4866de82b7339154180ecb("劢勫勀刳剡効劖劕勄剏動剋勣劾劼刑勊剂劐劝剒劳刺勎劣勲勔剬判加刚劦勿剽勅勽劮劙刕删剥剢刋刬劝勝勰剚勴剓勢劵効剔剟剀刉勱勇劤刡劐劐刜剶劫刿刕剌削","劑勂剾勞勣劋劥剰勄劚勧劋利剣助劻") + _loc2_.username + _95da7f1147c669197db81295._8f4866de82b7339154180ecb("刻剚勈刚剂勓勃剖到删刕勻勀刎勗剜剶劯劢劀剝剴創勶劁勒剄刕剭刾剏剿","劝刮劂删刈剫刺动劔勘剡刨刌勯剎劾");
            _loc5_ += _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ႝၖၟဃနး႞ိჍပာၱႢჁ႙Ⴚႜ၅ჹႷဩၫ႟ႼျႸလჳ္ჹဲၯ჻ဖႻၝჺႉနၫဈဿႁၮႺႻၗტဉႼ၍Ⴎ","ჽဤჟဆ၉ကუბၕ႒ცგჀၸჱဈ") + _loc2_.text + _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("დ။႓ნႷၠთႀၩၨႃႥၪၺဲည႙င႟შგგ","Ⴌးჭჸႏးლၤ၄႞Ⴌှဂထჲၩ");
         }
         return _loc5_;
      }
   }
}

