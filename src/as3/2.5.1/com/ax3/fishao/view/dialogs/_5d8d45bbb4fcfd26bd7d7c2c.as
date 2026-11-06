package com.ax3.fishao.view.dialogs
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.display.dialog._883499bee549a0fce1047d0f;
   import com.ax3.display.wrappers.impl._b6959442d774100015b69ffa;
   import com.ax3.fishao.resources._f5e4d158108107f1e8a3a320;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import com.ax3.fishao.view.dialogs.string._85b2141a2303f6545d411d7a;
   import com.ax3.fishao.view.wrappers.impl.FrameButtonWrapper;
   import com.ax3.fishao.view.wrappers.impl._0724ad266e88779612fd9d57;
   import com.ax3.fishao.view.wrappers.impl._50af875145704e666daf2c30;
   import com.ax3.fishao.view.wrappers.impl._6b91a781d828662e84e05553;
   import com.ax3.fishao.view.wrappers.impl._78c8de8e21527c1aa73a95da;
   import com.junkbyte.console.Cc;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.text.TextField;
   import flash.utils.Dictionary;
   
   public class _5d8d45bbb4fcfd26bd7d7c2c extends _8071087ebe26c264282580d0
   {
      
      private static const _22920c94189e1e694d17b9ce:int = 0x02F6639A ^ 0x111306A3 ^ 0x2972DD26 ^ 0x3A97B8C8;
      
      private static const _e03d05b037bce6e1a44631c0:int = 0x23CCAADD ^ -167249903 ^ -1159097006 ^ 0x6F22C68C;
      
      public var title:_6b91a781d828662e84e05553;
      
      public var closeBtn:CloseMenuFishaoButtonWrapper;
      
      public var tabUpLayer:Sprite;
      
      public var tabDownLayer:Sprite;
      
      public var itemIcon:_50af875145704e666daf2c30;
      
      public var bait:_0724ad266e88779612fd9d57;
      
      public var rods:_0724ad266e88779612fd9d57;
      
      public var other:_0724ad266e88779612fd9d57;
      
      public var fish:_0724ad266e88779612fd9d57;
      
      public var looks:_0724ad266e88779612fd9d57;
      
      public var decoration:_0724ad266e88779612fd9d57;
      
      public var fossils:_0724ad266e88779612fd9d57;
      
      public var itemName:TextField;
      
      public var category:TextField;
      
      public var categoryText:TextField;
      
      public var description:TextField;
      
      public var extra:TextField;
      
      public var extraText:TextField;
      
      public var noItemsText:TextField;
      
      public var throwIns:_78c8de8e21527c1aa73a95da;
      
      public var pagesTextField:TextField;
      
      public var select:ConfirmFrameButtonWrapper;
      
      public var leftPageButton:FrameButtonWrapper;
      
      public var rightPageButton:FrameButtonWrapper;
      
      public var viewFieldBg:DisplayObject;
      
      private var _fb2f4edc53fceedfa40b83fd:DisplayObject;
      
      protected var _itemFactory:_b6959442d774100015b69ffa;
      
      protected var _itemsPlaceholder:Sprite;
      
      protected var _tabMap:Dictionary;
      
      public function _5d8d45bbb4fcfd26bd7d7c2c()
      {
         var _loc1_:_883499bee549a0fce1047d0f = new _883499bee549a0fce1047d0f();
         _loc1_.swfFileName = _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掰捇揯挡挤捣捞挰排揻挱挻捖挻揩挩挚揳挼捈揂挿揻挛掊捀掃捊握揊措授掮换","捗揾揦揱授挗捚揚捃挀捻挰掇援揢掉");
         super(_loc1_);
         this._itemsPlaceholder = new Sprite();
      }
      
      override protected function _935ac2966ddad68dfc449202() : void
      {
         this._tabMap = new Dictionary(true);
         this._tabMap[_f5e4d158108107f1e8a3a320.BAIT_NAME] = this.bait;
         this._tabMap[_f5e4d158108107f1e8a3a320.RODS_NAME] = this.rods;
         this._tabMap[_f5e4d158108107f1e8a3a320.OTHER_NAME] = this.other;
         this._tabMap[_f5e4d158108107f1e8a3a320.LOOKS_NAME] = this.looks;
         this._tabMap[_f5e4d158108107f1e8a3a320.FISH_NAME] = this.fish;
         this._tabMap[_f5e4d158108107f1e8a3a320.DECORATION_NAME] = this.decoration;
         this._tabMap[_f5e4d158108107f1e8a3a320.FOSSILS_NAME] = this.fossils;
         this.bait.init(_c2ad9d37d7be0097d6d2e977.get(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၼဓ၆ႊၬဪႠဖႃჴჩღဖჀၔၭ","ဿႍ჏ၑႍႳჃძဂႹဃၓჺႠ႒Ⴡ")),this.tabUpLayer,this.tabDownLayer,_f5e4d158108107f1e8a3a320.BAIT_NAME);
         this.rods.init(_c2ad9d37d7be0097d6d2e977.get(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("၂ჼၙသနၠჾဇစ჉ေဘ჻ခၻ჏","რႱှၝၙႶသჃႋႲႽၣၸၩႼၨ")),this.tabUpLayer,this.tabDownLayer,_f5e4d158108107f1e8a3a320.RODS_NAME);
         this.other.init(_c2ad9d37d7be0097d6d2e977.get(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ႃႉႷၣႶၝၷထဒ႓ၩၻၣွၰူ။၆","ჩჷ჋႖ဌჱჂთၛ၅သႀჅႜსႣ")),this.tabUpLayer,this.tabDownLayer,_f5e4d158108107f1e8a3a320.OTHER_NAME);
         this.looks.init(_c2ad9d37d7be0097d6d2e977.get(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("分列刱剢勌勜副勰勔剡剕刢剸刁刃刌劕劤","劳刺则剏劃刨剂剹刌劭劼刔刨剝努剒")),this.tabUpLayer,this.tabDownLayer,_f5e4d158108107f1e8a3a320.LOOKS_NAME);
         this.fish.init(_c2ad9d37d7be0097d6d2e977.get(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ႆჀအႋၖၛ၈გმွၰဉსဎცႿ႞ႺုႾႺხႪႆႊႎ႓၊ႍႶჇჱბၥြႴ჈၃ၙၩბၡႄ႕ၵၠႿ၉Ⴑဎ","შძးႢჁဇႦဝဝ჈ၚၔႸၙၯဋ")),this.tabUpLayer,this.tabDownLayer,_f5e4d158108107f1e8a3a320.FISH_NAME);
         this.decoration.init(_c2ad9d37d7be0097d6d2e977.get(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("握掗揸掝挭掭揁揜挤挧掣挄揯掞掫捨指排挩挐掋揄挈揽捬掛揟揸授揎捡掕据揟挐掯揔揣捝捵握援揓揅掲接掶挦描掺挺揄挆揠捱捎振掎掾援掵控","掗揻揅掦掃捼挌捝揿捯挛掊掯挜掫揀")),this.tabUpLayer,this.tabDownLayer,_f5e4d158108107f1e8a3a320.DECORATION_NAME);
         this.fossils.init(_c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a.EST_DIALOG_TRADE_TAB_FOSSILS),this.tabUpLayer,this.tabDownLayer,_f5e4d158108107f1e8a3a320.FOSSILS_NAME);
         addChild(this._itemsPlaceholder);
         this._itemsPlaceholder.x = _22920c94189e1e694d17b9ce;
         this._itemsPlaceholder.y = _e03d05b037bce6e1a44631c0;
         super._935ac2966ddad68dfc449202();
         this.throwIns.label = _c2ad9d37d7be0097d6d2e977.get(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揷描探採揑掔揁挖捫掌揥捓挜揃掞挔掳揟挙揑挆挠掳掦掽揿掜捳揥掬捤挲捪揵挠挆揎揺捛揧掖捡挢插捚揥揭挮挾捴揠捼捼掉揽措換揠捝挛掂捴捚捶捥揄掝捫","捴挡捜挽捚揅捥揱揹捱揎揝挮掌捐捨"));
      }
      
      override protected function _d998e9465b31be9894488c29(param1:DisplayObjectContainer) : void
      {
         Cc.logch(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挾捣掴描揞掉挊掗掋挑捋揥捓掫挦揩捸揶揊授","挺捲挠挧掖揑捰揗揌握捹揚揕捂挃揄"),_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၴၵဝအၡၵ႐႓ၨဠဇၹႣႨტဪီငဦჟႣဲဿယညჍ႕ၵ႙ဘ၈ဋკႣဣვჲჃპၒქჅჷႤსနဦ჉ა၂ၰსဣბၼဪ","ႸွႣပႛუၦဟႛძႩ်Ⴏာၥტ"));
         super._d998e9465b31be9894488c29(param1);
         this._fb2f4edc53fceedfa40b83fd = param1.getChildByName(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捜掗捩捘揪捥换掽掯排挋掌揅捸換挠握揰挊挜挿揵","挎掟掩捨捺揰挚捅捦挧捱排掤掘探挏"));
         this._itemFactory = new _b6959442d774100015b69ffa(_app.resourceManager,dialogAssetURL,_50af875145704e666daf2c30);
         this._itemFactory.process(this._fb2f4edc53fceedfa40b83fd);
         Cc.logch(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ဋၼုၖၣႶဉႳჶკၠစဩႺၤၢლႬၫႲ","ႩဩၪჇၱႌსဠႜၱდႄဥႿကႜ"),_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ဧკჅႁဌႚၜၾႨჶုႽჭၶႵႛაၯင၎႓ჸ၃ေႉჵၖဋ႟႙ჄၺႵဋგႥႉეသႬ၊ယჷჂაၯၰဠვၪ၁၀ႅ၂ၢၗစၦႝႯქလႣჷ႐ჱျ၀ბმ၈း჈ႈႏႣဒ၆ၻႶჷ჎၂႞ဇၼႸ჋ၦၧၟაႮဋူ჈ჼ႕ႹႵႆთ","ჾ၅ღႰႚၣჺၽႵყნဋႂწ့႖"));
      }
   }
}

