package com.ax3.fishao.view.wrappers
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.display.wrappers.ShiftWrapper;
   import com.ax3.display.wrappers.impl._eb2314ffc37429732989b460;
   import com.ax3.fishao._67282af25befe9778e5c8dd1;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.text.TextField;
   
   public class _495a4cd55e3d4aea65c36762 extends Sprite implements _ea2aef44ec86cf38585d9339
   {
      
      private var _asset:MovieClip;
      
      public var date:TextField;
      
      private var _6d3ac9046a6e7a959d25a4c7:_eb2314ffc37429732989b460;
      
      public var username:TextField;
      
      public var itemTraded:TextField;
      
      public var itemReceived:TextField;
      
      private var _614f795c4727a85204f2ebff:_eb2314ffc37429732989b460 = new _eb2314ffc37429732989b460();
      
      private var _99259121304c5d68abd7d41e:_eb2314ffc37429732989b460 = new _eb2314ffc37429732989b460();
      
      public function _495a4cd55e3d4aea65c36762(param1:Class)
      {
         super();
         this._asset = new param1();
         addChild(this._asset);
         this.date = TextField(this._asset.getChildByName(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("၎ბၹဠრშჷკ჋ჰဩ႒ჀႠ၎Ⴇ","၈ၓ့ჲსფႊႫဂၻႠၓႊၕဍဿ")));
         this._6d3ac9046a6e7a959d25a4c7 = new _eb2314ffc37429732989b460();
         this._6d3ac9046a6e7a959d25a4c7.tooltipConfig = {(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("მီႸ့ကီဉ჎ძႜၟဤႌၻႻ჉","ၖြၫလჷၗႏႾႹၝၟჅၿ႔Ⴀၙ")):""};
         this._6d3ac9046a6e7a959d25a4c7.mouseChildren = false;
         ShiftWrapper.shiftDisplayObject(this.date,this._6d3ac9046a6e7a959d25a4c7,true);
         this.username = TextField(this._asset.getChildByName(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("分勀则刅刈刻劈剿别勡勶勡劎剏剎勴刄劵刍勤劦劇勐刵","剎剃刞別割剮勩勩刿勓剴剿剢劐剽剷")));
         this.itemTraded = TextField(this._asset.getChildByName(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("Ⴄၙၢ၉ၢ၂ယჯေ၉ႈႱკფჸၙၙဥၮၾჩ၄၄၃ၹၫ႐ჵ","ჰၕၱ၎ტၤ႘Ⴏၗ၃ၔဵဲႜ႗Ⴢ")));
         this.itemReceived = TextField(this._asset.getChildByName(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勯刼刃勦势劚剎剂刋剐刊劜勱劥剱剃勽剒勫剃刐劋劝勏利刀剷創劜刮剤剟","刕刺务剁劶刜刞劒剒劏剥創剥劝剭剦")));
         this.itemTraded.mouseEnabled = false;
         this.itemTraded.parent.addChild(this._614f795c4727a85204f2ebff);
         this._614f795c4727a85204f2ebff.addChild(this.itemTraded);
         this.itemReceived.mouseEnabled = false;
         this.itemReceived.parent.addChild(this._99259121304c5d68abd7d41e);
         this._99259121304c5d68abd7d41e.addChild(this.itemReceived);
      }
      
      public function update(param1:Object) : void
      {
         var _loc2_:Array = null;
         var _loc3_:int = -172893105 ^ 0x6620A59D ^ 0x6C16C02C ^ -7882242;
         if(param1.hasOwnProperty(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捜揔挸捁挲捡挠揜揄掚掊授揂捗揪掋按捱揵挅揭捼揷揜掰揶捬挾","捣捋挧掮揨掖捿揬揳挍揶掙揲挼捡掞")))
         {
            this.date.text = _c2ad9d37d7be0097d6d2e977._8b1d7fc46fc7ed5e413daf7a(param1.timeAgoSec,true);
            this._6d3ac9046a6e7a959d25a4c7.tooltipConfig = {(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剏刳刁剝剺劫剀別劷勍勽劈劒刜劆剉","勵刍刪劭劻勃刂刲剺刑功务则刅剺剣")):_c2ad9d37d7be0097d6d2e977._e7ea8192c5aef265a8636557(param1.timeAgoSec,true)};
         }
         else
         {
            this.date.text = "";
            this._6d3ac9046a6e7a959d25a4c7.tooltipConfig = {(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捬掱捍挤掽掗掙揮捊捨捓掮捊掍捅揷","捓掇挎掖捳揱揚挠掷捎挆掁捜捔挠挫")):""};
         }
         this.username.text = param1.opponent;
         this.itemTraded.text = "";
         var _loc4_:String = "";
         if(param1.hasOwnProperty(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揄挛挝揕掾捽掽挡掽挅揮揮挝掶揀捃探挗挫捣控挊持挆捌捑掜揜捭挖掚揕揲挖握挏","揖掟捌挧振捧揜揕挭掟掠挨挟揽提挲")))
         {
            _loc2_ = param1.givenResources;
            _loc3_ = 0x0929161C ^ 0x1D711D36 ^ 0x5C44617E ^ 0x481C6A54;
            while(_loc3_ < _loc2_.length)
            {
               if(_loc3_ == (-1900757817 ^ -1230456216 ^ 0x0B8E80B4 ^ 0x3392861B))
               {
                  this.itemTraded.text = _c2ad9d37d7be0097d6d2e977.get(this._be41640d73232764ca7420f8(_loc2_[_loc3_])) + _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ႇဌ၊ქမდုၫႫၭႫႀ","ူႫჍ။၃ဲ္၏ဳးႤႀჹဉဧႱ") + _loc2_[_loc3_][_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("採揣挞挳捰捝挠掌揧挷捇揫捣接揫捍挕揄挺挍捗掲掕掺","捷掓挾揇捏掇挩揨捩揔挞揀捂揼揤揥")] + _95da7f1147c669197db81295._8f4866de82b7339154180ecb("务剧剂剘则剥勮勁刅勅","劉则剙劒剧加勁剴剢剖剨劫劌剤力劊") + (_loc2_.length > (0x0D0B9AC7 ^ 0x7959A06B ^ -1676879090 ^ -396435037) ? _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捝捔捗挎掻捏揢揋掗换挡捴揫揷捱挹","揮挒探掉挗揇捶捤掗捿捵揶捤捀捦捚") : "");
               }
               _loc4_ += _c2ad9d37d7be0097d6d2e977.get(this._be41640d73232764ca7420f8(_loc2_[_loc3_])) + _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揆揿挚挽掮掬捛捉揚掁损揸","挍揶挓掘揈挡捺掆揹据揥挔揿援掋掌") + _loc2_[_loc3_][_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揃据捀掣捳挶捞揼捂挳揕揗掆掰挔揰揅換揱捽挛挃掽掫","揇掍捽挂掅掕掓揅捅揠握揋挚捂挒掍")] + _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ု်ოဟ၅Ⴊეၷ႔Ⴄါო","ၼႅႈჽထႭႝႌဆၪქნჴ჻ဵဥ");
               _loc3_++;
            }
         }
         this._614f795c4727a85204f2ebff.tooltipConfig = {(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劁刯刘判勱勇動势劑勄劚勃勶剴刏刹","剜勿劒剎剮劔勦刉劉勽刹動剏剦剁剿")):_loc4_};
         this.itemReceived.text = "";
         _loc4_ = "";
         if(param1.hasOwnProperty(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捬揥捐掄挰捆捻捐挃掔捀捠掤捧捻捅捩捀挪捛揙揃挼揳损指挗捻揺授探掉掙掄挴揸掽挱掗掙挂捹","揚掜揸指捻挃掜掝揇据揚掫捸揆捴捴")))
         {
            _loc2_ = param1.receivedResources;
            _loc3_ = -1545369853 ^ -1440033712 ^ -952876693 ^ -822275528;
            while(_loc3_ < _loc2_.length)
            {
               if(_loc3_ == (0x3EF273C0 ^ -1691195999 ^ 0x6154C093 ^ -996878606))
               {
                  this.itemReceived.text = _c2ad9d37d7be0097d6d2e977.get(this._be41640d73232764ca7420f8(_loc2_[_loc3_])) + _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ႏ႟ၞႠ၀Ⴊၜႃၚဆ၊ဤ","ဵძႋჭၫၖၛႅႜထၽႱဉ၇Ⴢ႕") + _loc2_[_loc3_][_95da7f1147c669197db81295._8f4866de82b7339154180ecb("刦剭勀前勩加刉剓劼刳勜勔刂勒劫剢勈分勣劍勸刂剦劋","剻剻劧剒剮剪剭刞刖刡動勭勷劉刳刐")] + _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掫挨揓揫揞捜捤挎挝挐","据掜挘挲捗掑挫捍掱掑揕捷捼揲掾掍") + (_loc2_.length > (0x3E70705B ^ 0x3BE62285 ^ -1763147288 ^ -1820404937) ? _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ဿၵႿဳဃဘဴဟႹ၍იႬღ၃ჲ၇","၈ჍကႚმႼჂჭ႕ဠ၀၏ႳႝၕႲ") : "");
               }
               _loc4_ += _c2ad9d37d7be0097d6d2e977.get(this._be41640d73232764ca7420f8(_loc2_[_loc3_])) + _95da7f1147c669197db81295._8f4866de82b7339154180ecb("削刭分列効刘勼刼劖剐勃势","劍勱刵势剴制刲劁勋剏勲剘劇勵切刪") + _loc2_[_loc3_][_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၗჟၤခၲფၒ჆ဴဝႹ႐ႛჍ႞჉ုႉႌფဗဘ၄Ⴒ","၄ჼစჽၻဘႂიြဌဖၔჇွၛူ")] + _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捌揮揺插揟掏挵挵掃捊掖捒","挍挚挖捺捝揖捣掍捫揪挮掤挾揇挺捙");
               _loc3_++;
            }
         }
         this._99259121304c5d68abd7d41e.tooltipConfig = {(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("刎则刊劆劵剆刈剽勂剿劉劓劝创刞势","剅劈勏剔劍劉刏券劂刷剅剐到刃劲刃")):_loc4_};
      }
      
      private function _be41640d73232764ca7420f8(param1:Object) : String
      {
         var _loc2_:int = int(param1[_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ჾႽၭႈႤქၶႏკთ჆႔","၌ၴჯ၌ႰဗနဲჂၿၾဟၼ၇ႎ၍")]);
         switch(param1[_95da7f1147c669197db81295._8f4866de82b7339154180ecb("刐劔勰剔劾勂励剠剖勎劔初剉剧勥勧","剗勱劤劯勇刣剱剹刾剞刊力勎剉勰利")])
         {
            case _67282af25befe9778e5c8dd1.BAIT.id:
               §§push(0x5352E758 ^ 0x33A5C7CB ^ -110225010 ^ -1718011619);
               break;
            case _67282af25befe9778e5c8dd1.FISH.id:
               §§push(-626525945 ^ -1977272381 ^ 0x089B851A ^ 0x58194BDF);
               break;
            case _67282af25befe9778e5c8dd1.FISHCOINS.id:
               §§push(-1146880794 ^ 0x4ED5E803 ^ -1726619143 ^ 0x6C63F51E);
               break;
            case _67282af25befe9778e5c8dd1.FISHBUCKS.id:
               §§push(-581923482 ^ 0x0FEE92AE ^ -1348524169 ^ 0x7D2138BC);
               break;
            case _67282af25befe9778e5c8dd1.DECORATION.id:
               §§push(-575676177 ^ 0x041463C7 ^ -1777233061 ^ 0x4FAA1077);
               break;
            case _67282af25befe9778e5c8dd1.OTHER.id:
               §§push(0x1A31B0A2 ^ -1361687406 ^ 0x2FD97EED ^ -1690402088);
               break;
            case _67282af25befe9778e5c8dd1.FISH_RADAR.id:
               §§push(0x48CC9FD1 ^ -2031138853 ^ -1265984127 ^ 0x7AA9458D);
               break;
            case _67282af25befe9778e5c8dd1.LUCK_POTION.id:
               §§push(0x70457214 ^ 0x68E5E470 ^ -749730329 ^ -873426044);
               break;
            case _67282af25befe9778e5c8dd1.MAGIC_WATCH.id:
               §§push(0x09554F8C ^ 0x17CD7BE3 ^ -445794930 ^ -67796503);
               break;
            case _67282af25befe9778e5c8dd1.EXP_BOOSTER.id:
               §§push(0x1BF1EFF0 ^ 0x67F00B87 ^ -484282119 ^ -1625058169);
               break;
            case _67282af25befe9778e5c8dd1.SHINY_POTION.id:
               §§push(0x3BC045A8 ^ -739410422 ^ -283850449 ^ 0x0739F287);
               break;
            case _67282af25befe9778e5c8dd1.POWER_BOOSTER.id:
               §§push(-386867076 ^ 0x184E3AA3 ^ -231349818 ^ 0x028B3B12);
               break;
            case _67282af25befe9778e5c8dd1.FISHBOX.id:
               §§push(0x50D15893 ^ -1768410121 ^ -1257188185 ^ 0x7359BFCF);
               break;
            case _67282af25befe9778e5c8dd1.ROD.id:
               §§push(-186729642 ^ 0x73B1C9F3 ^ -1126891833 ^ 0x3BBB8C6F);
               break;
            case _67282af25befe9778e5c8dd1.CLOTHE.id:
               §§push(0x1DFD480D ^ 0x66CBA98B ^ 0x713569ED ^ 0x0A038865);
               break;
            case _67282af25befe9778e5c8dd1.FLOAT.id:
               §§push(0x0581745C ^ 0x3E94441B ^ 0x6D1D3CD2 ^ 0x56080C9A);
               break;
            case _67282af25befe9778e5c8dd1.FRUIT.id:
               §§push(-1619110543 ^ -1018107283 ^ -544546131 ^ -2086380127);
               break;
            default:
               §§push(-2098233332 ^ -505249988 ^ -723381214 ^ -1209013501);
         }
         switch(§§pop())
         {
            case 0:
               return _95da7f1147c669197db81295._8f4866de82b7339154180ecb("动刯劲剝剃剏勨剨劺剙勤劷剥剏勧割劊删","刅剎勍勃劾劄勣創券分剽劂勊劲劸初") + _loc2_;
            case 1:
               return _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၺშႵ၀၌ჵბႱჹဝဗႶႛၸႵဖဉၒ","ჀკၝၷဂႠႦჳဍၹიჂၔწၭဴ") + _loc2_;
            case 2:
               return _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挰挞捡捋揦挼揯措揎掀捨揑掇捄掴挫掎掑挮损捏揓捤挚揇挟掟挹","挏挑掎挣掎挽捚指捧掐揸挡挕挴捛掆") + _loc2_;
            case 3:
               return _95da7f1147c669197db81295._8f4866de82b7339154180ecb("勮劥剃刃剀利务刋勒刟剕劢剻勆労剛务到功勥劣勇劥勋判刉勐刂","剟劵剨劄勞刔劵刂勯勊勢勎割刵劍刊") + _loc2_;
            case 4:
               return _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ဇ჻ြၮ၈ဵრო၄ၾ჋ၰႵယဲ့ဃႊၹဣმჷ၎ၝႈ၉ၚჇႴၟ","ၺ၈ც၀႖၆ၣဌႫ႗ၝ႑ဈ႟ငყ") + _loc2_;
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
               return _95da7f1147c669197db81295._8f4866de82b7339154180ecb("劺剏剕刾剉勞利勾剄劑勗刓刂劒剁勄勦効勒刚剩劐劰刉勂劤","労到劤剅剑勁剺剀劶劉剾刦勴劲刢劔") + _loc2_;
            case 13:
               return _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ဿႄၲၝႲჅ႕ဢၭ၌ჸဥႧၬြႷ","ခၩာြႈქჯ႒კႾဠკပႢდဘ") + param1[_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ჶဩლၬၓႣ၂ျႺဏၦႡၙႲလဵႉၘტဎ၉ိქဒၼက","ႛဗၢ႑Ⴒ်ှႿჄနဉ၁ლႚიၱ")];
            case 14:
               return _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挙揚捕挢捠捧捀掫揾揻掫挅捒捾挔揑捗挑捥捛","挢捃揰捪损捰揹挣捚挀掸挓捤掦掫捡") + _loc2_;
            case 15:
               return _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("နჸာဪၡဤှါၿ၎ႀჼႄႏჳ႓ဳჸ႓ဖ","შၪჭთဢဈ်Ⴗ၆ႊၿ႗ၬႡ၂ჩ") + _loc2_;
            case 16:
               return _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("၍းထႍခჄၩვფၢ႒ၣႧဤჟၸၚဥဂၿ","ႀჾჩဧრჵၵცရၩႄჃ႗Ⴀ၌უ") + _loc2_;
            default:
               return _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("჏჊ჩံიჺობဘၽျႤဖ჋ိႰ၃მფ႙ဖၣ","ჴႰႇဝ၀ဘჽდ჋ၚ႘င႘჆ယႯ");
         }
      }
   }
}

