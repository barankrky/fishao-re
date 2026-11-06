package com.ax3.fishao.mediators
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.fishao._dfa25706e58a240c1e33e5c6;
   import com.ax3.fishao.display.dialogs._0499b052ad03d68cbcb62e2a;
   import com.ax3.fishao.display.dialogs._141a5f7d84a4cfae1680515b;
   import com.ax3.fishao.display.dialogs._2cf09bac3309d0b60408ec5a;
   import com.ax3.fishao.display.dialogs._6691abcab801c2433d32324a;
   import com.ax3.fishao.events._7efc6797a04145979f149c3b;
   import com.ax3.fishao.utils._26035541af3e75a81d8bde8c;
   import com.ax3.fishao.utils._745ca4cad2f6acc1f3084ea1;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs._0737efdbd5337ba3fbc64b2e;
   import com.ax3.jss._30b7fef66889ed3a5e0f6633;
   import com.ax3.jss.model._7b223416c1a294d60a664647;
   import com.ax3.jss.model.states._cd789badd5efc353d515a554;
   import com.ax3.jss.model.states._cda23e966765f14bf08807f7;
   import com.ax3.net._f11f4587bdf083a8dd45aa84;
   import com.junkbyte.console.Cc;
   import protocol.api.base.EErrorType;
   import protocol.sr.EnterLocationErrorResp;
   import protocol.sr.ErrorResp;
   import protocol.sr.FishbonesMiniGameError;
   
   public class _d814df35d5e9f12d6422fb8b
   {
      
      private static const _8dbb6c2ac29cef22f47a7000:Array = [EErrorType.USER_LOGINED_FROM_ANOTHER_SOCKET,EErrorType.USER_BANNED,_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剓勑剢劮勐则分劳劒勞勱勪力剉刿劉","刷刺刁办勯劭劺勒劒勐剝勛刬助刃力"),EErrorType.SESSION_NOT_FOUND];
      
      private var _0c1afa9ce077339926e3e3ba:_7b223416c1a294d60a664647;
      
      private var _bb7ac7fcc9c10d0174cd84b1:Boolean = false;
      
      private var _5228cb2713b97bfad3b62e69:_26035541af3e75a81d8bde8c;
      
      private var _e4de5dcdeb9b0beb3a8fc885:_0499b052ad03d68cbcb62e2a;
      
      private var _e2f0954b650cf8260faaa61f:_f11f4587bdf083a8dd45aa84;
      
      private const _f4da2834db190bc3fe6ab856:Vector.<String> = new <String>[_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勊刬剧剫勗劶勅刟刮剘分动刓刚","勠劲剞剬刳劬剏剉分列勳刑刿剃动勺"),_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揢挰掆捆掏揦掅揙捲挂揆捼掙捱","捲挪挳揩挰掤指捆掲挕挏掌探掮挋揦"),_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("တႝူ჉်ႇၣဏၽှၵၝၝဂ","დႰეးသ၉ဧၺ႑შၬၤჁဓჃႭ"),_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挙捗挂捵挶捷捖按捷挔挢揨揊揼掜捫","捙捓挱持挶捆揩揺捡揯挨揸挙捘挵捻"),_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掑推援挹掩掃掁捒掹揇揾揹捝挘捂挫","捏揇捤按掘掱捹挶挎指挐挘揷捙揀挐"),EErrorType.CANT_FISH_IN_ICE,_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揇挀挴掩捅捍掺捑指掅揎掸掚捶挠探","挠掿採挰揓捪捹掸揄掴揧挛揓揳掚掍"),EErrorType.USER_IS_BIG_SPENDER,EErrorType.LOCATION_NOT_CONTAINS_SHELLS,EErrorType.LOCATION_NOT_CONTAINS_CURRENT_SHELL,EErrorType.LOCATION_NOT_CONTAINS_FRUITS,EErrorType.LOCATION_NOT_CONTAINS_CURRENT_FRUIT];
      
      private const _62a77e47351374a5927a5c85:Vector.<String> = new <String>[EErrorType.TRADE_ERROR,EErrorType.TRADE_ID_WRONG,EErrorType.TRADE_DATA_IS_WRONG,_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၯჶႜჅခႳႂႲႻჭკႠიၟဴမ","႗ტႌ၉ႚီ၍နიၳჄၪ჎ჭဌ჌"),_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၡဓၴႶ႒Ⴜဤ၄ცზညၮာშရဣ","ႾႋၰძဇჁါၠჷဝၺ჻ၡ჌ဤူ"),_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勨剚分努刂刟劳刕刻勈勫剦剑刽勇剜","別劯勔劒剾勜勶勁効剎劢到別剖劝勔"),_95da7f1147c669197db81295._8f4866de82b7339154180ecb("刐勿劑劵劋副剛勻勓勰剮剃剞剟剺劺","勇剈利勫劣刏劚勼剋勏刘刘剧劳刕剀"),EErrorType.EMAIL_IN_USE,_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劤剜切势割剔勈劅劣刐刞勈勑劻勓剨","勨劸劁剱剁剜勯刷勏勓剕劰切劎刮劾"),_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揻揶掔捈捝掽揎挷挀揻捜挛挽捸掤掚","振捨换揽採挥捯挆揯挈挊据揺推換捶"),EErrorType.TRADE_OPPONENT_OUT_OF_LOCATION,EErrorType.TRADE_OPPONENT_IN_TRADING_NOW,_95da7f1147c669197db81295._8f4866de82b7339154180ecb("刾加勄刡勍刺剒别剰劋剦刲剰动剖剫","勱劚劸力勀剌助刭勠劀剫刖剁刡勼勧"),_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挐揬掎挫捬捔捖捧捎挠挺挲接掜捵掄","揲捠捜授指揖挓捾掟揁捠捬捝挪捤揺"),_39d7d82359bf8046fe8ef6c4
      ._33a8897a401e877f1086d126("掯掄揿捘捫捬揦掾挷掵捘揙掩揟掰插","挰揢掎掯揽揥损掜揤揱捳挖掀揇掻掑"),_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掬掷捔揂捓挊换揷挸掶採掇挙挷捚揢","揖探挸掱捉掚捾揍捉捡挝挜捆揑挲掚"),_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("჋တრၞზႆူჷဆႏၫႏ၇ဪႠო","ၫႼဲ္ჳთဣჲၛ၁ၯႱ჌ၣဏႢ"),_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劘劥勡務勒副劕効力勻办刴剟劐勳劙","刧創删剞勁剬刜劎刉删劳剂劷剫刳勡")];
      
      public function _d814df35d5e9f12d6422fb8b()
      {
         super();
      }
      
      private static function _3a85250661e9ed083eed243c(param1:FishbonesMiniGameError) : void
      {
         GameSwf._6b2ea987f29b60cd755db2f5(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揞控揀掂掰捳捚掂挊挒捏揃捂捛挈揺捅掳按揝挱捯掑掤挶掝挣捉挊揞捘捦揾揰","捉挚揲挿挘捏捡捱捜揘掃挵挚挎掵挂"));
      }
      
      private function _78a2829c9ffd6b416134c9bb() : _0499b052ad03d68cbcb62e2a
      {
         var _loc1_:int = -793145807 ^ 0x18400954 ^ -1093005043 ^ 0x4C2FFF0D;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (-2077380022 ^ 0x74ACE953 ^ -920035269 ^ 0x03A45246))
            {
               case 0:
                  return this._e4de5dcdeb9b0beb3a8fc885;
               case 1:
                  if(this._e4de5dcdeb9b0beb3a8fc885 == null)
                  {
                     _loc1_ = -285687607 ^ 0x7B1558F8 ^ 0x1E7520D0 ^ -1315647097;
                  }
                  else
                  {
                     _loc1_ = -1287301422 ^ -2140639798 ^ -1877389731 ^ -1724376031;
                  }
                  break;
               case 2:
                  this._e4de5dcdeb9b0beb3a8fc885 = this._5228cb2713b97bfad3b62e69._81f3d76d345f5c0307101733();
                  _loc1_ = 0x295294EC ^ 0x7A9912A3 ^ 0x2F519172 ^ 0x46967E59;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function _d7c591fb70e1723867f7dd0a(param1:EnterLocationErrorResp) : void
      {
         var _loc2_:_2cf09bac3309d0b60408ec5a = null;
         if(param1.errDesc == (0x0B59F8B1 ^ 0x41E40A4C ^ -1797430723 ^ -564093730) || param1.errDesc == (-262703321 ^ 0x48C40368 ^ 0x63EBDA48 ^ -612851174))
         {
            _loc2_ = this._5228cb2713b97bfad3b62e69._129cb753e0b2bd394a6f5707();
            _loc2_.iconType = _2cf09bac3309d0b60408ec5a.ERROR_ICON;
            _loc2_.closeButton.visible = true;
            _loc2_.text = _c2ad9d37d7be0097d6d2e977.get(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掐挷掸挱揫挝揳揝推掗挦挤揁掂捐挴揔揅挔揲掀揮掖捝揆挎掅挩接揗挒掁捘揵掙揉揢揃控掤揵挥挪插掋挍揹捏挐挂掲揿挊掲","掭捻掓揯捐揢掿掔捱捴揽挴挙捰揿揔") + param1.errDesc);
            _loc2_.show();
            if(GameSwf.currentLocationDialog != null)
            {
               GameSwf._c6222c8d1671823a8a032399();
            }
         }
      }
      
      private function _3be357fa90e8be737dea7a78(param1:ErrorResp) : void
      {
         var _loc2_:_6691abcab801c2433d32324a = null;
         var _loc3_:_2cf09bac3309d0b60408ec5a = null;
         var _loc4_:Object = null;
         if(app.user.inLogoutProcess)
         {
            return;
         }
         if(_8dbb6c2ac29cef22f47a7000.indexOf(param1.descr) != (-995248779 ^ -481007934 ^ -157247795 ^ 0x2EA6BA85))
         {
            _30b7fef66889ed3a5e0f6633._70342170be67ef22838205c5(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掚探揺挎揍掣挓探捊捲捉捝捣排掑排捒揑捡掘揖挧掀援揸捠揿捶挟措掹揃挽挱挽挻揗揸损挒掕揃挡掦揀揾揽捕捒揈捁捺揳掌揟揨掩揳捌揢控捫揠挰挠捠","挮挌换捳揇挗措捽揑揘捿揍掁捳挬揭") + param1.descr);
         }
         switch(param1.descr)
         {
            case EErrorType.USER_LOGINED_FROM_ANOTHER_SOCKET:
               §§push(0x747DB590 ^ 0x0875F03A ^ 0x3E8BE05B ^ 0x4283A5F1);
               break;
            case EErrorType.USER_BANNED:
               §§push(-1402749970 ^ -2062979618 ^ -1578786715 ^ -2003863980);
               break;
            default:
               §§push(0x454DE6B8 ^ -2124128187 ^ -1264758817 ^ 0x70B4C920);
         }
         switch(§§pop())
         {
            case 0:
               Cc.log(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("刣勩劆勏劒助劰劏勅刋劝剩剭动剉创刧勐勎劣剥划刞劆刎劧剝勠劗劍劏刁勰勜勹劻剔刨勷刚刍創剈剹勼刴剏勸劓剰劮勢剀劜刻刀剓列刽勍剿剈剠勁劥刬勹勵列務务副劻剴刅剘劗勩剔劭劙列剂刊剹劕効刘务剈動刾勾功劰割劂勐","勢刟励剋勲剂勦勡劽刚刴労勭劻勳劋") + app.user.username);
               _dfa25706e58a240c1e33e5c6.fscModel.loginFscExtension._09cbe07aae628dd0e3172fc2();
               app.user.inLogountProcess = true;
               break;
            case 1:
               Cc.log(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捚掶揉揯挻揸挲揻揩掵掦挩插掹掬揓接捫揝挗挹揮捈揈揉掩換掆换揥","換掝掆掗掺捞捫掮掷揇掭揜捑換掻排"));
               _dfa25706e58a240c1e33e5c6.fscModel.loginFscExtension._09cbe07aae628dd0e3172fc2();
               app.user.inLogountProcess = true;
         }
         if(param1.descr == EErrorType.ENERGY_IS_EMPTY)
         {
            GameSwf.instance._825ea3c2451d64893c2367e0();
         }
         else if(param1.descr == _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ႱၓჳႱဪႩႊლႶ჉ხჱზძအၛ","ၟაუჽထၖၖဝႿၒ့ၚူဨၯႀ"))
         {
            GameSwf.instance.stopFishing();
         }
         else if(param1.descr == _95da7f1147c669197db81295._8f4866de82b7339154180ecb("劘刍勿剒勬刐勫劓刅創劂劋刞募劙刔","劀刕分刦剴刬剹刟剎剼劢劁劍刍勀劸"))
         {
            Cc.log(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("刐勉勖剝勺劝动刞剪剷剽勸勼則剝剃労劤刐刡劊刈劤刧勲劢劾刬剘勔劋剧劸勫初刁動勾副到勆剮刁勽刢剁刷勂勒剬刬刅動務劵刪勆助刺剭剮労剚勷勋劫刣劅剂刹劊劣勪剨刍刜刮効剄劃","勱剧劶劁剠勈勋剸剣刉剝刻勮劫刮剟"));
            this._0c1afa9ce077339926e3e3ba.disconnect();
         }
         else if(param1.descr == EErrorType.SESSION_NOT_FOUND)
         {
            Cc.log(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劻剘剰刳劘勖别前剢剰劫刭剽勫劺勩勖剥刲刽刷刷助刘刈勆刲刃勩勠判勖剝勎刂剿剩剹刡删刞劚","刳剻劮刷剮刿劤効劆切劬勿劔劀刎剔"));
            this._c5e7e93a60b222a4d962447a();
         }
         else if(param1.descr == EErrorType.TOURNAMENT_IP_RESTRICTION || param1.descr == EErrorType.TOURNAMENT_LEVEL_RESTRICTION)
         {
            _loc2_ = app.dialogFactory._5afc77ddaa6019528749a6fb();
            _loc2_._4b5d5535760fe8919ccfbd43(_c2ad9d37d7be0097d6d2e977.get(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ံကဥჯႦညၩၲჍႾႭုႠჹဖჁႺ္ႽအჰჀဴჿ჆ၬၨჅ၆ႰၠိႚႥၖႾီ჌ထდႻႏ","სჹဳႽღဌ႗ფႎმဟၧၘ၄၂ႛ") + param1.descr));
            _loc2_.buttons = _6691abcab801c2433d32324a.OK_BUTTON;
            _loc2_.closeOnOk = true;
            _loc2_.show();
         }
         else if(this._f4da2834db190bc3fe6ab856.lastIndexOf(param1.descr) == (0x63B900AB ^ -264359339 ^ -1770079241 ^ -100239626))
         {
            if(param1.descr == EErrorType.NOT_ENOUGH_MONEY)
            {
               GameSwf.instance._e6f0a7b005cacf7751286e97();
            }
            else
            {
               _loc3_ = this._5228cb2713b97bfad3b62e69._129cb753e0b2bd394a6f5707();
               _loc3_.iconType = _2cf09bac3309d0b60408ec5a.ERROR_ICON;
               _loc3_.closeButton.visible = this._62a77e47351374a5927a5c85.indexOf(param1.descr) > (0x7FA348B8 ^ 0xC38EBB ^ -1502530024 ^ 0x26EE0FE4);
               if(param1.descr == EErrorType.EMAIL_IN_USE)
               {
                  GameSwf._6b2ea987f29b60cd755db2f5(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挝援揪控揺挃捪揉揓捗挧揉挳挕插揟掱捃挖捲捆挞捓捋挞揖揮掺","接揝掹掲捗捐捬挜捲採握捖捈掕揨揬"));
               }
               if(param1.params != "" && param1.params != null)
               {
                  _loc4_ = JSON.parse(param1.params);
                  if(_loc4_.hasOwnProperty(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揻挔挗振捜揉挧捶捔挱挎捴挷掊挐挑捌捗掝挹掂掇掝揦掷揈捕挝揈捤掬捗插挜捠挄掣掞掀揝捶挎","換捃捧揲揞揤換捌排揎挊揊挫挱挥挬")))
                  {
                     _loc4_.banEndTimeLeftSec = _c2ad9d37d7be0097d6d2e977._e7ea8192c5aef265a8636557(_loc4_.banEndTimeLeftSec);
                  }
                  _loc3_.text = _c2ad9d37d7be0097d6d2e977.template(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ეၶჿၕႵႱဢွၹၨှၳြီႿქၴოვဒჲဤႊჂႶႮ၅ဝ႙ჹၓႼဵၝჿჰႡტႢჃူသ","ၝဠဠ႕ၩრျშჁტဟႯဇ႖့Ⴘ") + param1.descr,_loc4_);
               }
               else
               {
                  _loc3_.text = _c2ad9d37d7be0097d6d2e977.get(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勳刘动劗勵删刎劺勸劫勛劜助募勺剺勩劮剖勈剌劘剝劕刡勇剺劋勘剠剢劚劵刮加刖劢劃劆剶勵勋","勳勥劇劓刢刦劶劤勪割刣剸勞勹刢刷") + param1.descr);
               }
               _loc3_.show();
            }
         }
         if(param1.descr == _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揆掶揸揷掯挃捇据损掷挮揌捪揻指揑","挈授掑掀挸推捐掠换揖掲揍挏捘描捥"))
         {
            return;
         }
         GameSwf.globalDispatcher.dispatchEvent(new _7efc6797a04145979f149c3b(param1));
      }
      
      private function _f49c8244bf770735ca4f3b73(param1:_cda23e966765f14bf08807f7 = null) : void
      {
         this._0c4b84f55ed6aa3bebc0a8b4();
      }
      
      public function init(param1:_7b223416c1a294d60a664647, param2:_26035541af3e75a81d8bde8c) : void
      {
         var fscModel:_7b223416c1a294d60a664647 = param1;
         var dialogFactory:_26035541af3e75a81d8bde8c = param2;
         this._0c1afa9ce077339926e3e3ba = fscModel;
         this._5228cb2713b97bfad3b62e69 = dialogFactory;
         this._0c1afa9ce077339926e3e3ba.addEventListener(_cda23e966765f14bf08807f7.UPDATE_STATE,this._f49c8244bf770735ca4f3b73);
         this._0c1afa9ce077339926e3e3ba._93c85485e20e2accb736dfc6(ErrorResp,this._3be357fa90e8be737dea7a78);
         this._0c1afa9ce077339926e3e3ba._93c85485e20e2accb736dfc6(FishbonesMiniGameError,_3a85250661e9ed083eed243c);
         this._0c1afa9ce077339926e3e3ba._93c85485e20e2accb736dfc6(EnterLocationErrorResp,this._d7c591fb70e1723867f7dd0a);
         Cc.addSlashCommand(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勱勦剘劌劢剾别剒刌刱勨勚劅勫劑劅勞勈势剏勛剟刻切前剤","勋劢勜劌剻劷券劦到剎劕剌刺劎剺劀"),function():void
         {
            var _loc1_:ErrorResp = new ErrorResp();
            _loc1_.descr = "0000";
            _3be357fa90e8be737dea7a78(_loc1_);
         });
         this._e2f0954b650cf8260faaa61f = new _f11f4587bdf083a8dd45aa84(_141a5f7d84a4cfae1680515b.TYPE_SIMPLE);
         this._0c4b84f55ed6aa3bebc0a8b4();
      }
      
      private function _0c4b84f55ed6aa3bebc0a8b4() : void
      {
         var _loc1_:Boolean = this._0c1afa9ce077339926e3e3ba._e9a9df5df8a24f9cc71d785d();
         Cc.logch(this,_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挴揠揤掸揻掹揊掂挥捽捘掾揃揿掎捠掶挬挧揹掋挖掞揙掅掝捩揀揪揬掽揫揶挙","掀揁採掏採揊揓揇掕掾挺捺挭排捐捣") + _loc1_ + _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("Ⴆႉႏ၄ၺၛ႘჏ეဃဦာႲჄ჊შზဴံ်ცႉზမ","჊ၿၒჍ်ဧႉှဳအჸၥဥျႥၵ") + this._0c1afa9ce077339926e3e3ba.state);
         if(this._0c1afa9ce077339926e3e3ba.state == _cd789badd5efc353d515a554.ERROR)
         {
            this._c5e7e93a60b222a4d962447a();
         }
         else if(_loc1_ != this._bb7ac7fcc9c10d0174cd84b1)
         {
            this._bb7ac7fcc9c10d0174cd84b1 = _loc1_;
            if(this._bb7ac7fcc9c10d0174cd84b1)
            {
               _745ca4cad2f6acc1f3084ea1._73bc65955b0f014b23436384(this._e2f0954b650cf8260faaa61f);
            }
            else if(this._0c1afa9ce077339926e3e3ba._0b8717013a3fea5d5737f1e6() || this._0c1afa9ce077339926e3e3ba.loginFscExtension._e526dab8f6e56165cb2f3f13())
            {
               _745ca4cad2f6acc1f3084ea1._2b080f46e549b4b5a001764c(this._e2f0954b650cf8260faaa61f);
            }
            else
            {
               this._c5e7e93a60b222a4d962447a();
            }
         }
      }
      
      private function _c5e7e93a60b222a4d962447a() : void
      {
         var _loc1_:_0499b052ad03d68cbcb62e2a = this._78a2829c9ffd6b416134c9bb();
         _loc1_.text = _95da7f1147c669197db81295._8f4866de82b7339154180ecb("刮刕刣刏剖刮剿励切副募別劺刖勦創剨刺剶勆勄剴刚刢刂剶勷劼勄剤剻刻刋剆勬劂勅刨剁勣剼勸勱勰劉剣剐剺剟劸刪勓劾勞刕劼劇剏勩刢劧劖勵切劧劚勸刎功刂剽列勤勳努动剚勑","勱刅剘劋划劅剦劦剆勃剛刚劜剜劋劖");
         _loc1_.show();
         _0737efdbd5337ba3fbc64b2e.GAME_FIELD_LAYER.visible = false;
         _0737efdbd5337ba3fbc64b2e.DIALOG_LAYER.visible = false;
         _0737efdbd5337ba3fbc64b2e.LOADING_SCREEN.visible = false;
      }
      
      public function _73bc65955b0f014b23436384() : void
      {
         _745ca4cad2f6acc1f3084ea1._73bc65955b0f014b23436384(this._e2f0954b650cf8260faaa61f);
      }
      
      public function destroy() : void
      {
         this._0c1afa9ce077339926e3e3ba.removeEventListener(_cda23e966765f14bf08807f7.UPDATE_STATE,this._f49c8244bf770735ca4f3b73);
         this._0c1afa9ce077339926e3e3ba._66976e92ca4860923b30ee2a(ErrorResp,this._3be357fa90e8be737dea7a78);
         this._0c1afa9ce077339926e3e3ba._66976e92ca4860923b30ee2a(FishbonesMiniGameError,_3a85250661e9ed083eed243c);
         this._0c1afa9ce077339926e3e3ba._66976e92ca4860923b30ee2a(EnterLocationErrorResp,this._d7c591fb70e1723867f7dd0a);
      }
   }
}

