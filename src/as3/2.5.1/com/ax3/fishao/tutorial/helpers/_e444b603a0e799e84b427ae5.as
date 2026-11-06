package com.ax3.fishao.tutorial.helpers
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.events._02fbe4cbe9e83f1b8c711799;
   import com.ax3.events._8365e76620d1837a83b767d1;
   import com.ax3.fishao.Config;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.display.popups._73899a4de8f83c8d2c26f545;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import com.ax3.fishao.view.dialogs._0737efdbd5337ba3fbc64b2e;
   import com.ax3.fishao.view.dialogs.base.views.interfaces._61fefd944ac699b66c14cf80;
   import com.ax3.fishao.view.wrappers.impl.FishaoButtonWrapper;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.text.TextField;
   
   public class _e444b603a0e799e84b427ae5 extends _450aa236949c3aac4e3c79f5
   {
      
      private var _95973a1f05cd1b839c168e8c:DisplayObjectContainer;
      
      private var _65f5d82c93c23b4ff856ee42:_73899a4de8f83c8d2c26f545;
      
      private var _920d5bb11aac6eb9db932ab8:_73899a4de8f83c8d2c26f545;
      
      private var _2a64abdcc055736d48d71399:FishaoButtonWrapper;
      
      private var _22b47d3ff91a6d7a01730bf5:FishaoButtonWrapper;
      
      private var _c4d8efe820a46ac2990d4050:String;
      
      private var _54f5ca4bf239b4ef96b98750:Number;
      
      private var _d3035f967cdc58050740c758:DisplayObjectContainer;
      
      private var _332bd483082b0b50d0c58b87:DisplayObjectContainer;
      
      private var _260033e53dc9fd10a296f595:DisplayObjectContainer;
      
      private var _5dbf0b5b700cbaf0af86c0db:DisplayObjectContainer;
      
      private var _b5c9e76424eae5b006a56e23:String;
      
      public function _e444b603a0e799e84b427ae5()
      {
         super();
         this.init();
      }
      
      private static function _2eaf05ef7d6ce715f97120a2(param1:Event) : void
      {
         GameSwf.instance.managerTutorial.tutorialInProgress._0e1bc13a989d12a3776df86c();
      }
      
      public function set sizeLabel(param1:String) : void
      {
         this._b5c9e76424eae5b006a56e23 = param1;
         this._0ef01665eee6ae1e47fc2987();
      }
      
      public function get viewButtonEnter() : DisplayObjectContainer
      {
         return this._260033e53dc9fd10a296f595;
      }
      
      public function get buttonNext() : FishaoButtonWrapper
      {
         return this._2a64abdcc055736d48d71399;
      }
      
      public function get buttonOk() : FishaoButtonWrapper
      {
         return this._22b47d3ff91a6d7a01730bf5;
      }
      
      public function get navigation() : DisplayObjectContainer
      {
         return this._332bd483082b0b50d0c58b87;
      }
      
      public function get source() : DisplayObjectContainer
      {
         return this._95973a1f05cd1b839c168e8c;
      }
      
      public function get labelBig() : _73899a4de8f83c8d2c26f545
      {
         return this._65f5d82c93c23b4ff856ee42;
      }
      
      public function get labelSmall() : _73899a4de8f83c8d2c26f545
      {
         return this._920d5bb11aac6eb9db932ab8;
      }
      
      public function set textBig(param1:String) : void
      {
         this._65f5d82c93c23b4ff856ee42.text = param1;
         this._65f5d82c93c23b4ff856ee42.source.visible = true;
      }
      
      public function set textSmall(param1:String) : void
      {
         this._920d5bb11aac6eb9db932ab8.text = param1;
         this._920d5bb11aac6eb9db932ab8.source.visible = true;
      }
      
      override protected function _b3c655b16ded936959ea78cd(param1:Event) : void
      {
         this._95973a1f05cd1b839c168e8c.x = (Config.SCREEN_WIDTH - this._95973a1f05cd1b839c168e8c.width) / (-1415585524 ^ -463168900 ^ 0x1B3D37A6 ^ 0x54C64CD4);
         var _loc2_:Number = this._95973a1f05cd1b839c168e8c.height / (0x32C9523A ^ 0x4E319D9B ^ -828241394 ^ -1302674003);
         var _loc3_:Number = -1938311122 ^ -1169194215 ^ -934637036 ^ -26040029;
         switch(this._c4d8efe820a46ac2990d4050)
         {
            case _61fefd944ac699b66c14cf80.ETVA_BOTTOM:
               §§push(-193270983 ^ 0x2D7BD292 ^ -1314293789 ^ 0x68A84E48);
               break;
            case _61fefd944ac699b66c14cf80.ETVA_TOP:
               §§push(-595066984 ^ -326413318 ^ 0x61E8BDB8 ^ 0x51E411DB);
               break;
            case _61fefd944ac699b66c14cf80.ETVA_CENTER:
               §§push(-2134385526 ^ 0x40DCCCBE ^ -2064409112 ^ 0x44E88DDE);
               break;
            default:
               §§push(-529551634 ^ 0x6DECD030 ^ -1043459973 ^ 0x4C4D6EA6);
         }
         switch(§§pop())
         {
            case 0:
               _loc3_ = Config.SCREEN_HEIGHT - this._95973a1f05cd1b839c168e8c.height + this._54f5ca4bf239b4ef96b98750;
               break;
            case 1:
               _loc3_ = (0x6682FCDC ^ -1368182611 ^ 0x3AAFF6F9 ^ -228705656) + this._54f5ca4bf239b4ef96b98750;
               break;
            case 2:
               _loc3_ = Config.SCREEN_HEIGHT / (-310210876 ^ -1835307191 ^ -1596983418 ^ -539617783) - _loc2_ + this._54f5ca4bf239b4ef96b98750;
               break;
            default:
               Debug.assert(false);
         }
         this._95973a1f05cd1b839c168e8c.y = _loc3_;
      }
      
      private function init() : void
      {
         this._95973a1f05cd1b839c168e8c = new gViewTutorialDialog();
         var _loc1_:TextField = Debug.assertProperty(this._95973a1f05cd1b839c168e8c,_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("Ⴀ၍ဿ჌႓ნႠဎჇၦၙტႾႡჴ႖ၽၚၛၠჲဿႺႂ","ရႱ႟ႸႢრჿ჏၅ეၦႤၶဆ၎ဌ"),TextField);
         _loc1_.mouseEnabled = false;
         this._65f5d82c93c23b4ff856ee42 = new _73899a4de8f83c8d2c26f545(_loc1_);
         var _loc2_:TextField = Debug.assertProperty(this._95973a1f05cd1b839c168e8c,_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劭勁勀剜创勩剻剣刚勠勏剒刱勩别勢剀劙勇刉剎勵勆勧劌劁刱剼","劃劯勳劢剛勷剺劶勄剸劆刎劮剼刅劁"),TextField);
         _loc2_.mouseEnabled = false;
         this._920d5bb11aac6eb9db932ab8 = new _73899a4de8f83c8d2c26f545(_loc2_);
         var _loc3_:DisplayObjectContainer = Debug.assertProperty(this._95973a1f05cd1b839c168e8c,_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勳剧勪劚勾劏剤劺則剒剳劚劙勊勯劼剂劅刲刪劺勉劓剖剴勡剕勶","剭刍劜劷刘勺剋勫勑劌剺剺刋剀劙刍"));
         this._2a64abdcc055736d48d71399 = new FishaoButtonWrapper();
         this._2a64abdcc055736d48d71399.process(_loc3_);
         this._2a64abdcc055736d48d71399.handler = _2eaf05ef7d6ce715f97120a2;
         this._2a64abdcc055736d48d71399.label = _c2ad9d37d7be0097d6d2e977.get(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("Ⴚႜჳဧႊၣ႓ჶრႸံၑჵဵၕၠტေႧၶჟဘဟ၁ဩဦႂႚ","၈ႚဟင႙ქ႖ၠဤႯႡႦၪ၊ვဴ"));
         var _loc4_:DisplayObjectContainer = Debug.assertProperty(this._95973a1f05cd1b839c168e8c,_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၸဲრခს႒႔့Ⴌၧჴႚူუၛဵთဢၖჶၫၢၘ႗","စჹႲვ႒ုဢჂဧშთႺმ႑႓ဝ"));
         this._22b47d3ff91a6d7a01730bf5 = new FishaoButtonWrapper();
         this._22b47d3ff91a6d7a01730bf5.process(_loc4_);
         this._22b47d3ff91a6d7a01730bf5.handler = _2eaf05ef7d6ce715f97120a2;
         this._22b47d3ff91a6d7a01730bf5.label = _c2ad9d37d7be0097d6d2e977.get(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勎剆刕剠劤勭勌刌剳判勠制则勖刊劽剫则劮剹勜刕勤剖劰勝労劗剷勛劰勶劣勯劚勪剧刅割劒勛剈刜功勭勌勶制劶剎刢勡勼劾劄刊勵劚劌剼刬勦勭刼勧剺制剃劳劓勜剸","剚刵剸劐刱剔刟勁剩删到刘劀劾剣剏"));
         this._d3035f967cdc58050740c758 = Debug.assertProperty(this._95973a1f05cd1b839c168e8c,_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捏捬捸揌揚挨挖揈採挵揦挶挷掋挈揨探掤掂揣揉揲揞持揞掵捨挎","揿挥掆挦挄捒按挌捆掴揉挾捊揁掊挬"));
         this._332bd483082b0b50d0c58b87 = Debug.assertProperty(this._95973a1f05cd1b839c168e8c,_95da7f1147c669197db81295._8f4866de82b7339154180ecb("募剺劻勺勬勹刍務剟剘劍刴刓剆劅刜勠勮剡劷動劀刕刔則劘勦删","剏刈劊剄剶剖剳劔刀劣剕勈勲剳劷勽"));
         this._260033e53dc9fd10a296f595 = Debug.assertProperty(this._95973a1f05cd1b839c168e8c,_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掕捍揎挚挤按掟挱挋捱揯揕捿掦掉掸揤探捺揙挫揂掗挹揕揮措挒捜挐捹捎揎掀揈捧捉推","换捤揖掭挵换捶捑挕掁揱挊挟揸换捎"));
         this._5dbf0b5b700cbaf0af86c0db = Debug.assertProperty(this._95973a1f05cd1b839c168e8c,_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揜捃挨掓捾捒揉捾捨挦挮揬捏捭掺掏揯掯掲揹揁揠换捈","掕掆挾掆揣掾挢揉掣掤援掰揝挡挲捴"));
         this.sizeLabel = _f68c6ad080882f1d18d7d86d.ETPS_MEDIUM;
         this._bd3ca576113ec97b28fb94a7(-2097604934 ^ -1798812454 ^ 0x4864277D ^ 0x5E557D1D);
         _02fbe4cbe9e83f1b8c711799.addEventListener(this,GameSwf.globalDispatcher,_8365e76620d1837a83b767d1.RESIZE,this._b3c655b16ded936959ea78cd);
      }
      
      private function _0ef01665eee6ae1e47fc2987() : void
      {
         switch(this._b5c9e76424eae5b006a56e23)
         {
            case _f68c6ad080882f1d18d7d86d.ETPS_SMALL:
               §§push(0x354446A6 ^ -95163597 ^ -1338664712 ^ 0x7F22356D);
               break;
            case _f68c6ad080882f1d18d7d86d.ETPS_MEDIUM:
               §§push(-717583854 ^ 0x67664636 ^ 0x5D263F0E ^ -277155029);
               break;
            default:
               §§push(0x0AD2CBA0 ^ -2070489997 ^ 0x3226A135 ^ -1134379292);
         }
         switch(§§pop())
         {
            case 0:
               this._95973a1f05cd1b839c168e8c.scaleX = _433075a5d49397e40222eeae._9417d5d828724209ec5cfbb1("ဪၚု჻Ⴖ႐လၻႇჇနဍၡၷႭၵ၇။ၪေႜၞးႂ","჈ႈႍ၁ეဇၷႭიူႂႍဧဳႿီ");
               this._95973a1f05cd1b839c168e8c.scaleY = _39d7d82359bf8046fe8ef6c4._ed4a735c5a6981f99dda5b73("掾插挼揪掳挕捧捄揙掕挋掊挙掀揑捁捶揫按換揯捺掅捨","挹挠掹揿掇捴掿捋揨挸捏振掘捓捖挔");
               this._65f5d82c93c23b4ff856ee42.updateRect();
               this._920d5bb11aac6eb9db932ab8.updateRect();
               break;
            case 1:
               this._95973a1f05cd1b839c168e8c.scaleX = 0x5FC682DA ^ 0x01F661ED ^ 0x78EF8775 ^ 0x26DF6443;
               this._95973a1f05cd1b839c168e8c.scaleY = 0x0F2A9252 ^ -685403408 ^ 0x3BD53685 ^ -472238554;
               this._65f5d82c93c23b4ff856ee42.updateRect();
               this._920d5bb11aac6eb9db932ab8.updateRect();
               break;
            default:
               Debug.assert(false,_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ခခႪა႓ၖၤდထၲ၁ဋဆშძბჳဥွဒဇါၙႥဥခဠက႑၌၆ဃငქၑცႤႏႸကႌ့Ⴔუဿဉჳငသ჋ဒვჯ჊ჍကჇႧწჀჼჺဝၷჩჟႧစဃၱდ჻ၶ၇၉ိၘၳၐႺဖၘဧၓဤჍဒႊჾႦၑႨအိၝၹဍၾႄဂძჴႦႶსႠၗဘၖၤယႺၚჹ႓၂","ႁြၙ႐နၚჱၥჺႽႜၭ჈ႇႩ႟") + this._b5c9e76424eae5b006a56e23);
         }
      }
      
      public function _81aa5d8d1d01452f84568fed() : void
      {
         this._d3035f967cdc58050740c758.width = 0x29EA6B48 ^ -2122827284 ^ -795362993 ^ 0x7805E9A5;
         this._d3035f967cdc58050740c758.height = 0x6980AA4F ^ -982603111 ^ -1787383454 ^ 0x3998B121;
         this._5dbf0b5b700cbaf0af86c0db.width = 0x7913DF8D ^ 0x3F5D50A1 ^ -1799926882 ^ -755383249;
         this._5dbf0b5b700cbaf0af86c0db.height = -926389590 ^ 0x26DF0B25 ^ -294219465 ^ 0x61F0CF;
         this._5dbf0b5b700cbaf0af86c0db.x = -169663727 ^ -1991462983 ^ 0x18941706 ^ 0x643B99A3;
         this._5dbf0b5b700cbaf0af86c0db.y = -1315782122 ^ 0x0E929E2B ^ 0x1E9C4D3E ^ -1583607512;
         this._332bd483082b0b50d0c58b87.width = 0x58AFAB7A ^ -1865007136 ^ -778681130 ^ 0x19EFD100;
         this._332bd483082b0b50d0c58b87.height = -1687652020 ^ -2041969554 ^ -1808266707 ^ -1994754233;
         this._332bd483082b0b50d0c58b87.x = -592994584 ^ -1896862450 ^ 0x4B613E9F ^ 0x19368D02;
         this._332bd483082b0b50d0c58b87.y = 0x5CB84741 ^ 0x17FF0904 ^ -1608830027 ^ -346260017;
         this._260033e53dc9fd10a296f595.width = 0x2FD28732 ^ -477885795 ^ 0x0A4CDA8D ^ -971352223;
         this._260033e53dc9fd10a296f595.height = -2066086942 ^ -76858593 ^ -1961965512 ^ -188747527;
         this._260033e53dc9fd10a296f595.x = 0x200107DD ^ 0x0F7174A4 ^ 0x5AE890D5 ^ 0x7598E2AD;
         this._260033e53dc9fd10a296f595.y = -1439181763 ^ -861646106 ^ 0x5C7D11D3 ^ 0x3AEE9742;
         this._920d5bb11aac6eb9db932ab8.source.width = 0x6AF0952E ^ -306480582 ^ -467755270 ^ 0x6355703D;
         this._920d5bb11aac6eb9db932ab8.source.height = 0x246AA316 ^ -2007616915 ^ 0x48BF0526 ^ -461138920;
         this._920d5bb11aac6eb9db932ab8.source.x = -201089763 ^ -1880256297 ^ -1532693597 ^ -548733357;
         this._920d5bb11aac6eb9db932ab8.source.y = 0x365FA0FA ^ 0x3414638B ^ 0x2E764CBF ^ 0x2C3D8F8A;
         this._920d5bb11aac6eb9db932ab8.updateRect();
         this._65f5d82c93c23b4ff856ee42.source.width = -1690186718 ^ -624189148 ^ 0x7781D80B ^ 0x360BB711;
         this._65f5d82c93c23b4ff856ee42.source.height = 0x12993820 ^ 0x65B846E7 ^ -1055323543 ^ -1237814133;
         this._65f5d82c93c23b4ff856ee42.source.x = -1660910463 ^ 0x21120D50 ^ 0x54D48185 ^ -389674931;
         this._65f5d82c93c23b4ff856ee42.source.y = -1415317897 ^ -2096225545 ^ 0x669087AF ^ 0x4E3D5338;
         this._65f5d82c93c23b4ff856ee42.updateRect();
         this._22b47d3ff91a6d7a01730bf5.x = -998373567 ^ 0x325F3C1A ^ 0x0A97BD07 ^ -55146880;
         this._22b47d3ff91a6d7a01730bf5.y = -1831151812 ^ 0x6AC4670E ^ -1236426454 ^ 0x4E531142;
         this._2a64abdcc055736d48d71399.x = -497140562 ^ 0x5A652942 ^ 0x270D3E2B ^ -1623839967;
         this._2a64abdcc055736d48d71399.y = 0x5939057A ^ 0x74AF2CF9 ^ 0x24B1106D ^ 0x09273987;
      }
      
      public function _1c22d37e390a987ff97dfc1d(param1:String) : void
      {
         this._65f5d82c93c23b4ff856ee42.source.height = -976269765 ^ 0x76FEC53A ^ -872333963 ^ 0x7F30B61D;
         this._65f5d82c93c23b4ff856ee42.updateRect();
         this.textBig = param1;
      }
      
      public function _1b42bf66b39b98f20155e7bf() : void
      {
         this._65f5d82c93c23b4ff856ee42.source.height = -1522135773 ^ -101222019 ^ 0x62931BFF ^ 0x3E226F9D;
         this._65f5d82c93c23b4ff856ee42.updateRect();
         this._22b47d3ff91a6d7a01730bf5.visible = true;
      }
      
      public function _3ad38a7de668e4a8eeb93c3e() : void
      {
         switch(this._b5c9e76424eae5b006a56e23)
         {
            case _f68c6ad080882f1d18d7d86d.ETPS_SMALL:
               §§push(0x28CF6B69 ^ 0x730A9221 ^ 0x6833B24D ^ 0x33F64B05);
               break;
            case _f68c6ad080882f1d18d7d86d.ETPS_MEDIUM:
               §§push(0x1DB2AAC0 ^ -1069734026 ^ -929727950 ^ 0x151AF785);
               break;
            default:
               §§push(0x29C00A16 ^ -1444165124 ^ -15931737 ^ 0x7F27254F);
         }
         switch(§§pop())
         {
            case 0:
               break;
            case 1:
               this._920d5bb11aac6eb9db932ab8.source.y = -425269823 ^ -186522046 ^ 0x6A8D980F ^ 0x78CA9BBB;
               this._920d5bb11aac6eb9db932ab8.source.height = 0x27B494C8 ^ 0x3C05F652 ^ 0x4735096B ^ 0x5C846BDE;
               this._920d5bb11aac6eb9db932ab8.updateRect();
               break;
            default:
               Debug.assert(false,_95da7f1147c669197db81295._8f4866de82b7339154180ecb("制刌勠勋勬刴勞勥勗刟劏剧则勲刑勃刾剓勂勔勮勈剞刀勑剚勫劺勔劍劋勘劳刓勅劵劐剖勈剏劶劏剜刬刅到剞刜前刉勳剽創到刅劳効列剠刵劅勳勧勻刹勺势剮剄勹制剄劋刭剀刽剃剬勲剀劄勪劈刨勒劳劒助功勐勋刴剉刚剚務勿勱刯勡勏制勀劀勈刏刟则劚劌剝劶劘剤勊勻","刜列劦効刜刪勮勶勍勠勏勯劣刴剁勯") + this._b5c9e76424eae5b006a56e23);
         }
         this._2a64abdcc055736d48d71399.visible = true;
      }
      
      public function _402cdc54b9a55191346943bb() : void
      {
         switch(this._b5c9e76424eae5b006a56e23)
         {
            case _f68c6ad080882f1d18d7d86d.ETPS_SMALL:
               §§push(-618669981 ^ -1443672413 ^ -1772065304 ^ -460522712);
               break;
            case _f68c6ad080882f1d18d7d86d.ETPS_MEDIUM:
               §§push(0x416A6291 ^ -1985292561 ^ -762906505 ^ 0x1A464C08);
               break;
            default:
               §§push(-673273401 ^ 0x1A6E304B ^ -1351016159 ^ 0x62C9B8AF);
         }
         switch(§§pop())
         {
            case 0:
               break;
            case 1:
               this._920d5bb11aac6eb9db932ab8.source.y = -1234968656 ^ -414262631 ^ 0x0A840972 ^ 0x5BA90C6A;
               this._920d5bb11aac6eb9db932ab8.source.height = -521929597 ^ 0x31A02CCC ^ 0x2A85878D ^ -70887461;
               this._920d5bb11aac6eb9db932ab8.updateRect();
               break;
            default:
               Debug.assert(false,_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ცှნဦၷၔ჻႞ႧဟႢ၂ညႠჭဲၖဢၳ၀ႛၙၶჀტဠ႑ဌჵၩ႙ုဌჂႨ჎Ⴛဴူၠဴဴ႟၄Ⴜၨ႐႑ဉဦၺႥူသဦဉ၇ქჍჟႦၗႰာႥဥငႉ၈ယႭႪၢႪၫၶႁ႕ၦထႩ႔ჾჍ၂ဵႍှၻႽႇცნყეည၆Ⴥြ္ၿဒ၎჉ါအျ႒ဨၮၱဟნၾထယ","ဋဠღၽ႓ღဇႤွႱႄႂ჋ၹၜჰ") + this._b5c9e76424eae5b006a56e23);
         }
         this._260033e53dc9fd10a296f595.visible = true;
      }
      
      public function showPopup() : void
      {
         _0737efdbd5337ba3fbc64b2e.TUTORIAL_LAYER.addChild(this._95973a1f05cd1b839c168e8c);
      }
      
      public function hidePopup() : void
      {
         var _loc1_:int = 0x6B6C9A64 ^ -1238248809 ^ 0x52EDD343 ^ 0x757071EA;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (-1652771005 ^ 0x631190F8 ^ -558132389 ^ -636068165))
            {
               case 0:
                  this._54f5ca4bf239b4ef96b98750 = -1424671840 ^ 0x676CFA1B ^ 0x03081C24 ^ -814621252;
                  return;
               case 1:
                  if(this._95973a1f05cd1b839c168e8c.parent != null)
                  {
                     _loc1_ = -264848836 ^ -865934321 ^ 0x5518C2CF ^ -1819511131;
                  }
                  else
                  {
                     _loc1_ = -913967675 ^ -1948346080 ^ 0x2B10277E ^ -1819565632;
                  }
                  break;
               case 2:
                  this._95973a1f05cd1b839c168e8c.parent.removeChild(this._95973a1f05cd1b839c168e8c);
                  _loc1_ = -303479576 ^ -1462987281 ^ -1527854687 ^ 0x1B0BF2FD;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function _2533a4be141ff5419474243f() : void
      {
         this._2a64abdcc055736d48d71399.visible = false;
         this._22b47d3ff91a6d7a01730bf5.visible = false;
         this._332bd483082b0b50d0c58b87.visible = false;
         this._260033e53dc9fd10a296f595.visible = false;
         this._65f5d82c93c23b4ff856ee42.source.visible = false;
         this._920d5bb11aac6eb9db932ab8.source.visible = false;
      }
      
      public function _406b04d0c8d59430e3058ade(param1:Number) : void
      {
         this._c4d8efe820a46ac2990d4050 = _61fefd944ac699b66c14cf80.ETVA_TOP;
         this._54f5ca4bf239b4ef96b98750 = param1;
         this._b3c655b16ded936959ea78cd(null);
      }
      
      public function _bd3ca576113ec97b28fb94a7(param1:Number) : void
      {
         this._c4d8efe820a46ac2990d4050 = _61fefd944ac699b66c14cf80.ETVA_CENTER;
         this._54f5ca4bf239b4ef96b98750 = param1;
         this._b3c655b16ded936959ea78cd(null);
      }
      
      public function _7cac1e27345942ee6d70642a(param1:Number) : void
      {
         this._c4d8efe820a46ac2990d4050 = _61fefd944ac699b66c14cf80.ETVA_BOTTOM;
         this._54f5ca4bf239b4ef96b98750 = param1;
         this._b3c655b16ded936959ea78cd(null);
      }
   }
}

