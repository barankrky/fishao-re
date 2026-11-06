package com.ax3.fishao
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.fishao.model.info._9f0379c95e97da0c1ff2a833;
   import com.ax3.utils.math.randomRange;
   
   public class Config
   {
      
      public static const IS_BETA:Boolean = false;
      
      public static const DEFAULT_LANGUAGE:String = _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ဢ္ူ။Ⴍ၂჏ჀဟჀჹႧ","ၥၖႉႩႹჅတၺၠჷၐရဳႁဟၙ");
      
      public static var LANGUAGE:String = DEFAULT_LANGUAGE;
      
      public static var FULLSCREEN:Boolean = false;
      
      public static var SCREEN_WIDTH:int = 0x42AEA9B8 ^ -695235968 ^ -2013227634 ^ 0x1C21B596;
      
      public static var SCREEN_HEIGHT:int = -499372354 ^ 0x223790D6 ^ 0x12653229 ^ -764506599;
      
      public static var ORIGIN_SCREEN_WIDTH:int = 0x26F6B27A ^ 0x3CCD1BDC ^ 0x2895BBFA ^ 0x32AE11D8;
      
      public static var ORIGIN_SCREEN_HEIGHT:int = 0x2C6DAC9D ^ -187544352 ^ 0x6755BC60 ^ -1075159483;
      
      public static var FISH_MAX_RATE:int = 0x55489890 ^ -434334272 ^ -917740544 ^ 0x7A186955;
      
      public static var IS_GUEST:Boolean = false;
      
      public static var GUEST_DISABLED:Boolean = true;
      
      public static var SEND_WELCOME_EMAIL:Boolean = true;
      
      public static var HIDE_FORGOT_PASS:Boolean = true;
      
      public static var SKIP_CONFIRM_PASSWORD:Boolean = false;
      
      public static var HIDE_SETTINGS_EMAIL:Boolean = false;
      
      public static var NEWS_DISABLED:Boolean = false;
      
      public static const MAX_USERS_IN_WORLD:int = 0x12E72FA8 ^ -1070418465 ^ -1134149703 ^ 0x6EB3A43A;
      
      public static const RAFT_TIMER_NAME:String = _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("探掇揽捦捋揍捇揜捛挋捘据掦挊挲捩挃掌揯挳指捿挙捊捺捈掷捦挨捾","挑揬捕挶掉捤挌提掚挱挚掝挖揺挴挰");
      
      public static const FISH_CAUGHT_TIMER_NAME:String = _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捍挈掔掹揲挦揄揝揨揎捰挍捗推掘揣捐揾揞挰","捖掮捽挺揎挛掜提揥捑挌按捭措揱捼");
      
      public static const FISH_DIDNT_CAUGHT_TIMER_NAME:String = _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("჏Ⴉဌၨဆჺၕဧဣၒၭ၂ႇႴნႇၰဋბၔႃჅျူဓဧၹဠႜါ","ဖႲဵაဏဏჹါျႯထဌ႙ဴ჻჋");
      
      public static var showFishingTimes:Boolean = false;
      
      public static var OBSTACLE_CHEAT:Boolean = false;
      
      public static const DEBUG_DRAW_ISO_LINE:Boolean = false;
      
      public static var SYNC_DEBUG:Boolean = false;
      
      public static var DEBUG_DRAW_LOCATION:Boolean = false;
      
      public static var DEBUG_DRAW_PATH:Boolean = false;
      
      public static var DEBUG_SHOW_OBSTACLE_MAP:Boolean = false;
      
      public static var DEBUG_DRAW_VISIBILITY:Boolean = false;
      
      public static var CLEAR_DRAW_VISIBILITY:Boolean = false;
      
      public static var WATER_ANIMATION_EFFECT:Boolean = true;
      
      public static var IS_SECURE_CONNECTION_PROTOCOL:Boolean = false;
      
      public static var NO_EMAIL_ACTIVATION:Boolean = false;
      
      public static const BAITS_DATA_URL:String = SERVER + _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၬ႕ჷქხჇდ၍ၕဖႡၩၛငၩჹႚႩ၄Ⴣဨဆႃ႟ဲ჋ძ၏ၞီႲჳံၗေთဌ။ၶ၆၉Ⴖზၮ","აჯႁၥငၖ႒ჯჶၼယု჎၆ြၐ") + randomRange(0x7BC06797 ^ 0x36FC4243 ^ 0x481EB33C ^ 0x052296E8,-1166996720 ^ -477878022 ^ 0x1AF804BE ^ 0x430D0044);
      
      public static const RODS_DATA_URL:String = SERVER + _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("၏ၤစပၚჱၛ႗ဵႠၡႁၮဃႬჄၱჁဘၞႮ჌ၲ၉ბნဌႮဨႁ၏နၶႢဘჵႍჂ჎ဢဘဦ","჉ဠၠႤဴ႔ဥႣ်რၗမჀၯ႖႑") + randomRange(0x3A902F4A ^ 0x21DFAE20 ^ 0x05E28704 ^ 0x1EAD066E,-20672617 ^ -1576617616 ^ 0x0FB2E052 ^ 0x5370F1A5);
      
      public static const FISH_DATA_URL:String = SERVER + _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ႫလဪႅႨხဟ჉႑၀ဢၧီၡၦႸၣဧႥჟႤၗၜေးႉႫၜთဦႨၕၬဏთၜჵკဂ႖჉ဘ","ႃၩჷჺႠိ჈ဇႴဆသၐၗညჽလ") + randomRange(-750251885 ^ 0x415E65DF ^ -753134287 ^ 0x410A607D,0x3285EC4C ^ -292031435 ^ -1434045664 ^ 0x76940C49);
      
      public static const COUNTRIES_URL:String = SERVER + _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("振揝捍挹挝挓捦揋挄掁掩捙捯揷挵掟揇揷揜捃挽揥揝掼揀挀挶挧挞掭捑掑揽掝挛揱捓掗捈控揿捯揭捙捻揇挌捕挘推挿捯","挕捍控捨捷捩揍挗捛挒掿揲掽揦揓捊") + randomRange(0x5474B6AF ^ -2124493489 ^ 0x65DBE7A2 ^ -1326343102,-1556703966 ^ -1685656023 ^ -958119872 ^ -28042149);
      
      public static const TIMEZONES_URL:String = SERVER + _95da7f1147c669197db81295._8f4866de82b7339154180ecb("劎勉劮勪勜勈刹别勰劸勚勔勐剒删剦勪剽刺劭勔分劶刅剠勢勞则劃剁刧劇刌剡劘刄剼剪剷则剀則剒剴刨劬励刂勊刕勘刾","勣剠勷別劙制刹勣勛劆劯刂勃劔勵勜") + randomRange(0x27D0F0B7 ^ 0x49F6F7FA ^ 0x307EE10F ^ 0x5E58E642,-1047860649 ^ -761057387 ^ -206763153 ^ -528160323);
      
      public static const CLOTHES_DATA_URL:String = SERVER + _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挮掄挫挆捌揵掠揣掶挞掎掤捬挖揟捭提捋揇描掝捒挣捭掮掄捥揜掾掰掓揅挍挪挣掺掐授揺掃捂捻掛捍捉掝挣揑","揔掲揽掿挜接挜挖提掤捌捪掳掦挞掌") + randomRange(-2120912897 ^ 0x2CBD57DC ^ 0x4A4212F7 ^ -412472620,-1331422280 ^ 0x42402D4C ^ 0x2561B3BE ^ -679108006);
      
      public static const RESOURCES_DATA_URL:String = SERVER + _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揂捑捍揫捕挎挸挀揵掰揉掽持揞捃掃捲掄捧捸挵掱挽捩振揌挓挪揕揵掫挤揝捜揉捠換換挷揂挖挧捴挆揧揲掫据捏挣捖掭","揮揘挙掦换挩捻捓掁揵捃挘揕掰挙掹") + randomRange(-1482945895 ^ 0x6EE92BB0 ^ 0x45EF9BED ^ -1936016700,0x6D4AE209 ^ 0x69505CF1 ^ 0x254A03FA ^ 0x21509A12);
      
      public static const LOOKS_DATA_URL:String = SERVER + _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ႛဩၪႾဠႭၓဢ၁ႦႄჄႳႸ႞ၚჵშნიჯၛၜဖဣၐ႟ဇოႼგႛၳဲၐჾႿၲၮუ၂ჸშე","ေჵၲႂႪုဣႨყၪဃဵ႑ၪႆ჌") + randomRange(-1345518522 ^ -131010921 ^ -1815082868 ^ -1003625891,0x588308BF ^ -2131483607 ^ -1859710093 ^ 0x495018F5);
      
      public static const EXTRA_FLOATS_DATA_URL:String = SERVER + _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捵捚挩掲掃挖捋捆揭捙捓捞挆揙揩揢捣揯揋掿掦掅揍控揹揕挩揑揕挛揮掅挘揘揬捩揄掫揎掕掐捘挬揮捏挾捽揵","掘掆揄捦挵掔捻揫掌捕描捴掎掳揚揶") + randomRange(-787734892 ^ 0x0C602F99 ^ -851647094 ^ 0x1050D487,0x495CFC50 ^ 0x40CB2321 ^ -1564918220 ^ -1422997931);
      
      public static const FOSSILS_DATA_URL:String = SERVER + _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ပကၣျြးႶၪჲၚႤ჻Ⴁၝ၊ၛჿ႖ဏႊკသჳီတႤမကႨ჉႖ြ჊ႎၘဘႃსဍ၂ပჱ჏ჁჄံ၊္","ႉ႞Ⴭ၅ွႬဖၽႄၖႮ၇လე၁ၥ") + randomRange(0x288AA0B1 ^ 0x6A2B1742 ^ 0x36443ACC ^ 0x74E58D3F,-1504384152 ^ 0x3114B749 ^ 0x3F6154BF ^ -1474220146);
      
      public static const FRUITS_DATA_URL:String = SERVER + _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揣掯掤揮捘挕揗揺指损揣挹捈掎揂挟挎掜捱捍捻持揫挕挲持掚捧揰揕据掍挞揍揞推据捋挘掙捶指捠持挰捶","捾挸捕揦揪揚挬掟捄挔揋掳揥揔捖挢") + randomRange(-527037808 ^ 0x416DF7A9 ^ -321484322 ^ 0x4D2D74E7,0x14C2A6DD ^ -2009709131 ^ 0x1D64F382 ^ -2121254918);
      
      public static const PRIVATE_HOUSE_INTERIOR_ITEM_DATA_URL:String = SERVER + _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("უჷშძႀჀၭ႗ႅჟ჎მჃ႘ჯსჃჴစ႟ု჈ၕၸჭ႖ဠႜჼ့ၦსဵဃၑႣၚჁြშჩၢၗဲႛဒ႕ၧွဝႉၡ႖ၴဦဆ႞ၪ၎ႊႤჼၷႸဖဠუႂၖႼ၆Ⴖၷ်ၹဒჹါ","ၼყუქსღაႭჄႌႷ။ჿ႟ဃႥ") + randomRange(0x387ABF58 ^ -697290031 ^ 0x582EC8D9 ^ -1239136944,-917407427 ^ -1995891477 ^ 0x24EC5795 ^ 0x64B41553);
      
      public static const GAME_BACKGROUND:uint = -1637638098 ^ -100995089 ^ -2023302162 ^ -520317952;
      
      public static const LAKETOWN_ID:int = 0x29203025 ^ -468412296 ^ -316569020 ^ 0x20152218;
      
      public static const RIO_TROPICAL_ID:int = 0x605872FA ^ -1518914829 ^ -380802889 ^ 0x2C6228BC;
      
      public static const PINHERIRA_BEACH_ID:int = -2101250979 ^ 0x2D78ECA5 ^ 0x51469049 ^ -16840526;
      
      public static const COOL_MOUNTAIN_ID:int = 0x4C8444AB ^ 0x7DE1D560 ^ 0x4360FE1D ^ 0x72056FD2;
      
      public static const MYSTIC_DESERT_ID:int = 0x10E3B529 ^ -1890295624 ^ -1872883353 ^ 0x0FE9C4F3;
      
      public static const SIBIRI_CITY_ID:int = -585204245 ^ -248651479 ^ -980094244 ^ -374903272;
      
      public static const AQUAYAMA_ID:int = 0x49AD3E98 ^ 0x315E4787 ^ 0x39C1AA15 ^ 0x4132D30D;
      
      public static const SEAGULL_HARBOR_ID:int = 0x34CA83B0 ^ 0x43846452 ^ 0x158599D2 ^ 0x62CB7E38;
      
      public static const THOMBANI_TOWN_ID:int = -1002069980 ^ 0x2C740FD8 ^ -1757705045 ^ 0x7F0A235E;
      
      public static const MARSHVILLE_ID:int = 0x0AA78090 ^ -608187963 ^ 0x65FD2A8C ^ -1260035117;
      
      public static const AVALON_ID:int = 0x0D7DD4DC ^ -141150187 ^ 0x3D1B1019 ^ -940507939;
      
      public static const SUBLOCATION_TROUT_FARM_ID:int = -1003791970 ^ 0x67F8D3C6 ^ -1299780873 ^ 0x115560A4;
      
      public static const SUBLOCATION_BAKER_ID:int = -1272866714 ^ 0x0193A9C1 ^ -392438510 ^ 0x5D29ECB9;
      
      public static const SUBLOCATION_CORAL_ID:int = -1261120573 ^ -2010244713 ^ 0x0723C918 ^ 0x3BD90365;
      
      public static const LANGUAGE_URL:String = SERVER + _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၩბჇ႒ၩဘჾႽၚႊ၅၅჎ფႱၟဏၓဴ၊჌ჲဈဘၾြၤသဝჿ","ညၯ჉ၒჶျႚႢဴၼႢუგဴၬၻ");
      
      public static var AFFILIATE_ID:int = 0x56D2C880 ^ 0x498E5EF6 ^ 0x4BCD5BF2 ^ 0x5491CD84;
      
      public static var FORGOT_PASSWORD_URL:String = SERVER + _95da7f1147c669197db81295._8f4866de82b7339154180ecb("劃勊剣势勣劄剑勥势劽刅制功劇勻勾刜勗劦勺勔刺","勞剛刄勬劻勗刱勈剈動刣務勔刃刳刯");
      
      public static var CONDITIONS_URL:String = SERVER + _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("თრტဵွၔ၃Ⴂဧბၜ၊႘ၻပၢ၊႞","ႺჽၕჀနၺဋႶ၏ဍႸဘၠႻဲအ");
      
      public static var SHARE_GAME_URL:String = SERVER + _95da7f1147c669197db81295._8f4866de82b7339154180ecb("分勻剩刋剫勯刔劕勍劇刓剝刞募勰勳","切劵刣分列劲剟勼刌刹剥刀勼删刀劤");
      
      public static var IMAGE_DIR:String = ASSET_SERVER + _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ჩნს႑ხဂთႣႻႲႼၞဲဴဌჼႁႦၹჃ႗ဨဳ၈နႜႴႍေဥ","჊ჿၿ။ႍ၃စၮဥღၰპ၏Ⴉခქ");
      
      public static const FISHAO_BLUE_BACKGROUND_COLOR:int = 0x6B7E1077 ^ 0x5520FED4 ^ 0x19E01B8A ^ 0x27BDF506;
      
      public static const MAX_TOURNAMENT_PLAYERS:int = 0x4D998794 ^ 0x21FED720 ^ 0x09415AA1 ^ 0x65260A0C;
      
      public static var CAMPAIGN_ID:int = 0x089E32E7 ^ 0x607F2EF7 ^ -14279457 ^ -1748565809;
      
      public static var PROMO_CODE:String = "";
      
      public static var CAMPAIGN_REC_ID:int = -276433827 ^ 0x5FD7871D ^ 0x5FDCA50D ^ -275851699;
      
      public function Config()
      {
         super();
      }
      
      public static function get SERVER() : String
      {
         var _loc1_:int = -696389292 ^ 0x6B83B9F2 ^ 0x536C30CC ^ -1459016543;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (-559128191 ^ 0x73782530 ^ 0x68CFD57C ^ -2105490172))
            {
               case 0:
                  return _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ဪჺဨါၼၓჿႷဋ႗ဇဃღჺၯ၍ხჵသ၄ၩၿႂႲ","ვၬპပტၛკာႳးၳ჎ႜႵ჆ှ") + _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ႹီႴმႃၧအჅၧჶႬჼ႕Ⴒႏჰ჋သဉတႆ၍ဲၐႍ჻ွႧაယလဧწဉႀႻႾဣ","ჽ၍ဿိႈဣ၆ေძჸჳ႔႒၍ဳც") + _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ჷပဈီဩჃ႕ၣ၃ဉ","႓ဗဇ႐Ⴢ႗ၔცၟႱႶအლၦ჋ბ");
               case 1:
                  if(_9f0379c95e97da0c1ff2a833._17cfc701aba420494fc10653())
                  {
                     _loc1_ = -1772681333 ^ 0x3A3C0EBD ^ -1560293046 ^ 0x490F8CB5;
                  }
                  else
                  {
                     _loc1_ = -975177204 ^ 0x534B22E6 ^ 0x73791775 ^ -1569285294;
                  }
                  break;
               case 2:
                  if(_9f0379c95e97da0c1ff2a833.isLocal())
                  {
                     _loc1_ = -167342353 ^ 0x0F35BA3A ^ 0x21628221 ^ -1614093762;
                  }
                  else
                  {
                     _loc1_ = 0x54489D58 ^ 0x566F014F ^ 0x708B9954 ^ 0x3537518B;
                  }
                  break;
               case 3:
                  return _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("჈ိ၈၄၌ჽဖႨႈယ၉ზႿჅჴၽျჯႻუႠლၴჳ။Ⴓზ჊ჺဖ၉ဲႰႤပ့კဈအံႃჍၧ჌ဨဩါၐცბထჀ","Ⴚ႕ၦငဠფ၌ႜၠႴႜჇဏჽ჊႙");
               case 4:
                  return "";
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public static function get ASSET_2_SERVER() : String
      {
         var _loc1_:int = -860043925 ^ -1524919100 ^ -475729490 ^ -872492279;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (0x019513F1 ^ 0x0E4C8821 ^ -143805653 ^ -1186374669))
            {
               case 0:
                  if(_9f0379c95e97da0c1ff2a833.isLocal())
                  {
                     _loc1_ = 0x438F3008 ^ 0x027BF071 ^ -1428072678 ^ -1427577745;
                  }
                  else
                  {
                     _loc1_ = -1187987673 ^ 0x21FD6DF3 ^ -1988432035 ^ 0x504A4E82;
                  }
                  break;
               case 1:
                  return _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ႉစ႔ၦဣပაႱႺႥ။Ⴕზ჉ႛპၡႌၽ၊ၡဳა၇","მ၁႐ოჺჺၫ჈ကႊ჋Ⴕယ჌აႤ") + _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ဩჿყ႟႙ჼყႬႇဵჲႠვႯჟႉყგႚ၄ၓ႙၄ဳშၣ႓Ⴗၳႛ႟အႲႝ၎ပႦၠ","သფ။ძၫე၅႒Ⴉယဴ჏႓ၫ႔႑") + _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掙掙挰揃挗揵捙挵掕掌","揲挡揎揑挾捑捃揵揋掬揶捬挝揩捚揆");
               case 2:
                  return "";
               case 3:
                  if(_9f0379c95e97da0c1ff2a833._17cfc701aba420494fc10653())
                  {
                     _loc1_ = -977998728 ^ 0x2B16F569 ^ 0x77703612 ^ -667984886;
                  }
                  else
                  {
                     _loc1_ = 0x05175617 ^ -700245019 ^ 0x36B40388 ^ -1541587600;
                  }
                  break;
               case 4:
                  return _95da7f1147c669197db81295._8f4866de82b7339154180ecb("刵刃刣刚勏刟剷劽刊刖刞剏削利剤勻勭勅勗刖剌勯剂勇刪剩劥勌勺刣刋刢劢刵删刼创剡劫勛刟刯剎劅勶励则切剨劼劣刣","削刬劳剉功劈剱剩劳勵勷剓劚判剤勜");
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public static function get ASSET_SERVER() : String
      {
         var _loc1_:int = -128362607 ^ -1663710641 ^ -806538272 ^ -462968268;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (-888640764 ^ 0x3A2D0B3D ^ 0x4D19756B ^ -214298279))
            {
               case 0:
                  return _95da7f1147c669197db81295._8f4866de82b7339154180ecb("剧刂勉勬刯勃刕剺勤勱剼剜勦勌勧勢刘剩判割勋別効勛","劜剒勏勽努勐刧判剱劅剾勾剼刁刄势") + _95da7f1147c669197db81295._8f4866de82b7339154180ecb("勿勛勂剪剑劫劓功劢刉剣勌剢动剕列刟勎労剎办勪初劊剛剒刋剥剤剥勍勫判剨勹劂刐勑","剐勇刺勃勊劌剭勀切勱剃剕刹刟勡剨") + _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揽挷揢损控捊掾挠挕揩","掼挄挪揪捠捔提掴挃捓捭揷揗挄掜捳");
               case 1:
                  if(_9f0379c95e97da0c1ff2a833.isLocal())
                  {
                     _loc1_ = -696517908 ^ 0x4BD7C56A ^ -49421005 ^ 0x2FA7DEBA;
                  }
                  else
                  {
                     _loc1_ = 0x79AA6393 ^ 0x5560451B ^ 0x07FF6896 ^ 0x64334A17;
                  }
                  break;
               case 2:
                  if(_9f0379c95e97da0c1ff2a833._17cfc701aba420494fc10653())
                  {
                     _loc1_ = -1621144354 ^ -2135867668 ^ 0x04DA0805 ^ 0x54327E3C;
                  }
                  else
                  {
                     _loc1_ = 0x545C621C ^ -385275133 ^ 0x15524859 ^ -419363506;
                  }
                  break;
               case 3:
                  return "";
               case 4:
                  return _95da7f1147c669197db81295._8f4866de82b7339154180ecb("动劮勏勎刬剖剧剹劭勫刜剻刱刣剗劫剺剄刏動勢勐剩勜刜励剔刮勷劦剻勃制刵劓勩刾劷剀刉勶剬勲剂劬剭勚剺劲剼剮労","勹勜剧勯剜剒別助刺劥剂刼动劑劌勰");
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public static function get BUG_REPORT_URL() : String
      {
         var _loc1_:int = 0x30870603 ^ -59457518 ^ -669330123 ^ 0x394BFC6C;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (0x153CB2E8 ^ 0x6344AA84 ^ 0x74EE8342 ^ 0x2F347467))
            {
               case 0:
                  return "";
               case 1:
                  if(_9f0379c95e97da0c1ff2a833.isLocal())
                  {
                     _loc1_ = -269790518 ^ -344716150 ^ -1269169857 ^ -1654149067;
                  }
                  else
                  {
                     _loc1_ = -967787140 ^ 0x0B69DA3A ^ -194514619 ^ 0x14FC7948;
                  }
                  break;
               case 2:
                  if(_9f0379c95e97da0c1ff2a833._17cfc701aba420494fc10653())
                  {
                     _loc1_ = 0x3169D703 ^ -429085330 ^ -1627642740 ^ 0x645BB1AC;
                  }
                  else
                  {
                     _loc1_ = 0x4A432329 ^ 0x440DAD32 ^ -2091813737 ^ -1598220859;
                  }
                  break;
               case 3:
                  return _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၕဣ၌ႮၦძၪყါၸႯႪဵ၏ႚညၰ၉ႀႁ჻მၤၞယოၓၔၷႸၤသဥႯ჌ႅგဣဘႫႣჶ။შဓၽဢၘၭ჆၅႑ფၤჶၬဲႝီၿ၎ეည჊ၠၘჳႼႽႆႧႄ","ჭჼჰဿႃხწၽႡၕဴၶႸႌရ჌");
               case 4:
                  return _95da7f1147c669197db81295._8f4866de82b7339154180ecb("刖劀剜剰刟刕刪勅刼剽剢初勷剝刷努勧募刼剔勳勎剴券","劤剅則勐刊勓剈勦刳务劦刲劀剭勰动") + _95da7f1147c669197db81295._8f4866de82b7339154180ecb("剂劰剈剦勖剮劒刳剒劘劄劒刅勋剞劅勾剂勫剩剫刽勄剞刪劤剼刍刕刉剦勞刎刭劺劏勶剪","劫刪勢劲勑劥别剅剛劐勿剭剒刴勶劋") + _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ჅႻჶဃიბၳჽလၨႃၼဪထတႱၖၵၗႳၠိუ႓ဨ၍წၓრ၃","႗Ⴎ၀Ⴑჵၾၴဳ჏ႊႬჩလჩၗႾ");
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public static function get DIALOG_SERVER() : String
      {
         var _loc1_:int = 0x0D656F49 ^ 0x0A0197EE ^ -983971550 ^ 0x78F5AE60;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (0x09C45262 ^ 0x71646CCC ^ 0x600C04DE ^ -1570462313))
            {
               case 0:
                  if(_9f0379c95e97da0c1ff2a833._17cfc701aba420494fc10653())
                  {
                     _loc1_ = -910047391 ^ 0x1FC0522F ^ -645122784 ^ -1253752950;
                  }
                  else
                  {
                     _loc1_ = 0x128C3F2E ^ -2007079690 ^ -494023991 ^ -1030287630;
                  }
                  break;
               case 1:
                  return _95da7f1147c669197db81295._8f4866de82b7339154180ecb("动劊刐勮剌剣剫剞剿勫功刀剕刎剌劓劙剷刚刎剅刚刖勆刿功動剔剰剸勌勰劲刘劬勉刂勨剘剋刢劓剞劕劲刱刃剅勧勜刷剟","剞勚劢刖劌劥刌利励勨劏勀分刴劗劚");
               case 2:
                  if(_9f0379c95e97da0c1ff2a833.isLocal())
                  {
                     _loc1_ = -1815338200 ^ 0x64FE0D59 ^ -1181697376 ^ -194376905;
                  }
                  else
                  {
                     _loc1_ = -1286740825 ^ 0x3BB80D2E ^ -885127364 ^ -117214894;
                  }
                  break;
               case 3:
                  return _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挊挡挅挑振捊捹揫捼挀捸揎揗挲掛挰捇挤揃掸捫揂掰挫","掚捿挼捧揪掗掲援掍捂插掩掿挟挗换") + _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揃捉挤挺掫揺捫掯捁挮捪挎挑揌揶揘换掸援挂挤揝挬掔捷掌揃捾挺挺揠揖授捎掌捄挼掲","挶据揌揓揀掰捯挏控揣揊捠掚挎掔捾") + _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揚据揃捏掺握挧提揢揤","捕挮揰揈揶掦捃掠揹挣掵捄揬掔捰挞");
               case 4:
                  return "";
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public static function get WS_URL() : String
      {
         var _loc1_:int = 0x743A9E48 ^ -1331484402 ^ 0x46C4A4BD ^ 0x31ED0E46;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (-623722753 ^ 0x61F13F6E ^ -1297271930 ^ -1170296919))
            {
               case 0:
                  return _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၮ၌ჲოႮဪეဉუႯၝၭးႆေဤႅႏစႝ","၈ၡ჏Ⴀ჎ჹၑပဨဎႼံဏဠႹႣ") + _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၑဢႽၸ႗၃ႩႹ်ႰგႭႄოၝნႱႅ႞ဌჟႳႫ၌ႏხၑႤႛჶႸႛၻၶဲ၊Ⴋ჏","ႀၽမႥთ႙ႏၯჹညჰჟჁ႓႒။") + _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挣揑挹措捍挡挳挐捎挅捒揮捤掤","掙挸揉掾揋掃捄捊掔揆捀揚描掱揄掺");
               case 1:
                  return "";
               case 2:
                  if(_9f0379c95e97da0c1ff2a833._17cfc701aba420494fc10653())
                  {
                     _loc1_ = 0x5F103475 ^ 0x76FF4975 ^ 0x176ED3DB ^ -1926122651;
                  }
                  else
                  {
                     _loc1_ = -325480773 ^ 0x350C80E4 ^ 0x0FF4DCD9 ^ 0x65D1CF39;
                  }
                  break;
               case 3:
                  if(_9f0379c95e97da0c1ff2a833.isLocal())
                  {
                     _loc1_ = -85896713 ^ -154821321 ^ -578646677 ^ 0x62165C11;
                  }
                  else
                  {
                     _loc1_ = -1119351183 ^ 0x1800A0EF ^ 0x108221E0 ^ 0x067A92C2;
                  }
                  break;
               case 4:
                  return _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揮挲掚挡挵掟挸掛揦揮挤掭揖捉捌捁捏捕描捠揸捐挠挶挺挫捖捞捃挈挖捷捵捪捡捎捒挼捣挑捜掭捙捁揱掂挫掷挒挎掾掾","揘探掍挏掓捎指掳掻掮掏掼捦掙挘挤");
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public static function get CHARACTER_EDITOR_URL() : String
      {
         return ASSET_SERVER + _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("握按揠捑捳捤挭捥挖掲挘挥捕揔捀握捌掩挂挗捾挾提持揑掖揻揢挔揢挐捖揷掴掮捊揞捃授挽揎掲捥挦掠捇措捋掛捐捡挔揂掍捆掃捕挞挮挧挫掱掣揵挀挕捇捿揧揔掷揆掻揟挂揁揇捤捥捊掰捡掦掲挏排插挻捼振掛措挭揀掀捄挺揤挗揫捚掍挄排揑掉採挢","握捁掏掟捋挍提挖捷插措挆揢捈掑掶") + _9f0379c95e97da0c1ff2a833.VERSION;
      }
      
      public static function get ANIMATED_CHARACTERS_URL() : String
      {
         return ASSET_2_SERVER + _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掁挊掔挒挪掫捲揘掸掠揸振按捵揗挆揈掾掠捁挏推掮挨捘捈揹挃掭捶捉挾捝挝挍捅捶捿掘揙揃揦掵掭挧挈捙揼捿揪捩挫揓揨捉揽揮挚挘揿掹挏掜挬挿揜捔揼捍掍捘挓","掳揍挟掹掑措挲捶揋排捍揝捑捲挔掩");
      }
   }
}

