package com.ax3.fishao.model
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.fishao._67282af25befe9778e5c8dd1;
   import com.ax3.fishao._dfa25706e58a240c1e33e5c6;
   import com.ax3.fishao.model.character.CharViewConfig;
   import com.ax3.fishao.model.info._0760ce29bdab6fd5166927ab;
   import com.ax3.fishao.model.info._6885cfef3fe835f143ab6295;
   import com.ax3.fishao.model.info._69796f101fc3fc2b4b8665e9;
   import com.ax3.fishao.model.info._c4d45de32d45523b37ad0cdf;
   import com.ax3.fishao.model.info._d1ac35bdca78006e84f51a32;
   import com.ax3.fishao.vars.app;
   import com.junkbyte.console.Cc;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   
   public class _5c61816df588994ab1b4dbe4 extends EventDispatcher
   {
      
      public static const BAITS_CHANGE:String = _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掔挳揉揥掇揧揇揮挳捌揘挮掹揫捌措挱揊掠排挷挊掌捊捤挌挔掹捳揔","揟揪掕揄揃捗挤揿掻挎掳振据挚捉捭");
      
      public static const OTHER_CHANGE:String = _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掤推揂掎挬揥挿捫掹捁挅揸捰揿捺捗掁挵捺挀揲捠挞捐挥挽掖挤挗挒捵掩","捌捵捞捊捴捗揶捦捫揗挀挑捵挠掜掄");
      
      public static const LOOKS_CHANGE:String = _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၭဘံၨ၂ဲნႛဧ჈ဘႏႡု჻၆჊ႪႁჇ჉ၭფၜၻძႝპ၇ၙရႽ","၀ၼၗႂႯကၻႹဆၩႜစၕ့ფည");
      
      public static const FISH_CHANGE:String = _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掜掐揵振揤挾捐挶掩揱揯挢挀捱揭授挹挻揳插挵挧揻捖揍捆挎揲揞掭换掣","揀揯捨掍揖捊掷揩捃揊捜揖捵挋捊捇");
      
      public static const DECORATION_CHANGE:String = _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捷捒揿提挣揰掵揀揓捹挼捄掽挽揫掫掜挂捾揞掫揤捒挵掉挥揣捼挚振挬挩换捒掗持揲揾揲掾掎揙","捫掬掝援描挗挭挀捐掟挜挢揜揫捞掟");
      
      public static const RODS_CHANGE:String = _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捬挆插挝挙挊掺据捱挔揅揰揽掰揄捄捽揳掮控捗推挻揂挍提挓捻按揂","掂掕挼挄插揺挘损捞捋挴捖揪掌掾掓");
      
      public static const FOSSILS_CHANGE:String = _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ჺჯၛႪဨဲႹႷ၄ၬႆჺၷဒფ႕႖၈ၹჁၝာმႈეၡၯშြမჯჯႜვჴၫ","დၭႨၙႼჃკၠထႮ჋ဲအჭၨဲ");
      
      public static var currentLookIdForCharEditor:int = 0x5FFDCF44 ^ -318450733 ^ 0x4FF20027 ^ -49603408;
      
      private const _699495ed57c6e0a3c4a72486:Event = new Event(RODS_CHANGE);
      
      private const _a27fe8a7cc9106c68c4855bd:Event = new Event(BAITS_CHANGE);
      
      private const _a07e6b1e1a37b4f1fa72aca5:Event = new Event(OTHER_CHANGE);
      
      private const _018c0e6b0d3f6397fc5e927f:Event = new Event(LOOKS_CHANGE);
      
      private const _a5c8e47944e55275fbd7a1c8:Event = new Event(FOSSILS_CHANGE);
      
      private const _5244acb35357f9bb250b41de:Event = new Event(FISH_CHANGE);
      
      private const _59c9b31ecfcc162fdcc831d4:Event = new Event(DECORATION_CHANGE);
      
      public var amountOfFishrodToBuyLeft:int = 0;
      
      public var extraClothesItems:Array = [];
      
      private var _ebfab8ff2720b6b136996bfa:Vector.<_0760ce29bdab6fd5166927ab> = new Vector.<_0760ce29bdab6fd5166927ab>();
      
      private var _394fe605a3620bb02568ed53:Vector.<_69796f101fc3fc2b4b8665e9> = new Vector.<_69796f101fc3fc2b4b8665e9>();
      
      private var _4c1555f27735a3ebac53c755:Vector.<_c4d45de32d45523b37ad0cdf> = new Vector.<_c4d45de32d45523b37ad0cdf>();
      
      private var _5cdc7f1f4188735a7f5c4b3a:Vector.<_c4d45de32d45523b37ad0cdf> = new Vector.<_c4d45de32d45523b37ad0cdf>();
      
      private var _78393f22f0119ef909cdce23:Vector.<_d1ac35bdca78006e84f51a32> = new Vector.<_d1ac35bdca78006e84f51a32>();
      
      private var _d8c39d95597b1d509bd7ab2d:Vector.<_6885cfef3fe835f143ab6295> = new Vector.<_6885cfef3fe835f143ab6295>();
      
      private var _45c299b0a999c7fa2c913604:Vector.<_c4d45de32d45523b37ad0cdf> = new Vector.<_c4d45de32d45523b37ad0cdf>();
      
      public function _5c61816df588994ab1b4dbe4()
      {
         super();
      }
      
      private static function _1b33cd514ebcb49160bcb9fd(param1:_c4d45de32d45523b37ad0cdf, param2:_c4d45de32d45523b37ad0cdf) : int
      {
         var _loc3_:int = 0x4EDC6C46 ^ -596050594 ^ -1336187244 ^ 0x5F36A9A4;
         loop0:
         while(true)
         {
            switch(_loc3_ ^ (0x7C8DEFDE ^ 0x42897564 ^ 0x3FA1E910 ^ 0x7C6C2D81))
            {
               case 0:
                  return 0x4F3D1FF4 ^ 0x25E75323 ^ 0x76BD7C57 ^ 0x1C673080;
               case 1:
                  return -360890585 ^ 0x1FD7A020 ^ -1575110893 ^ 0x57B72815;
               case 2:
                  if(param1.id < param2.id)
                  {
                     _loc3_ = 0x33DB3F9E ^ -1967125848 ^ 0x3EB69A61 ^ -94047880;
                  }
                  else
                  {
                     _loc3_ = 0x16B411F3 ^ 0x6C787435 ^ -2097158445 ^ -2047156930;
                  }
                  break;
               case 3:
                  if(param1.id > param2.id)
                  {
                     _loc3_ = -1816283224 ^ 0x17214750 ^ -1790536629 ^ 0x6C133A99;
                  }
                  else
                  {
                     _loc3_ = 0x727B1D3E ^ 0x1D3C821F ^ -369368477 ^ -76209301;
                  }
                  break;
               case 4:
                  return -1490275587 ^ 0x1D297CAC ^ 0x2E6151BB ^ 0x6B9BE015;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function get rods() : Vector.<_0760ce29bdab6fd5166927ab>
      {
         return this._ebfab8ff2720b6b136996bfa;
      }
      
      public function get baits() : Vector.<_69796f101fc3fc2b4b8665e9>
      {
         return this._394fe605a3620bb02568ed53;
      }
      
      public function get other() : Vector.<_c4d45de32d45523b37ad0cdf>
      {
         return this._4c1555f27735a3ebac53c755;
      }
      
      public function get looks() : Vector.<_6885cfef3fe835f143ab6295>
      {
         this._d8c39d95597b1d509bd7ab2d.sort(_1b33cd514ebcb49160bcb9fd);
         return this._d8c39d95597b1d509bd7ab2d;
      }
      
      public function get fish() : Vector.<_c4d45de32d45523b37ad0cdf>
      {
         this._5cdc7f1f4188735a7f5c4b3a.sort(_1b33cd514ebcb49160bcb9fd);
         return this._5cdc7f1f4188735a7f5c4b3a;
      }
      
      public function get decoration() : Vector.<_d1ac35bdca78006e84f51a32>
      {
         this._78393f22f0119ef909cdce23.sort(_1b33cd514ebcb49160bcb9fd);
         return this._78393f22f0119ef909cdce23;
      }
      
      public function get fossils() : Vector.<_c4d45de32d45523b37ad0cdf>
      {
         this._45c299b0a999c7fa2c913604.sort(_1b33cd514ebcb49160bcb9fd);
         return this._45c299b0a999c7fa2c913604;
      }
      
      public function get fishNotZeeroCount() : Vector.<_c4d45de32d45523b37ad0cdf>
      {
         var _loc1_:_c4d45de32d45523b37ad0cdf = null;
         var _loc2_:Vector.<_c4d45de32d45523b37ad0cdf> = new Vector.<_c4d45de32d45523b37ad0cdf>();
         for each(_loc1_ in this._5cdc7f1f4188735a7f5c4b3a)
         {
            if(_loc1_.quantity != (0x4E43645B ^ -835830795 ^ -502015519 ^ 0x627E864F))
            {
               _loc2_.push(_loc1_);
            }
         }
         _loc2_.sort(_1b33cd514ebcb49160bcb9fd);
         return _loc2_;
      }
      
      public function update(param1:Array) : void
      {
         var _loc2_:_c4d45de32d45523b37ad0cdf = null;
         var _loc3_:int = 0x1BE5EC76 ^ -1105305406 ^ -1446919917 ^ 0x0C3A4DA7;
         var _loc4_:int = -259391260 ^ 0x581F56FE ^ -1473013797 ^ 0xA6C1C1;
         var _loc5_:int = -710604485 ^ -1973644561 ^ -1017019361 ^ -1667751989;
         var _loc6_:int = -1688304830 ^ 0x5F6ADFB0 ^ 0x6738E808 ^ -1559448326;
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = false;
         if(param1 is Array)
         {
            _loc3_ = int(param1.length);
            _loc4_ = -1782178081 ^ 0x4A351521 ^ -784708405 ^ 0x0EC94735;
            while(_loc4_ < _loc3_)
            {
               _loc2_ = this._f994fb3e7bb1cf109d5d4fb8(param1[_loc4_][_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ဴၾၹဉၛၬဈჀႾფრၤခ჻ოၻჩႍჭံ႟Ⴢძဇနၹႌၻ","႕ၨေႛႃკဥႃ႕႗ჸ႗ბၙႉႿ")],param1[_loc4_][_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勬劺剉刎刞剨劻剆劤劺動劆勣剘加劀刪劺勏刻剱勏剄劦劼剂剞勮剛剬別勓","剟勅剫勲剿勘剋勵剦勾剜剼利勝劷勋")]);
               if(_loc2_ != null)
               {
                  _loc2_.update(param1[_loc4_]);
                  if(_loc2_.type == _67282af25befe9778e5c8dd1.CLOTHE.id && _loc2_.quantity == (0x2D29A16E ^ -1222861161 ^ 0x2E60A40C ^ -1269457931))
                  {
                     this._e2f68d744b0ec311d822fe2e(_loc2_);
                  }
                  if(Object(param1[_loc4_]).hasOwnProperty(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掸掋挔捧揆揾揞掘掮挽捎捅捙掻挀揃挶捆持掝捎掙揃揥捂挵掆挢捽掿","挞挪挅掇捫揌捈挎挑捱挽捔捡挳描捆")) && param1[_loc4_][_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勎剜勇則剮劇剥副剁务剹勴励劯划刂剙勆務刢制勓判勖刹剋剹刄分劮","勡刜剜刉勺募力剸剮勬劌勥劝募勋劈")] == (-1237014602 ^ 0x13018AB9 ^ 0x5FC63D5D ^ -92073902))
                  {
                     this._e2f68d744b0ec311d822fe2e(_loc2_);
                  }
               }
               else if(!((param1[_loc4_][_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勭势勎刮劖剠剺動剞勣刳刕劅刃剹刔刍剣勘勭劚劙劷勐刾初勤勁勒势剳刌","剤刧勊剦剫勝勘劎助利劧勢勻劭判劁")] == _67282af25befe9778e5c8dd1.ROD.id || param1[_loc4_][_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ႯოႿჰ჆၎ၸၯၫဪႼနწႝႜჹၵိუჶჯႩႯႏၼအქဍჵ၃မှ","၎ႍႿၕၥ႘ဒွ၏၁ဇဝးႸႍი")] == _67282af25befe9778e5c8dd1.BAIT.id || param1[_loc4_][_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剗剨勯初刮剠勑勠切别刮勊劶劝剭刁割剚劲勐剳劸劺劢刡务劫劆劙励勒劝","勄劌剷劯剖剞努勪劘剿刓剺列刑勓勐")] == _67282af25befe9778e5c8dd1.FISHBOX.id || param1[_loc4_][_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掶损揓揜掾掹揉授挝挰揷揚捱揀揖挌掓捽掾挴捽揽掝挫捖捼挔掏揥揬指挨","捋援挤捭捽挷挵挐掚捧掑掮掱揯挼掠")] == _67282af25befe9778e5c8dd1.LUCK_POTION.id || param1[_loc4_][_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勷労功剔切副剭剷勯勊則勗勆制劶劬剤創剕劮加刲刲划勎勐勬勦劶剴劣勢","勨剢劌判前剎划剗剫勪刯勇刌勦劮刦")] == _67282af25befe9778e5c8dd1.MAGIC_WATCH.id || param1[_loc4_][_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("Ⴐ၃ၙဣႇၗၗჷ၁ႁსႣၽჯႠ်჈္ႁწႃဧုကႀၛၳჩႤၗဋဍ","ဌႨ၁ႱჿჃႜီჲჷၽჶႁႎ႓ႃ")] == _67282af25befe9778e5c8dd1.FISH_RADAR
               .id || param1[_loc4_][_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挵掕捼捖捸掎揥捱捅揠掚掙捱捏揦揩捆掁掤捓揳掭揽捭捣捄揤揔挬捴捭掆","掺揞揕揋挱捿排挝挹揮掶捪掝损揊揗")] == _67282af25befe9778e5c8dd1.EXP_BOOSTER.id || param1[_loc4_][_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("Ⴉူჸ႟ၢၔၦၧၜမႲှဴლၘ၌ဋႦိၕ၄Ⴄ၍၊ညႏჇၖႀჶၛი","პဿႳ႓ႏႈჴႊဠဒტ჉ჲၫၹႶ")] == _67282af25befe9778e5c8dd1.SHINY_POTION.id || param1[_loc4_][_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捃挜掤掱挪描挨挴挌揖挔挴挠措捕掻揜换挵捊援挙掕揕挈掰捡捣挡掶揆揂","捎掟揰揢掼捨掚揰挀捏捅挰揞揊掹捾")] == _67282af25befe9778e5c8dd1.POWER_BOOSTER.id) && (Object(param1[_loc4_]).hasOwnProperty(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("၏჌ရျႍო႘ႹဃၞႡ჊Ⴍဳ჌ႚႹპႢ၈჌ှ္ႀဟႊိ၎ၙဏ","ვ၎၏၈႒ცხႩဳွၷ၄Ⴢႆဝშ")) && param1[_loc4_][_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揮挬揞挐揝挶挲揖挴掇挛掮掮挒捩捧揎掬掾揋损捽掶掇挘揶排按捒揳","掗挂捣掜揥揚捹掐挤揘控掶挝捠捅揿")] == (-440376682 ^ -867083976 ^ -1139805303 ^ -1784756185))))
               {
                  this._55d8f82e9ca772c23403c268(param1[_loc4_]);
               }
               _loc7_ ||= param1[_loc4_][_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挅挪捁捁揫捇挟捞掓掻措揉换掼揶揖捋揇掋捎挫捣掋揍挐換挑捤掛掠揫挕","推揁揅捝掋措揼捴挓揭掑揁换揌挮掸")] == _67282af25befe9778e5c8dd1.ROD.id;
               _loc8_ ||= param1[_loc4_][_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捠揆揜捼捿捅掸挾捑掦握挟挴掾挘挆揻捁掍掝捔挾挄揿提挸据挆捸挚捛揞","捆揼捘掯挑掟捻捊挏推换掯捬捣掘揮")] == _67282af25befe9778e5c8dd1.BAIT.id;
               _loc9_ ||= param1[_loc4_][_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ႆႻႳၳဈၢဟႌဿဂဂრშ၅ჅဂშၰႸჅႲრႆ၉ံႻჭစႡჵဈၑ","ჷნးჲ့ჺ჎ၴ၀ၤဗ။ႸႮၹ၃")] >= _67282af25befe9778e5c8dd1.OTHER.id;
               _loc10_ ||= param1[_loc4_][_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挾指挲捡揆揸捼揎挛掑挒挾揸捡揄掉掆捓挆揬掂掶掋揖揩捈挦挓捻揸揄掔","挚捿挈捗掔揭捺揵揜捔揿捕揙损揕揻")] == _67282af25befe9778e5c8dd1.CLOTHE.id;
               _loc12_ ||= param1[_loc4_][_95da7f1147c669197db81295._8f4866de82b7339154180ecb("刂剜剴刼勍劒勺券勔剱剡刌募刃刞勷勣勂划功勂勘办刍利劭劉効勗券刜刋","劘刿勷剪勇勍劤勺劻勇剣劾劢勗刿别")] == _67282af25befe9778e5c8dd1.FISH.id;
               _loc13_ ||= param1[_loc4_][_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剀劆勮勍劏刦剓剜列劮勖劖刯刉勦刖劳刻券刵劕剣剏勬勞勍刺劖劈刺効刴","劙刳劖劂刳剗劑劙創剺剫劈劏剖刣刅")] == _67282af25befe9778e5c8dd1.DECORATION.id;
               _loc11_ ||= param1[_loc4_][_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ოၚၔ႗჌Ⴖ်ငႧရჹၒჃჅႼၘჄႆ၉ဲဎႹ္იၚႴၘဃ჻ჾს჌","ဏ႐Ⴜჳელၸၑ်Ⴁ၄ဧဣက၁ၼ")] == _67282af25befe9778e5c8dd1.FOSSIL.id;
               if(_loc10_ || _loc11_)
               {
                  _loc9_ = false;
               }
               _loc4_++;
            }
            if(_loc7_)
            {
               this._e9214595aa08b133b57e8ee1();
            }
            if(_loc8_)
            {
               this._76b20d6ad3d24f33b6494d38();
            }
            if(_loc9_)
            {
               this._136fcffa415707ed9cd792e8();
            }
            if(_loc10_)
            {
               this._d14e14d6159ae7abb0c7b85b();
            }
            if(_loc11_)
            {
               this._235bab6f38f4ddb7eb987b95();
            }
            this.extraClothesItems = [];
            _loc5_ = int(this._d8c39d95597b1d509bd7ab2d.length);
            _loc6_ = -1479580733 ^ 0x1DF38422 ^ 0x405D9720 ^ -94277439;
            while(_loc6_ < _loc5_)
            {
               if(this.extraClothesItems.indexOf(this._d8c39d95597b1d509bd7ab2d[_loc6_].id) < (0x4AB8F4A9 ^ -120439471 ^ 0x531E7392 ^ -512443798) && this._d8c39d95597b1d509bd7ab2d[_loc6_].quantity > (0x6BE4D885 ^ -443116907 ^ -656837258 ^ 0x56AB3F66))
               {
                  this.extraClothesItems.push(this._d8c39d95597b1d509bd7ab2d[_loc6_].id);
               }
               _loc6_++;
            }
            if(_loc12_)
            {
               this._521f534da3866440d21d761b();
            }
            if(_loc13_)
            {
               this._61329b772dc25a9113c02396();
            }
         }
         else
         {
            Cc.error(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("副刔剷剥剘劓剁剣劏剤劁刞劊劼刕剋刿剌功勰劝刄剭剉割劆劺劢剉剨剐剝到劀剸勶剙劃利効劀刺剓刬勓勔剀勫剚劆剻勵劀勮刹剬刄刘効剤勾剹勶務勏劻刄刃剿劁剡勘剢办勉勡刿劄剅勩券勺刻势剼劉剻剥","勖剟劤剋劏剫勌劁勷剭劥劮剿勳刂初"),param1);
         }
      }
      
      public function _e9214595aa08b133b57e8ee1() : void
      {
         dispatchEvent(this._699495ed57c6e0a3c4a72486);
      }
      
      public function _76b20d6ad3d24f33b6494d38() : void
      {
         dispatchEvent(this._a27fe8a7cc9106c68c4855bd);
      }
      
      public function _136fcffa415707ed9cd792e8() : void
      {
         dispatchEvent(this._a07e6b1e1a37b4f1fa72aca5);
      }
      
      public function _d14e14d6159ae7abb0c7b85b() : void
      {
         dispatchEvent(this._018c0e6b0d3f6397fc5e927f);
      }
      
      public function _235bab6f38f4ddb7eb987b95() : void
      {
         dispatchEvent(this._a5c8e47944e55275fbd7a1c8);
      }
      
      public function _521f534da3866440d21d761b() : void
      {
         dispatchEvent(this._5244acb35357f9bb250b41de);
      }
      
      public function _61329b772dc25a9113c02396() : void
      {
         dispatchEvent(this._59c9b31ecfcc162fdcc831d4);
      }
      
      private function _55d8f82e9ca772c23403c268(param1:Object) : void
      {
         var _loc2_:_c4d45de32d45523b37ad0cdf = null;
         var _loc3_:_6885cfef3fe835f143ab6295 = null;
         var _loc4_:_c4d45de32d45523b37ad0cdf = null;
         var _loc5_:_c4d45de32d45523b37ad0cdf = null;
         var _loc6_:int = int(param1[_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掭振揼掛掼捱捰捘揖捍揸挽揠挣捔掘捥指掃揟掍掬挛揨揾捹挣掛捵挤捋捶","掆揋掁捵揔掭捑揾捲掕捆捊捺揟捵揥")]);
         switch(_loc6_)
         {
            case _67282af25befe9778e5c8dd1.ROD.id:
               §§push(-1651536624 ^ -423406801 ^ 0x631DF744 ^ 0x1851297B);
               break;
            case _67282af25befe9778e5c8dd1.BAIT.id:
               §§push(-706393906 ^ -2082761940 ^ 0x6DD8CC81 ^ 0x3BE61762);
               break;
            case _67282af25befe9778e5c8dd1.DECORATION.id:
               §§push(-246393243 ^ 0x4BBDD57B ^ 0x094E7BAB ^ -1281099593);
               break;
            case _67282af25befe9778e5c8dd1.FISH.id:
               §§push(0x3E0C5CEF ^ -397127287 ^ -825371066 ^ 0x1895DB23);
               break;
            case _67282af25befe9778e5c8dd1.FISH_SHINY.id:
               §§push(-1571232773 ^ 0x5F5C099C ^ 0x2A15D35F ^ -686737092);
               break;
            case _67282af25befe9778e5c8dd1.HERB_FISH.id:
               §§push(0x3C4F9495 ^ 0x11FA4C64 ^ 0x5AD3AF99 ^ 0x7766776D);
               break;
            case _67282af25befe9778e5c8dd1.OTHER.id:
               §§push(0x052D88AD ^ -2104232333 ^ -1936282833 ^ 0x0B28D5F7);
               break;
            case _67282af25befe9778e5c8dd1.FISHBOX.id:
               §§push(0x4563B2B8 ^ -1897121361 ^ -1771311740 ^ 0x5DE46694);
               break;
            case _67282af25befe9778e5c8dd1.LUCK_POTION.id:
               §§push(0x34091775 ^ 0x53AFCC0C ^ -1162500463 ^ -585925152);
               break;
            case _67282af25befe9778e5c8dd1.MAGIC_WATCH.id:
               §§push(0x3AC42255 ^ 0x59EB96DE ^ -1656708478 ^ -26274304);
               break;
            case _67282af25befe9778e5c8dd1.FISH_RADAR.id:
               §§push(-477055051 ^ 0x5BD84FD7 ^ 0x1ADA28D0 ^ -1567436616);
               break;
            case _67282af25befe9778e5c8dd1.EXP_BOOSTER.id:
               §§push(0x45301253 ^ 0x5221CA4B ^ 0x0150D876 ^ 0x16410065);
               break;
            case _67282af25befe9778e5c8dd1.SHINY_POTION.id:
               §§push(0x26FE2EFC ^ 0x39B54F89 ^ 0x6BDA280C ^ 0x74914975);
               break;
            case _67282af25befe9778e5c8dd1.POWER_BOOSTER.id:
               §§push(-1775939431 ^ 0x09C3AAAC ^ -91017124 ^ 0x6575CA64);
               break;
            case _67282af25befe9778e5c8dd1.FLOAT.id:
               §§push(-1742319703 ^ 0x4A15C7E8 ^ 0x5E3C465E ^ -1945121263);
               break;
            case _67282af25befe9778e5c8dd1.FRUIT.id:
               §§push(0x25B011AF ^ 0x118A896D ^ 0x0C010AE0 ^ 0x383B922D);
               break;
            case _67282af25befe9778e5c8dd1.CLOTHE.id:
               §§push(-799708828 ^ 0x1FD0CEEE ^ 0x0F0DE07F ^ -1064810523);
               break;
            case _67282af25befe9778e5c8dd1.FOSSIL.id:
               §§push(-143064509 ^ -315090970 ^ -144646854 ^ -316553074);
               break;
            default:
               §§push(0x076B7793 ^ -1568858981 ^ 0x57347B7A ^ -232648608);
         }
         switch(§§pop())
         {
            case 0:
               this._ebfab8ff2720b6b136996bfa.push(new _0760ce29bdab6fd5166927ab(param1));
               break;
            case 1:
               this._394fe605a3620bb02568ed53.push(new _69796f101fc3fc2b4b8665e9(param1));
               break;
            case 2:
               this._78393f22f0119ef909cdce23.push(new _d1ac35bdca78006e84f51a32(param1));
               break;
            case 3:
            case 4:
            case 5:
               _loc4_ = new _c4d45de32d45523b37ad0cdf(param1);
               if(_loc4_.quantity != (-2074659708 ^ 0x01BDA673 ^ 0x6D7D5B30 ^ -392705593))
               {
                  this._5cdc7f1f4188735a7f5c4b3a.push(_loc4_);
               }
               break;
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 15:
               _loc2_ = new _c4d45de32d45523b37ad0cdf(param1);
               if(_loc2_.quantity != (-1044385999 ^ 0x2A859216 ^ -957170588 ^ 0x2DC8C143))
               {
                  this._4c1555f27735a3ebac53c755.push(_loc2_);
               }
               break;
            case 16:
               _loc3_ = new _6885cfef3fe835f143ab6295(param1);
               if(_loc3_.quantity > (0x438158DE ^ -513047722 ^ -780286848 ^ 0x73971F08))
               {
                  this._d8c39d95597b1d509bd7ab2d.push(_loc3_);
               }
               break;
            case 17:
               _loc5_ = new _c4d45de32d45523b37ad0cdf(param1);
               if(_loc5_.quantity != (0x232C806A ^ 0x675A3704 ^ 0x3D0FCB78 ^ 0x79797C16))
               {
                  this._45c299b0a999c7fa2c913604.push(_loc5_);
               }
         }
      }
      
      public function _e2f68d744b0ec311d822fe2e(param1:_c4d45de32d45523b37ad0cdf) : void
      {
         var _loc2_:int = 0x4676180D ^ 0x138DF2C1 ^ 0x772AEECE ^ 0x22D10402;
         switch(param1.type)
         {
            case _67282af25befe9778e5c8dd1.ROD.id:
               §§push(-1854782135 ^ -521225665 ^ -1063842291 ^ -1324617349);
               break;
            case _67282af25befe9778e5c8dd1.BAIT.id:
               §§push(0x16883FAB ^ 0x7FD9EA68 ^ 0x539FE2AA ^ 0x3ACE3768);
               break;
            case _67282af25befe9778e5c8dd1.FISH.id:
               §§push(-961270716 ^ 0x7877A3BB ^ 0x3F2B53CA ^ -2115445705);
               break;
            case _67282af25befe9778e5c8dd1.FISH_SHINY.id:
               §§push(0x5B140097 ^ 0x485F4246 ^ -2069392834 ^ -1746087700);
               break;
            case _67282af25befe9778e5c8dd1.HERB_FISH.id:
               §§push(0x3C333039 ^ -1890807926 ^ -103214459 ^ 0x4AA6AD32);
               break;
            case _67282af25befe9778e5c8dd1.DECORATION.id:
               §§push(0x5E0CA90A ^ 0x2DB0F5F6 ^ -1770074302 ^ -440233029);
               break;
            case _67282af25befe9778e5c8dd1.OTHER.id:
               §§push(0x3270D069 ^ 0x70B47431 ^ 0x55320768 ^ 0x17F6A336);
               break;
            case _67282af25befe9778e5c8dd1.FISHBOX.id:
               §§push(0x41398D3F ^ 0x48917070 ^ -1345014178 ^ -1501803754);
               break;
            case _67282af25befe9778e5c8dd1.LUCK_POTION.id:
               §§push(-236581616 ^ -926230510 ^ 0x1EF41219 ^ 0x27D8C713);
               break;
            case _67282af25befe9778e5c8dd1.MAGIC_WATCH.id:
               §§push(-1106208674 ^ 0x6F3185B6 ^ -18863130 ^ 0x2FC13607);
               break;
            case _67282af25befe9778e5c8dd1.FISH_RADAR.id:
               §§push(0x2F123857 ^ -1192828083 ^ 0x3E3B09DD ^ -1445997875);
               break;
            case _67282af25befe9778e5c8dd1.EXP_BOOSTER.id:
               §§push(-1629867131 ^ 0x0D129AD3 ^ 0x3317D31D ^ -1595966912);
               break;
            case _67282af25befe9778e5c8dd1.SHINY_POTION.id:
               §§push(-305868889 ^ -950098038 ^ 0x0CD4B7F7 ^ 0x264EDFD6);
               break;
            case _67282af25befe9778e5c8dd1.POWER_BOOSTER.id:
               §§push(0x4DA0F094 ^ 0x08930693 ^ 0x5A8C6059 ^ 0x1FBF9653);
               break;
            case _67282af25befe9778e5c8dd1.FLOAT.id:
               §§push(0x14DE630F ^ -1581050621 ^ -889533026 ^ 0x7FE7BB9C);
               break;
            case _67282af25befe9778e5c8dd1.FRUIT.id:
               §§push(0x2860BDD0 ^ -735386879 ^ 0x07FD7A91 ^ -71883697);
               break;
            case _67282af25befe9778e5c8dd1.FOSSIL.id:
               §§push(-1991129373 ^ -1139223604 ^ 0x342E57B3 ^ 0x0167428C);
               break;
            case _67282af25befe9778e5c8dd1.CLOTHE.id:
               §§push(0x2CD93A8B ^ -1045053152 ^ 0x02D0CCE6 ^ -272877732);
               break;
            default:
               §§push(-1768618112 ^ -387009855 ^ 0x03696DC5 ^ 0x7D12D896);
         }
         switch(§§pop())
         {
            case 0:
               _loc2_ = -1764906776 ^ 0x0390C065 ^ -1987900 ^ 0x6ABCC249;
               while(_loc2_ < this._ebfab8ff2720b6b136996bfa.length)
               {
                  if(param1.id == this._ebfab8ff2720b6b136996bfa[_loc2_].id)
                  {
                     this._ebfab8ff2720b6b136996bfa.splice(_loc2_,0x322CC159 ^ 0x71A2E62D ^ -1500505798 ^ -451002801);
                     break;
                  }
                  _loc2_++;
               }
               break;
            case 1:
               _loc2_ = 0x59511312 ^ 0x59689C83 ^ -146463066 ^ -142825161;
               while(_loc2_ < this._394fe605a3620bb02568ed53.length)
               {
                  if(param1.id == this._394fe605a3620bb02568ed53[_loc2_].id)
                  {
                     this._394fe605a3620bb02568ed53.splice(_loc2_,-849183033 ^ 0x5B05289D ^ -849280989 ^ 0x5B065678);
                     break;
                  }
                  _loc2_++;
               }
               break;
            case 2:
            case 3:
            case 4:
               _loc2_ = -605154759 ^ -411195079 ^ 0x2E17BC91 ^ 0x12840791;
               while(_loc2_ < this._5cdc7f1f4188735a7f5c4b3a.length)
               {
                  if(param1.id == this._5cdc7f1f4188735a7f5c4b3a[_loc2_].id && this._5cdc7f1f4188735a7f5c4b3a[_loc2_].type == param1.type)
                  {
                     this._5cdc7f1f4188735a7f5c4b3a.splice(_loc2_,-1162526942 ^ 0x190EB1AE ^ 0x5D76B9E2 ^ -20105361);
                     break;
                  }
                  _loc2_++;
               }
               break;
            case 5:
               _loc2_ = 0x281200F7 ^ 0x72168925 ^ 0x4EEFAE47 ^ 0x14EB2795;
               while(_loc2_ < this._78393f22f0119ef909cdce23.length)
               {
                  if((param1 as _d1ac35bdca78006e84f51a32).id == this._78393f22f0119ef909cdce23[_loc2_].id)
                  {
                     this._78393f22f0119ef909cdce23.splice(_loc2_,0x4561A471 ^ 0x63659A03 ^ 0x28D2D670 ^ 0x0ED6E803);
                     break;
                  }
                  _loc2_++;
               }
               break;
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
            case 15:
               _loc2_ = -1837048201 ^ 0x4B22F3F3 ^ 0x472DA69E ^ -1634759910;
               while(_loc2_ < this._4c1555f27735a3ebac53c755.length)
               {
                  if(param1.id == this._4c1555f27735a3ebac53c755[_loc2_].id && this._4c1555f27735a3ebac53c755[_loc2_].type == param1.type)
                  {
                     this._4c1555f27735a3ebac53c755.splice(_loc2_,0x5D57DA44 ^ 0x794E5320 ^ -479711013 ^ -948848194);
                     break;
                  }
                  _loc2_++;
               }
               break;
            case 16:
               _loc2_ = 0x755B0510 ^ -1478615718 ^ 0xE676CA ^ -765235584;
               while(_loc2_ < this._45c299b0a999c7fa2c913604.length)
               {
                  if(param1.id == this._45c299b0a999c7fa2c913604[_loc2_].id && this._45c299b0a999c7fa2c913604[_loc2_].type == param1.type)
                  {
                     this._45c299b0a999c7fa2c913604.splice(_loc2_,0x4BF4852E ^ 0x2E6221B7 ^ -2085240394 ^ -433887954);
                     break;
                  }
                  _loc2_++;
               }
               break;
            case 17:
               _loc2_ = 0x3ECE2BDA ^ 0x781B2EB7 ^ -1448111915 ^ -277178952;
               while(_loc2_ < this._d8c39d95597b1d509bd7ab2d.length)
               {
                  if(param1.id == this._d8c39d95597b1d509bd7ab2d[_loc2_].id)
                  {
                     this._d8c39d95597b1d509bd7ab2d.splice(_loc2_,-792388316 ^ 0x30F6556A ^ -2111181082 ^ 0x621AA6A9);
                     break;
                  }
                  _loc2_++;
               }
               this.extraClothesItems.splice(this.extraClothesItems.indexOf(param1.id),0x6EB29C2D ^ 0x0235330A ^ -1062409951 ^ -1406450169);
         }
      }
      
      public function _88040a71c9259bc9709481fd(param1:int) : Boolean
      {
         var _loc2_:_0760ce29bdab6fd5166927ab = null;
         var _loc3_:Boolean = false;
         for each(_loc2_ in this._ebfab8ff2720b6b136996bfa)
         {
            if(_loc2_.infoId == param1)
            {
               _loc3_ = true;
               break;
            }
         }
         return _loc3_;
      }
      
      public function _d7d791b553eda20fa3fef4f5(param1:int) : Boolean
      {
         var _loc2_:_69796f101fc3fc2b4b8665e9 = null;
         var _loc3_:Boolean = false;
         for each(_loc2_ in this._394fe605a3620bb02568ed53)
         {
            if(_loc2_.id == param1)
            {
               _loc3_ = true;
               break;
            }
         }
         return _loc3_;
      }
      
      public function _f994fb3e7bb1cf109d5d4fb8(param1:int, param2:int = 0) : _c4d45de32d45523b37ad0cdf
      {
         var _loc3_:int = -206284394 ^ 0x7C8B2928 ^ -928652355 ^ 0x479A9303;
         if(param2 == _67282af25befe9778e5c8dd1.ALL.id || param2 == _67282af25befe9778e5c8dd1.ROD.id)
         {
            _loc3_ = 0x5A633F96 ^ 0x27CF0629 ^ -1365265050 ^ -751596327;
            while(_loc3_ < this._ebfab8ff2720b6b136996bfa.length)
            {
               if(param1 == this._ebfab8ff2720b6b136996bfa[_loc3_].id)
               {
                  return this._ebfab8ff2720b6b136996bfa[_loc3_];
               }
               _loc3_++;
            }
         }
         if(param2 == _67282af25befe9778e5c8dd1.ALL.id || param2 == _67282af25befe9778e5c8dd1.BAIT.id)
         {
            _loc3_ = 0x3E6307EA ^ -1791244325 ^ -663707749 ^ 0x73285FAA;
            while(_loc3_ < this._394fe605a3620bb02568ed53.length)
            {
               if(param1 == this._394fe605a3620bb02568ed53[_loc3_].id)
               {
                  return this._394fe605a3620bb02568ed53[_loc3_];
               }
               _loc3_++;
            }
         }
         if(param2 == _67282af25befe9778e5c8dd1.ALL.id || param2 == _67282af25befe9778e5c8dd1.OTHER.id || param2 == _67282af25befe9778e5c8dd1.FISH.id || param2 == _67282af25befe9778e5c8dd1.FISHBOX.id || param2 == _67282af25befe9778e5c8dd1.LUCK_POTION.id || param2 == _67282af25befe9778e5c8dd1.MAGIC_WATCH.id || param2 == _67282af25befe9778e5c8dd1.FISH_RADAR.id || param2 == _67282af25befe9778e5c8dd1.EXP_BOOSTER.id || param2 == _67282af25befe9778e5c8dd1.SHINY_POTION.id || param2 == _67282af25befe9778e5c8dd1.POWER_BOOSTER.id || param2 == _67282af25befe9778e5c8dd1.FLOAT.id || param2 == _67282af25befe9778e5c8dd1.FRUIT.id)
         {
            _loc3_ = 0x3F43A872 ^ 0x4DC8E349 ^ 0x03853841 ^ 0x710E737A;
            while(_loc3_ < this._4c1555f27735a3ebac53c755.length)
            {
               if(param1 == this._4c1555f27735a3ebac53c755[_loc3_].id && param2 == this._4c1555f27735a3ebac53c755[_loc3_].type)
               {
                  return this._4c1555f27735a3ebac53c755[_loc3_];
               }
               _loc3_++;
            }
         }
         if(param2 == _67282af25befe9778e5c8dd1.FOSSIL.id)
         {
            _loc3_ = 0x48465700 ^ -1872268305 ^ 0x4C49A700 ^ -1805089809;
            while(_loc3_ < this._45c299b0a999c7fa2c913604.length)
            {
               if(param1 == this._45c299b0a999c7fa2c913604[_loc3_].id && param2 == this._45c299b0a999c7fa2c913604[_loc3_].type)
               {
                  return this._45c299b0a999c7fa2c913604[_loc3_];
               }
               _loc3_++;
            }
         }
         if(param2 == _67282af25befe9778e5c8dd1.FISH.id || param2 == _67282af25befe9778e5c8dd1.HERB_FISH.id || param2 == _67282af25befe9778e5c8dd1.FISH_SHINY.id)
         {
            _loc3_ = 0x58ED3583 ^ -240670046 ^ -1931871098 ^ 0x259363A7;
            while(_loc3_ < this._5cdc7f1f4188735a7f5c4b3a.length)
            {
               if(param1 == this._5cdc7f1f4188735a7f5c4b3a[_loc3_].id && param2 == this._5cdc7f1f4188735a7f5c4b3a[_loc3_].type)
               {
                  return this._5cdc7f1f4188735a7f5c4b3a[_loc3_];
               }
               _loc3_++;
            }
         }
         if(param2 == _67282af25befe9778e5c8dd1.DECORATION.id)
         {
            _loc3_ = 0x0B40546F ^ -517913863 ^ 0x75251A46 ^ -1622930224;
            while(_loc3_ < this._78393f22f0119ef909cdce23.length)
            {
               if(param1 == this._78393f22f0119ef909cdce23[_loc3_].id && param2 == this._78393f22f0119ef909cdce23[_loc3_].type)
               {
                  return this._78393f22f0119ef909cdce23[_loc3_];
               }
               _loc3_++;
            }
         }
         if(param2 == _67282af25befe9778e5c8dd1.ALL.id || param2 == _67282af25befe9778e5c8dd1.CLOTHE.id)
         {
            _loc3_ = -1209808880 ^ -1640297441 ^ -1561201050 ^ -1960234391;
            while(_loc3_ < this._d8c39d95597b1d509bd7ab2d.length)
            {
               if(param1 == this._d8c39d95597b1d509bd7ab2d[_loc3_].id)
               {
                  return this._d8c39d95597b1d509bd7ab2d[_loc3_];
               }
               _loc3_++;
            }
         }
         return null;
      }
      
      public function _986e832fab94e942a17764c6(param1:int) : _0760ce29bdab6fd5166927ab
      {
         return _0760ce29bdab6fd5166927ab(this._f994fb3e7bb1cf109d5d4fb8(param1,_67282af25befe9778e5c8dd1.ROD.id));
      }
      
      public function _d65c0405e9175079a9c60504(param1:int) : _69796f101fc3fc2b4b8665e9
      {
         return _69796f101fc3fc2b4b8665e9(this._f994fb3e7bb1cf109d5d4fb8(param1,_67282af25befe9778e5c8dd1.BAIT.id));
      }
      
      public function _5b6d91fcf4fcef197ef605e6() : Array
      {
         var _loc1_:Array = [];
         var _loc2_:uint = uint(-1544417977 ^ 0x11FC5AC2 ^ 0x620BCFDF ^ -804939686);
         while(_loc2_ < this._4c1555f27735a3ebac53c755.length)
         {
            if(this._4c1555f27735a3ebac53c755[_loc2_].type == _67282af25befe9778e5c8dd1.FLOAT.id)
            {
               _loc1_.push(this._4c1555f27735a3ebac53c755[_loc2_].id);
            }
            _loc2_++;
         }
         return _loc1_;
      }
      
      public function _a2ac422a5f2686898d55ec77() : void
      {
         this._bc1132cf48119761d1f370aa();
         this._4f8d2c4d83d717533b0099f8();
         this._3b4284a46b438710c1bf81fe();
      }
      
      private function _bc1132cf48119761d1f370aa() : void
      {
         var _loc1_:_6885cfef3fe835f143ab6295 = null;
         var _loc2_:Vector.<_6885cfef3fe835f143ab6295> = new Vector.<_6885cfef3fe835f143ab6295>();
         for each(_loc1_ in this._d8c39d95597b1d509bd7ab2d)
         {
            if(_loc1_.quantity != (0x47EA1303 ^ -2046699090 ^ -615447662 ^ 0x1ABAC93F))
            {
               _loc2_.push(_loc1_);
            }
            else
            {
               Cc.log(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("動助利勖劖勖刱剆劁勷剕到労劧","勫勾刅务勽剧剴削勼則剓別勨剴劢勿"),_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揙探揗掠捙掗揿插揺揇揑掶挭捏挞掉挥挜揸揹掋掾掊捳捇掺捌措揋捳掐揳按掹挓揼捜挌捛挻揽挢掂掌掂揜挞推描挵挣挵","捀捌揽挣揭掳揽掹掠捎挆揣挥捖揥掌") + _loc1_.toString());
            }
         }
         this._d8c39d95597b1d509bd7ab2d = _loc2_;
      }
      
      private function _4f8d2c4d83d717533b0099f8() : void
      {
         var _loc1_:Boolean = false;
         var _loc2_:CharViewConfig = CharViewConfig.fromObject(app.char);
         var _loc3_:Array = [];
         var _loc4_:Vector.<_6885cfef3fe835f143ab6295> = this.looks;
         var _loc5_:int = 0x65B31453 ^ 0x41E4F5FF ^ 0x6BF7D05A ^ 0x4FA031F6;
         while(_loc5_ < _loc4_.length)
         {
            if(_loc4_[_loc5_].quantity > (-1584114998 ^ -1955053436 ^ -567045727 ^ -186678289))
            {
               _loc3_.push(_loc4_[_loc5_].id);
            }
            _loc5_++;
         }
         Cc.log(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挅揎提挤掋揠捅掛捌挐捔挄揻掇","掖掓捂捄挼揓掶揰挃捫按挴挲掭掩挩"),_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ႋჳჄဠပჂჍჃ႙းဉႇဧၐၑ჏Ⴆၤ၁ႡႁဟჇუၯღဓჲႚ၁ძႁအၣႣေჸჟသၐၚფဤခႫၴႅႏဗၺკၟၒჸၑၐუპ။ၲ","၎მႌဆၓჼၑჱၨხကႶံၾၦေ") + _loc3_);
         Cc.log(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捘据揤掎掤挟揭掚挧挟掘掠揀挹","捺捐挀捇掏挪揕捥掳掟捻捚捐掿換掳"),_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ဧძႂၶႽ႖ႁႺ၆ၣ჌Ⴍ့ႍံဃႽစၜၽ၅ဃც၅ლႅ჈ဢေၴၸပၣვႇ၉ოကာၟဂႸ჆နიკႱွပၙႹၭထၒპၭှႏ","မဵဆစ႐ႶဇႏနჍჟჵတႯჽႯ") + _loc2_.hair.type);
         if(_loc2_.hair.type > (0x18754616 ^ -1601647320 ^ -758731501 ^ 0x6A3B2649) && _loc3_.indexOf(_67282af25befe9778e5c8dd1._10597fc33c2184e7332417cb(_loc2_.hair.type)) < (0x07C0F0B9 ^ 0x4A1A8C80 ^ -8519272 ^ -1297842783))
         {
            if(_loc2_.isMale())
            {
               _loc2_.hair.type = CharViewConfig.MALE_TYPE_HAIR_UNDER_HAT;
            }
            else
            {
               _loc2_.hair.type = CharViewConfig.FEMALE_TYPE_HAIR_UNDER_HAT;
            }
            _loc1_ = true;
         }
         Cc.log(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("排揱挺挑捅挬捿揣捫掍掲挟揄揗","捾掻捳捕揌揽捫挑挴捸挺挾捨掯捣掤"),_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劃刬剃刀刍刳剔刜刿勽勜勫劝勶劫劜劣勬刾刬勇励勎劖劷勊劺効剒劺剥刀前創劷劾判则勦划勵剔勛剜削勃剞劏列勆勠勂剶剐勻勢","勵助動劅刐剷動割剂勐剱刴刔刽刧剮") + _loc2_.hat.type);
         if(_loc2_.hat.type > (0x38C60300 ^ -1004615507 ^ 0x400B3121 ^ -1126958360) && _loc3_.indexOf(_67282af25befe9778e5c8dd1._ec900be65c5b9e53f1296879(_loc2_.hat.type)) < (-1178376013 ^ 0x046C9AE7 ^ -1992485461 ^ 0x3492E7FF))
         {
            _loc2_.hat.type = CharViewConfig.NO_HAT;
            _loc1_ = true;
         }
         Cc.log(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၫႲႡ။აეჿჵၾဖၤႈဃၸ","ရტხာჱဪႝႫჺდဿပჂၬၐၲ"),_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("Ⴘဩ჎ႴႊႼဘၬွဢ჌ၸႤၥႝၪუၑၯၵဳჶჱპ႖Ⴁ၉გႵၴჁოႩၬჽဦၚႇჶငဖႭံ။თჱჄဵფရ၍ტ႓Ⴑညၖ႟ၜႨჸ","၏Ⴄညႇၵ၂ဩႈႎႆხႝოၐဖၨ") + _loc2_.shoes.type);
         if(_loc2_.shoes.type > (0x33E7FD61 ^ -2063582375 ^ -451834106 ^ 0x53F6495A) && _loc3_.indexOf(_67282af25befe9778e5c8dd1._a8f7d2e13fb6fd63b20725a1(_loc2_.shoes.type)) < (-835476178 ^ -1095755378 ^ -383440210 ^ -1717135858))
         {
            _loc2_.shoes.type = 0x7AFEE963 ^ 0x09635169 ^ 0x72854BDC ^ 0x0118F3D7;
            _loc1_ = true;
         }
         if(_loc1_)
         {
            _dfa25706e58a240c1e33e5c6.updateExtension.update(_loc2_.toString(),app.sid);
         }
      }
      
      private function _3b4284a46b438710c1bf81fe() : void
      {
         var _loc1_:_3f4737ed54f687ba620c6ace = GameSwf.instance.gameSettings;
         var _loc2_:Array = this._5b6d91fcf4fcef197ef605e6();
         if(_loc1_.float > (-935966546 ^ -2008692284 ^ -172564941 ^ -1245356196) && _loc2_.indexOf(_loc1_[_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劕刕剆劑劉勽勌務勳刺勇剿列刳劜劏剜剗","劕刻剹刧功剀劉加则勱劥剥刽剄刅刵")]) < (0x4A2BEB8C ^ -1087659997 ^ 0x44E6D795 ^ -1310286790))
         {
            _loc1_.float = -1854584153 ^ 0x6D951C04 ^ -663435523 ^ 0x2494905F;
            GameSwf.settings._fbb5bf4490297ce3e29d29e6(_loc1_);
         }
      }
   }
}

