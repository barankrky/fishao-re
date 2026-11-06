package com.ax3.fishao.display.dialogs
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.display.wrappers.IAssetWrappersProcessor;
   import com.ax3.fishao.Config;
   import com.ax3.fishao.model.info._9f0379c95e97da0c1ff2a833;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import com.ax3.fishao.view.dialogs._095f74ed3dbeaa01adf720f9;
   import com.ax3.fishao.view.wrappers.impl.FrameButtonWrapper;
   import com.ax3.fishao.view.wrappers.impl._5af8e4f295f27d17ff5d7de4;
   import com.ax3.fishao.view.wrappers.impl._6c711f2e808b04f997d6b80a;
   import com.ax3.fishao.view.wrappers.impl._6e29939ae45bb280914eb272;
   import com.ax3.fishao.view.wrappers.impl._89027603939c39853027fd04;
   import com.ax3.utils.math.randomRange;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.text.TextField;
   
   public class _ba23433714481c83e7c1f91e extends _095f74ed3dbeaa01adf720f9
   {
      
      public static const LOGIN_MAX_CHARS:int = -752711198 ^ 0x02091736 ^ -630584952 ^ 0x0B41974C;
      
      private var _asset:LOGIN_DIALOG;
      
      public var dialogBg:MovieClip;
      
      public var loginTitle:TextField;
      
      public var loginUsernameLabel:TextField;
      
      public var loginUsernameField:TextField;
      
      public var loginPassLabel:TextField;
      
      public var loginPassField:TextField;
      
      public var loginForgotPassLabel:TextField;
      
      public var loginButton:FrameButtonWrapper;
      
      public var loginRememberCheck:_5af8e4f295f27d17ff5d7de4;
      
      public var loginRememberLabel:TextField;
      
      public var regTitle:TextField;
      
      public var regUsernameLabel:TextField;
      
      public var regUsernameField:TextField;
      
      public var regPassLabel:TextField;
      
      public var regPassField:TextField;
      
      public var regPass2Label:TextField;
      
      public var regPass2Field:TextField;
      
      public var regEmailLabel:TextField;
      
      public var regEmailField:TextField;
      
      public var regDobLabel:TextField;
      
      public var regMonthDropdown:_6c711f2e808b04f997d6b80a;
      
      public var regDayDropdown:_6c711f2e808b04f997d6b80a;
      
      public var regYearDropdown:_6c711f2e808b04f997d6b80a;
      
      public var regNewsCheck:_5af8e4f295f27d17ff5d7de4;
      
      public var regNewsLabel:TextField;
      
      public var regButton:FrameButtonWrapper;
      
      public var loginElementBg:MovieClip;
      
      private var _eb7a76a93477665f7a1d58f3:_a4444cc3ae1ec3f1c646abff;
      
      public var usernameTextBg:Sprite;
      
      public var passwordTextBg:Sprite;
      
      public var password2TextBg:Sprite;
      
      public var emailTextBg:Sprite;
      
      public var line:Sprite;
      
      protected var _dateDropdownMediator:_6e29939ae45bb280914eb272;
      
      public function _ba23433714481c83e7c1f91e()
      {
         super();
      }
      
      public function init(param1:IAssetWrappersProcessor) : void
      {
         this._asset = new LOGIN_DIALOG();
         addChild(this._asset);
         param1.process(this._asset,this);
         this._3cde20b48c69eb09bb460fb7();
      }
      
      public function _504749bb135409f35cb61e27(param1:Array) : void
      {
         var _loc2_:int = 0x0FD13D7A ^ -950383914 ^ 0x19FFAFF8 ^ -40899355;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x37F2576E ^ -327659810 ^ -1759090788 ^ 0x60574A9C))
            {
               case 0:
                  this._eb7a76a93477665f7a1d58f3 = new _a4444cc3ae1ec3f1c646abff();
                  _loc2_ = 0x48AA37D1 ^ 0x47E03BDE ^ -192100454 ^ -683802841;
                  break;
               case 1:
                  if(this._eb7a76a93477665f7a1d58f3 == null)
                  {
                     _loc2_ = 0x75FFF2DE ^ -1202842529 ^ 0x5AEAC550 ^ -1147136159;
                  }
                  else
                  {
                     _loc2_ = 0x3DB43446 ^ -2126937258 ^ -312261293 ^ 0x7D15C6F1;
                  }
                  break;
               case 2:
                  this._eb7a76a93477665f7a1d58f3.addEventListener(Event.COMPLETE,this._a1ba779e91c7eaceca918661);
                  this._eb7a76a93477665f7a1d58f3.list = param1;
                  this._eb7a76a93477665f7a1d58f3.description.text = _c2ad9d37d7be0097d6d2e977.get(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劓劸刹剝勮劃刃刓剠剗刴剨刨剓勌办剬刃勴剉勹勝動制勠勯劽劦勒刅勚分務则勖剬労勫剹刪刭动勥剚創劖剞劅劖刺刿勓剮努","势助劲刢剾刚剥剺刡剭办划劈劰劚劚")).replace(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劸効剌剀勻刲刄制劰剿剮分刮勁初労剩务刦刯劖剧剪勏劳勁勑劾","勼剮勷刯劷勡剴剥勾劲剮勻剁勭剉劑"),this.regUsernameField.text);
                  this._eb7a76a93477665f7a1d58f3.show();
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function _a1ba779e91c7eaceca918661(param1:Event) : void
      {
         this._eb7a76a93477665f7a1d58f3.removeEventListener(Event.COMPLETE,this._a1ba779e91c7eaceca918661);
         this.regUsernameField.text = this._eb7a76a93477665f7a1d58f3.value;
      }
      
      private function _3cde20b48c69eb09bb460fb7() : void
      {
         this.loginTitle.text = _c2ad9d37d7be0097d6d2e977._a1824cf8cfedd1c4a5e49576(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掗挄援握揶揎掴掴捀揟掷揽挎描掂挙揩捇揰掺挗掱挻挧挺掉挼揝","揞掞掀揖揣换掝揷捊挀掿掽揜掞揃掃"));
         this.loginUsernameLabel.text = _c2ad9d37d7be0097d6d2e977.get(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挶挺挹掦揬挊捱挘揌捳捄推揜推挹掋掬捃揎揧揺捐控掊揱挛挄挨換掃捏换挡揅揙挙揩持插揎挄捷掝捃","掔捹捠掤揜挴挎挄挥捺捾插推推捕捖"));
         this.loginUsernameField.text = _9f0379c95e97da0c1ff2a833.isLocal() ? _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挎挳採揫挷掰採捳掀挷挧捖掂挝揕提","捁挆捥挊揃捑捱捋揩描挱挔捻捿揹掏") : "";
         this.loginUsernameField.maxChars = LOGIN_MAX_CHARS;
         this.loginPassLabel.text = _c2ad9d37d7be0097d6d2e977.get(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၸႹၴဇႤဩႈႃကဩჸჱჟၟႻှူႆႉၴာ၎ჼၽႷၘာဦခႃဆႫ჆ဇအმ","သჴჄႧჃသၱဈၮဵႻဳၛခ၁႓"));
         this.loginPassField.text = _9f0379c95e97da0c1ff2a833.isLocal() ? _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("提掔揆掵掿据挏挐揆挞挱挚揙挨","掖掗挜捿揺掗挘挧捜掚掣捋掴揁挮掀") : "";
         this.loginPassField.displayAsPassword = true;
         this.loginForgotPassLabel.htmlText = _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挼揊挒掲揆捉捌捇掄捩揣捀捦挚挷捌挿揫挝揎掕掦捘揢挍捪捘揿掖揀挓揁","捭捋掮探捋捍掱插掑掵掜掁捠揁捗插") + Config.FORGOT_PASSWORD_URL + _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၑოႧ၊Ⴠ့ွႲთႃၰႰ჉ၰჟခႣရცრტတქ჈တီ႙ီიჶვႿ჊დკ჋ၾႄႿဠႢၝၧႴ","ჷျ၊လ၎ၓသ၁ၠზႚူၛႬႠჀ") + _c2ad9d37d7be0097d6d2e977.get(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剈刊动勠剫劙刡刐勞劆剚勊勭劍剟剫勋勯刍创剏剒劥刉劍刏刐勜劰劊刕勆务剬勦勗刺刞剿分劆刃刧勺刲勫列劸","勾勭剺勊剔剭勑劬刧募剈劋勞刧剬勛")) + _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ိყဗღဪႵၱးႼႵ၊ညၦჍူ჎႖ထၽပက၆ဉ႒","Ⴠრ်ၴဂၼზၦၭဵႄၱჲႚ႔၂");
         this.loginForgotPassLabel.x += this.loginForgotPassLabel.width - this.loginForgotPassLabel.textWidth - (-1275170760 ^ -75275562 ^ -1150774384 ^ -216694405);
         this.loginForgotPassLabel.width = this.loginForgotPassLabel.textWidth + (-819204551 ^ -2092862300 ^ 0x46B05615 ^ 0x0ADACC8D);
         this.loginForgotPassLabel.visible = !Config.HIDE_FORGOT_PASS;
         this.loginRememberLabel.text = _c2ad9d37d7be0097d6d2e977._366a0cba702662de218e1cd3(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၪჂჾ၇ၦ႑ိၔႰႶ჻ဵდၬၹხ႞ႨၶၸკႫဢၾၐ၎ၸძၞဢဣူႭဒာတႻၢၸၠႭၙဇე","႔ႽჇჴၜ჏ငၕႣၞ၂ဤ჏ჯည၊")) ? _c2ad9d37d7be0097d6d2e977.get(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("刖劀劀刊别剾勞刣勂劲刓勎勸剞刌剙剪剐剜劝勗剨劀剞励勼刑劒劃刡劧剪効到剤劭勾劐剱剑勓勈剒劮","劮剾剒刻剞刱勋劕劲勩劗剤剳勓劽勓")) : _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ჿၴ჊၌Ⴅၫ၍ჭဵღჂၑၝჺါငၭႴჷၧჲ႟ჱჰႼ჈႔ီၳွ","ႚ့ႜႴါႫ႓ფၨ႕ႝႂზာၛ၆");
         this.loginButton.label = _c2ad9d37d7be0097d6d2e977._a1824cf8cfedd1c4a5e49576(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掇捌挶挰掁掙捼挢揙掸捽插揼插捱揾挩揼捘捺掐挷捜挢掐捛捸挿捚挚","掩挞揓揘揭掄挝揃揳推掎挒掘捾捔掓"));
         this.regTitle.text = _c2ad9d37d7be0097d6d2e977._a1824cf8cfedd1c4a5e49576(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ီႥၥရႼჅ႐ဋဿံဴၱႧႢ၈ၺႩ჎ჯგဪႲმဿ","ჁဿჀထ၆၅჌ჽ၎လვလრႪၔ၀"));
         this.regUsernameLabel.text = _c2ad9d37d7be0097d6d2e977.get(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勿剉券勺劕剨到劽勞勣制刪刄劒勫勜剂劁勈力刅剞勰刑剦剠剕動勞勭劰剶加勱劄刀劢勪剨剹","劙剭刏刢勐劷別刻劌列剭勹勐別劢勊"));
         var _loc1_:String = String(randomRange(-770323654 ^ 0x15AAE438 ^ -1640741968 ^ 0x598B4BA2,0x574332FB ^ 0x111C9A1A ^ -1142966721 ^ -41838527));
         this.regUsernameField.text = _9f0379c95e97da0c1ff2a833.isLocal() ? _95da7f1147c669197db81295._8f4866de82b7339154180ecb("刲剒列剁务判勖劗勞劐刾刵勍劊劆刍","刬刾刻剖刊券刊刾刱刯剗勯务劏剢勭") + _loc1_ : "";
         this.regUsernameField.maxChars = LOGIN_MAX_CHARS;
         this.regPassLabel.text = _c2ad9d37d7be0097d6d2e977.get(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劏加勿劒刢勑剏勂剸刟副劣劎勓剰勉勈動刄効劦刪刅剈剳剾勀剟勉剬剶勧","劄刂劸剟剬勧効剝剫刅勜劓勍劝劸刈"));
         this.regPassField.text = _9f0379c95e97da0c1ff2a833.isLocal() ? _95da7f1147c669197db81295._8f4866de82b7339154180ecb("剖剫剎勤勇勚劖別刹切勶刦劳动","勓删剃力勊勉劙勳劅剀刲勇勵刿刷剫") : "";
         this.regPassField.displayAsPassword = true;
         this.regPass2Label.text = Config.IS_BETA ? _c2ad9d37d7be0097d6d2e977.get(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("切割劶勑初剢劙剼剅勀勻勲勰剡刲加劕勭割刡勺刪劤劂刬剚剺刹刡剝刔剻刣剡勖勛勑剤劗剽划剀勡刖","刴劜刉剿劭勂剂勖別剋劻删刟刬劰刻")) : _c2ad9d37d7be0097d6d2e977.get(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掄揿振掛揟挳掵掑振捐掮揗掶掂挺掋揅掬捺掗捞揠援挡挺捺捼揖掩掽挖挐掼掲","掵捙揵換揿掾挊揥推捳揓掙挻捇挤挥"));
         this.regPass2Field.text = _9f0379c95e97da0c1ff2a833.isLocal() ? _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၞძ჉ႱဂႧႂဘႬၛၘၗဗჄ","ტ်ჳნုဆရှ჏ႎჳဈလფဉ჌") : "";
         this.regPass2Field.displayAsPassword = !Config.IS_BETA;
         this.regEmailLabel.text = _c2ad9d37d7be0097d6d2e977.get(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("၁၏႖ჯ႔ႡბႶီဂိ჈ၽ၌ႤလဃნၚဉეႫၕႋႅဤ჎၀၎ကြშၪძ","ႤႰ၍ူ჋ရ႘ဢაဳႩၤ၎ဗძჷ"));
         this.regEmailField.text = _9f0379c95e97da0c1ff2a833.isLocal() ? _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ႇთჸლႬႋဠ၅ရ၅ဿძၑ့ၡဗ","႙Ⴥဠ၇ၹၞრႜၷိႋဃႦႬ၅ွ") + _loc1_ + _95da7f1147c669197db81295._8f4866de82b7339154180ecb("劀刦刚勖刯劤刻剝勫剮勹勗劚劼初勹剭劍刻劃勅剔劉刉劋労剓勎勳勻","刯劬勮勛勔剞刻刌刕分刭剣副勶劒勫") : "";
         this.regDobLabel.text = _c2ad9d37d7be0097d6d2e977.get(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("利劼労功努剆刱剿劈則剱刜勦勸刲剞劀劽剸剩剀剅剏勪剑勃剤劬刦劲","助劧劁到勇剂劋剭剟列勢剹制勋刢勊"));
         this._dateDropdownMediator = new _6e29939ae45bb280914eb272();
         this._dateDropdownMediator.config(this.regDayDropdown,this.regMonthDropdown,this.regYearDropdown);
         this.regNewsLabel.text = _c2ad9d37d7be0097d6d2e977.get(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("႟ၽႏအၢႧၬႮ႘၄ဧႪသာႀဤႽ჋Ⴂც႔ႠၽၻირူိဌჅხၯ","႔ႤါဏၮႨზ႕Ⴎၤဂ჈ႉႲჳ჈"));
         this.regNewsCheck.state = _89027603939c39853027fd04.SELECTED;
         this.regButton.label = _c2ad9d37d7be0097d6d2e977._a1824cf8cfedd1c4a5e49576(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捈捇捌捊捆捎挬掸揤捿揪挙揀挗捿掲挧挑挢掚捙挿描捎揺捓","捸掿揄捏捺持捲掠挾掱挃掵掫指掘挸"));
         this.loginUsernameField.tabIndex = -1699239543 ^ 0x2A96DEF3 ^ -845198604 ^ 0x7DBE3D8F;
         this.loginPassField.tabIndex = -486599330 ^ -1854974520 ^ -2140469072 ^ -201635804;
         this.regUsernameField.tabIndex = 0x0A53CF42 ^ -1022300232 ^ -771880020 ^ 0x18BD2B55;
         this.regPassField.tabIndex = -184500097 ^ 0x286CC86E ^ -1241398947 ^ 0x6B6DC948;
         this.regPass2Field.tabIndex = -828225755 ^ -541146825 ^ 0x1C2D7AAE ^ 0x0D31FCB9;
         this.regEmailField.tabIndex = -1849401241 ^ -1183186520 ^ 0x687FD59B ^ 0x40C1B452;
      }
      
      override public function centerToRect(param1:int, param2:int, param3:int, param4:int) : void
      {
         super.centerToRect(param1,param2,param3,param4);
      }
      
      override public function get width() : Number
      {
         return this.dialogBg ? this.dialogBg.width : this.width;
      }
      
      override public function get height() : Number
      {
         return this.dialogBg ? this.dialogBg.height : this.height;
      }
   }
}

