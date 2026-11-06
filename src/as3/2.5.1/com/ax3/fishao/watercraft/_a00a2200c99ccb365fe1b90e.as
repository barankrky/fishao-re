package com.ax3.fishao.watercraft
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.fishao.control.managers._3a8a2602dcf9bf49b62e62af;
   import com.ax3.fishao.locations.entries._08c120b706560fce9302bcab;
   import com.inkora.tween.TweenCube;
   import com.junkbyte.console.Cc;
   import flash.display.Sprite;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class _a00a2200c99ccb365fe1b90e
   {
      
      public static const ON_THE_DOCK:int = -1337426791 ^ 0x0BF6980E ^ -494334038 ^ 0x5937EB3D;
      
      public static const SAILED:int = 0x7A6E62DC ^ 0x7097D59A ^ -435712773 ^ -318882884;
      
      public static const ON_THE_MIDDLE:int = 0x47B8C8E3 ^ 0x173914B6 ^ 0x0648E660 ^ 0x56C93A37;
      
      public static const BACK:int = 0x40AEB246 ^ 0x5AE8E23F ^ -225476701 ^ -389468199;
      
      public static const UNLOADING:int = -973820795 ^ -560085564 ^ 0x5E23E640 ^ 0x454A8F05;
      
      private var _asset:Sprite;
      
      private var _33f1d28e9e32d025e4b52ec3:int = 0;
      
      private var _f7ba78316bbbd4ab7071a3d8:Rectangle;
      
      private var _0479e76f23ec91fb26ae3d99:Point;
      
      private var _a87d2612d6574b141b6bd2b5:Point;
      
      private var _66b1f7b3fe277e939eb068b5:Point;
      
      private var _494aedc460a3a2fa92c548c3:Vector.<_08c120b706560fce9302bcab> = new Vector.<_08c120b706560fce9302bcab>();
      
      private var _56454c63a0068ed5a8ff57fa:TweenCube;
      
      public var offsetX:Number = 0;
      
      public var offsetY:Number = 0;
      
      public function _a00a2200c99ccb365fe1b90e(param1:Sprite)
      {
         super();
         this._asset = param1;
         this._asset.mouseEnabled = false;
         this._asset.x = int(this._asset.x);
         this._asset.y = int(this._asset.y);
         this._0479e76f23ec91fb26ae3d99 = new Point(this._asset.x,param1.y);
         this._a87d2612d6574b141b6bd2b5 = new Point(this._asset.x,-356977341 ^ -1135451573 ^ 0x2E1743C4 ^ 0x78FDD0B2);
         this._f7ba78316bbbd4ab7071a3d8 = new Rectangle(this._asset.x + (-551074764 ^ 0x20D88EE7 ^ 0x6DC3E919 ^ -1841552448),this._asset.y + (-700391304 ^ -413682064 ^ -2079829485 ^ -1256258543),-329058290 ^ 0x304F396F ^ 0x2E8247DA ^ -223377511,0x62F57A12 ^ -913664171 ^ 0x4A48E9C3 ^ -516487745);
      }
      
      public function get rectangle() : Rectangle
      {
         return this._f7ba78316bbbd4ab7071a3d8;
      }
      
      public function get state() : int
      {
         return this._33f1d28e9e32d025e4b52ec3;
      }
      
      public function set state(param1:int) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         this._33f1d28e9e32d025e4b52ec3 = param1;
         Cc.log(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勃剪努剮勤剽务刡劦勎勝劤剓剒勓劬勮勔剚剀剻勰剘刊动剝剈切勉劙剤勘刷劊","力勯勉勩劬劯劦劳劭初别刵勷勽勥勵"),this._33f1d28e9e32d025e4b52ec3);
         switch(this._33f1d28e9e32d025e4b52ec3)
         {
            case ON_THE_MIDDLE:
               §§push(-1033885495 ^ -1355381873 ^ -1798305834 ^ -108614512);
               break;
            case ON_THE_DOCK:
               §§push(0x067B323F ^ 0x1CFFEACE ^ -2054648136 ^ -1626581432);
               break;
            default:
               §§push(-1875886297 ^ 0x0130DD02 ^ 0x077EE915 ^ -1770124494);
         }
         switch(§§pop())
         {
            case 0:
               this._66b1f7b3fe277e939eb068b5 = new Point(this._asset.x,this._asset.y);
               this._asset.x = int(this._a87d2612d6574b141b6bd2b5.x);
               this._asset.y = int(this._a87d2612d6574b141b6bd2b5.y);
               _loc2_ = this._66b1f7b3fe277e939eb068b5.x - this._a87d2612d6574b141b6bd2b5.x;
               _loc3_ = this._66b1f7b3fe277e939eb068b5.y - this._a87d2612d6574b141b6bd2b5.y;
               this._1aabfbe383efa1cc9e2adc14();
               break;
            case 1:
               this._asset.x = int(this._0479e76f23ec91fb26ae3d99.x);
               this._asset.y = int(this._0479e76f23ec91fb26ae3d99.y);
               this._1aabfbe383efa1cc9e2adc14();
         }
      }
      
      public function sail(param1:int = 60, param2:int = 0) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this._33f1d28e9e32d025e4b52ec3 = SAILED;
         var _loc5_:int = param1;
         if(param2 > (0x798FC8BF ^ 0x0C62F9F0 ^ -747537235 ^ -1499705886))
         {
            _loc5_ = param2;
            _loc3_ = (this._0479e76f23ec91fb26ae3d99.x - this._a87d2612d6574b141b6bd2b5.x) * (_loc5_ / param1);
            _loc4_ = (this._0479e76f23ec91fb26ae3d99.y - this._a87d2612d6574b141b6bd2b5.y) * (_loc5_ / param1);
            this._asset.x = int(this._a87d2612d6574b141b6bd2b5.x + _loc3_);
            this._asset.y = int(this._a87d2612d6574b141b6bd2b5.y + _loc4_);
            this._1aabfbe383efa1cc9e2adc14();
         }
         _3a8a2602dcf9bf49b62e62af._d2b72a74253af6d1c777cb05(_3a8a2602dcf9bf49b62e62af.SFX_063_MOV_Raft_float);
         this._66b1f7b3fe277e939eb068b5 = new Point(this._asset.x,this._asset.y);
         Cc.logch(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劜刱剻勭刯剗刱剁剿剮刟勋剼劆勁剰","利劇剻勄剓剑分劙剤刨勠剫劳勼劔劁"),_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ႴჃჸၙခၵၠဃၝႎၜႚၱჄၜၹြხၫႵႬၳႧဨ၄ყႰဴჀჄၪဖဨაქညဦႾჷღ႟၉ထႉ၈ဢ჋ဋთၴ","ၷႍႭႜႃႝွჱპၽဇဥႍၗၗၵ") + param1 + _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揞掇揟挪挸捀揰振揪挺持捋捱控揢掫挢捘掄挛捶掕捱掄掿揕挋掬挰捻揵揱揉挕捫掿","挑捝捦換挂揾挣揙挈掮掦挶挈揀揔握") + param2 + _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捄掄揱挳掗挗掩揳掳挬挆揗挻掸揨推挝揕揔換捲揈掹捱捤揜捏掓掬揺捎揄挼揽掜握揽捒","捹掳掘掝揘捏捬指揹插揬揲捰援挨授") + _loc5_);
         Cc.logch(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剂刉剳务勎勧勇劗劇勦勲别劶别刱劖","办删列勵刌剎勭剝勼剿勶办剘劔刁勀"),_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捃捑推掓揙掃挎挑揂揟捸掦措掔換揑挛掔捅捌掍挦捃挂揂掫掵措掕揚","挏揚按捣挪揀挹挄挹揠掝揢捬挿挾掴") + this._asset.y + _95da7f1147c669197db81295._8f4866de82b7339154180ecb("勊剦努励剕刴剟勒剴勻剤劜勠副劜勬剻刓勨刃","刦剜勰剁剷劉刖劉劬劰刦办剮办勂劋") + this._a87d2612d6574b141b6bd2b5.y + _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挲挃掳握揉挼捠掵揃掦掻挨揝挓挕揚挿揮","挓掉掎挼揲掺捲掍揚揨捧提掖揶捣揮") + Math.abs(this._a87d2612d6574b141b6bd2b5.y - this._asset.y) + _95da7f1147c669197db81295._8f4866de82b7339154180ecb("剎劵剐剤刷动刟剟勔剨劆勥劧劾勦助劶劥劉劜剚動刨刲劧勊","勩剒劭刅効刪刈勼劫剶勜刉剝勧勿初") + _loc5_ + _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("措掗掼揺挘揮揈掌掉挭挫捁捭掾掀掮挠揋捑捞掸挻","掦挶捼揶换据掉挿捞捂掁捌挊揟捱掤") + Math.abs(this._a87d2612d6574b141b6bd2b5.y - this._asset.y) / _loc5_ + _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("နჇွ႟ၣၛၟუဆႉါၺ჋၄ၤဖၾჶ႑႗","့ႉფႷၪშჸႚტ჻თၻ჈႑ჅႺ"));
         this._56454c63a0068ed5a8ff57fa = TweenCube.to(this._asset,_loc5_,{
            (_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揁探揺揜捹揕挒挱揧揘","挃控揞捅掆掠揥揦揳握捚捹挧揠捇捜")):this._a87d2612d6574b141b6bd2b5.y,
            (_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ဝჼံიოႀာჭေႡ","ჀႏၞშၪခႣႹၩံვჇ်ჹ႔ဴ")):this._a87d2612d6574b141b6bd2b5.x
         },{
            (_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("Ⴟႋღၢჿၤဥმႊုၓႏ჌ႨၾჅဳႢိ჻ၨဥပპႧၚၔၔ","ၭဟႊႶၕပჹႋ၂ၰႊ၍ဢძ၉ျ")):this._32bbb322e8f91f9c2038c8d0,
            (_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勷刳办剠勥労勼勵勬勄勸剨刅勁励勷劍勓剕刿刵勷刌劓","剬刮刾刘勫勚劌劼則勰劐劥勶勭勖勓")):this._7cffac71f7dde9bb44433aa5
         });
      }
      
      private function _1aabfbe383efa1cc9e2adc14() : void
      {
         this.offsetX = int(this._asset.x - this._0479e76f23ec91fb26ae3d99.x);
         this.offsetY = int(this._asset.y - this._0479e76f23ec91fb26ae3d99.y);
      }
      
      private function _32bbb322e8f91f9c2038c8d0() : void
      {
         this._33f1d28e9e32d025e4b52ec3 = ON_THE_MIDDLE;
         _3a8a2602dcf9bf49b62e62af._455115db629ba63658f60520(_3a8a2602dcf9bf49b62e62af.SFX_063_MOV_Raft_float);
      }
      
      public function _57d98d9b9f08492135c64c8d(param1:int = 60, param2:int = 0) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         this._33f1d28e9e32d025e4b52ec3 = BACK;
         var _loc5_:int = param1;
         if(param2 > (0x4ADDF3A7 ^ 0x0460D59D ^ 0x71C0407E ^ 0x3F7D6644))
         {
            _loc5_ = param2;
            _loc3_ = (this._0479e76f23ec91fb26ae3d99.x - this._a87d2612d6574b141b6bd2b5.x) * (_loc5_ / param1);
            _loc4_ = (this._0479e76f23ec91fb26ae3d99.y - this._a87d2612d6574b141b6bd2b5.y) * (_loc5_ / param1);
            this._asset.x = int(this._0479e76f23ec91fb26ae3d99.x - _loc3_);
            this._asset.y = int(this._0479e76f23ec91fb26ae3d99.y - _loc4_);
            this._1aabfbe383efa1cc9e2adc14();
         }
         _3a8a2602dcf9bf49b62e62af._d2b72a74253af6d1c777cb05(_3a8a2602dcf9bf49b62e62af.SFX_063_MOV_Raft_float);
         this._66b1f7b3fe277e939eb068b5 = new Point(this._asset.x,this._asset.y);
         Cc.logch(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捍掷挨掊捥挮揼掸捾按揍揈捜挽掃揦","掀换捬揀掷掗捗揨挚掐揼挟挳挸捵捃"),_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揸挃揆掣挋揱挎掜掮挟损掳挮挝挋挃掚换掦挟掌掱挮捵挨挔挽掦掱接挲捀揾挮揤挃挑揬捘揍掾捌挋揄捏捚掦挐捐指掾揉挻掼","採捦揣揿换损挻揿接捔掄插掘揧掷揋") + param1 + _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揢挟挮挖掀挖捕捊挜揵揑捹揄掮揕捫挳捙揓掰揠推捘揉捀挮挖捻捪揽捄挝挖挗掎挗","挬捀捧捶捽描掄揟掸挘据按揕捶提掽") + param2 + _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("探揕掯捋挾挮揅揢掅揯捯掝捩掦持揉掛揋掜掘挓挝掑挔捼掝揌捒挿揎揃据掼掘掊掦掜接","掍捱揍掫描换捛捥挷控挰排掙掄揗掘") + _loc5_);
         Cc.logch(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ძ჈ႆႫကჯჿၦဥႥატၫႮၼက","ၣႣ႕ჽဨ჏ဳႰၖထႳჲၺႱဿ႓"),_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捺揰揧挘掋捖掫捁捪挍掆掉排掚挪捓揍挝捗揳挟掺捾捡挮揶掕掄掌挑捳揨挤挷","挤挞控掬採揦捨揶挏揥捧掘捑挍捙掆") + this._asset.y + _95da7f1147c669197db81295._8f4866de82b7339154180ecb("刋剉剓功勯功创刦剝勪剢刀剩刵勘刨券剺勂剨","刂判剃副势勆初勀勐劊剽刼剴刞刜剦") + this._0479e76f23ec91fb26ae3d99.y + _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ჹეၶჶႰ၇დဳေဟဒဇဍ႘Ⴢမჶკ","ၾ႑ၗီ႕ၩဣၺ၆၁၀ၥႦჰဵဒ") + Math.abs(this._0479e76f23ec91fb26ae3d99.y - this._asset.y) + _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ჇჀლႃჴ၌သၘძც၆ჲဉဴ႔ဝ၊ႉ၊႟Ⴅဿၴ႗ၦჍ","႐ဗၤხၝგႩ၇ჭဴၠႎၓჩ၃ၨ") + _loc5_ + _95da7f1147c669197db81295._8f4866de82b7339154180ecb("刃劶勁剸勄勄剽勀刢勅剄別劄剭刾列制勄劳刱勐勔","劉刵剗剜刃勡勞劷劫剤劏刊勝劝剎刍") + Math.abs(this._0479e76f23ec91fb26ae3d99.y - this._asset.y) / _loc5_ + _95da7f1147c669197db81295._8f4866de82b7339154180ecb("剣劜劀勓劔勳剌劥制劐劰劉刿刔剞勓加劮劷剆","劫勍剱前劓刟剓劦功劎刾勾利劍勐切"));
         this._56454c63a0068ed5a8ff57fa = TweenCube.to(this._asset,_loc5_,{
            (_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挗捻捳掹掑揢揬捰挴捋","捞掯捓掮掬揑挈揭捑掫掔挶挏揅捡掠")):this._0479e76f23ec91fb26ae3d99.y,
            (_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劔劎勜劫刏刃劓刢剹勰","剥别剝刞劧動刈剆刪剧刡剌剩剭劑剕")):this._0479e76f23ec91fb26ae3d99.x
         },{
            (_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劈勇勽勣劣刖劼劄勓劫剈刚劺勖刡劕勮勞勺到劥刻劬勵初勓剌劃","勞则剓勮劾勁勁剎剑剗剱剁剨券刵剬")):this._3b98df177d58d18aabf09862,
            (_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揳揈揲挕揄挏捡揑挄揋捬捘掻捼挴掴挡揃揲挫揀揵掍捲","揤挩揔揎挱揻掙揺揵捅揣持揎揄揗挮")):this._7cffac71f7dde9bb44433aa5
         });
      }
      
      private function _3b98df177d58d18aabf09862() : void
      {
         this._33f1d28e9e32d025e4b52ec3 = ON_THE_DOCK;
         _3a8a2602dcf9bf49b62e62af._455115db629ba63658f60520(_3a8a2602dcf9bf49b62e62af.SFX_063_MOV_Raft_float);
      }
      
      private function _7cffac71f7dde9bb44433aa5() : void
      {
         var _loc1_:Number = this._66b1f7b3fe277e939eb068b5.x - this._asset.x;
         var _loc2_:Number = this._66b1f7b3fe277e939eb068b5.y - this._asset.y;
         this._1aabfbe383efa1cc9e2adc14();
         this._66b1f7b3fe277e939eb068b5 = new Point(this._asset.x,this._asset.y);
      }
      
      public function _92d6baab4102395a7951d68b(param1:_08c120b706560fce9302bcab, param2:Boolean = false) : void
      {
         var _loc3_:int = 0x3C9DCD23 ^ 0x522E3C36 ^ -2126391386 ^ -265219322;
         loop0:
         while(true)
         {
            switch(_loc3_ ^ (-1896585352 ^ -911186038 ^ -2100222491 ^ -631893854))
            {
               case 0:
                  if(this._494aedc460a3a2fa92c548c3.indexOf(param1) == (0x3C3E363D ^ 0x50483984 ^ 0x37574F66 ^ -1528905952))
                  {
                     _loc3_ = 0x5F109AAC ^ -1798310032 ^ 0x6F734BE0 ^ -1150348406;
                  }
                  else
                  {
                     _loc3_ = -587801671 ^ -1847566929 ^ 0x5922ECF9 ^ 0x0BF75F5B;
                  }
                  break;
               case 1:
                  return;
               case 2:
                  param1.onRaft = true;
                  _loc3_ = 0x688AA8E7 ^ -1852445461 ^ -774399720 ^ 0x370BE8A0;
                  break;
               case 3:
                  this._494aedc460a3a2fa92c548c3.push(param1);
                  param1.raft = this;
                  if(!param1.onRaft)
                  {
                     _loc3_ = -1235271282 ^ 0x0A1787D1 ^ -557291542 ^ 0x7D439402;
                  }
                  else
                  {
                     _loc3_ = 0x2938EC33 ^ -996985071 ^ 0x55584775 ^ -1489983005;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function removeChar(param1:_08c120b706560fce9302bcab) : void
      {
         var _loc2_:int = -880268011 ^ 0x46804756 ^ 0x778AAC71 ^ -92092878;
         var _loc3_:int = 0x39590A2C ^ 0x38A222D1 ^ 0x03EF077C ^ 0x280D76FA;
         loop0:
         while(true)
         {
            switch(_loc3_ ^ (-1215274891 ^ -1929819820 ^ 0x7443974C ^ 0x6533E717))
            {
               case 0:
                  return;
               case 1:
                  param1.raft = null;
                  _loc2_ = this._494aedc460a3a2fa92c548c3.indexOf(param1);
                  if(_loc2_ > (-509124804 ^ -772583547 ^ -319436386 ^ 0x235E26D8))
                  {
                     _loc3_ = -75123690 ^ -1519158376 ^ 0x0E106653 ^ 0x7AFFF0A4;
                  }
                  else
                  {
                     _loc3_ = 0x7759149F ^ 0x1B305225 ^ -1820871248 ^ -720917904;
                  }
                  break;
               case 2:
                  param1._a6ba5ade9f66ae64e73c340b();
                  param1.onRaft = false;
                  _loc3_ = -455266253 ^ 0x6CC37375 ^ 0x2995D6D5 ^ -1953313559;
                  break;
               case 3:
                  this._494aedc460a3a2fa92c548c3.splice(_loc2_,-1550576264 ^ -2108398104 ^ -1518093055 ^ -2075931248);
                  if(param1.onRaft)
                  {
                     _loc3_ = -163358121 ^ -1387740605 ^ 0x71A92DCF ^ 0xBBECA3;
                  }
                  else
                  {
                     _loc3_ = 0x3B55EAFF ^ 0x159E0CBF ^ 0x06931531 ^ 0x0241AA0B;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function _d1b347acde8bd0cff6c33ae7(param1:_08c120b706560fce9302bcab) : Boolean
      {
         return this._494aedc460a3a2fa92c548c3.indexOf(param1) != (0x5C4644A1 ^ -89850948 ^ 0x7F32624C ^ 0x262F22AE);
      }
      
      public function destroy() : void
      {
         if(this._56454c63a0068ed5a8ff57fa != null && this._56454c63a0068ed5a8ff57fa.active)
         {
            this._56454c63a0068ed5a8ff57fa.gotoEnd();
            this._56454c63a0068ed5a8ff57fa.destroyTween();
            this._56454c63a0068ed5a8ff57fa = null;
         }
      }
      
      public function get x() : Number
      {
         return this._asset.x + (-585570371 ^ -1422338174 ^ 0x7CA5E614 ^ 0x0A85D621);
      }
      
      public function get y() : Number
      {
         return this._asset.y + (-758640097 ^ -2077874233 ^ 0x46904880 ^ 0x107E7D52);
      }
      
      public function _b04d2ea00510610a2a032312(param1:Number, param2:Number) : Boolean
      {
         return this._f7ba78316bbbd4ab7071a3d8.contains(param1 - this.offsetX,param2 - this.offsetY);
      }
      
      public function get charOnBoard() : Vector.<_08c120b706560fce9302bcab>
      {
         return this._494aedc460a3a2fa92c548c3;
      }
   }
}

