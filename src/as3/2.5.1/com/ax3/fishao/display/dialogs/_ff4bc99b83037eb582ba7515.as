package com.ax3.fishao.display.dialogs
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.events._02fbe4cbe9e83f1b8c711799;
   import com.ax3.fishao.Config;
   import com.ax3.fishao._dfa25706e58a240c1e33e5c6;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.locations.privateHouse._c24229eda44b942058106fae;
   import com.ax3.fishao.utils._745ca4cad2f6acc1f3084ea1;
   import com.ax3.fishao.utils._8eb7be594ef79158478ab7c2;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.wrappers.impl._89027603939c39853027fd04;
   import com.brokenfunction.json.decodeJson;
   import com.junkbyte.console.Cc;
   import flash.data.EncryptedLocalStore;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.ui.Keyboard;
   import flash.utils.ByteArray;
   import protocol.sr.ErrorResp;
   import protocol.sr.LoginErrorResp;
   import protocol.sr.LoginSuccessResp;
   import protocol.sr.RegisterErrorResp;
   import protocol.sr.UpdateResp;
   
   public class _ff4bc99b83037eb582ba7515 extends _ba23433714481c83e7c1f91e
   {
      
      private static const _c68ac544ead2b9efb6c336ef:String = _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("႑ၷუ၄ႇငထჶႝဖ჻Ⴈဧძლဈႇ႖ှჱၪ္ၵူဣႏလသ","၊ခႬႷႧဣၲဳႭვႋသႢႪူჺ");
      
      public function _ff4bc99b83037eb582ba7515()
      {
         super();
         init(app.dialogManager.assetWrappersProcessor);
         loginButton.handler = this._34dfc1b3b1a446ebd09d5037;
         regButton.handler = this._eab2f90247a76644b40fcbb9;
         this._1cb00ef2a4e95b91da4fcdc7();
         if(Debug.AUTO_LOGIN)
         {
            this._34dfc1b3b1a446ebd09d5037();
         }
      }
      
      private function _5fd1d23f2b54b27ee0019f10(param1:Object) : void
      {
         var data:Object = param1;
         var colorStatisticResponse:Object = null;
         if(data is ErrorResp)
         {
            this._3ee6c0ac9edc5effbefad954(data as ErrorResp);
         }
         else if(data is UpdateResp)
         {
            try
            {
               colorStatisticResponse = this._c171fe88547f79c886f8a796(data);
               this.close();
               GameSwf.instance._74f6678be6883d7c730f19ee(decodeJson(data.data.charView),colorStatisticResponse,data.sid);
            }
            catch(e:Error)
            {
               Cc.log(data);
               Cc.error(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၱჿခႩႸဤံთჰჶၵာႊასူ႙ၥႨၢၵႧၩၖဇჭ၅ခဎံუၠဤეၳှჱႋၹჂဗ႑ၮႎႎႬူႼ჈ၸၪႷცႀბ႐ကႵჭ။၌၍တჍ႓ჂဒႉၪၗၥშႥ႕ၕჩ჋႑နၦငႷ჌Ⴡ","ၶ႑ျႽ႘၎ၥႥჵ။ႁჸဇဧႵႈ"),e);
               Cc.error(e.getStackTrace());
               GameSwf._6b2ea987f29b60cd755db2f5(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ႈ၃ვဤႃဍსႌဤၪၾဩ၃ထညၭ၉ၱႌဴႍဿႩჴჲီყပ","ჇႍႳဌၳႬ႙ႇဪၿ၍ჺၚၾႶၥ"));
            }
         }
         else if(data is LoginSuccessResp)
         {
            this._b9bf9100d35c7e93019afa36(data as LoginSuccessResp);
         }
         this._1afdd688dd88b7d0ba642e3a();
      }
      
      private function _b9bf9100d35c7e93019afa36(param1:LoginSuccessResp) : void
      {
         app.sid = param1.sid;
         app.user.username = param1.login;
         app.user.unreadPMNumber = param1.unreadPrivateMessages;
         GameSwf.instance._aab5339f92aa628c1245c646(param1);
         this.close();
      }
      
      private function _3ee6c0ac9edc5effbefad954(param1:ErrorResp) : void
      {
         GameSwf._1ef846dd75bfdedf5d77abc7(_c2ad9d37d7be0097d6d2e977.get(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ဨ၌ဍ႞Ⴎခည႐ბဧႸႶთၜဢႮႌႄႨჃეწညჹီသ႒ტზႍဂၴ","ႠაႭႪေჭႭၓႿ၃ၾႛიၰტရ") + param1.descr));
      }
      
      private function _34dfc1b3b1a446ebd09d5037(param1:MouseEvent = null) : void
      {
         this._f2710047cc932f14505c45aa();
         var _loc2_:String = loginUsernameField.text;
         app.user.username = _loc2_;
         _dfa25706e58a240c1e33e5c6.loginFscExtension.login(_loc2_,loginPassField.text,null,_745ca4cad2f6acc1f3084ea1._8f86b04e4306f87a82dcadcb(this._3f52927e4ee0d8a960fd99a2));
      }
      
      private function _f2710047cc932f14505c45aa() : void
      {
         loginButton.disable();
         regButton.disable();
      }
      
      private function _1afdd688dd88b7d0ba642e3a() : void
      {
         loginButton.enable();
         regButton.enable();
      }
      
      private function _eab2f90247a76644b40fcbb9(param1:MouseEvent = null) : void
      {
         var _loc2_:String = null;
         var _loc3_:Boolean = false;
         var _loc4_:String = null;
         this._f2710047cc932f14505c45aa();
         var _loc5_:Date = _dateDropdownMediator.date;
         var _loc6_:Boolean = _8eb7be594ef79158478ab7c2._673e079784b150f4ee1845d5(regUsernameField.text,regPassField.text,regPass2Field.text,regEmailField.text);
         if(_loc6_)
         {
            _loc2_ = regUsernameField.text;
            app.user.username = _loc2_;
            _loc3_ = regNewsCheck.isSelected;
            GameSwf.settings._8afec3dea4a76245a91c3d8c(regEmailField.text);
            _loc4_ = Config.LANGUAGE;
            _loc4_ = _c2ad9d37d7be0097d6d2e977._15ba87d5bce3a7f57e1c5924(_loc4_);
            _dfa25706e58a240c1e33e5c6.loginFscExtension._f3a7dcd4e26108f63eb42d81(_loc2_,regPassField.text,_loc5_,regEmailField.text,_loc3_,_loc4_,String(Config.AFFILIATE_ID),String(Config.CAMPAIGN_ID),String(Config.CAMPAIGN_REC_ID),Config.PROMO_CODE,Config.SEND_WELCOME_EMAIL,_745ca4cad2f6acc1f3084ea1._8f86b04e4306f87a82dcadcb(this._41703b8fe94fd41a7cba32bd),Config.IS_BETA ? regPass2Field.text : null);
         }
         else
         {
            this._1afdd688dd88b7d0ba642e3a();
         }
      }
      
      private function _41703b8fe94fd41a7cba32bd(param1:Object) : void
      {
         var data:Object = param1;
         var colorStatisticResponse:Object = null;
         if(data is RegisterErrorResp)
         {
            if(data.descr == _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掫挲捷掫揠挂掊接掿捵挤捾捎掎揨掉","挚握掅揊捃掊挪捚挥据揑捰揇掑挮捍"))
            {
               this._4ee131c7eba36457d678e86e();
            }
            else if(data.descr != _95da7f1147c669197db81295._8f4866de82b7339154180ecb("剻剢劅剚剖勛劲刼勢刏則劆剥劁","勛勛剕初剂劗劭刟劵刷剙勤刊務刲剳"))
            {
               this._1f39bc1d3169399672471e40(data.descr);
            }
            else
            {
               data = JSON.parse(RegisterErrorResp(data).data);
               if(data.hasOwnProperty(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ეၯပკဧႾႬჃძဠ႐ၺღဝတფၞვႩၮ","ႎၵႍဦჁჼဋრჵ჈ႚႥၧ၀Ⴂၻ")))
               {
                  _504749bb135409f35cb61e27(data[_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劀勘劍勡勺劜剜勽劶剽刹剳剃刣劉劇务剧剁刷","勐劾勋券剻剚勄剟劘刽剢勲劙助刾勔")]);
               }
               else
               {
                  Cc.error(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("Ⴅ၏ၦၼၓဿၷ၀ဇၬჅ႞၎ၲၧၕၣၕမူფဂၐႡჺჭသႝყჩ႘იၳၴဏၥၓႽၾဒჂႉძტႏၙီჄှႷჴშဋႅ၆ၠဋၞႌဗြႼ၃မ၌႖ნဢႡწთႸჯြႱႾႯၢ჏ၫဩე၉၄သႋပႎၙၢႁၿႲဎံၩტშ႒တჯჱშ၆","ძဲႻ၇ჰ჆ဦჸႸအၻჇეჹუဲ"),JSON.stringify(data));
               }
            }
         }
         else if(data is LoginErrorResp)
         {
            if(data.descr != _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揘捏控掔揔持掁挧捛捝掫掐揦捜","掱掠捰捧挡推捄掱捸揢捯援捤揯掁掄"))
            {
               this._1f39bc1d3169399672471e40(data.descr);
            }
         }
         else if(data is UpdateResp)
         {
            try
            {
               colorStatisticResponse = this._c171fe88547f79c886f8a796(data);
               this.close();
               GameSwf.instance._74f6678be6883d7c730f19ee(JSON.parse(data.data.charView),colorStatisticResponse,data.sid);
            }
            catch(e:Error)
            {
               Cc.log(data);
               Cc.error(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挤揋捓掕揸提揲揤揇捺挸捘挣揺掭掵挫捓接握挥挬掏捧揂损掱损捁掮掍挂揵掏挤掩揄捱挐捬挸挐挒揞捱揋掶捊揀挄揉揯挴掠揁揘揻掭插揤挤掋掎掾掽掗掠捓捳掃揓挓捔掔排掙揎掇掜捐挙挶","掼揶挙挱掊挄揉揠揶援揍捀掳掑掓捍"),e);
               Cc.error(e.getStackTrace());
               GameSwf._6b2ea987f29b60cd755db2f5(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掯捗指揙挅揗掇挙捥掃掂捺挃捁捾捡揉掟揯揩挀揄挬揍挫捍掸挡","捱掝換捠挍捠揧掱挓捧捕捏捆捚掼揱"));
            }
         }
         else if(data is LoginSuccessResp)
         {
            app.user._3e688a08030b41f9128070b7();
            app.sid = data.sid;
            if(GameSwf.currentLocationDialog != null && GameSwf.currentLocationDialog is _c24229eda44b942058106fae)
            {
               GameSwf.instance._8b26d7e6f9821417a30b1115();
               GameSwf.instance._b466857714e87eb82669db2e();
            }
            GameSwf.instance._aab5339f92aa628c1245c646(data as LoginSuccessResp);
            this.close();
         }
         this._1afdd688dd88b7d0ba642e3a();
      }
      
      private function _3f52927e4ee0d8a960fd99a2(param1:Object) : void
      {
         var _loc2_:int = -1716277096 ^ 0x61FE0DF7 ^ -1310821516 ^ 0x1D8458FD;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (-1158708420 ^ 0x01533C23 ^ -391808977 ^ 0x070E51D4))
            {
               case 0:
                  this._5fd1d23f2b54b27ee0019f10(param1);
                  return;
               case 1:
                  app.user._ba7a9dd72a2936fe257207d7();
                  this._45d3f9fb532b374532d7b4b2();
                  _loc2_ = -894712026 ^ -1858933968 ^ 0x4A619798 ^ 0x45EF2D6A;
                  break;
               case 2:
                  if(param1 is LoginSuccessResp)
                  {
                     _loc2_ = 0x5A0E683B ^ 0x21ABD1C8 ^ -1191184447 ^ -1756505897;
                  }
                  else
                  {
                     _loc2_ = 0x41723996 ^ 0x63F59A57 ^ -1918506952 ^ -80356067;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function _1cb00ef2a4e95b91da4fcdc7() : void
      {
         var data:ByteArray = null;
         var saved:Object = null;
         if(!EncryptedLocalStore.isSupported)
         {
            return;
         }
         try
         {
            data = EncryptedLocalStore.getItem(_c68ac544ead2b9efb6c336ef);
            if(data != null)
            {
               saved = JSON.parse(data.readUTFBytes(data.length));
               loginUsernameField.text = saved.username;
               loginPassField.text = saved.password;
               loginRememberCheck.state = _89027603939c39853027fd04.SELECTED;
            }
         }
         catch(e:Error)
         {
            Cc.error(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掙挛挮指掟掯捴捆揘掎挫捙揷揜捼掝描掵捼挾捌捑揣捎掝挸挭揇挚揥挨揂揦挋换捳揕掛捖捓掫挶掗捐措掔挷捖挄挱掸揹挺掉挲捓揽揇挢捞捠掊揥揃揘掹揁振捍挣换揾","揆掑挢掖损挋换提捽掝挧挐掻揵揈挊"),e);
         }
      }
      
      private function _45d3f9fb532b374532d7b4b2() : void
      {
         var data:ByteArray = null;
         if(!EncryptedLocalStore.isSupported)
         {
            return;
         }
         try
         {
            if(!loginRememberCheck.isSelected)
            {
               EncryptedLocalStore.removeItem(_c68ac544ead2b9efb6c336ef);
               return;
            }
            data = new ByteArray();
            data.writeUTFBytes(JSON.stringify({
               (_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劳刷分剫刜别勚初则勵刑剻剘剭刟勇剔剛劑刂勰刘剫動","動剭則勲劜副勤刷前勇劍刁勋劒勧劓")):loginUsernameField.text,
               (_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ဏჂႽ჻ၭ႐Ⴀၚ၅ၗჺႾၸႛႰჟ၎ခႅပႬာၩნ","რႢဲ႟Ⴣჭბ၆ჰ၊ႇၣႮხႾဧ")):loginPassField.text
            }));
            EncryptedLocalStore.setItem(_c68ac544ead2b9efb6c336ef,data);
         }
         catch(e:Error)
         {
            Cc.error(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掍掜挵揤捖揺挰措挭揜揧掵挼揠挐掃挃掼揑挔揃挶捼揤掣捂揁挶挵捀掋掉掲捊挪捿揷推挱捩捁挙挄挷捄捋揘掓挘持按挾捳捲掰揃挥挓捫揖揱捨","挵捞揋挽捼掾掅捊揱揑挤捦挖挣揳揟"),e);
         }
      }
      
      private function _c171fe88547f79c886f8a796(param1:Object) : Object
      {
         var _loc2_:Object = null;
         var _loc3_:Object = {};
         if(param1.data.hasOwnProperty(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("၇ტჵ႙ဝ၊ႱဍၙဂႩၒ႐ဉჩၱ","ၼဖီၶჟოၲဎၥႅღႡ၆ဨგႵ")))
         {
            _loc3_.hair = JSON.parse(param1.data.hair);
         }
         if(param1.data.hasOwnProperty(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("႙ဏწခႀႡლႲၺၟႾၽე၌႖჻ჩჱ","Ⴡၳჷဇမ႔ညႳღၗ။ဨၴჩ႞ႚ")))
         {
            _loc3_.upper = JSON.parse(param1.data.upper);
         }
         if(param1.data.hasOwnProperty(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勣勬刳劑勂刧劕刷勳刏刔勫劲剄劼効刴剰","削剝劫判剸剼勩劁剃劰勖勏勞勰劄劬")))
         {
            _loc3_.lower = JSON.parse(param1.data.lower);
         }
         if(param1.data.hasOwnProperty(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剀初劤勢劘初刊劜動劬判剐剜划刭勂劜剧","劈剬劦办剣刟劋划劻刔势刜剶勼勿劒")))
         {
            _loc2_ = JSON.parse(param1.data.shoes);
            if(_loc2_.hasOwnProperty(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("刀剤刧勔剻劖刋勜劅勘","刔刖剽劢勓刷剄剒動勒劓務刧劆労创")))
            {
               _loc3_.shoes1 = JSON.parse(_loc2_[_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掏挿揰掉捥挕掁挾揠挘","捿捸挓挵掭挐捑挪揲挻捏挏挠振揬挸")]);
            }
            if(_loc2_.hasOwnProperty(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("刮劍剙剄勰勑剗刚剎勋","劗募剞利劽刈励劮刘劎刴勧剂刪剬劘")))
            {
               _loc3_.shoes2 = JSON.parse(_loc2_[_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ႛႂယေჱဴႏლჷု","ဈ၆ိ၌Ⴄရ၊ႭჿჃိႠჸဟၿ၅")]);
            }
         }
         return _loc3_;
      }
      
      private function _1f39bc1d3169399672471e40(param1:String) : void
      {
         GameSwf._1ef846dd75bfdedf5d77abc7(_c2ad9d37d7be0097d6d2e977.get(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掫损挭持掓揓捦捶挏揓揞捳掩捸揞挒挅掹捞捪捠掮捱挺揲捝揖揋","挊揆挭揆掯掣揻掞揪揾掐揄掅挶挑挻") + param1));
      }
      
      private function _4ee131c7eba36457d678e86e() : void
      {
         var _loc1_:String = regEmailField.text;
         loginUsernameField.text = regUsernameField.text;
         loginPassField.text = regPassField.text;
         regUsernameField.text = "";
         regPassField.text = "";
         regPass2Field.text = "";
         regEmailField.text = "";
         GameSwf._1ef846dd75bfdedf5d77abc7(_c2ad9d37d7be0097d6d2e977.template(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劇勇剹勓創刴剮剃刏勶则勏勝副剾功分劧刾劓剳劷劕勛劀刺勹动刃刌勖勧劯勍刲则到刊","剎剱劑勀办删剾勪剂勈劅創则劒劗劗"),{(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ჳံႃႄၝႆမნჺပႬႅၝႨႳွჹၪ","ႇဗၰႼႭ၊Ⴋဲ၎ჵ႖Ⴇ၇ၮဈ႕")):_loc1_}));
      }
      
      override public function show() : void
      {
         var _loc1_:int = -347664014 ^ -1771936022 ^ 0x0B2453CB ^ 0x0D0786D6;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (-1138832876 ^ -1578836130 ^ -1727403983 ^ -696323))
            {
               case 0:
                  return;
               case 1:
                  regNewsCheck.state = _89027603939c39853027fd04.UNSELECTED;
                  regNewsCheck.visible = false;
                  regNewsLabel.visible = false;
                  _loc1_ = 0x3DEBAADC ^ -1782398824 ^ -895944644 ^ 0x19B730FB;
                  break;
               case 2:
                  regNewsCheck.state = _89027603939c39853027fd04.SELECTED;
                  regNewsCheck.visible = true;
                  regNewsLabel.visible = true;
                  _loc1_ = -1860921046 ^ 0x61AA3923 ^ -1844743869 ^ 0x19B373C9;
                  break;
               case 3:
                  if(this.parent == null)
                  {
                     _loc1_ = -1094688020 ^ 0x7AB8D352 ^ 0x2AFC74A6 ^ -1786615910;
                  }
                  else
                  {
                     _loc1_ = -1764305385 ^ -606434835 ^ -1502959901 ^ -1872733281;
                  }
                  break;
               case 4:
                  super.show();
                  if(!Config.NEWS_DISABLED)
                  {
                     _loc1_ = 0x52F82217 ^ 0x5ABDD036 ^ -978546104 ^ -1225800979;
                  }
                  else
                  {
                     _loc1_ = 0x7A2E8867 ^ 0x6CEDC87A ^ 0x6D825211 ^ 0x47B08B;
                  }
                  break;
               case 5:
                  _02fbe4cbe9e83f1b8c711799.addEventListener(this,GameSwf.stage,KeyboardEvent.KEY_UP,this._ea62e4626c98beca4c0f2851);
                  _loc1_ = 0x7D8ACB04 ^ 0x277781D4 ^ 0x12360587 ^ 0x33CDEDD1;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function _ea62e4626c98beca4c0f2851(param1:KeyboardEvent) : void
      {
         if(param1.keyCode == Keyboard.ENTER || param1.keyCode == Keyboard.NUMPAD_ENTER)
         {
            if(stage.focus == regUsernameField || stage.focus == regPassField || stage.focus == regPass2Field || stage.focus == regEmailField)
            {
               this._eab2f90247a76644b40fcbb9();
            }
            else if(stage.focus == loginUsernameField || stage.focus == loginPassField)
            {
               this._34dfc1b3b1a446ebd09d5037();
            }
         }
      }
      
      override public function close() : void
      {
         _02fbe4cbe9e83f1b8c711799.removeEventListener(this,GameSwf.stage,KeyboardEvent.KEY_UP,this._ea62e4626c98beca4c0f2851);
         super.close();
      }
   }
}

