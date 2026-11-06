package com.ax3.fishao.display
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.display.wrappers.IAssetWrapper;
   import com.ax3.fishao.locations.base._24fc30cfc3c855ea21a231e8;
   import com.ax3.fishao.tutorial._9b5482b3978b7abe1547abb8;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.states._0c5d7c87ef42d62a09e53b93;
   import com.ax3.fishao.view.wrappers.impl._7ab28de02e0db526b6beee32;
   import com.ax3.fishao.view.wrappers.impl._993562a4c781d3afbd136046;
   import com.junkbyte.console.Cc;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.events.FocusEvent;
   import flash.events.MouseEvent;
   import flash.utils.setTimeout;
   
   public class _5d0a89702d74c00ec5e6c83b implements IAssetWrapper
   {
      
      private static var _ce174a2e82cd819b668f72b0:int = 0x5EB34B6A ^ 0x3587090E ^ 0x0B92DFFF ^ 0x60A69D9B;
      
      public var mapIcon:_b61f883bdc804cf4115fe314;
      
      public var shopIcon:_b61f883bdc804cf4115fe314;
      
      public var inventoryIcon:_b61f883bdc804cf4115fe314;
      
      public var fishdexIcon:_b61f883bdc804cf4115fe314;
      
      public var tournamentIcon:_b61f883bdc804cf4115fe314;
      
      public var communicationIcon:_ffd2124ac79bf341baaf9527;
      
      public var rankingsIcon:_b61f883bdc804cf4115fe314;
      
      public var exitIcon:_b61f883bdc804cf4115fe314;
      
      public var chatButton:_993562a4c781d3afbd136046;
      
      public var chatPanel:_7ab28de02e0db526b6beee32;
      
      private var _asset:DisplayObjectContainer;
      
      public var isTournament:Boolean = false;
      
      private var _16b36d337742d1702e9f2c65:int;
      
      public function _5d0a89702d74c00ec5e6c83b()
      {
         super();
         this._16b36d337742d1702e9f2c65 = _ce174a2e82cd819b668f72b0++;
      }
      
      public function process(param1:DisplayObject) : void
      {
         this._asset = DisplayObjectContainer(param1);
         this.mapIcon = new _b61f883bdc804cf4115fe314();
         this.mapIcon.tooltipConfig = {(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劺劆刣劫劌刁勀刹勀劳劇刞劅剭前刚","劸勛剛勯剘勧剦勍剷剱判刱勖勷加勴")):_c2ad9d37d7be0097d6d2e977.get(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ဓჹჲၲ့ၒီႠဳბၶၱဂဲႛၐარၪဩဍၗႨၚစၢႭხဥဇၠჃျၩ့၈სႈႎႋပთ","၆ဿၷခပႶႱკၛႴဒჶဉၟႛင"))};
         this.shopIcon = new _b61f883bdc804cf4115fe314();
         this.shopIcon.tooltipConfig = {(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၞဍჲၥႏိက့ၬ჻჆შၚ၁်ၒ","჆ႉႷშႊွႏၠႆုႹ႗ဟဈႻ႘")):_c2ad9d37d7be0097d6d2e977.get(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("採捀揿振指掞捅捽掷掛掰揧掻掱掔挋掣损挖揉挍掏捽挞揰揗捬挚挫掰挢掗掍掍挄掴揥揾揰挊挴挠掸掾","捺捣捦捏掇揕挏提挏挸揑损挤挏揘掁"))};
         this.inventoryIcon = new _b61f883bdc804cf4115fe314();
         this.inventoryIcon.tooltipConfig = {(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剃劮务刮劒勰勫勦勔刽勓刚勩勗勍劑","劃刟劫劻勷劂剜刳勐剈勃券刬勸剞勮")):_c2ad9d37d7be0097d6d2e977.get(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ဣჹ၅ၒႶჲၢၝღၯჍၵ჉့ၗစီფၙၤႃႆ႐ဌႧၽႨဥၜဿျဦႡლ၃ၪ႕კႿႴძ၈Ⴔဓჿზხჽႃდჸႜၴဘ","ဘႫၒၻႂ჈ၙႌဗႆ჻ჀႸၴဂ၈"))};
         this.fishdexIcon = new _b61f883bdc804cf4115fe314();
         this.fishdexIcon.tooltipConfig = {(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勎剘剤剓剠刘勎剸勄分劅刅刵則劚勤","劜刅到剈剚努劆剂勫勦初刮刻剌切勥")):_c2ad9d37d7be0097d6d2e977.get(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剪剶勓剳刡勲劾勤勬勄劭励勼勨助剱剮勱劒勮勰勂勛刋勤劵劤删剒削勠劜剫刁刂剭勭劉勛劬剖勏刮刏剥勴剦加剩刺","勻劃剁劧劍剞勱刊刐剆刴勊划刮删助"))};
         this.tournamentIcon = new _b61f883bdc804cf4115fe314();
         this.tournamentIcon.tooltipConfig = {(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劵剭剀労剕剕勑劧刏劽劇剧剦剏劰劆","劯努划勤剐券力劜刬剬刀剛劓努劣刊")):_c2ad9d37d7be0097d6d2e977.get(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掿挏挂捌挐捼揿挐捌挑捣捚揞揨掸揪捵掁揘掂掄挒挂换掣捡捑捫掟揢挦揀揙揊掵捝挲揋掋揵揥捋排捠掖揿挜揩揮挈捝捒揤捞援持","掆揎揞排捵揮挰揋揗挖揂挤掸捃描捁"))};
         this.rankingsIcon = new _b61f883bdc804cf4115fe314();
         this.rankingsIcon.tooltipConfig = {(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掺揶捗捘挝捾挢挆措掖持挼掘揷掭挀","揲捡挡挕揰挧掸掝掞挓据捒揍捐挳揿")):_c2ad9d37d7be0097d6d2e977.get(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捷揠揥挦掞援挛挏挘捂採捗掕掼揯掽掛授掮掎揦挰挕揼掱掍揎掚掝捉掰捲捕捏提揚捽捺挼捂捴掖描捕掉採挏掑捤揎捡揚","捿挬挘捼掺挀捡挊握揗挰挚推挱揆揺"))};
         this.communicationIcon = new _ffd2124ac79bf341baaf9527();
         this.communicationIcon.tooltipConfig = {(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၾၤႀရၕဓၲხ჻მ჎ထဳႦဌ၉","။၏Ⴙၐ၎სၗႦႣႴဠဣွႉဏဥ")):_c2ad9d37d7be0097d6d2e977.get(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("့კႊჇဟ჻၊ႊၗၙჰၰ჎ူၧဥ၃လဝႋဏႶယဨႬၷჳჩႢ႑ၗ჌ფြလၽဖႲၥ჆ၲဓႾგლვ၌႘ႆၴႇ၊Ⴢ့ყ၉ၕ၊ဒႤီယ","ხუၗႈმ၊႞჌ႼသဏႽეၵყ႞"))};
         this.exitIcon = new _b61f883bdc804cf4115fe314();
         this.exitIcon.tooltipConfig = {(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၒხၪႄ჋ြႝჸ၄ွၜႸဖငჱფ","အჿვႠဝၕဠဥქჇဖဆၚူეჶ")):_c2ad9d37d7be0097d6d2e977.get(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剺劆刢刹剾剫勧刢刭刏力刂勰勝劖刨劃刔勨努助励剽勴剳劰勜列勊刟勺剰勲前剖刱勌剬刓剎劵勏劉劯","刧剑勍勨别割勵刽労刃勺剾刍刄勝勧"))};
         this.chatPanel = new _7ab28de02e0db526b6beee32();
         this.chatPanel.addEventListener(FocusEvent.FOCUS_OUT,this._6471f1bb46e23a424195abdc);
         this.chatButton = new _993562a4c781d3afbd136046(MovieClip(this._asset.getChildByName(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("თၔ၏ၥწშၺႥ჌ီဪဍႺ၊Ⴐ၅႒ჭჂႠნၢဍးჺႯ႘ၕ","ჾკჂၫ၍ႚႷ၌းფႶႳၽံစუ"))),this._0a536442826a14fe4d5ef54b);
         this.chatPanel.process(this._asset.getChildByName(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ჯႝ၍ြႫ჌ၜၒႅၬႋႬმႵძၴჸၦ჆ဿါတၠႨဟ჻","ႣႢႡႼႼၝჳჱ၇၌ၠဗလဦစႉ")));
         this.mapIcon.process(this._asset.getChildByName(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劒剂動删剈劒劊剚勚劣剷劺勣勑剕列剑别剚剶劘剡","劾剨剖办剚劈剟劸剏劲勧劄剟刃刃刣")));
         this.shopIcon.process(this._asset.getChildByName(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捌揬揃捬揵挶捈揽捑揿換掉探捪揅捸掫挲掂挎挹掅掝採","捲揊指掬掑捳挮挘揋揜揼挄掺揤揿掂")));
         this.inventoryIcon.process(this._asset.getChildByName(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勅勲券劕勀勦剦力刀利制加効割劼勬勥到劭劧刨勯刌劗勛勇別剭刟別刈剹刹勛","动剦劵剖刷刵劼刨勊剎切勒劦劚剫刪")));
         this.fishdexIcon.process(this._asset.getChildByName(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ြၽႼჺၦჍႿႂႲ႒တၢၭႜဈჭဌၝႻဌႂრႷၱჀ၈Ⴚძ႔ၶ","။ႾჅဥႏჳဠပჹ႗჻ჼ჆ၥ႟၂")));
         this.tournamentIcon.process(this._asset.getChildByName(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ငთုჯ၃၊჻ცგსၶხსၣ჋ၳხႆჇႳခဲၒြპႯ႖჻ၮჁၚჺဧႢႴ჊","ၫွ჏၂ဆტၿဧტႷ၇ႆႜာၩဇ")));
         this.communicationIcon.process(this._asset.getChildByName(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挝捩捏掌挮掑捨捯挐捚揣换揭捲捰挼挴捯揼捇掦捺捵揜揥描掷挙指掝掩掇揫挙掍揧挫掱持插挽挓","掶揩揭挲捦掯揭挿挝掕挔挦揌捚捯捈")));
         this.rankingsIcon.process(this._asset.getChildByName(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၼ၃္Ⴊမ၄ტჯფსၻႽჃႪၣჵსႷၓლႤႰၕၕოႹჵ႙ၫဘၓც","ႫၸႏႭၝႀ၂ၾბႭႺႨ၈႙ၤႌ")));
         this.exitIcon.process(this._asset.getChildByName(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劒删劰刋刷劒努列刓別勄割勼剮剋劂剨勨刉剸剼勂刃剉","刓剗剻劽力剗劐刈勭務劋劝勣勯剎剾")));
         this._asset.getChildByName(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掿掺捒掳挢掍捚捀插捙挸掻掽握揔掛捑捖揌捷挴挦掿捑揮挶捌挚","挎捩掏捱捪掿捿捨捃捓掲掝挮掊掫掮")).visible = false;
         this.exitIcon.visible = true;
         this._asset.getChildByName(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("Ⴆးတဋၻ႐ညცჭႻဵ၄႔ეဂၑ၈ၕႡ္၅ნၾფဓႯႴბၐႝသ႘၅ჅႧნ","႟၅ၑဝၫყၑႷპဟၰ၂႑ႃჸა")).addEventListener(MouseEvent.CLICK,this._91966db1eb15fdf77028fcc1);
         this.chatButton.show();
      }
      
      private function _91966db1eb15fdf77028fcc1(param1:MouseEvent) : void
      {
         param1.stopPropagation();
      }
      
      private function _6471f1bb46e23a424195abdc(param1:FocusEvent) : void
      {
         setTimeout(this._baf8774ada7566ead6e7fb09,0x7C86449C ^ 0x4ED988B3 ^ 0x4B8BD362 ^ 0x79D41F85);
      }
      
      public function get width() : Number
      {
         return this._asset.width;
      }
      
      public function get height() : Number
      {
         return 0x58BB6B2C ^ -1270667545 ^ -1044121204 ^ 0x2D3BB427;
      }
      
      public function set x(param1:int) : void
      {
         this._asset.x = param1;
      }
      
      public function set y(param1:int) : void
      {
         this._asset.y = param1;
      }
      
      public function get x() : int
      {
         return this._asset.x;
      }
      
      public function get y() : int
      {
         return this._asset.y;
      }
      
      public function _eb593120cbcff39e897ccda0() : Boolean
      {
         return this.chatPanel.isShowed();
      }
      
      public function _0a536442826a14fe4d5ef54b(param1:MouseEvent = null) : void
      {
         var _loc2_:_9b5482b3978b7abe1547abb8 = GameSwf.instance.managerTutorial.tutorialInProgress;
         if(_loc2_ != null)
         {
            if(!_loc2_.canChatWithPlayers)
            {
               return;
            }
            _loc2_._544c59d9de718a31490847d4();
         }
         if(GameSwf._d3e1b275b210647ff7fe10f6())
         {
            return;
         }
         this._8833123c55f2eca8cf78c138();
      }
      
      private function _8833123c55f2eca8cf78c138() : void
      {
         var _loc1_:int = -1227709355 ^ 0x16A06C1F ^ 0x127C57E9 ^ 0x4D123171;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (0x7F392EEA ^ 0x0B7C83E9 ^ 0x7E751191 ^ -181661119))
            {
               case 0:
                  this.chatButton.hide();
                  this.chatPanel.show();
                  _loc1_ = -1726084184 ^ -1767515638 ^ 0x42B64ED2 ^ -1307496031;
                  break;
               case 1:
                  if(this.chatButton.enabled)
                  {
                     _loc1_ = -1822228793 ^ 0x7BEBA84F ^ -1972921160 ^ -1645058845;
                  }
                  else
                  {
                     _loc1_ = -1990027321 ^ 0x61F9606C ^ -1122843603 ^ -1433035433;
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
      
      public function _b45fcd424bffdd5c59051c3f() : String
      {
         if(this.chatPanel.closeAllowed || this.chatPanel.textField.text.length == (-119737692 ^ 0x14D51113 ^ -1118424279 ^ 0x515FD09E) && app.user.inFishingProcess.value != true)
         {
            this.chatButton.show();
            this.chatPanel.hide(this.chatButton.enabled && this.chatButton.isShowed() == false);
         }
         return this._3664746aeec4641375f1d491();
      }
      
      public function _baf8774ada7566ead6e7fb09() : String
      {
         if(this.chatPanel.closeAllowed)
         {
            this.chatButton.show();
            this.chatPanel.hide(this.chatButton.enabled && this.chatButton.isShowed() == false);
         }
         return this._3664746aeec4641375f1d491();
      }
      
      public function _3664746aeec4641375f1d491() : String
      {
         return this.chatPanel.chatBlocked ? "" : this.chatPanel._3664746aeec4641375f1d491();
      }
      
      public function lock() : void
      {
         Cc.log(this + _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掃授捋揜捌振措捁捆挺掞挜揭挛揬换挦揶揮捻挌揀","捺揷掞援揵挲揹揧捝指挭揝捅挙捺捖"));
         this.mapIcon.disable();
         this.inventoryIcon.disable();
         this.fishdexIcon.disable();
         if(app.user.inTalkWithNPC.value != true && app.user.inFishingProcess.value != true)
         {
            this.chatButton.disable();
         }
         this.shopIcon.disable();
         this.tournamentIcon.disable();
         this.communicationIcon.disable();
         this.rankingsIcon.disable();
         this.exitIcon.disable();
         if(this.chatPanel.closeAllowed)
         {
            this._b45fcd424bffdd5c59051c3f();
         }
      }
      
      public function unlock() : void
      {
         Cc.log(this.toString() + _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၗဧၠၧၨၭသ့႘ႋၐუხဝၪဝၥူၵ၍႞ჁဍကႳည","၁ၬჲၟ႟႑჊ႚ့შ။ၝწ၊ႏჭ"));
         this.mapIcon.enable();
         this.inventoryIcon.enable();
         this.fishdexIcon.enable();
         this.chatButton.enable();
         this.shopIcon.enable();
         if(this.isTournament == false && GameSwf.currentLocationDialog.locationModel.id != _24fc30cfc3c855ea21a231e8.PRIVATE_HOUSE.id && GameSwf.currentLocationDialog.locationModel.id != _24fc30cfc3c855ea21a231e8.FRIENDS_PRIVATE_HOUSE.id && GameSwf.currentLocationDialog.locationModel.id != _24fc30cfc3c855ea21a231e8.CLUB_AREA.id)
         {
            this.tournamentIcon.enable();
         }
         this.communicationIcon.enable();
         this.rankingsIcon.enable();
         this.exitIcon.enable();
      }
      
      public function isLocked() : Boolean
      {
         return !this.mapIcon.enabled;
      }
      
      public function toString() : String
      {
         return _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掳挍揷揤挻揳揷捞捸捙握揣捈捈挿捤挓掇换掷揋挍捋授挦掱挛挰揨挥挵揻掳揭捴揓揚掚捠掕捄揑控捸挴捈掾掴挺揶掆捆挴揘挀掫捽揇掄捞揑掯","捫揾挜捕揻掌捲据挢掮挀揷挽捐捊挼") + this._16b36d337742d1702e9f2c65 + _95da7f1147c669197db81295._8f4866de82b7339154180ecb("剃削剈勝刹刟励勑効剢","劻劳劔勋动到勪刵劘刉剥剃判刯剙剄");
      }
      
      public function _e7e9991913759be9d51d4c5f(param1:_0c5d7c87ef42d62a09e53b93) : void
      {
         var _loc2_:int = 0x64E7FBEE ^ 0x260271E3 ^ 0x798069F7 ^ -34513344;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (-704532511 ^ 0x25112E0B ^ 0x2233934C ^ 0x17B7AF1F))
            {
               case 0:
                  return;
               case 1:
                  this.chatButton.show();
                  _loc2_ = -1477429316 ^ 0x42EDAD2A ^ -1455647166 ^ -1967804051;
                  break;
               case 2:
                  this.chatButton.hide();
                  _loc2_ = -723434858 ^ -1843806720 ^ 0x37572618 ^ -1220843721;
                  break;
               case 3:
                  this.chatPanel._e7e9991913759be9d51d4c5f(param1);
                  if(param1.chatPanelShown)
                  {
                     _loc2_ = -1954574631 ^ -385658942 ^ -2064997988 ^ 0x2002DD3C;
                  }
                  else
                  {
                     _loc2_ = 0x30BEE0C4 ^ -2056999540 ^ -1266126362 ^ -943292138;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function get asset() : DisplayObjectContainer
      {
         return this._asset;
      }
   }
}

