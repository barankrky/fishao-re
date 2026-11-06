package com.ax3.fishao.tutorial.simple.decoration
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.fishao._67282af25befe9778e5c8dd1;
   import com.ax3.fishao._a1e0e2bf54cc08cc6a7d5b7c;
   import com.ax3.fishao.display._8a5b0c698d40931e860c0aeb;
   import com.ax3.fishao.locations.base._24fc30cfc3c855ea21a231e8;
   import com.ax3.fishao.locations.base._67f8febc099eaa05c48aa41e;
   import com.ax3.fishao.locations.entries._c9513c48978d5034cc9ff2f4;
   import com.ax3.fishao.locations.privateHouse._c24229eda44b942058106fae;
   import com.ax3.fishao.locations.privateHouse.interior.controller._33aca7ac1e49b5f2d10a6bbc;
   import com.ax3.fishao.locations.privateHouse.interior.controller._3f7831b50d1ca2f67d06a9e9;
   import com.ax3.fishao.model.info._d1ac35bdca78006e84f51a32;
   import com.ax3.fishao.resources._f5e4d158108107f1e8a3a320;
   import com.ax3.fishao.tutorial._0c6054b5aa20a9fd2b92f9c1;
   import com.ax3.fishao.tutorial.helpers._450aa236949c3aac4e3c79f5;
   import com.ax3.fishao.tutorial.helpers._48295d9d6d9a3a424d2886ed;
   import com.ax3.fishao.tutorial.helpers._63a1662bfab25759f09f5245;
   import com.ax3.fishao.tutorial.helpers._e444b603a0e799e84b427ae5;
   import com.ax3.fishao.tutorial.helpers._f68c6ad080882f1d18d7d86d;
   import com.ax3.fishao.tutorial.simple.base._a18ecfd5a99a71f5043f6ed6;
   import com.ax3.fishao.tutorial.views.dialogs.inventory._0239b4a1f957bf9e5ccfd482;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import com.ax3.fishao.vars.app;
   import com.junkbyte.console.Cc;
   import flash.display.Sprite;
   import flash.geom.Point;
   import flash.utils.setTimeout;
   
   public class _09b4f9fefee5ccec1d23530b extends _a18ecfd5a99a71f5043f6ed6
   {
      
      private var _fd7c7a3e1baa759c2f4c4b38:int;
      
      private var _1e458de48555f0bbd46338ce:int;
      
      private var _d61e4c5c2580a435586be459:int;
      
      private var _42ddac19c87be9c5f5faf096:Point;
      
      public function _09b4f9fefee5ccec1d23530b()
      {
         super();
         this._fd7c7a3e1baa759c2f4c4b38 = -767207328 ^ 0x291BDA77 ^ -2002705760 ^ 0x73FFA0B4;
         this._1e458de48555f0bbd46338ce = 0x0451AFB3 ^ 0x3C0B0150 ^ -2030291707 ^ -1096377374;
         this._d61e4c5c2580a435586be459 = 0x232551B9 ^ 0x339ABA97 ^ -1104870417 ^ -1365579580;
         this._42ddac19c87be9c5f5faf096 = new Point(-2084630881 ^ 0x4C405C1E ^ -1064468058 ^ 0x0F72D20B,-1626561983 ^ -831859397 ^ 0x2493FBCF ^ 0x75F58F31);
      }
      
      private function _d1287e587a6719bff7712c62(param1:Function) : void
      {
         var _loc2_:_3f7831b50d1ca2f67d06a9e9 = null;
         if(param1 == null)
         {
            return;
         }
         var _loc3_:_c24229eda44b942058106fae = GameSwf.currentLocationDialog as _c24229eda44b942058106fae;
         if(_loc3_ == null)
         {
            setTimeout(this._d1287e587a6719bff7712c62,0x1C0CB8D0 ^ 0x0F8BAEE2 ^ 0x62FB4EC6 ^ 0x717C580E,param1);
            return;
         }
         _loc2_ = _loc3_.controllerInterior.selectedItem as _3f7831b50d1ca2f67d06a9e9;
         if(_loc2_ == null)
         {
            setTimeout(this._d1287e587a6719bff7712c62,-1326945098 ^ -201976754 ^ 0x75A58433 ^ 0x36BBFC31,param1);
            return;
         }
         param1(_loc2_);
      }
      
      override public function _0a2b10da3db58cd84d16235e() : void
      {
         super._0a2b10da3db58cd84d16235e();
         var _loc1_:int = this.stepCurrent;
         switch((0x6B478015 ^ -1081326068 ^ -1888631234 ^ 0x5BA60025) === _loc1_ ? 0x64D5AC8D ^ -924895164 ^ 0x734C3D58 ^ -549017199 : -1191402663 ^ 0x133E74FC ^ 0x4E7C32E1 ^ -440474299)
         {
            case 0:
               _0e1bc13a989d12a3776df86c();
               break;
            default:
               Cc.warn(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("သ၀ဢၺၮ၅ႬၴႦဈဵჸ჊ဉႌႭဟာၝင၁္჈ႬႶჼႏჯၞ႟ႡိဇၸီჄუဥჱၾၹ႓ႤႾၿၳႃႨ႖ၪဦ႔ံჇၿ႟ပၨဿၭ႙Ⴠၻၲჲႇၵ၎ႡდႺါმ჈၂ႁ႑ၘშၘ႕့ဈႴျშွႰჰ၁Ⴎၚၑ჋ဘ႟အႜၶეၳ႒႒ჅဟူჯყးპႏმၵႁၼჟჄႤဪ႐ჽၮာဠဎႽ႒ၩၧဈၟး჋ႎჄჾဩႪ჆ဝၫ႐ႆჯ၆ၨ","ჽၟဇ႐ဧၫႸႂႛဇမၲႋႩၓဋ") + this.stepCurrent);
         }
      }
      
      override public function _a48e6016b46dab72868aebd1() : void
      {
         super._a48e6016b46dab72868aebd1();
         var _loc1_:_67f8febc099eaa05c48aa41e = GameSwf.currentLocationDialog;
         switch(this.stepCurrent)
         {
            case this._fd7c7a3e1baa759c2f4c4b38:
               §§push(0x2E06E216 ^ 0x41191809 ^ -728134718 ^ -1148816931);
               break;
            case this._1e458de48555f0bbd46338ce:
               §§push(0x149F0D16 ^ 0x7F60C38D ^ 0x21C25488 ^ 0x4A3D9A12);
               break;
            default:
               §§push(0x14245F2E ^ -257116649 ^ 0x4F755654 ^ -1409433745);
         }
         switch(§§pop())
         {
            case 0:
               if(_loc1_.locationModel.locationConfig == _24fc30cfc3c855ea21a231e8.LOCATION_2_RIO)
               {
                  _370785518626690eacca466a();
               }
               else if(_loc1_.locationModel.locationConfig == _24fc30cfc3c855ea21a231e8.PRIVATE_HOUSE)
               {
                  _370785518626690eacca466a();
               }
               else
               {
                  Cc.warn(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၹႭႧမဃკၽე၀ယဨ႕ၖဏ္ေ჊ဋႬၨႛႅ႖ႰအဳცံှჅႹ၊ჼჇჸ႖ၑႿၡၘႵ჊ဃჰဉၞქდეၮဤ၃ჼငၟႡၙგ႗ႾႄႣဂႧ႙ဤါჳၷႂၠရბၯჍ႐თ႘ခღაႵဂႋႳၩႹၐႄ၅ႎჴ၊၂ႇჺႋ႑ფტႌဳႨ၇ီჽ჋၈ႛၵთჸဒၲႏဓႱ჋ၚსႬႹ჆ၵႠႇၩჼၾႬေဒဒဲვჅါၦၗჳဓႊჰၲယძ","ჴၜჽၿဆႫიႛၣჯ჋ဵဦၖფ჊") + this.stepCurrent + _95da7f1147c669197db81295._8f4866de82b7339154180ecb("刎剬剾动判勯刷勨刣刅刟劲删労剨劀剎劀劾勼劍勽刄剨剻剘刳劚剝剒剴刦劄勻剭切勩剼剫勄刚劋劥勉刨剞","切剺劽労刦副勦刽动利动剒勩勁割刬") + _loc1_.locationModel.id);
               }
               break;
            case 1:
               if(_loc1_.locationModel.locationConfig == _24fc30cfc3c855ea21a231e8.PRIVATE_HOUSE)
               {
                  _370785518626690eacca466a();
               }
               else
               {
                  Cc.warn(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挻揋挄挿揗挩揍掎挌揹挍挞挠掲掕挝捅捵掼挿损掶掖掌揑挄捹捈揯挼接捄掌捏揾挲掍揋揗措揍挗掷接捺挽揆揳捽揹控挹捇換捪掝援掲揯捡捑揸揹挐捞揉挏挞捝挤据描揫捾捤捨振掝揳持挟捌掔挺捐揌揪挣挺揬掋挙揨捘挒捘掮掔捑挣授揿挮揮揬挱振捚掙挍挲挿挡掙指挨掸挞揄揸揷揙捋掿揃揦挼捯挃控捷掽掻捎掸挍握挐捯捅掕捹挧挜挓掀","挊掣掷插据挔捘排掆捑挳揑描掕挓揚") + this.stepCurrent + _95da7f1147c669197db81295._8f4866de82b7339154180ecb("劏勏勈勇剕勵势劉勎劦别剻勳勧利勂勻刐勸勛勀勥劜劗勰努勫勫劜勼剤動劋勺刳刯勷刂制刘勅劈剀劒剉勞","剸剺勩助勧劃劓刧勍剹分刋剸劃剃到") + _loc1_.locationModel.id);
               }
               break;
            default:
               Cc.warn(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捼探揾挰捲揽揿损揁挬掃揞挋掓捣挸挈挿捧挨揲捅掌揲捚掁揲揄挾控掸捛揬揷掆掘揵掜掞掤挘挫挸捆揜捱挪揶掭揀挼揕挳探捅接掚揱描掻挸捍揵掾挤捴揈掿挐掇掗捃揝捁揿揝挮掻挑挠挕挃揽揕掄掊掔捘挺揀捑捄掆掶掑探捪掁挱揧振掰揯挽捫掹揔捋捍揩捈捇掕掤挔捤揷捐揞挀揂损掘揳挩捶捨掭捏捲掎揗揊揼捥揙掺揄捚挻捏捬揅揥捤捕揈揥","掏捌挎換揪掗掿捌掮捖掑揀揺掷揣捘") + this.stepCurrent);
         }
      }
      
      override public function _2664fc44433abf9626ce63fa() : void
      {
         super._2664fc44433abf9626ce63fa();
         switch(this.stepCurrent)
         {
            case this._fd7c7a3e1baa759c2f4c4b38:
               §§push(-1810199899 ^ -420272596 ^ -604337178 ^ -1458362513);
               break;
            case this._1e458de48555f0bbd46338ce:
               §§push(-1434342412 ^ -458268379 ^ -2085089504 ^ -845756944);
               break;
            default:
               §§push(-1879019315 ^ 0x7F0DE465 ^ -765125037 ^ 0x3D688AF9);
         }
         switch(§§pop())
         {
            case 0:
               if(GameSwf.currentLocationDialog.locationModel.locationConfig == _24fc30cfc3c855ea21a231e8.LOCATION_2_RIO)
               {
                  _0e1bc13a989d12a3776df86c();
               }
               else
               {
                  Cc.warn(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捱掰插掜提挳掯掹掍捳挎插损指揑揣捲捣挤捾捥揦捝挰揣揠捭挅掤授揔挘挪捈捦捍掿採挌挄掕捖捑挆捿捹振揎揭捍掾揮挞捭揳挴揮揙挨挪捙挃据挂揯揆掲挢挧挺揣捭挌捉捽按掛捔掂挊揆挢捞挱掂挜掿挖掐揬揝换掌揓掹揬捿揷挑揶提捊掩掮挓换掶探援挱损掣捒挣掚揄掂挕捝捨捠捖捔掺揞掿捯掑捒揑挏揅揲揶掎挸捝揔捇捈","挈揸揵掽持揣掃捔掓掬掘捂挱掀掫捧") + this.stepCurrent + _95da7f1147c669197db81295._8f4866de82b7339154180ecb("剩劖刂勭利剫刬努刴劭刯前勚劾劻勯剿劭剋剂剾劻劰剥劃劗刁勓剏勰則労助勢劜刉剹劦剀剉劳劮剓刞剻剾勊劤","勱劽劊剦刹劮劀劤刳剑勻剕労剳剧剞") + GameSwf.currentLocationDialog.locationModel.id);
               }
               break;
            case 1:
               if(GameSwf.currentLocationDialog.locationModel.locationConfig == _24fc30cfc3c855ea21a231e8.PRIVATE_HOUSE)
               {
                  this._9f3084471122d880fe028d7d();
                  _0e1bc13a989d12a3776df86c();
               }
               else
               {
                  Cc.warn(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("划剂刄劊刔剀剳剀刟勾則剛列勉制勶刱勳刖势励剤勤勹刴劌剌勒勇募剝刬劸刓劲劀剸剅劺刌加副勳剱剧勊劰劸剆則副副勦勾勢剅剜劄劷刚勯剴勰剮勗勐切動刣勴勲勰刮勂剸剉劤勂剰剐刭势劆剩刃剙劺劙劄刘刏刊刖剋剓判動務刂刘功剋劬刦勊剉劜劔则剿剳剙勁刊剉剘勱勜劢剺務劆勄刬初刅劦刅刲剂剎剥到到劓加刐勝剤勢","劮則刨劦劑刡勞劷刾勜刀刂刔剡劣刔") + this.stepCurrent + _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ါဲ႔္ჶშ႔ၣၚეထၝၶၳၱჟჟტထႾ႔ဳႫჁၓႨე၀ႈჭႬႵჃၥ၅ဒႜჸჼႼႲჁჄჽ၆ၝ႑ီ","ၺფ၎ၞ჊၌ၟၻဌჳ჆႓ၮႸၴჄ") + GameSwf.currentLocationDialog.locationModel.id);
               }
               break;
            default:
               Cc.warn(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掬捽掼掁捰掳掣挧挮挴掠捔捹挳掯捨採挤捶揂捬挋掯掩揙挱捑揪揃換捱捰捀掃掗捼挮揥掃捰挞捭揕捑揲挒掜掩挜掯掘掞揌掆捬指掞揲捷掐捒掖揦挆掶挅持揬挊掵掴挻揺挒挽持捎捌挭捥捉挹掻捂換捒捧挸捒捳挟揈捯掼掂揥揑掁捒捇挨掼揆揸掰揚挴挼挓损捌接挻揱掽揧捼挙掼捜挦换捳揗揨捈挕掿挹掺捄掺挘揜挜捀挐揼揗捰捵掛捲掾掣掅","揰捁揹捪掘捙揝捴掝掴挷揇捳挘挔揖") + this.stepCurrent);
         }
      }
      
      private function _68a9d673e32dc01f4d7a07ff() : void
      {
         app.user.canMove = false;
         _4e58d4cc56b655be4f620f65(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劂副勎刿剡別剢剺勖劌刷勏刜刓刣勸劙剴勗剼勂刺劌剺勣刜劕刟副剆刾別勯刱勡剟劂刦刏劥剺勒劣刚勄剚刱劕劬剈刉劇剖劵剔剛勤勛刈劵刿刄劀劾刘功","勞剾刕勨劌劌劰劽刮勌勎刺勇刪刎剏"));
      }
      
      private function _1dcb19c7fe4aef35fdcfa54a() : void
      {
         GameSwf.worldMap._672fea5b40693665c61d3bd6(_24fc30cfc3c855ea21a231e8.LOCATION_2_RIO.id,_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捵掵挠掖挞捬挗掴捭挠揄揞捕捃揠揲捸捸挜掗挢捓掚捹挢揪捈換捩捚挈揄捖掑授掜挮掘挎捁揾揋揶捒挑掱挍掻掭掄捙挕捈揼揯捯捔掷捇揀捾挕按揂插挚揶掔掛捨","挆掷掎掱挷捷捃掃捱捴挽捀挂挢掓掩"));
      }
      
      private function _8e78a0d8a111fa235a055c9d() : void
      {
         app.user.canMove = true;
         var _loc1_:_0c6054b5aa20a9fd2b92f9c1 = this.tutorialHelpers;
         var _loc2_:Point = new Point(-1253610346 ^ -493583872 ^ 0x706183C7 ^ 0x27B2662D,-380899894 ^ 0x7843BAAD ^ 0x48937936 ^ -644141427);
         _loc1_.helperMask._d6a2521748f59df463e4fb94(_loc1_.helperMask._9e4b07f267950c7f7846aa5d(),0x6C91179C ^ -2120625468 ^ 0x472C9A18 ^ -1440456919,_450aa236949c3aac4e3c79f5._16ffa2fe2c1f35f56de92b5b(_loc2_),null,0x1D6FF549 ^ -145000193 ^ -1917590205 ^ 0x678768AF);
         _loc1_.helperMask._d6a2521748f59df463e4fb94(_450aa236949c3aac4e3c79f5._b151646c414257eefb7e914d(_loc2_),0x16248956 ^ -1865119090 ^ -490501452 ^ 0x6433895E);
         _loc1_.helperArrow._1374d9ea563f44f5aedd5b29(_450aa236949c3aac4e3c79f5._b151646c414257eefb7e914d(_loc2_,new Point(0x11341DDE ^ 0x791BD3BC ^ -594790328 ^ -1264323030,-1147758429 ^ 0x24A4E5AD ^ 0x0697EF09 ^ 0x665A6DBD)),-613128577 ^ 0x63AE97D1 ^ 0x5BA87B70 ^ -479032610);
      }
      
      private function _80ed721addca3950b625d45d() : void
      {
         _dbb8408a6fc0feead9d91cb2();
         var _loc1_:_c9513c48978d5034cc9ff2f4 = GameSwf.currentLocationDialog.player;
         _loc1_._d920697e2d07908f09509e8e(this._42ddac19c87be9c5f5faf096.x,this._42ddac19c87be9c5f5faf096.y,this._e69e3bd9a75842dd61bae242);
      }
      
      private function _e69e3bd9a75842dd61bae242() : void
      {
         var _loc1_:_c9513c48978d5034cc9ff2f4 = GameSwf.currentLocationDialog.player;
         _loc1_._14fd2868d3710a33e01faa02(0x08515BCB ^ 0x09869079 ^ 0x2D43695D ^ 0x2C94A2EF,-2027716087 ^ -540611726 ^ -190901678 ^ -1401259224);
         app.user.canMove = false;
         var _loc2_:_8a5b0c698d40931e860c0aeb = this.gui;
         _loc2_.mainMenu.inventoryIcon.enable();
         var _loc3_:Sprite = _loc2_.mainMenu.inventoryIcon;
         tutorialHelpers.helperArrow._1374d9ea563f44f5aedd5b29(_48295d9d6d9a3a424d2886ed._d95bc8ebedf961aa574d13ea(_loc3_,new Point(_loc3_.width / (-397714001 ^ -1990334185 ^ -1064813586 ^ -1583444140),-_loc3_.height)),0x2160062B ^ -1358903178 ^ -955838510 ^ 0x4967C18F);
         tutorialHelpers.helperMask._d6a2521748f59df463e4fb94(_63a1662bfab25759f09f5245._c5d46f44a4d8a26c7cf5d28e(_loc3_),-451319335 ^ -1150436660 ^ -1176594214 ^ -408269827);
         var _loc4_:_e444b603a0e799e84b427ae5 = this._520ba4dbc5360c791fc5a2f0();
         _loc4_.textBig = _c2ad9d37d7be0097d6d2e977.get(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ჽခၛၹတဨ်ၻဦ႗ႌ჻ႯႴჄლၔၹၩ၈ဵၓဦႨၚჼၷბ႑პჶჄჭမႧ၂ၓႛါၔ႕ၭႲჄ၌თႢႻတჃၡႬဨღႷၢძးრ႕Ⴉ၉ၓႺთၬၞჷဤ႕ကဟႃ၏ၩျ","ဍႩ့ၬ၉ჷေယၞႿလ჋႐Ⴁၖႉ")).replace(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("加劑剰刓刼勆刍務刹刜劥剼劰刟剟募劥勊剓刜劣剫劉剉勵分刐刲","募刳剛剹勢労刻剎勳势励劣刓勡劌勅"),app.user.username);
         _loc4_.textSmall = _c2ad9d37d7be0097d6d2e977.get(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ီႍဂ჆჏ိႉწ၅Ⴂ჌ၥქၻჱၭႂၶ၉ჟ჊჉ၺႨၟာႷჱၢჿၘသာၛအၸშဉგჟ႞တြ၅ჾჅဉႯၞსၣမ჏ႥထၠပဈმჇၻဃဌႵჱ။Ⴌၷိသჺၝဍ၉","ဝဉုယ჻႓ყ႑႞ဆဳႱှ჋ჷფ"));
         _loc4_._bd3ca576113ec97b28fb94a7(0x4891A76F ^ -1684998199 ^ 0x5278A93D ^ -2122712677);
      }
      
      private function _caacbb4e789cc5f836182715() : void
      {
         _dbb8408a6fc0feead9d91cb2();
         var _loc1_:_0239b4a1f957bf9e5ccfd482 = _gameSwf._4aeac9e48c0facbd15fae3ba(_0239b4a1f957bf9e5ccfd482) as _0239b4a1f957bf9e5ccfd482;
         if(_loc1_ == null)
         {
            return;
         }
         _loc1_._b35f13eb9d1b3652431b0f2a(_f5e4d158108107f1e8a3a320.DECORATION_NAME);
         _loc1_._88d4130cae0046e040f561fd(_67282af25befe9778e5c8dd1.DECORATION,_a1e0e2bf54cc08cc6a7d5b7c.ER_DECORATION_SIMPLE_WALL_2);
         var _loc2_:String = _c2ad9d37d7be0097d6d2e977.get(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勚刜刺剘勊勒剎劙剏勰劭剜助切勬劐勎刖刧剓刾刁勐刼剡刋勨剀劖刜","刅刏剎劇割剅勲劽勖刵刣刑刨劉勀剋") + _a1e0e2bf54cc08cc6a7d5b7c.ER_DECORATION_SIMPLE_WALL_2);
         var _loc3_:_e444b603a0e799e84b427ae5 = this._520ba4dbc5360c791fc5a2f0();
         _loc3_._1c22d37e390a987ff97dfc1d(_c2ad9d37d7be0097d6d2e977.get(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挠揦揇捷挛探捚掟挒掳揣捴挻掂掏掲挃掳捣挾揯揯挛按掲挥揑揇挹掮捠捺揁揠揾捚揫掲掇捀掌揣揮揭提揩挩掜挪捪挿揑揪揹掟掜揊掣捬掉捋挑捴揓插掝捩掕捗掁揇挗掝挙掃捛","掐捸掉描掉捺挪揧援掙挜措挰掋挎掯")).replace(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("刓剮劶剤動刯刽劗勛剀勼劅劜勨剂剟勝劰务剄劼勉剜勸劑勀剿剮募劵劐勿勡券剂剞剤刏勲勌勏剥劎勘","勅刴剡劋劤剠刍剁剋劉刍劸刏割劾劾"),_loc2_));
         _loc3_._406b04d0c8d59430e3058ade(0x1EA757B7 ^ 0x4E671509 ^ -405450904 ^ -1223357006);
      }
      
      private function _f9accf2f694d3e2af9395a36() : void
      {
         var _loc1_:_0239b4a1f957bf9e5ccfd482 = GameSwf.instance._4aeac9e48c0facbd15fae3ba(_0239b4a1f957bf9e5ccfd482) as _0239b4a1f957bf9e5ccfd482;
         _loc1_._f07eab3c34375ad19df22f56();
         var _loc2_:_e444b603a0e799e84b427ae5 = this._520ba4dbc5360c791fc5a2f0();
         _loc2_._1c22d37e390a987ff97dfc1d(_c2ad9d37d7be0097d6d2e977.get(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剥刯刽剂劀剼剫剐劘劇剞勗勥刾剁別刊劢刺勠分势劒剙列劲勞勷剱劧勹分剴剅勳刞劊勮刡剀剚剝办劣劈剿勐办劗勷剧勴刊動劑刲勭刄勧劫別剰剫勾剶勦剆劍勆刓勶勉劫劕功剐","勅剝刋刻勖剘剰勨勗刱刜剗劷动剽剝")));
         _loc2_._406b04d0c8d59430e3058ade(0x158B8D95 ^ -1057402229 ^ -253426196 ^ 0x2597DA96);
      }
      
      private function _abe871a1d92e9c479b851257() : void
      {
         var _loc1_:_8a5b0c698d40931e860c0aeb = this.gui;
         _loc1_.mainMenu.inventoryIcon.enable();
         var _loc2_:Sprite = _loc1_.mainMenu.inventoryIcon;
         tutorialHelpers.helperArrow._1374d9ea563f44f5aedd5b29(_48295d9d6d9a3a424d2886ed._d95bc8ebedf961aa574d13ea(_loc2_,new Point(_loc2_.width / (-2026227296 ^ 0x2A5F4334 ^ 0x2AAF80BE ^ -2016740824),-_loc2_.height)),0x41F3F496 ^ -2051117686 ^ -1676225990 ^ 0x585B4B26);
         tutorialHelpers.helperMask._d6a2521748f59df463e4fb94(_63a1662bfab25759f09f5245._c5d46f44a4d8a26c7cf5d28e(_loc2_),0x4EDE8971 ^ -1665864319 ^ -1654172900 ^ 0x4F0D37DE);
         var _loc3_:_e444b603a0e799e84b427ae5 = this._520ba4dbc5360c791fc5a2f0();
         _loc3_._1c22d37e390a987ff97dfc1d(_c2ad9d37d7be0097d6d2e977.get(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勓刨券劎勆刳勬则刵刘勣劾勒効勃剱勬剌劧刑剝勽剻剑勾刟劇利勶刍刖剔剺刼剿刭勞刬刭勘划剢刡剎勜刑劈刦勽刎剑劯劳剰列勑勜刑勗勮劖勫勑刯勒剢勻劃刎劤剄刼勖劎办务","勘剏勊剤列勇剞剜劼務劐刅勿利勯刔")));
         _loc3_._406b04d0c8d59430e3058ade(0x6A397E1A ^ 0x212EE102 ^ -297317512 ^ -1521429422);
      }
      
      private function _2434b58c59e5e53ba2beaf47() : void
      {
         _dbb8408a6fc0feead9d91cb2();
         var _loc1_:_0239b4a1f957bf9e5ccfd482 = GameSwf.instance._4aeac9e48c0facbd15fae3ba(_0239b4a1f957bf9e5ccfd482) as _0239b4a1f957bf9e5ccfd482;
         if(_loc1_ == null)
         {
            return;
         }
         _loc1_._b35f13eb9d1b3652431b0f2a(_f5e4d158108107f1e8a3a320.DECORATION_NAME);
         _loc1_._88d4130cae0046e040f561fd(_67282af25befe9778e5c8dd1.DECORATION,_a1e0e2bf54cc08cc6a7d5b7c.ER_DECORATION_SIMPLE_TABLE);
         var _loc2_:_e444b603a0e799e84b427ae5 = this._520ba4dbc5360c791fc5a2f0();
         _loc2_._1c22d37e390a987ff97dfc1d(_c2ad9d37d7be0097d6d2e977.get(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ლဪჰყၣအၼၠჩၜႠမိႡၥၡဢၛႜ႒Ⴍ჏რဃ႟ၲဈၱჾჃკနფၦ჆ႛრ၎჌ငၴဨ჉჊ေုႷႼႉ၁ၼဣიჸၝြၔႇჂဝႚႅლ၄၁ထფဿမჲၢ၌ဈ႔჌ძ","ဎၟ႓ႯძၡႥ႟Ⴤၺ႔ၻႧဦၺვ")));
         _loc2_._406b04d0c8d59430e3058ade(-411560962 ^ 0x206493C4 ^ 0x0C9C6F8B ^ -880742525);
      }
      
      private function _a50e8550bcd2daeaeb3ddb78() : void
      {
         var _loc1_:_0239b4a1f957bf9e5ccfd482 = GameSwf.instance._4aeac9e48c0facbd15fae3ba(_0239b4a1f957bf9e5ccfd482) as _0239b4a1f957bf9e5ccfd482;
         _loc1_._f07eab3c34375ad19df22f56();
      }
      
      private function _125235bbf4b08bdc7854e77c(param1:_3f7831b50d1ca2f67d06a9e9) : void
      {
         var _loc2_:_e444b603a0e799e84b427ae5 = null;
         if(param1 != null)
         {
            param1._ab2e17a05482a91ef95d5125(false);
            param1._40376fe6ea46f91fb4004f56();
            _loc2_ = this._520ba4dbc5360c791fc5a2f0();
            _loc2_._1c22d37e390a987ff97dfc1d(_c2ad9d37d7be0097d6d2e977.get(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勢剁剩剹勸勈剙刍劓剫勾剬剦勀努刬刕勸劓劳刃刺劍剱剙劮勔刺募利刷劂劒刹刁剮刅勰剋刋勢刳助刌到剗勂劰劑别剤劾刷劣勂務劚列劻勆刁剮劉劷刑勬勹创刻劈刘刺刨劆功剚","勖勧勐劃刡剤刳劝勋剤勏剖剷剚刃勽")));
            _loc2_._406b04d0c8d59430e3058ade(-1177209979 ^ 0x0E84DD5D ^ 0x01A6C542 ^ -1225315416);
         }
      }
      
      private function _21eb6a4c6938731b4d249706(param1:_3f7831b50d1ca2f67d06a9e9) : void
      {
         param1._ab2e17a05482a91ef95d5125(false);
         param1._056ddc457f9e250971cda5de();
         var _loc2_:_e444b603a0e799e84b427ae5 = this._520ba4dbc5360c791fc5a2f0();
         _loc2_._1c22d37e390a987ff97dfc1d(_c2ad9d37d7be0097d6d2e977.get(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("採掲提捁挵掫揶揝振揑掍掘掝捔挱掓捌捍掋掤揝挣捪掓挺掔掂挫掬掚揀掸援措挔掐握挲揋揭揳掻挗揰探揽揠握掾掺挶挂揝捏掦掹挻挆揹挰捨捴掸揤掑挢捲排挕排掆捇振挵挕揽","挌揱揖援掾挏揬揶捵挜捿挛揄揧揀掅")));
         _loc2_._406b04d0c8d59430e3058ade(-896759501 ^ -828409300 ^ -299444983 ^ -365615580);
      }
      
      private function _67e98cb07810abf9b3fdfe09(param1:_3f7831b50d1ca2f67d06a9e9) : void
      {
         param1._ab2e17a05482a91ef95d5125(false);
         param1._af52217eaf62684aca76d28b();
         var _loc2_:_e444b603a0e799e84b427ae5 = this._520ba4dbc5360c791fc5a2f0();
         _loc2_._1c22d37e390a987ff97dfc1d(_c2ad9d37d7be0097d6d2e977.get(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剛別劫刅勂劏剖剚勑劫勮勤剻刓劢勡劏努勀剈剘勞劇剄勰募利剚劎剄劊劫劺刖勛剤劺助刿勱削剒刭劯剁剂剨勦剞刉勊刢勥創劧刯刚剺刈劎勠剶劵募刞劐勽务剉勎剐勍勮剣刹劧","剥刷勄勊刟剾刔剱剈剩勗勚勨剩勜剠")));
         _loc2_._406b04d0c8d59430e3058ade(0x5B375663 ^ 0x771A3746 ^ 0x78C6F6F4 ^ 0x54EB97E3);
      }
      
      private function _25986c0212901a2c9f275a9b(param1:_3f7831b50d1ca2f67d06a9e9) : void
      {
         param1._ab2e17a05482a91ef95d5125(false);
         param1._bb9cdcf48845d4be1e610727();
         var _loc2_:_e444b603a0e799e84b427ae5 = this._520ba4dbc5360c791fc5a2f0();
         _loc2_._1c22d37e390a987ff97dfc1d(_c2ad9d37d7be0097d6d2e977.get(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("办勴劅劣刦劥势劑刐刜勩劃勈刽剒勔勽努剞剉刁刡剾刌别勚刔劑剕刮劶勈刊勮労勿劷勰判利剌勷劺勫労剴剝励剆刺勄刧劊剮剃劂励勔剣劙勜刉刎勹劽劉劎剐劔勞刃勠則劼刦劏","劢剭劼勡劢劗劗勂勓刭則勨剏勁勈励")));
         _loc2_._406b04d0c8d59430e3058ade(-1669740978 ^ -1253944589 ^ -1003781421 ^ -317712804);
      }
      
      private function _1a9c211322e78c26ba893d11(param1:_3f7831b50d1ca2f67d06a9e9) : void
      {
         param1._ab2e17a05482a91ef95d5125(false);
         param1._d4950de84f81f61a88ec69fa();
         var _loc2_:_e444b603a0e799e84b427ae5 = this._520ba4dbc5360c791fc5a2f0();
         _loc2_._1c22d37e390a987ff97dfc1d(_c2ad9d37d7be0097d6d2e977.get(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ლქြႲ჋ႢყႽဤႀႱႨဏၤးႂၳးႉ။။ႢცႻႻႴႥჃႩႛတ။ႄ჌ူვႶႌႎႴၬჀ჏ၶჿှၺძ჌ၬჷ႔Ⴥბဗၮ၌ၫ႑၎ၛညဋႡ჆ႅ჋ჽၢჂႚဥၲშၩ္","ႚ჉႒။ႚჩၲၒჂდၢ႑၃რტ႔")));
         _loc2_._406b04d0c8d59430e3058ade(0x070B0AC7 ^ -1224664246 ^ 0x30A5286B ^ -2136000044);
      }
      
      private function _0ff29e7e1b5205fd8f5ec029() : void
      {
         var _loc1_:_e444b603a0e799e84b427ae5 = this._520ba4dbc5360c791fc5a2f0();
         _loc1_._1b42bf66b39b98f20155e7bf();
         _loc1_.textBig = _c2ad9d37d7be0097d6d2e977.get(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("動励刕勼刖剃剑劂力刑劏剚劸剾剾分勣劼刲剨剙剐勸劥剘办則劙勔别勇剎刞刃剉剜勜剖别創勃刃刟剣勸勃剐刘刉列刣剐劇勝刨劜励劕判勗剹剸剋勫剏刵勝劓剀刳刁刹刜利则勍","努劭判剔剮剤剃剚勔劔勎剋刣勈勀劶"));
         _loc1_._bd3ca576113ec97b28fb94a7(0x58EFA621 ^ 0x20A323D5 ^ -1483321248 ^ -539306604);
      }
      
      private function _8987d9b82f66c27b45df3e0d() : void
      {
         app.user.canMove = true;
      }
      
      override protected function _5ef0e233a5bb752efe3b3ded() : void
      {
         super._5ef0e233a5bb752efe3b3ded();
         _stepsHandlersMap[-483131677 ^ 0x71C6C73F ^ -934092134 ^ 0x5AA7DB47] = this._68a9d673e32dc01f4d7a07ff;
         _stepsHandlersMap[0x19A77455 ^ -292453401 ^ -2075289452 ^ 0x737B6F24] = this._1dcb19c7fe4aef35fdcfa54a;
         _stepsHandlersMap[-9988927 ^ -1773466276 ^ 0x35B8CE1D ^ 0x5C945783] = this._8e78a0d8a111fa235a055c9d;
         _stepsHandlersMap[0x2B0A5EDD ^ 0x60DEBEFC ^ -258824492 ^ -1153022223] = this._80ed721addca3950b625d45d;
         _stepsHandlersMap[-1927433910 ^ 0x0D21D17F ^ -441070251 ^ 0x6589AD65] = this._caacbb4e789cc5f836182715;
         _stepsHandlersMap[0x1EE5A8A8 ^ 0x3647F7CE ^ 0x72B08D94 ^ 0x5A12D2F4] = this._f9accf2f694d3e2af9395a36;
         _stepsHandlersMap[-1037682877 ^ 0x0557CDB6 ^ 0x083F8DEE ^ -816941284] = this._abe871a1d92e9c479b851257;
         _stepsHandlersMap[0x2762A4C8 ^ -2014245929 ^ -969572353 ^ 0x66A6D0E8] = this._2434b58c59e5e53ba2beaf47;
         _stepsHandlersMap[-1227368540 ^ 0x153082F8 ^ 0x5ABCF5E4 ^ -111435599] = this._a50e8550bcd2daeaeb3ddb78;
         _stepsHandlersMap[-817136844 ^ -540710286 ^ -1497532544 ^ -1238145332] = this._5025af4af84444853e9a0de4(this._125235bbf4b08bdc7854e77c);
         _stepsHandlersMap[-54163851 ^ -2071655227 ^ -1735749487 ^ -523625942] = this._5025af4af84444853e9a0de4(this._21eb6a4c6938731b4d249706);
         _stepsHandlersMap[-2091252237 ^ 0x4782E3B5 ^ 0x42FD9D76 ^ -2044363972] = this._5025af4af84444853e9a0de4(this._67e98cb07810abf9b3fdfe09);
         _stepsHandlersMap[0x1BC16E4F ^ -1271156439 ^ 0x393EBA87 ^ -1765513748] = this._5025af4af84444853e9a0de4(this._25986c0212901a2c9f275a9b);
         _stepsHandlersMap[-181393204 ^ -1366235393 ^ 0x52A86D9B ^ 0x0908A3A6] = this._5025af4af84444853e9a0de4(this._1a9c211322e78c26ba893d11);
         _stepsHandlersMap[0x1E463E06 ^ 0x7B8D40D9 ^ 0x6EFA78E6 ^ 0x0B310636] = this._0ff29e7e1b5205fd8f5ec029;
         _stepsHandlersMap[0x2EF4CECD ^ -1187903804 ^ -47809219 ^ 0x6AE0B524] = this._8987d9b82f66c27b45df3e0d;
      }
      
      private function _5025af4af84444853e9a0de4(param1:Function) : Function
      {
         var callback:Function = param1;
         var result:Function = function():void
         {
            _d1287e587a6719bff7712c62(callback);
         };
         return result;
      }
      
      override protected function _520ba4dbc5360c791fc5a2f0() : _e444b603a0e799e84b427ae5
      {
         var _loc1_:_e444b603a0e799e84b427ae5 = super._520ba4dbc5360c791fc5a2f0();
         _loc1_.sizeLabel = _f68c6ad080882f1d18d7d86d.ETPS_SMALL;
         return _loc1_;
      }
      
      override public function start() : void
      {
         super.start();
         this.stepCurrent = 0x6BBFDB2B ^ 0x3FDE45C6 ^ -1210233044 ^ -474164800;
         var _loc1_:_67f8febc099eaa05c48aa41e = GameSwf.currentLocationDialog;
         if(_loc1_ == null)
         {
            this.stepCurrent = _stepsTotal;
            _0e1bc13a989d12a3776df86c();
         }
         else if(_loc1_.locationModel.locationConfig == _24fc30cfc3c855ea21a231e8.LOCATION_2_RIO)
         {
            this.stepCurrent = this._1e458de48555f0bbd46338ce;
            _6bf6e74dbd194542dc723dc7();
         }
         else if(_loc1_.locationModel.locationConfig == _24fc30cfc3c855ea21a231e8.PRIVATE_HOUSE)
         {
            this._9f3084471122d880fe028d7d();
            this.stepCurrent = this._d61e4c5c2580a435586be459;
            _6bf6e74dbd194542dc723dc7();
         }
         else
         {
            _0e1bc13a989d12a3776df86c();
         }
      }
      
      private function _9f3084471122d880fe028d7d() : void
      {
         var _loc1_:_d1ac35bdca78006e84f51a32 = null;
         var _loc2_:_33aca7ac1e49b5f2d10a6bbc = null;
         var _loc3_:Object = null;
         var _loc4_:Object = null;
         var _loc5_:_c24229eda44b942058106fae = GameSwf.currentLocationDialog as _c24229eda44b942058106fae;
         var _loc6_:* = int(_loc5_.controllerInterior.items.length - 1);
         while(_loc6_ >= (0x7BC3FEC6 ^ -1059975661 ^ -278612320 ^ 0x54754675))
         {
            _loc2_ = _loc5_.controllerInterior.items[_loc6_];
            _loc2_.removeItem();
            _loc6_--;
         }
         var _loc7_:Vector.<_d1ac35bdca78006e84f51a32> = app.user.inventory.decoration;
         var _loc8_:_d1ac35bdca78006e84f51a32 = null;
         var _loc9_:_d1ac35bdca78006e84f51a32 = null;
         for each(_loc1_ in _loc7_)
         {
            if(_loc1_.decoId == _a1e0e2bf54cc08cc6a7d5b7c.ER_DECORATION_SIMPLE_WALL_1 && _loc8_ == null)
            {
               _loc8_ = _loc1_;
            }
            else if(_loc1_.decoId == _a1e0e2bf54cc08cc6a7d5b7c.ER_DECORATION_SIMPLE_FLOOR_2 && _loc9_ == null)
            {
               _loc9_ = _loc1_;
            }
            else if(_loc9_ != null && _loc8_ != null)
            {
               break;
            }
         }
         if(_loc8_ != null)
         {
            _loc3_ = _loc5_.controllerInterior.currentWall;
            if(_loc3_ == null)
            {
               _loc5_._6f2c5ad50cdf46d9f856c5f3(_loc8_.id,_loc8_.infoId);
            }
            else if(_loc3_.id == _loc8_.id && _loc3_.itemId == _loc8_.infoId)
            {
               app.user.inventory._e2f68d744b0ec311d822fe2e(_loc8_);
            }
            else
            {
               _loc5_._6f2c5ad50cdf46d9f856c5f3(_loc8_.id,_loc8_.infoId);
            }
         }
         if(_loc9_ != null)
         {
            _loc4_ = _loc5_.controllerInterior.currentFloor;
            if(_loc4_ == null)
            {
               _loc5_._6f2c5ad50cdf46d9f856c5f3(_loc9_.id,_loc9_.infoId);
            }
            else if(_loc4_.id == _loc9_.id && _loc4_.itemId == _loc9_.infoId)
            {
               app.user.inventory._e2f68d744b0ec311d822fe2e(_loc9_);
            }
            else
            {
               _loc5_._6f2c5ad50cdf46d9f856c5f3(_loc9_.id,_loc9_.infoId);
            }
         }
      }
   }
}

