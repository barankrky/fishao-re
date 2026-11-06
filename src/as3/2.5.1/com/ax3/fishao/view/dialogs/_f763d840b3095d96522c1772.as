package com.ax3.fishao.view.dialogs
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.fishao.Config;
   import com.ax3.fishao.control.managers._3a8a2602dcf9bf49b62e62af;
   import com.ax3.fishao.control.managers._546478a0ebe6f447d8faeff7;
   import com.ax3.fishao.display.dialogs._301b6b096d193294bbd60d6d;
   import com.ax3.fishao.display.dialogs._6691abcab801c2433d32324a;
   import com.ax3.fishao.model._3f4737ed54f687ba620c6ace;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.wrappers.impl._4a306accb768c5f549bf6c1f;
   import com.ax3.fishao.view.wrappers.impl._56e4c27d5004e52ae446ebbb;
   import com.ax3.fishao.view.wrappers.impl._6e29939ae45bb280914eb272;
   import com.ax3.fishao.view.wrappers.impl._89027603939c39853027fd04;
   import com.ax3.fishao.view.wrappers.impl._e3d16e44e787d36bd0c38e74;
   import com.ax3.fishao.view.wrappers.impl._e8798cc6b38bda4d1c07c41a;
   import com.ax3.utils.timer._34a2ba6ad978d976b8b0f5a4;
   import com.ax3.utils.timer._69eec7d2f73604da25ccda04;
   import com.ax3.utils.timer._92d7656ddc3c3da810e99c74;
   import com.junkbyte.console.Cc;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.TextEvent;
   import flash.geom.Matrix;
   import flash.geom.Rectangle;
   import flash.text.Font;
   import flash.text.TextField;
   import flash.text.TextFieldType;
   import flash.text.TextFormat;
   
   public class _f763d840b3095d96522c1772 extends _00b2a2ee75c230d52f69d08c implements _69eec7d2f73604da25ccda04
   {
      
      private var _ca9a204ff7572dc822afeada:_56e4c27d5004e52ae446ebbb;
      
      private var _bf4edcdeb6b3f2c1b7095ab1:_56e4c27d5004e52ae446ebbb;
      
      private var _b53571e88887d12962805239:_56e4c27d5004e52ae446ebbb;
      
      private var _12f36c123b7b7bd8291d408e:_6e29939ae45bb280914eb272;
      
      private var _3e710cbab56536befe88f010:_e3d16e44e787d36bd0c38e74;
      
      private var _e1bae92e971a85a78f2eb68b:_e8798cc6b38bda4d1c07c41a;
      
      private var _ced701f813b1f99dfd7bc15f:String;
      
      private var _8880f4326fb4dae35cc6a741:_3f4737ed54f687ba620c6ace;
      
      private var _0e68b694ee437f68e6d62763:Number;
      
      private var _d646989973acaf7dab719bc6:Number;
      
      private var _558105f12a9408b51c3fe030:String = null;
      
      private var _ba3550a785bdd8a543b28d7a:TextField;
      
      public function _f763d840b3095d96522c1772()
      {
         super();
      }
      
      private static function _e02623af28f3d4911c3711ac(param1:String) : String
      {
         return param1 == null ? "" : param1.replace(new RegExp(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("წဠ၏ႇီၬႇဣ၃ဟႯႋဆဣფႊု႒჈ယၞ၆შ၍Ⴤၺ","ျ႓ႊჀၢႵၹဵၦျნ၎჊ၧၢြ"),_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("Ⴌ၃ဴၴ႞္ါ၎ოီ","ႹჂႇႩၔ၍ၴჇჴၢဈဖၤဍႻა")),"").toLowerCase();
      }
      
      private static function _4581faaf94a801a59c1113f3(param1:TextField) : TextField
      {
         var _loc3_:TextField = null;
         var _loc2_:TextFormat = param1.length > (-1776442159 ^ -329508986 ^ -1988550716 ^ -214389613) ? param1.getTextFormat(0x7FA91452 ^ -1833366544 ^ -550561474 ^ 0x323F069C,0x6514780A ^ 0x11189282 ^ -713427924 ^ -1586159963) : param1.defaultTextFormat;
         _loc3_ = new TextField();
         _loc3_.embedFonts = param1.embedFonts && _30ce14fa788d362257c9999c(_loc2_.font);
         _loc3_.antiAliasType = param1.antiAliasType;
         _loc3_.gridFitType = param1.gridFitType;
         _loc3_.sharpness = param1.sharpness;
         _loc3_.thickness = param1.thickness;
         _loc3_.defaultTextFormat = _loc2_;
         _loc3_.filters = param1.filters;
         _loc3_.multiline = false;
         _loc3_.width = param1.width;
         _loc3_.height = param1.height;
         _loc3_.x = param1.x;
         _loc3_.y = param1.y;
         return _loc3_;
      }
      
      private static function _30ce14fa788d362257c9999c(param1:String) : Boolean
      {
         var _loc2_:Font = null;
         for each(_loc2_ in Font.enumerateFonts(false))
         {
            if(_loc2_.fontName == param1)
            {
               return true;
            }
         }
         return false;
      }
      
      private static function _4811ee8c2c2d2763816bf897(param1:DisplayObject) : Bitmap
      {
         var _loc5_:Bitmap = null;
         var _loc2_:Rectangle = param1.getBounds(param1.parent);
         var _loc3_:BitmapData = new BitmapData(Math.max(-1140031252 ^ -998095344 ^ -1371121605 ^ -691495226,Math.ceil(_loc2_.width)),Math.max(-1175455776 ^ -14614698 ^ -1341457527 ^ -154799298,Math.ceil(_loc2_.height)),true,0x3AD3B833 ^ 0x3D602EC1 ^ 0x2E0D8503 ^ 0x29BE13F1);
         var _loc4_:Matrix = param1.transform.matrix.clone();
         _loc4_.translate(-_loc2_.x,-_loc2_.y);
         _loc3_.draw(param1,_loc4_);
         _loc5_ = new Bitmap(_loc3_);
         _loc5_.x = _loc2_.x;
         _loc5_.y = _loc2_.y;
         return _loc5_;
      }
      
      override protected function _935ac2966ddad68dfc449202() : void
      {
         var _loc1_:Object = null;
         var _loc2_:int = 0x1DE74CD4 ^ 0x69CE679A ^ -1788567129 ^ -515011863;
         floatsList.visible = false;
         settingsFloatOpt_6.visible = false;
         settingsFloatOpt_7.visible = false;
         settingsFloatOpt_8.visible = false;
         settingsFloatOpt_9.visible = false;
         title.text = _c2ad9d37d7be0097d6d2e977._a1824cf8cfedd1c4a5e49576(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ါႭၶၨဎჷႿმၘဃဴႀဒ჉ჩ။Ⴉဋ႞თဝႡჹფ჆ღဤ၅უဤႽ၃თე","ဿဉვ჆ტჁႷတဵ႕Ⴠ၆စთႻၢ"));
         settingsCharEditorButton.label = _c2ad9d37d7be0097d6d2e977._a1824cf8cfedd1c4a5e49576(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勤刨動剕劂刨刻刋刋刡劸劧劃勝劏劻前劢剂勍劃勢剘劇勲劚劫劒劲勼则勛分勪勢刧剅劺剚勋勁劓剅剢勭創則勧刟勰劣刾剘剮勠剒","刪剤剔劾剌勞勪勮勖剅剋刌劀剈刷勵"));
         settingsSaveButton.label = _c2ad9d37d7be0097d6d2e977._a1824cf8cfedd1c4a5e49576(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၕၰჴფၐၜႜნႹဒၤဩအၜ႞၏Ⴔჵသဝჷႛႛႜၲဂယჟၲფဧ႘ႷလჩလႫထၒჶတႥာ჉","ဗჳ႗჎ၛု႗စႛႼ႕ညႳၹၚქ"));
         settingsProfileLabel.text = _c2ad9d37d7be0097d6d2e977._a1824cf8cfedd1c4a5e49576(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掬挌挫捷捜挽挳挓挾挴握挞描捶揻捽揀捈揺捀揿掮掎掂损挬揈揔揝捊揠挑掯捴挽揶掜揌掫捤挣掇捼挲握掙挡掛","揧挹掣挻掚损掍掼捲掍挥持掏揟援揟"));
         settingsDateOfBirthLabel.text = _c2ad9d37d7be0097d6d2e977.get(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ჿჴၮဍკოიဤဳႪႿვნၙႻၐრးძ။ႰჿႛၾჷჶთႺမႵၕჟအဲဆ჏ဗၫი႐჆ၼႋၛჇၔ჋ჩႇოငၩჾွဟႁ","ငႺှნლჍჼႛႊၙၨ჊ၭၚ၍Ⴙ"));
         var _loc3_:int = settingsYearDropdown.x - settingsDayDropdown.x;
         var _loc4_:int = settingsMonthDropdown.x - settingsDayDropdown.x;
         settingsDayDropdown.x = settingsDateOfBirthLabel.x + settingsDateOfBirthLabel.textWidth + (0x4B3AF577 ^ -434772258 ^ 0x4856C011 ^ -445000782);
         settingsMonthDropdown.x = settingsDayDropdown.x + _loc4_;
         settingsYearDropdown.x = settingsDayDropdown.x + _loc3_;
         settingsShowDateOnProfLabel.text = _c2ad9d37d7be0097d6d2e977.get(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挥捡挝捲捘掭捜振挝挖掭掲掃揵捒捃揬揢挮挤掓揻损捈捍描捽捵掿揘捼掇掙掃掩揵揮捜挟揖掋捦掐掙提捬揤掘捥挬捜挪揳掑挾捥挭掐挡掁挆挭","挢揶挈掁揂掊挨按揷揲揬掔换掄掞援"));
         settingsEmailLabel.text = _c2ad9d37d7be0097d6d2e977.get(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劎劉勿剔勼剋剀剗刈切剿剾刘剜剻務券剱刋劰劀勪勇勗刂勲則別刄剦剣力勳剼劊副勋刪劮勬功剤勝剫","剟到剘剟刉剢剶劮切剏勉剏刬剗勍剻"));
         settingsEmailFieldBg.x = settingsEmailLabel.x + settingsEmailLabel.textWidth + (-1815505409 ^ 0x56627332 ^ -184984052 ^ 0x3152B8CB);
         settingsEmailField.x = settingsEmailLabel.x + settingsEmailLabel.textWidth + (0x106A7F9C ^ -1901891394 ^ -1741713349 ^ 0x06E69F17);
         settingsShowMailOnProfLabel.text = _c2ad9d37d7be0097d6d2e977.get(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勏刜勳刳劰刓劳剜勺勄剿剎勈劙刬劣勈勇勛劽刣劕劝剹勉剖动刓刬勉劅别剞功勧刘勀創勁办勀刟勆刘删勇勯剻劺募則勎刐勼刁前则剔勠刘刜則","动劼劏刢勔勴創劝劼剹劊劘剉制务刕"));
         settingsShowInventoryOnProfLabel.text = _c2ad9d37d7be0097d6d2e977.get(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掫捃挎捶挣挂换掍揼掼捫揢揞採推挣掁捬捬推捱挨挺掶挟掳揈揅换捤揟掣挃掰掯掿挶挭捷挏揇揝掺掻掼掓揶掊挑捯掘揨掝揎揨探掶揽挗揦掽挝挎捡捣挩掜揸揅掉捋掮","指授捞揯揌揣揵揊捬捅挌揿掬挞掠掅"));
         settingsLocAndTimeLabel.text = _c2ad9d37d7be0097d6d2e977._a1824cf8cfedd1c4a5e49576(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揚捾捺掁揓捴挋挗掘揭掦捀揋挭揲挦捗挮揙捵揕挹揑掤掔挀探揁掷捸掾捑捎挨挾掽捬揍揹揭挪掛挒捝挢挺掍揤挭揉揗掑掣揈","揠揣捇推揧揚掭揜掋掬揫掭挿挒揪揗"));
         settingsTimeFormatLabel.text = _c2ad9d37d7be0097d6d2e977.get(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剙勠劃勡刚勨剻列勱募勝刎剼労剳剭剖刷勨剅勾剭剞刜刞刈刦剆剅削勚剁劘刢劽勷剴勘刅勚剧劬剦劾剘勝劤勽劼勤勚剱勯刑","勜削勝劭剰剩勀勆勣到勶刖剏到勅剠"));
         settingsAmPmLabel.text = _c2ad9d37d7be0097d6d2e977.get(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掣捡挎捪插挭揔捋捌掫持挆揙捆揵揱揫掓捗挷掘掞捗挊捐捀捙捫援揙掑揱掉揱掹捯捕捄挨捯掊捥","捸掋掺揧捆掚掛掴掣捾捎揄握揌挩掜"));
         settings24hourLabel.text = _c2ad9d37d7be0097d6d2e977.get(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掸挑捓揦揈握挡挳揠捎捼捬掣挝掳揯掮捃揽捖挪捾挨挴掅挗揕挂掽捾捊捛捂捎捪捘捊掺提揳揃捩捚捊挏捖","捄掔捸挆挈捁挌推揁挺捿掐捽捡掭挘"));
         settingsUnitsLabel.text = _c2ad9d37d7be0097d6d2e977.get(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၽჿსဟါ၉Ⴚ჏ၝ჋့ႲფႹლ၃်ဉၷႳხီဪკႄႢၪႚ჎ထპ႕ၨဤၱბ၉ჁმვၩჀႫრ","ႲညჁ၃ႊထႱ჌჉ဨၾჼႣဒၮႭ"));
         settingsFeetLabel.text = _c2ad9d37d7be0097d6d2e977.get(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掅挿掐掝挛捐挙揀挀挩挖挾捚掓挰掂捿挊揬挶捪挷挤揬掊挴掣掑揯捎捝掤挋揾揑揵掾掆捷挚掌推","挧揓挭捌揻挍揿揋捞描揖掞揪排挊掏"));
         settingsCentimetersLabel.text = _c2ad9d37d7be0097d6d2e977.get(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捛捼挄捵揿掠捳排捳揂揆捖挏持揨捆掘挴捥揌掑掹捣推揍掏挖捅挢捍掩揑捄掊揶挑揭捱挒掳掯捤揬揃掯挺掤揑揢捴揯掣掷捥挆按","挾揄捂掄掸揖掬振掳掰捺掯挱挹揎掮"));
         settingsLanguageLabel.text = _c2ad9d37d7be0097d6d2e977.get(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("提据捤挹振挚揚挸挿挏掶掸揵指掾捨插挦掳挏挩掤捒捖揗挂揶挡捋掭探掫捋捾挦挂捨挄指掿捈挭掜捬掵揑插掰揣揷","描掜挮揽挢掳握揯掌接挄揢揁措挢捪"));
         settingsCountryLabel.text = _c2ad9d37d7be0097d6d2e977.get(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("Ⴥထ႔ჂჵဥၯႁႧး႗ႋႌဇႂ჋ၹၴၦჽၽဿი၎ဝჸ჏ႧဝၣმႜႪဝ჻ဃဍဩဏ၂ႝဖ္႑ဎႝშၿ","ၡၮဃဘၽဎ႓ညဆၢဓႨဗၡၽၧ"));
         settingsTimezoneLabel.text = _c2ad9d37d7be0097d6d2e977.get(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("刀剆劍勦勊劗勫劦劥刈動刔刢劚制劃勫劏刟勃剩剖剝刜刡剈刖劫剺制刈勉剽剃剿劺勶剾勂割判刈勱刳劧副劊勈剱剩","剕劙刲勜勬剑剽刦劈务剆切勛刽劔剩"));
         settingsYouCanChangeLabel.text = _c2ad9d37d7be0097d6d2e977.get(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剧剞刢到刬劭勹劥剗勻剖創剕劬励刀勫剛剜勜剾剢動勬剢刉劤剐劵刮勋利勳务勪剗勠刍劌刀剷刴剑刄剒劏勡刱刀切劧勋刓剺劥刐剰剚","刨劖勋勢剦勨勺刅刁勴劰劶刨刊勂刦"));
         settingsSoundsLabel.text = _c2ad9d37d7be0097d6d2e977._a1824cf8cfedd1c4a5e49576(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ႆဣკ်ჴၘၶლႽႡးაპზႀჩၾၨჱအ႑ၫနჸდ၍ယვၒ႑Ⴡ၀Ⴡၺႄၡၑၚဩ၁ဃၿၛჱၫၓ","ႅჵ၄ႳჺၩိႷႳဖႾဟტ႗ႪႡ"));
         settingsBackMusicLabel.text = _c2ad9d37d7be0097d6d2e977.get(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劝刑劙副劉割划劎勻勱勬列刕剅劂努剐剋劖勴剈劳刈创劧剬剞剡動列剩劔删券剅剒到剨刜分剃删刯剹刿勳劎勳剡勪劤劤","办剆创剷刭勼別剁刘剾划勛创勌刽劭"));
         settingsSoudEffectsLabel.text = _c2ad9d37d7be0097d6d2e977.get(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("Ⴊဍႁ჌ჭ႟ါხာჱ၁ၛဟၻშჸညဖჳည၁ူၠဢဗ့ယႺშႻ၈႙႘ဈဦჾ၅ნၟႮၡႏ၇ဟჯ၃၏იၷအမღႊლ႔ჸ","းრჰჭ၉ႲႫၔဆიဿ჏Ⴧၝპိ"));
         settingsFloatLabel.text = _c2ad9d37d7be0097d6d2e977._a1824cf8cfedd1c4a5e49576(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挋捂揝掓捚掽捘揾掙捣捂掙持揌揀掅捥捛挱掫捖挅揆掖掵挑揋挴揵捨挚掩挲握捸捸挊挢捀捽掎捼捶捬","掍捫捦掑损持換揩揜捷揣揉捍揩挏掑"));
         closeBtn.handler = this._ca491082f37458ac4601fe08;
         settingsCharEditorButton.handler = this._7aa2fec72d1e7b1dfbad67d0;
         settingsSaveButton.handler = this._8a6650c27be83f7c3bc7069a;
         changeTimeZoneButton.handler = this._884188936966547433310181;
         this._bf4edcdeb6b3f2c1b7095ab1 = new _56e4c27d5004e52ae446ebbb(settingsTimeFormatOptAmPm,settingsTimeFormatOpt24hours);
         this._b53571e88887d12962805239 = new _56e4c27d5004e52ae446ebbb(settingsUnitsOptFeet,settingsUnitsOptCm);
         var _loc5_:Array = [shapeLines,settingsLocAndTimeLabel,settingsTimeFormatLabel,settingsUnitsLabel,settingsLanguageLabel,settingsCountryLabel,settingsTimezoneLabel,changeTimeZoneButton,changeTimeZoneLabel,settingsYouCanChangeLabel,settingsTimeFormatOptAmPm,settingsTimeFormatOpt24hours,settingsUnitsOptFeet,settingsUnitsOptCm,settingsAmPmLabel,settings24hourLabel,settingsFeetLabel,settingsCentimetersLabel,settingsCountryDropdown,settingsLanguageDropdown,settingsSoundsLabel,settingsBackMusicLabel,settingsBackMusicSlider,settingsSoudEffectsLabel,settingsSoundEffectsSlider,settingsFloatLabel,settingsFloatOpt_1,settingsFloatOpt_2,settingsFloatOpt_3,settingsFloatOpt_4,settingsFloatOpt_5,settingsSaveButton,floatsList,settingsShowInventoryOnProfCheck,settingsShowInventoryOnProfLabel];
         if(Config.HIDE_SETTINGS_EMAIL)
         {
            settingsEmailLabel.visible = false;
            settingsEmailField.visible = false;
            settingsEmailFieldBg.visible = false;
            settingsShowMailOnProfCheck.visible = false;
            settingsShowMailOnProfLabel.visible = false;
            this.tabChildren = false;
            for each(_loc1_ in _loc5_)
            {
               if(_loc1_ != null)
               {
                  _loc1_.y -= (-650294697 ^ -1270785759 ^ -2144989165 ^ -312867986) + settingsEmailFieldBg.height;
               }
            }
            bg.height -= (-40397653 ^ 0x45357192 ^ -719569112 ^ 0x6DBEDA1A) + settingsEmailFieldBg.height;
         }
         else
         {
            settingsEmailLabel.visible = true;
            settingsEmailField.visible = true;
            settingsEmailFieldBg.visible = true;
            settingsShowMailOnProfCheck.visible = false;
            settingsShowMailOnProfLabel.visible = false;
            this.tabChildren = true;
            settingsEmailField.tabIndex = 0x2D186F2C ^ -145768955 ^ 0x79CE8499 ^ -1550232143;
            this._ab4ba20d0651d8e557e94630();
         }
         var _loc6_:Vector.<_4a306accb768c5f549bf6c1f> = new Vector.<_4a306accb768c5f549bf6c1f>();
         var _loc7_:Array = app.user.inventory._5b6d91fcf4fcef197ef605e6();
         if(_loc7_ != null && _loc7_.length > (0x0D9C3F8C ^ 0x6C77C95C ^ 0x44919F2A ^ 0x257A69FA))
         {
            _loc7_.sort();
            _loc2_ = -1792454962 ^ 0x2856D2E4 ^ 0x5FA2C878 ^ -488811438;
            while(_loc2_ < _loc7_.length)
            {
               _loc6_.push(this[_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("჎Ⴐခၶ჈ၭတဃာဳဗწႊ჏႞ဒှႳ၏იႦၕၛငၴ႓၄႐ჄဦქၼჇစჀႠ჋იၺဌရဍ","ႊႉ႖ဧဃ႔ှ၊ၢဝိქႅၮေ჈") + _loc7_[_loc2_]]);
               _4a306accb768c5f549bf6c1f(this[_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၡჀ჊ၸႧႶဈ၏ყာ၊ွႅၿჴ჻ე၄ဧႢၴဆဦႡგႏჿႩუჃေဇ႑ဨႊဋძၝေႭჩႤ","ႡၗძႴဘႢႃႧჵၪါၝဎဝႉႄ") + _loc7_[_loc2_]]).visible = true;
               _loc2_++;
            }
            _loc6_.push(this.settingsFloatOpt_1);
            _loc6_.push(this.settingsFloatOpt_2);
            _loc6_.push(this.settingsFloatOpt_3);
            _loc6_.push(this.settingsFloatOpt_4);
            _loc6_.push(this.settingsFloatOpt_5);
            floatsList._b2673ff6a620d3e678471f95(_loc6_);
            this._ca9a204ff7572dc822afeada = new _56e4c27d5004e52ae446ebbb(_loc6_);
            floatsList.visible = true;
         }
         else
         {
            this._ca9a204ff7572dc822afeada = new _56e4c27d5004e52ae446ebbb(settingsFloatOpt_1,settingsFloatOpt_2,settingsFloatOpt_3,settingsFloatOpt_4,settingsFloatOpt_5);
            floatsList.visible = false;
         }
         super._935ac2966ddad68dfc449202();
      }
      
      private function _884188936966547433310181(param1:MouseEvent) : void
      {
         var _loc2_:_69c5612b427f31309f3cce9a = app.dialogFactory._10097d9788a126805b4259b4();
         _loc2_.onApply = this._9fdf4552599d418e0d946cfe;
         _loc2_.show();
         _loc2_._058c71927c1c04d32d5b7664(this._ced701f813b1f99dfd7bc15f);
         if(this._558105f12a9408b51c3fe030 == null)
         {
            this._558105f12a9408b51c3fe030 = this._ced701f813b1f99dfd7bc15f;
         }
      }
      
      private function _9fdf4552599d418e0d946cfe(param1:String) : void
      {
         var _loc2_:String = null;
         this._558105f12a9408b51c3fe030 = this._ced701f813b1f99dfd7bc15f;
         this._ced701f813b1f99dfd7bc15f = param1.replace(new RegExp(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劖分劺勱劅剝加勪剁刢","剧劸勀刉刈勿刔剀勇勻勾劑剟勶勀勜"),_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勹刵剁利剅勡劄刡剾勉","勫创勭別勮勲勺剠勒劧劔刀刯勜剮劲")),_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勒勷刺劍勜劸剖剘勵则","助勭刢剋勳划刍勠剄劺剠刘劖勱刳剬"));
         var _loc3_:Array = this._ced701f813b1f99dfd7bc15f.split(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("换挑掳捄捇揙揇揮掗捁","揰掫揿捊挪掠捬揓揫掻揲揎捇插揗挞"));
         if(_loc3_.length > (-853427739 ^ 0x3C04AEEB ^ 0x22382F95 ^ -753059686))
         {
            _loc2_ = app.timezones._dcc56175ccf5faa930b1794c(_loc3_[0x77FDECE1 ^ -318790410 ^ 0x3938D55B ^ -1573216948],_loc3_[0x26DA3CE3 ^ -316686490 ^ -2069250417 ^ 0x4F6C3D0B]);
            changeTimeZoneLabel.text = (_loc2_ != null ? _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掖掫掽揪挽揰挋挚掋捳挚揹捰捆捤揚捑损","接捁換捁挤挓揗捺捧捎挔捆挊捀捐掝") + _loc2_ + _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("探掑揲挏挟揽捊掴挚握挵换","揰揧掇掘揥揤捏揎掎挙援掯揄掽揤揑") : "") + String(_loc3_[0x3E6DA827 ^ -1868337172 ^ 0x46CFF34F ^ -402574203]).replace(new RegExp(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ါჅავၶႮႯၣွၼ","မႛွၐျငႿၷၺဥအ჊ჽႋဗဠ"),_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劑勂勰勉勜剋勦劁効劯","券劒勽勜勒勤剙刈劉剉勒勦剽勐劝劧")),_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("င္ါဃ჊ီႶჭ჌န","၁ၣ၅჆ဳშმ჌ႩႸကဌყႀႌအ"));
         }
         else
         {
            changeTimeZoneLabel.text = this._ced701f813b1f99dfd7bc15f;
         }
      }
      
      private function _8cefac4ae24b7b524a15e521() : void
      {
         this._8880f4326fb4dae35cc6a741 = GameSwf.instance.gameSettings;
         settingsEmailField.text = this._8880f4326fb4dae35cc6a741.email;
         this._8ee5e48c8fea426a4942357d();
         settingsBackMusicSlider.value = this._8880f4326fb4dae35cc6a741[_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劝劺劔勵勹劐创刚劕劤刪劄刭劍劥勮删刼勥切刮势剓勮劝剗","勽劽創刨勘刉刺勐刉劫刕劑剆劳劕劯")];
         this._0e68b694ee437f68e6d62763 = this._8880f4326fb4dae35cc6a741[_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ႷႢႫဠႀჳჇလၑႶၯၡမთႲႩးჟ၅თယყဎ၊စဈ","ဋ္၎ႩჃჯႿႢჇზႂီႧ჊ွჂ")];
         settingsSoundEffectsSlider.value = this._8880f4326fb4dae35cc6a741[_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掬揽掎捏掓掌掊挂掂揙挙捿挃挵掠捪揸捂捕捤捬捝挦揥揼挩揨掆捍掆捼掗","掣挙捽掻损捬挝揌挀捌插捚揺据換援")];
         this._d646989973acaf7dab719bc6 = this._8880f4326fb4dae35cc6a741[_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劕劼剚努劳前勥劢剢劜剎剱劾剷勁剑刲刏勖劎劧剛劽劭副刍划勪剆勮劯利","刱剓剮劄劷剽剞刜勦劦劷剟劢削剅劺")];
         settingsShowDateOnProfCheck.state = this._8880f4326fb4dae35cc6a741[_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劄刲勍刷勁剚勀刨剸勤劚勫剹勀劆勿剾勦劐剟剏劯劲勖剾削剛别勨務勢则到剜","劚勭勄励劧刦剃劍创刐剓勝刂刏刜刀")] ? _89027603939c39853027fd04.SELECTED : _89027603939c39853027fd04.UNSELECTED;
         settingsShowMailOnProfCheck.state = this._8880f4326fb4dae35cc6a741[_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揗挟挢掦挅挵揆掣挥捖挌揬掛掔揋揲掫捒捷挩捸揺掹挾掆揮","揟揪掍捧掭揑捞揚挘据揢挓损揭揆揆")] ? _89027603939c39853027fd04.SELECTED : _89027603939c39853027fd04.UNSELECTED;
         settingsShowInventoryOnProfCheck.state = this._8880f4326fb4dae35cc6a741[_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捌捈掋挬挨揤捆揑揞捨揆捄採授挅揰挞挢揰掁捄掾揥掝挳捰捦掕捼掍挝揁挸揰","揉揌挆捀挫捃掞捑掰挳掝揕掷掝捂握")] ? _89027603939c39853027fd04.SELECTED : _89027603939c39853027fd04.UNSELECTED;
         if(this._8880f4326fb4dae35cc6a741[_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劂刓劄劲劯刕剀剨券剄劼剆劂刮刂剮制刜勾刎刃劢判劷劵勶効刄","剳剑剚劔勛劍剗刹劑划刁刯勴勩剔勓")] == (-300094153 ^ -68602748 ^ 0x01F01027 ^ 0x1405C994))
         {
            this._bf4edcdeb6b3f2c1b7095ab1._ecba9d91ca2826190b796efd(settingsTimeFormatOptAmPm);
         }
         else
         {
            this._bf4edcdeb6b3f2c1b7095ab1._ecba9d91ca2826190b796efd(settingsTimeFormatOpt24hours);
         }
         if(this._8880f4326fb4dae35cc6a741[_95da7f1147c669197db81295._8f4866de82b7339154180ecb("刵劣劫勃剋刔到剬劔力刼刵勽劯劝剳刲劭","劇剂勎剎刺功勍勳剖剱剥劭勐効刡劎")] == _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揂挅揲揝捌捸挓揥捨挏揼捻","捫換掰揙掻挨捁捅掿控掰捇捗掬掜措"))
         {
            this._b53571e88887d12962805239._ecba9d91ca2826190b796efd(settingsUnitsOptFeet);
         }
         else
         {
            this._b53571e88887d12962805239._ecba9d91ca2826190b796efd(settingsUnitsOptCm);
         }
         this._ca9a204ff7572dc822afeada._ecba9d91ca2826190b796efd(this[_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("授挹揉挓捵掝插掕掗捑掔挮指捡挷挕挣捲捎挘揶挢揆捠捘掼挼挅捑挏採揋揺掣掔捠掼挒捑掸捊挿","揳探捂捸挢掌掠掬捡捯揮接掩挐揇揗") + String(this._8880f4326fb4dae35cc6a741[_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揯掇捺捜揵掅揍掝挡掵揀揑捒掋捺揊挄捆","揌挳探捚捃掜挖揤掕掦捔揘掋揦揜揗")])]);
         this._12f36c123b7b7bd8291d408e = new _6e29939ae45bb280914eb272(this._8880f4326fb4dae35cc6a741[_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劘勼勛勄前刿剄剞剿剧劯切剑劷剭助刍剖勘券切勞労劗初初","劇删劣刲动勔剚刑勩勴勼勸勂勜剻劣")]);
         this._12f36c123b7b7bd8291d408e.config(settingsDayDropdown,settingsMonthDropdown,settingsYearDropdown);
         this._9fdf4552599d418e0d946cfe(String(this._8880f4326fb4dae35cc6a741[_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勆勄勱刦勅剟剧勺刳劕到勛劘剽勎刷刈劲則動剢勏勮勐","劤刮刽勆剆劸剭剜创划勱勋剜勧勷劀")]));
         this._3e710cbab56536befe88f010 = new _e3d16e44e787d36bd0c38e74(app.countries,this._8880f4326fb4dae35cc6a741[_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掰掫捉揧掦掕捾揉揱揳掶掴捑揘挭揆挦接掃掎捯挦","挎捚揉換捸捌捆掎揠揗揀揵捯挕捆掦")]);
         this._3e710cbab56536befe88f010.config(settingsCountryDropdown);
         this._3e710cbab56536befe88f010._6ba0ebcd022238458430b820(this._8880f4326fb4dae35cc6a741[_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ဴ၌ဍჿგယ႒ჄၔၿჁႆၮბဦၥႜတးၠဨ။ဋၭႺ჉ဪტ჋ჶსဿၜ၏ႸၡႾၳთခკဴ","ခဲ႓ဥႠ჉႒წჰႸჀႈႲႍჼ့")]);
         if(this._8880f4326fb4dae35cc6a741[_95da7f1147c669197db81295._8f4866de82b7339154180ecb("刔劓剺勭剮刚助剰勦剮勽劉刕勆勠剷剌勩劆勪刦劭剗刖刑剁剛剢刋劙励刈划剭剟勻勇勔劲勖刨剑","办劐劯刔労刑勊勿劏劶刹剂勋勱剢刦")])
         {
            changeTimeZoneButton.enable();
         }
         else
         {
            changeTimeZoneButton.disable();
         }
         this._e1bae92e971a85a78f2eb68b = new _e8798cc6b38bda4d1c07c41a(this._8880f4326fb4dae35cc6a741[_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၚ၉ოၹၤ၈ဠ႐ၐჇါბႲၿႥၔၨ႟ႱႵႾႇჷდဏၱၪလဳၵဩჼ","ႩრႽႛၛာၖႴღထဓဆဓၼဟდ")]);
         this._e1bae92e971a85a78f2eb68b.config(settingsLanguageDropdown);
      }
      
      private function _0cfd6e76cb0f009b9aeac091() : Object
      {
         var _loc1_:String = null;
         var _loc2_:Array = null;
         var _loc3_:Object = {};
         _loc3_[_95da7f1147c669197db81295._8f4866de82b7339154180ecb("刔勞助劄勓刈勆刓勑劧勸劀劺勴剛刚劐勷","勪勺劼利劫劬劳勛剏勵労刑剆刼剪勡")] = settingsEmailField.text;
         Cc.log(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၿ჻၎ႋႢ။წထဲဠ႙ၱၧჴအပ၎Ⴈჳ႞Ⴠჟပၧဴၷၻუჾ၍ყႱသ႞","ၦႲჹႿႁ၊ყၥၝၳფဉးႶ႘႖") + settingsEmailField.text);
         _loc3_[_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捸揃掃捲挖掍挲捸揈掄挄捬掇掔挟挆揁换掮揮揱捪握掬推捫","掠挤挹揥捥掝揼捼插揼揙揞捐挎揺捪")] = settingsBackMusicSlider.value;
         _loc3_[_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ႛႅီჄလჿი၁ႉႿყဠၤႧၜ၂ဳႪႺဘ႒ჿၧပီလჇზဢဇ၆ႜ","ၻჿႽႫဒၥယအႏႹမხნႨေဝ")] = settingsSoundEffectsSlider.value;
         _loc3_[_95da7f1147c669197db81295._8f4866de82b7339154180ecb("刳刉刣劧勝劓則創剡勛剮劊劧剃剃刵刵副制勱剥刨剖剻劬剮功劏劳剕刽剽勉刹","勩剝勲効割勣劦则劁刕別勫刏剬劷劮")] = settingsShowDateOnProfCheck.isSelected;
         _loc3_[_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勜刑励劮刲助剟剳勄刊劌刏劉劯创劆劫勛劂勉則勩刋刋劜刞","刾勷励判剸剣动剃剼刼剶劓剎勨前剗")] = settingsShowMailOnProfCheck.isSelected;
         _loc3_[_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捕掘提揩揬捞揖揼捙捨掵挚掯捔揢揘捂捾掘挪揶据挍揗換挙挔捿捃掻揵挜揪挆","挴捭挠揓掽挟挍揌掱挫掩揶指挅捫挦")] = settingsShowInventoryOnProfCheck.isSelected;
         _loc3_[_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捱掠挰揸挸揘揖捨挎揣捖揦揊掄接捺揙捶接挺授揞捌挷援捏挷推","掓掣採掕挌捜挂捖挪挲掼掂挣掼掫授")] = this._bf4edcdeb6b3f2c1b7095ab1.currentOption == settingsTimeFormatOptAmPm ? -1337296876 ^ -940669552 ^ -388847878 ^ -1619633282 : -1458751304 ^ -1358238382 ^ 0x0CFC64F4 ^ 0x0AFBB11F;
         _loc3_[_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捤措插捯掬捙掏挂挕揌掻挪捹揊捂揚揳捫","捚掑探捧掱採捄捹揆挓挱掅揢揀揆捲")] = this._b53571e88887d12962805239.currentOption == settingsUnitsOptFeet ? _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ႂဪႉႣဿၷိჸတႪ္Ⴕ","წႹ჌ႺါၯნსယჸဗჍ၎ဈპႬ") : _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("採挼捠挲掶挹掅持揮揟损掑","捅按揨掲振挮掀捅捑掝揊揀挂掠掤掟");
         var _loc4_:_4a306accb768c5f549bf6c1f = this._ca9a204ff7572dc822afeada.currentOption;
         if(_loc4_ != null)
         {
            _loc1_ = _loc4_.name;
            _loc2_ = _loc1_.split(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ნဢၫၛაၖစၴ႞ჱ","မၬ჉ဌၽ၍ဴჼჇჾჇ၁၌Ⴣჺႝ"));
            if((0x733C55C8 ^ -99723847 ^ -437229904 ^ 0x6CC266C0) in _loc2_)
            {
               _loc3_[_95da7f1147c669197db81295._8f4866de82b7339154180ecb("刖劷勖勰劐効剪劣剌勢勤勞剗勴勞剡剄勾","刪勗劬勅勁剎剤勂勰剛勪劀剤刀刎劆")] = parseInt(_loc2_[-19036810 ^ 0x7DC8A4D0 ^ -1960684061 ^ 0x08377444]);
            }
         }
         if(this._558105f12a9408b51c3fe030 != null && this._558105f12a9408b51c3fe030 != this._ced701f813b1f99dfd7bc15f)
         {
            _loc3_[_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("းჰჄတဌႦႥႃၓၖ၄၊ႁႌၸဲ႐႞ჽဋၝႍဋჇၛდ႕၀ဟაႪၺၵနၝညၬဖღဂბဈ","ဠႌၷჱჁ၍ၦ၃ဋၸ်၏၁ოဠဣ")] = false;
         }
         _loc3_[_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剢刘刊勗勍剃判剪刻刍刹勑劎刱分劬勭加勸劼刚創剘剙剧剕","刾勛助劖勊劬勵剈动勹劯剘剤势剶劦")] = this._12f36c123b7b7bd8291d408e.date;
         _loc3_[_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掝揯捋揫揲揉捕挋损捽揟揂掩揭掅揘揫据揰挃掖捏挰挰","揯掦揃捂揚掍掸捀揥挴掽挹捜揢揷捝")] = this._ced701f813b1f99dfd7bc15f.replace(new RegExp(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捅掭掸捜掘揢捀揮揨掻","揷捚挼挗採授揉掰捍揲掜揇捼揟掟捺"),_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掖挱挼授揣挓挩捙掏捯","捺挳捿捖挈捂挑挳挐捍挼掜揝挰揿捯")),_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捅捃接掺接捺掳掍掆捙","捻挟掎捉掕掄揊捄揎掣掉掼挱捄揶掐"));
         _loc3_[_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挒挡捔揸揸捇挷挜捶揹捆挒挜揁挊捥捡捩挕掴提挆","揵捻掵捻揤捝挫揮挪挘挎捡捉握挂揠")] = this._3e710cbab56536befe88f010.currentCountryID;
         _loc3_[_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勫刾劒剄剳剼刱勯分劀刵刋募刵刟劁勸剖勴創励劕剨勪切勀勡刍剒切勖劾","利剁勓創勦刱勐删刎勆劽利刯別剒劸")] = this._e1bae92e971a85a78f2eb68b.currentLangID;
         _3a8a2602dcf9bf49b62e62af._6b3775d03b7f18382ae7c2b4(_3a8a2602dcf9bf49b62e62af.GROUP_SFX,settingsSoundEffectsSlider.value);
         _3a8a2602dcf9bf49b62e62af._6b3775d03b7f18382ae7c2b4(_3a8a2602dcf9bf49b62e62af.GROUP_AMBIENT_SFX,settingsSoundEffectsSlider.value);
         _3a8a2602dcf9bf49b62e62af._6b3775d03b7f18382ae7c2b4(_3a8a2602dcf9bf49b62e62af.GROUP_BACKGROUND_MUSIC,settingsBackMusicSlider.value);
         return _loc3_;
      }
      
      private function _ca491082f37458ac4601fe08(param1:MouseEvent) : void
      {
         GameSwf.settings._2e86bf749dc5dc98b7cbd396(this._0e68b694ee437f68e6d62763);
         GameSwf.settings._137781d2cce89506a2d02ccc(this._d646989973acaf7dab719bc6);
         close();
      }
      
      protected function _7aa2fec72d1e7b1dfbad67d0(param1:MouseEvent) : void
      {
         GameSwf.instance.showCharacterEditor(false,[]);
      }
      
      private function _8a6650c27be83f7c3bc7069a(param1:MouseEvent) : void
      {
         var _loc2_:_301b6b096d193294bbd60d6d = null;
         var _loc3_:String = GameSwf.instance.gameSettings.gameLanguage;
         if(!this._3ca6f2af55fc2c4c6d66f239())
         {
            this._595d919e545dddfa68decb66();
            return;
         }
         var _loc4_:Object = this._0cfd6e76cb0f009b9aeac091();
         GameSwf.settings._fbb5bf4490297ce3e29d29e6(_loc4_);
         if(_loc3_ != this._8880f4326fb4dae35cc6a741.gameLanguage)
         {
            _loc2_ = new _301b6b096d193294bbd60d6d();
            _loc2_.show();
         }
      }
      
      private function _50f433558d612e0d5a2f2b12(param1:Event) : void
      {
         var _loc2_:int = 0x3F3DED34 ^ -580370864 ^ 0x60A9C90C ^ 0x7C46A0D2;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x6B407DDD ^ 0x1BA381B5 ^ -1596505546 ^ 0x2E8E04E4))
            {
               case 0:
                  Cc.log(this + _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捶探挸掼揳捵揷捈损挩掁掙挚捹揯捨挹揓挫控揟掁换揗挚揖揹揂揀挳掞捂揔援掻挌挞接捼挍插揢捡推挒掽掱掁揅探揷揊揯揮挓揲揮挣掙捻揈挔捩揨推掚掴挚挗揽措捙据掫掣挻挿掷揝挑挨挥掗掏揜捽掲捻掅捥掬捓捺捇振揱挛挬揖挫捹捄损挎接控揋挱挡揃捒挃捦捷挺捠揥揂掛揋捈揀挀掜挚授挬捗掋描挋挈捍揑揂揨捭捊捜挞掣挼掰捠捡挬捭掛挋揻","揻捎描捞掽掾掵揶捺揣掩捁換挄捁挭") + GameSwf.instance.gameSettings.prevEmail);
                  if(settingsEmailField != null)
                  {
                     _loc2_ = 0x227342E8 ^ -691728423 ^ -458072555 ^ -289494625;
                  }
                  else
                  {
                     _loc2_ = 0x1519D625 ^ -981820656 ^ 0x5958D832 ^ 0x77812FBF;
                  }
                  break;
               case 1:
                  settingsEmailField.text = GameSwf.instance.gameSettings.email;
                  _loc2_ = -2069277484 ^ 0x338FBDD0 ^ -344269208 ^ -1561948716;
                  break;
               case 2:
                  this._8ee5e48c8fea426a4942357d();
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function _ab4ba20d0651d8e557e94630() : void
      {
         var _loc1_:DisplayObjectContainer = settingsEmailField.parent;
         var _loc2_:TextField = _4581faaf94a801a59c1113f3(settingsEmailLabel);
         _loc2_.text = _c2ad9d37d7be0097d6d2e977.get(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ပၹႆ။Ⴍ့ၩჱဋုჾႹဇၟၹსဖႺ၅ႱၨნႃႰပ႕ცჀႳ჉ၽႊပ္ထჰႜၤဏႭსၽဦဒႉႩჇဇတ၂၍၀ဳဗჍႯႆც","ေၑ၄ဨႿႊဧბၦ၆ჭႍ႔ႉჾგ"));
         _loc2_.width = _loc2_.textWidth + (0x55E12EEA ^ 0x4B766797 ^ -373345778 ^ -148341899);
         _loc2_.x = settingsEmailFieldBg.x + settingsEmailFieldBg.width + (-1861779421 ^ 0x554B81F6 ^ 0x302654E9 ^ -194357965);
         _loc1_.addChild(_loc2_);
         var _loc3_:Bitmap = _4811ee8c2c2d2763816bf897(settingsEmailFieldBg);
         _loc3_.x = _loc2_.x + _loc2_.textWidth + (0x30954FFF ^ 0x246B9EEF ^ -1021150379 ^ -673404337);
         _loc1_.addChildAt(_loc3_,_loc1_.getChildIndex(settingsEmailField));
         this._ba3550a785bdd8a543b28d7a = _4581faaf94a801a59c1113f3(settingsEmailField);
         this._ba3550a785bdd8a543b28d7a.type = TextFieldType.INPUT;
         this._ba3550a785bdd8a543b28d7a.selectable = true;
         this._ba3550a785bdd8a543b28d7a.x = _loc3_.x + (settingsEmailField.x - settingsEmailFieldBg.x);
         this._ba3550a785bdd8a543b28d7a.tabIndex = -24116413 ^ -2094060397 ^ -1230825407 ^ -887343213;
         this._ba3550a785bdd8a543b28d7a.addEventListener(TextEvent.TEXT_INPUT,this._ae4cd6f80d28a6b999098ca4);
         _loc1_.addChild(this._ba3550a785bdd8a543b28d7a);
      }
      
      private function _ae4cd6f80d28a6b999098ca4(param1:TextEvent) : void
      {
         var _loc2_:int = 0x723F202C ^ -147200423 ^ 0x366B4C03 ^ -631245704;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x75724FC9 ^ -1436842781 ^ -1711242211 ^ 0x2C1B3139))
            {
               case 0:
                  if(param1.text.length > (-77260568 ^ -1122149229 ^ -1275798442 ^ -175335380))
                  {
                     _loc2_ = -368879200 ^ -471439739 ^ -207757610 ^ -1823825924;
                  }
                  else
                  {
                     _loc2_ = -1202315699 ^ 0x519C4ECF ^ 0x4CB2568B ^ -867534843;
                  }
                  break;
               case 1:
                  param1.preventDefault();
                  _loc2_ = -1444708441 ^ 0x4DB6245B ^ -645635711 ^ 0x54E34471;
                  break;
               case 2:
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function _8ee5e48c8fea426a4942357d() : void
      {
         var _loc1_:int = -1647635471 ^ 0x6E01684F ^ -1621029455 ^ 0x6693FABA;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (0x20A56E84 ^ 0x32469C84 ^ -819751154 ^ -671553094))
            {
               case 0:
                  this._ba3550a785bdd8a543b28d7a.text = "";
                  _loc1_ = 0x0A62F768 ^ 0x660B3FF3 ^ -725389426 ^ -1299043421;
                  break;
               case 1:
                  if(this._ba3550a785bdd8a543b28d7a != null)
                  {
                     _loc1_ = -317976150 ^ 0x54579A64 ^ 0x67199754 ^ -730165202;
                  }
                  else
                  {
                     _loc1_ = -864664042 ^ -2099234950 ^ 0x1A9DFD2D ^ 0x5E3300F7;
                  }
                  break;
               case 2:
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function _3ca6f2af55fc2c4c6d66f239() : Boolean
      {
         if(this._ba3550a785bdd8a543b28d7a == null || this._8880f4326fb4dae35cc6a741 == null)
         {
            return true;
         }
         var _loc1_:String = _e02623af28f3d4911c3711ac(settingsEmailField.text);
         return _loc1_ == _e02623af28f3d4911c3711ac(this._8880f4326fb4dae35cc6a741.email) || _loc1_ == _e02623af28f3d4911c3711ac(this._ba3550a785bdd8a543b28d7a.text);
      }
      
      private function _595d919e545dddfa68decb66() : void
      {
         var _loc1_:_6691abcab801c2433d32324a = app.dialogFactory._5afc77ddaa6019528749a6fb();
         _loc1_._4b5d5535760fe8919ccfbd43(_c2ad9d37d7be0097d6d2e977.get(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ႜჸၼႬჵ႙ၜჾၯၧႃဃႅჷဲၯႁၰဩ်ဦ႙ဳლႣ၄ၜჲჺკႋႱ႕჏ჲ჎ၼဋႴჂဋႥၕჹႁႳဣჺიမ၈ႎძ႟ც႒ႉႢზ်ဎဢ჈ၗ","ბძႯეეမႻ჉Ⴠဩဋ჻ဍဵჶဥ")),false);
         _loc1_.buttons = _6691abcab801c2433d32324a.CLOSE_BUTTON | _6691abcab801c2433d32324a.OK_BUTTON;
         _loc1_.closeOnOk = true;
         _loc1_.show();
      }
      
      override public function activate() : void
      {
         super.activate();
         this._8cefac4ae24b7b524a15e521();
         GameSwf.settings.addEventListener(_546478a0ebe6f447d8faeff7.CHANGE_PREV_EMAIL,this._50f433558d612e0d5a2f2b12);
         _92d7656ddc3c3da810e99c74.getInstance()._57ad3faeff9ca92cbf9fe447(_34a2ba6ad978d976b8b0f5a4.TIMER_200).add(this);
      }
      
      override public function deactivate() : void
      {
         super.deactivate();
         GameSwf.settings.removeEventListener(_546478a0ebe6f447d8faeff7.CHANGE_PREV_EMAIL,this._50f433558d612e0d5a2f2b12);
         _92d7656ddc3c3da810e99c74.getInstance()._57ad3faeff9ca92cbf9fe447(_34a2ba6ad978d976b8b0f5a4.TIMER_200).remove(this);
      }
      
      public function update(param1:uint, param2:uint) : void
      {
         var _loc3_:int = 0x5E38802F ^ 0x54ED03B3 ^ 0x4D740AE9 ^ -1662932730;
         loop0:
         while(true)
         {
            switch(_loc3_ ^ (-306096410 ^ 0x6C764D83 ^ 0x5A7329B3 ^ 0x8412A1))
            {
               case 0:
                  return;
               case 1:
                  GameSwf.settings._137781d2cce89506a2d02ccc(settingsSoundEffectsSlider.value);
                  _loc3_ = -79696642 ^ 0x7C5BD060 ^ 0x05F117B5 ^ 0x59D50B5C;
                  break;
               case 2:
                  GameSwf.settings._2e86bf749dc5dc98b7cbd396(settingsBackMusicSlider.value);
                  _loc3_ = -370014984 ^ -1530811965 ^ 0x33A684F6 ^ -1512764999;
                  break;
               case 3:
                  if(settingsSoundEffectsSlider.value != GameSwf.settings._3b244ec2fb6f3b9935eaa9b5().soundEffects)
                  {
                     _loc3_ = -1288005810 ^ -1955767273 ^ -1300728454 ^ 0x516F9E55;
                  }
                  else
                  {
                     _loc3_ = -61906966 ^ 0x5E97315C ^ 0x6FD26082 ^ 0x164A2E43;
                  }
                  break;
               case 4:
                  if(settingsBackMusicSlider.value != GameSwf.settings._3b244ec2fb6f3b9935eaa9b5().backMusic)
                  {
                     _loc3_ = -1703223591 ^ -868613379 ^ -1654897398 ^ 0x105CB95B;
                  }
                  else
                  {
                     _loc3_ = 0x7858150A ^ -1434290276 ^ -141732246 ^ -32041848;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
   }
}

