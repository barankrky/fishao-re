package com.ax3.fishao.display
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.events._02fbe4cbe9e83f1b8c711799;
   import com.ax3.events._720429110fd3cfc01812b5a0;
   import com.ax3.fishao._67282af25befe9778e5c8dd1;
   import com.ax3.fishao._dfa25706e58a240c1e33e5c6;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.display.panels._29f22a0f3291b172753f3231;
   import com.ax3.fishao.display.panels._345abaae6c23ec00331192f6;
   import com.ax3.fishao.display.panels._4176704303f879a1a90fac22;
   import com.ax3.fishao.display.panels._b1c568080240cc3772c55d90;
   import com.ax3.fishao.display.panels._f6f12dbbfbe7f740316e0e9f;
   import com.ax3.fishao.display.settings._c76e116381f923a097c7442e;
   import com.ax3.fishao.locations.base._67f8febc099eaa05c48aa41e;
   import com.ax3.fishao.tutorial._9b5482b3978b7abe1547abb8;
   import com.ax3.fishao.utils._8e13ffc955ce803f9ca06283;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs._16e26a611afe5208717ab607;
   import com.ax3.fishao.view.dialogs._f0bf8b8194e79c9122458f74;
   import com.ax3.fishao.view.dialogs.base.controllers.implementations.countdown._ddb31413e3f8701e7e98beaf;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces._6b63fd0a4028eb279b227831;
   import com.ax3.fishao.view.dialogs.base.views.implementations.countdown._706b9e8a05fa6a971551d21d;
   import com.ax3.fishao.view.dialogs.maintenance._45231761937416c3f2d3a259;
   import com.ax3.fishao.view.dialogs.sales._a88bd0e7945ef2fef78c2757;
   import com.ax3.fishao.view.dialogs.sales.model._30373f6dfb5b92bd81a483eb;
   import com.ax3.fishao.view.dialogs.string._85b2141a2303f6545d411d7a;
   import com.ax3.fishao.view.dialogs.tournaments.models._2a31502166ae419b5332a782;
   import com.ax3.fishao.view.states._0c5d7c87ef42d62a09e53b93;
   import com.ax3.jss.requests.server._5e1bab759fcaea6d1f84faa7;
   import com.ax3.utils.removeAllChildren;
   import com.ax3.utils.removeFromParent;
   import flash.desktop.NativeApplication;
   import flash.display.DisplayObject;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.geom.Rectangle;
   import flash.text.TextField;
   import flash.ui.Keyboard;
   import protocol.api.base.ResponseError;
   
   public class _8a5b0c698d40931e860c0aeb extends _ea5d11db7ede4cbd394fe3ce
   {
      
      private const _406284a8ec13a2982a0f5bd6:int = 25;
      
      public var dailyQuestManWidget:_f6f12dbbfbe7f740316e0e9f;
      
      public var missionsUncleSamWidget:_345abaae6c23ec00331192f6;
      
      public var collectionsGirlWidget:_b1c568080240cc3772c55d90;
      
      public var isTournament:Boolean;
      
      private var _f19f5bd9405e5f212857a3b6:Array = [];
      
      private var _f97665e94071bcf396d2e3f4:Number = 0;
      
      private var _73376cf388d5eeef27795e2c:Number = 0;
      
      private var _ccbf840beb1ce374fba72047:Number = 0;
      
      private var _f61c65c5130656bbea965312:Number = 0;
      
      private var _52d7f155c0c1aa26599edf03:Array = [];
      
      private var _1f1638cbafe41d3d173e6aa3:Rectangle = new Rectangle();
      
      private var _89f494598569f6645b90287c:_eb16201fffab548734579c64;
      
      private var _22b56253261a8ad168c5fd12:_c76e116381f923a097c7442e;
      
      private var _85f8ff9b67fb9fca5a1be793:_0c5d7c87ef42d62a09e53b93;
      
      public function _8a5b0c698d40931e860c0aeb(param1:_67f8febc099eaa05c48aa41e)
      {
         super(param1);
         this._85f8ff9b67fb9fca5a1be793 = GameSwf.guiState;
         if(this._85f8ff9b67fb9fca5a1be793 == null)
         {
            this._85f8ff9b67fb9fca5a1be793 = new _0c5d7c87ef42d62a09e53b93();
            GameSwf.guiState = this._85f8ff9b67fb9fca5a1be793;
         }
         this.name = _95da7f1147c669197db81295._8f4866de82b7339154180ecb("勗刡刣剳勤勛勎劉剌剹勔劓勁勊","劰刹刈勓刲刭勄勣劥刍劃刑剤剺勆劜");
         this.isTournament = _locationDialog.locationModel.isTournament;
         this.alpha = 0x63D7A4F9 ^ 0x22A349E9 ^ -1941267283 ^ -851545667;
         this._935ac2966ddad68dfc449202();
      }
      
      public function _0061b798f209ddad9351e332(param1:MouseEvent = null) : void
      {
         if(GameSwf._d3e1b275b210647ff7fe10f6() || !mainMenu.tournamentIcon.enabled)
         {
            return;
         }
         mainMenu.tournamentIcon.disable();
         GameSwf.instance.managerTournaments._1dbac8d0df5e942707881671(this._c50019ce7fe4aeb36276da42);
      }
      
      private function _c50019ce7fe4aeb36276da42(param1:_5e1bab759fcaea6d1f84faa7) : void
      {
         var _loc2_:ResponseError = param1 as ResponseError;
         if(_loc2_ != null)
         {
            mainMenu.tournamentIcon.enable();
            return;
         }
         this._7b66b55f87acbff281fe0cd7(GameSwf.instance.managerTournaments.tournamentCurrent);
      }
      
      private function _7b66b55f87acbff281fe0cd7(param1:_2a31502166ae419b5332a782) : void
      {
         var _loc2_:int = 0x3DF6FFB5 ^ -1593757088 ^ -148734293 ^ 0x2B0DCDA2;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x68677E2C ^ -1063465065 ^ 0x126D66EF ^ -95508085))
            {
               case 0:
                  return;
               case 1:
                  GameSwf.instance.managerTournaments._02f1b5d9b2f8590e905dab68();
                  _loc2_ = 0x7F3161D2 ^ 0x3B98C824 ^ -932817266 ^ -870874713;
                  break;
               case 2:
                  app.dialogFactory._2d653e39ff14894627d9029c().show();
                  mainMenu.tournamentIcon.enable();
                  _loc2_ = -196499484 ^ -2003663467 ^ -1859669553 ^ -1390088863;
                  break;
               case 3:
                  if(param1.isPlayerSignedUp)
                  {
                     _loc2_ = -624770889 ^ 0x72CFFB0C ^ 0x39D9A251 ^ -787683532;
                  }
                  else
                  {
                     _loc2_ = -22119459 ^ 0x35A7856C ^ 0x6B22C658 ^ -520927692;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      override protected function _935ac2966ddad68dfc449202() : void
      {
         this._f97665e94071bcf396d2e3f4 = fishbucksIndicator.x - fishcoinsIndicator.x;
         this._73376cf388d5eeef27795e2c = energyIndicator.x - fishbucksIndicator.x;
         this._ccbf840beb1ce374fba72047 = levelIndicator.x - energyIndicator.x;
         this._f61c65c5130656bbea965312 = levelIndicator.x + levelIndicator.width - fishcoinsIndicator.x;
         mainMenu.chatPanel.stage = _stage;
         mainMenu.isTournament = this.isTournament;
         mainMenu.tournamentIcon.enabled = !this.isTournament;
         energyIndicator.visible = !this.isTournament;
         plingPanel = new _4176704303f879a1a90fac22(this);
         this._533ea41672d6424c7732f4a1();
         this._e7e9991913759be9d51d4c5f(this._85f8ff9b67fb9fca5a1be793);
         this._89f494598569f6645b90287c = new _eb16201fffab548734579c64();
         this._22b56253261a8ad168c5fd12 = new _c76e116381f923a097c7442e(this._89f494598569f6645b90287c,new gViewArrowSale(),_85b2141a2303f6545d411d7a.EST_UI_BUTTON_SALE_ARROW);
         addChild(this._22b56253261a8ad168c5fd12.source);
         this._82da2d841f822609f0473021();
      }
      
      public function _e7e9991913759be9d51d4c5f(param1:_0c5d7c87ef42d62a09e53b93) : void
      {
         if(param1 == null)
         {
            param1 = new _0c5d7c87ef42d62a09e53b93();
            GameSwf.guiState = param1;
         }
         mainMenu._e7e9991913759be9d51d4c5f(param1);
      }
      
      private function _68b5115a4acb5b3135ff21d0() : void
      {
         _02fbe4cbe9e83f1b8c711799.addEventListener(this,app.user.inFishingProcess,_720429110fd3cfc01812b5a0.CHANGE,this._9a910818aa8db15fa6680d8c);
         _02fbe4cbe9e83f1b8c711799.addEventListener(this,app.user.inTalkWithNPC,_720429110fd3cfc01812b5a0.CHANGE,this._9a910818aa8db15fa6680d8c);
         _02fbe4cbe9e83f1b8c711799.addEventListener(this,app.user.atTheBoat,_720429110fd3cfc01812b5a0.CHANGE,this._533ea41672d6424c7732f4a1);
         mainMenu.fishdexIcon.handler = this._67766f60a9d0db2ba5a84839;
         mainMenu.inventoryIcon.handler = this._69c23e446c76c7a4de31901f;
         mainMenu.mapIcon.handler = this._c3fc26216484911136a45e2f;
         mainMenu.exitIcon.handler = this._8dd1e982d981557cfc8ac5b4;
         mainMenu.tournamentIcon.handler = this._0061b798f209ddad9351e332;
         mainMenu.communicationIcon.handler = this._d739735afb48bb6c70d80f03;
         mainMenu.rankingsIcon.handler = this._78cb58b9d3067ae21f64eaa6;
         mainMenu.shopIcon.handler = this._63848c4dd8a811602d18c5b8;
         energyIndicator.addButton.handler = GameSwf.instance._825ea3c2451d64893c2367e0;
         _02fbe4cbe9e83f1b8c711799.addEventListener(this,_stage,KeyboardEvent.KEY_UP,this._f023d699374bc80f9da141e8);
         _02fbe4cbe9e83f1b8c711799.addEventListener(this,_stage,KeyboardEvent.KEY_DOWN,this._7ac8326028aef280e19c0699);
         _02fbe4cbe9e83f1b8c711799.addEventListener(this,this,Event.REMOVED_FROM_STAGE,this._ece747d45342b43471ff58c9);
         mainMenu.chatPanel._46acce9e8c9547018d0b6c8c();
      }
      
      private function _bf6d33eec3467e140db6046b() : void
      {
         _02fbe4cbe9e83f1b8c711799.removeEventListener(this,app.user.inFishingProcess,_720429110fd3cfc01812b5a0.CHANGE,this._9a910818aa8db15fa6680d8c);
         _02fbe4cbe9e83f1b8c711799.removeEventListener(this,app.user.inTalkWithNPC,_720429110fd3cfc01812b5a0.CHANGE,this._9a910818aa8db15fa6680d8c);
         _02fbe4cbe9e83f1b8c711799.removeEventListener(this,app.user.atTheBoat,_720429110fd3cfc01812b5a0.CHANGE,this._533ea41672d6424c7732f4a1);
         mainMenu.fishdexIcon.handler = null;
         mainMenu.inventoryIcon.handler = null;
         mainMenu.mapIcon.handler = null;
         mainMenu.exitIcon.handler = null;
         mainMenu.tournamentIcon.handler = null;
         mainMenu.communicationIcon.handler = null;
         mainMenu.rankingsIcon.handler = null;
         mainMenu.shopIcon.handler = null;
         fishcoinsIndicator.addButton.handler = null;
         fishbucksIndicator.addButton.handler = null;
         energyIndicator.addButton.handler = null;
         _02fbe4cbe9e83f1b8c711799.removeEventListener(this,_stage,KeyboardEvent.KEY_UP,this._f023d699374bc80f9da141e8);
         _02fbe4cbe9e83f1b8c711799.removeEventListener(this,_stage,KeyboardEvent.KEY_DOWN,this._7ac8326028aef280e19c0699);
         _02fbe4cbe9e83f1b8c711799.removeEventListener(this,this,Event.REMOVED_FROM_STAGE,this._ece747d45342b43471ff58c9);
         mainMenu.chatPanel.removeListeners();
      }
      
      private function _8dd1e982d981557cfc8ac5b4(param1:MouseEvent) : void
      {
         app.user.inLogountProcess = true;
         _dfa25706e58a240c1e33e5c6.fscModel.disconnect();
         NativeApplication.nativeApplication.exit();
      }
      
      private function _c3fc26216484911136a45e2f(param1:MouseEvent) : void
      {
         GameSwf.instance.managerTutorial._0a2b10da3db58cd84d16235e();
         GameSwf.instance._3cd353c37b2560deea20324a();
         GameSwf.instance.managerWorlds._f7371ed907da715d38088aec(this._373f538553615b185ce84630);
         mainMenu.mapIcon.disable();
      }
      
      private function _373f538553615b185ce84630(param1:_5e1bab759fcaea6d1f84faa7) : void
      {
         mainMenu.mapIcon.enable();
      }
      
      private function _ece747d45342b43471ff58c9(param1:Event) : void
      {
         this._bf6d33eec3467e140db6046b();
      }
      
      private function _69c23e446c76c7a4de31901f(param1:MouseEvent) : void
      {
         GameSwf.instance._a02cff3c18e21380dfad588f();
      }
      
      private function _d739735afb48bb6c70d80f03(param1:MouseEvent) : void
      {
         var _loc2_:int = 0x0A3B59F5 ^ -1991811763 ^ -25123961 ^ -347790306;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (-1409341879 ^ -1834457172 ^ -1635115343 ^ 0x3164DC74))
            {
               case 0:
                  return;
               case 1:
                  if(GameSwf._d3e1b275b210647ff7fe10f6())
                  {
                     _loc2_ = 0x66919B91 ^ -221812926 ^ 0x75F949BA ^ 0x77163649;
                  }
                  else
                  {
                     _loc2_ = -1090440661 ^ -1071415465 ^ 0x78E4852C ^ -1853928590;
                  }
                  break;
               case 2:
                  this._626019cb7345f385bfbe41a0();
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function _78cb58b9d3067ae21f64eaa6(param1:MouseEvent) : void
      {
         var _loc2_:int = -458828074 ^ -1000207104 ^ -1098583154 ^ -877362854;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (-1702422932 ^ -1602133145 ^ 0x37C65F03 ^ 0x5834830B))
            {
               case 0:
                  this._1f7d0e5a25171629decbb4ef();
                  return;
               case 1:
                  if(GameSwf._d3e1b275b210647ff7fe10f6())
                  {
                     _loc2_ = -1232539400 ^ -1442304446 ^ 0x6894CDA4 ^ 0x21E0BA1F;
                  }
                  else
                  {
                     _loc2_ = 0x4E17C0CE ^ -1008662683 ^ -361022153 ^ 0x3279539F;
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
      
      private function _626019cb7345f385bfbe41a0() : void
      {
         var _loc1_:_f0bf8b8194e79c9122458f74 = app.dialogFactory._0b51743fd74146c6929027c6();
         _loc1_.show();
      }
      
      private function _1f7d0e5a25171629decbb4ef() : void
      {
         GameSwf._803b42b17008a2c99e312c70();
      }
      
      private function _63848c4dd8a811602d18c5b8(param1:MouseEvent) : void
      {
         GameSwf.instance._904abe67d8849826ace64512();
      }
      
      private function _7ac8326028aef280e19c0699(param1:KeyboardEvent) : void
      {
         if(param1.keyCode == Keyboard.ESCAPE && mainMenu._eb593120cbcff39e897ccda0())
         {
            param1.preventDefault();
         }
      }
      
      protected function _f023d699374bc80f9da141e8(param1:KeyboardEvent) : void
      {
         if((param1.keyCode == Keyboard.ENTER || param1.keyCode == Keyboard.NUMPAD_ENTER) && (stage.focus is TextField == false || stage.focus == mainMenu.chatPanel.textField))
         {
            if(!mainMenu._eb593120cbcff39e897ccda0())
            {
               mainMenu._0a536442826a14fe4d5ef54b();
            }
            else if(!mainMenu.chatPanel.chatBlocked)
            {
               this.sendMessage(param1);
            }
            else
            {
               this._c2bcb9a0689418fd7282399c(param1);
            }
         }
         if(param1.keyCode == Keyboard.ESCAPE)
         {
            this._c2bcb9a0689418fd7282399c(param1);
         }
      }
      
      protected function sendMessage(param1:KeyboardEvent) : void
      {
         var _loc2_:String = this._c2bcb9a0689418fd7282399c(param1);
         if(_loc2_.length != (-565609028 ^ -1562958562 ^ 0x7DB13A40 ^ 0x012F62E2))
         {
            if(mainMenu.chatPanel.canSendChatMessage)
            {
               _dfa25706e58a240c1e33e5c6.chatFscExtension._6fbcd38e2f77dae9897d47cf(_loc2_);
            }
         }
      }
      
      protected function _c2bcb9a0689418fd7282399c(param1:Event) : String
      {
         if(param1 is KeyboardEvent && KeyboardEvent(param1).keyCode == Keyboard.ESCAPE)
         {
            return mainMenu._baf8774ada7566ead6e7fb09();
         }
         return mainMenu._b45fcd424bffdd5c59051c3f();
      }
      
      private function _67766f60a9d0db2ba5a84839(param1:MouseEvent) : void
      {
         if(GameSwf._d3e1b275b210647ff7fe10f6())
         {
            return;
         }
         var _loc2_:_16e26a611afe5208717ab607 = app.dialogFactory._9767b769c57d09fd948af0f0();
         _loc2_.show();
      }
      
      public function centerToRect(param1:int, param2:int, param3:int, param4:int) : void
      {
         this._1f1638cbafe41d3d173e6aa3 = new Rectangle(param1,param2,param3,param4);
         this.x = param1;
         this.y = param2;
         mainMenu.x = int((param3 - mainMenu.width) * _433075a5d49397e40222eeae._9417d5d828724209ec5cfbb1("Ⴊ၍ეძხၦဪဓၻႮ჊ဠზူ႐ၕႧၥ၊ჸၮညერ","ცჭႋსဘၘဖ၊ႏ჊ု჉သ်ဤႪ"));
         mainMenu.y = int(param4 - mainMenu.height);
         var _loc5_:DisplayObject = _controllerSettings.view.source;
         _loc5_.x = param3 - _loc5_.width + (-598647828 ^ -1373910586 ^ 0x4567C4C7 ^ 0x372D56F9);
         var _loc6_:DisplayObject = _controllerBoosters.view.source;
         _loc6_.x = _loc5_.x + (0x5E2164E0 ^ 0x643BB014 ^ -142861776 ^ -848900403);
         _loc6_.y = _loc5_.y + (0x653F824A ^ -1126381171 ^ -940835134 ^ 0x1E08B52C);
         var _loc7_:int = _loc5_.x;
         fishcoinsIndicator.x = (_loc7_ - this._f61c65c5130656bbea965312) * _433075a5d49397e40222eeae._9417d5d828724209ec5cfbb1("႟ဓၞၩႂႨ၅ၝ႑ჂလႦဓႹၢ၉ဍႨထიူდႶჃ","ჽၽႳၵჟხႊၩႳႩၾჄဣႬ჏ၗ");
         fishbucksIndicator.x = fishcoinsIndicator.x + this._f97665e94071bcf396d2e3f4;
         this._22b56253261a8ad168c5fd12.source.x = fishcoinsIndicator.x + (0x7F8F7056 ^ -1035282227 ^ 0x1D0332F3 ^ -1597597178);
         this._22b56253261a8ad168c5fd12.source.y = fishcoinsIndicator.y + (0x0EF2A462 ^ 0x278DBD5E ^ -1436921081 ^ -2094708179);
         energyIndicator.x = fishbucksIndicator.x + this._73376cf388d5eeef27795e2c;
         energyIndicator.label.text = app.user.energy.value;
         levelIndicator.x = energyIndicator.x + this._ccbf840beb1ce374fba72047;
         if(this.isTournament)
         {
            levelIndicator.x = energyIndicator.x;
         }
         var _loc8_:DisplayObject = controllerButtonFishingLine.view.source;
         _loc8_.x = param3 - _loc8_.width - (0x340F34FC ^ 0x2AAD3997 ^ -773599900 ^ -817774587);
         _loc8_.y = param4 - _loc8_.height - (0x3680C457 ^ -1180600799 ^ 0x602E1098 ^ -284187925);
         baitInformer.x = _loc8_.x;
         baitInformer.y = _loc8_.y - baitInformer.height - (0x148EB599 ^ -546160655 ^ 0x0FD56694 ^ -1003885322);
         informerRod.x = _loc8_.x;
         informerRod.y = baitInformer.y - informerRod.height - (0x238E66D8 ^ -618919872 ^ 0x3839502B ^ -1062519111);
         plingPanel.x = param3 - (-381361243 ^ -1608492649 ^ 0x6B224AD8 ^ 0x2246F1F2);
         plingPanel.y = -860034553 ^ 0x46650CD0 ^ -944780980 ^ 0x4D762FC3;
         if(this.getChildByName(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捿捾揭揥揈挛掏损挑换揖捋接揰挰插掰捒揳掀授捌掅掦掺挒挔挓揬排捕捀挱揫捝掊捒揍捸揗捨揈揮挳捰捐","挥捅揝揯揭挲挪揙捫挱揓捉換捾捱揣")) != null)
         {
            this.getChildByName(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捞揙捻揤挩挐捍捳挃损捶揽揹捔掄插挱掕挒揋掇捂捱排捇掐挋捒揣捸挒換掿揇挘挚挋挹振揝揀掉挊揣挼据","揽捶挍掆挊揍捥揺捤挃捁挽捖挴捋捺")).x = param3 - informerRod.width / (0x520470D9 ^ 0x1757D4A6 ^ 0x2CA12240 ^ 0x69F2863D) - (-256756555 ^ -1209529801 ^ -1923737900 ^ -905172900) - this.getChildByName(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捱掊掕掆掓掼揌揊挲捬挠挾捒挬揕挲掾捫掔捆捩捴採揰採掉掞揉捐掍掘挽捪捻挰捍挍挱掞揞掉揯振挀挤捱","捓掟挷掩揬掤揉揷掗振掓捖捓揮掷掿")).width / (-264758774 ^ 0x610A0E9F ^ -1297967574 ^ 0x239082BD);
            this.getChildByName(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၩႴှၲ႖თတူေჇၨႺსႜႹီႰာჄႚႡၨႉლၮჽႦ၍ႋၣჾხၓႫცၹႾბၮმიႀႝဵၓჭ","ႭრმႯႅႜმႡ႘႙ဧႄ၆ွ჉Ⴗ")).y = param4 - informerRod.height - baitInformer.height - (0x26DE3777 ^ 0x799AFC30 ^ -1899877908 ^ -779689308) - informerRod.height / (0x38240545 ^ 0x7D3E63D5 ^ -863502524 ^ -1986160170);
         }
         if(this.getChildByName(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ႉျၩဃ၉ဝႃႴဘဂဒႄ၈ခჍჾ၃ხၫႀ၃ქၨჿၧၙჁ႑ုႰယმႋ္သჿჴ႖ჯၔၤၔႎၕ၊ႂ","ၹှဿიဣၡဠმჀზႠႹဨჳ႟჊")) != null)
         {
            this.getChildByName(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挠揩挐捻掠掃捺揕挰捳揬掐捆捜挼挑捄掌掼挥掙挝挿挏掖捀挄捂按掻揍振揋掉掆換挀掻挿掍接捭挀捊挐提","揟掽揨掰捧掔掚振揋揔握挃捣掤挓捰")).x = param3 - baitInformer.width / (-386369831 ^ -410630292 ^ 0x7E3492D1 ^ 0x714AA366) - (-1801601111 ^ 0x2B5E5C12 ^ 0x6E27EAB6 ^ -773584633) - this.getChildByName(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剙劊剘劏刧劒勓剜剁别劾剷剟券劑勢削劂刲加勩勷劙剱剚刳剻剻分勄刓勧剬劸刺剒剚剜剱劶劺刡办刄刈勿","努剦剡剎刾勺剟勴勬勥删功創劀勸剅")).width / (0x687A8541 ^ -1631264108 ^ 0x025DB6BF ^ -186396312);
            this.getChildByName(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ႍმႄႃ၅Ⴄ၀ჹ။ჃှဣႫ၁Ⴒღ၊ႦჁთၾဓဎ၄၉ႩႵვႨ႖ႢႼႼႈ၈်Ⴋცဳၤဎ၅ဖဴ჎რ","ၪညဎျჵႋ၄Ⴞံ၁ၑდဉჁ჏ိ")).y = param4 - baitInformer.height - (0x01D47807 ^ -538398007 ^ -266468981 ^ 0x2E22CB40) - baitInformer.height / (0x08533621 ^ 0x27DBEC08 ^ 0x586363B6 ^ 0x77EBB99D);
         }
         if(this.getChildByName(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剹勸勣刎削刿劤剛劘刯刈勅劾励劼勡勢剒刕劲勗劄勜办別刺勵劚勪創劼劷劜劈勎刅剀勍刂勱功利券刣劓劒","剒勪劖剛努刜勱剅刘励勉刢劅务剘剩")) != null)
         {
            this.getChildByName(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ქ၀ၫဵვၷძျ၂ဘწႹဳၽဉၛႫၼზဎဌႅဃၵეჱၙဒီჯ၇Ⴠბ჏ႷჅဘအეဠႚႭႵဤၑႶ","ၭႹდ၊ၟჭေဵ။ჁႮႪႝჽဩႧ")).x = param3 - baitInformer.width / (-1022184631 ^ -1548261245 ^ 0x75C0C69A ^ 0x15651D52) - (0x309B457A ^ -1960006170 ^ 0x271A9386 ^ -1666352368) - this.getChildByName(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("前努到刿勞创劕初勿剆勑勸勦刜刽劭剿劦剮劄初刼刿刿勥勗劌利剜力剨劼勩勓刻剜勉剉初勰剐刵劆勖勽劕","劋努劈勎刳动勲勇勻勶勧勄創勻勈勢")).width / (-454200337 ^ -1299658278 ^ 0x2348DCCF ^ 0x752D66F8);
            this.getChildByName(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勠劒劲办剁剌勀刷别劸剆勶勷劝務勿剮分剙剳刢剃勲功勒前劎劥劳割剔劖勞剓剑勉刻功劎勋劃劭勠刨勽勼","剫勌劊剧刪勬剠剂劥勈刽劚剑劽劮勾")).y = param4 - baitInformer.height - (0x3CD6CD08 ^ 0x32418475 ^ -1550978938 ^ -1390757378) - baitInformer.height / (-1772596173 ^ 0x44BA0A46 ^ -18563922 ^ 0x2C06E2D9);
         }
         boatPanel.x = param3 / (0x7E7FB62E ^ 0x50A41D10 ^ -1799219636 ^ -1172718224) - boatPanel.width / (-205019956 ^ 0x609BFDC4 ^ 0x2EB9A646 ^ -1109000372);
         boatPanel.y = 0x3E2D0610 ^ -1700525666 ^ -896138516 ^ 0x6E1F0D37;
         this._5b84a4a8edfb74028ae7b885();
      }
      
      public function _5b84a4a8edfb74028ae7b885() : void
      {
         var _loc1_:int = 0x012B33E6 ^ -1749947410 ^ -1449802148 ^ 0x3F0F1E54;
         var _loc2_:DisplayObject = null;
         var _loc3_:int = 0x363FD077 ^ 0x5AD7322D ^ 0x7088110D ^ 0x1C60F357;
         var _loc4_:int = -1414162481 ^ 0x5C755BE5 ^ -795015116 ^ 0x275DC41E;
         var _loc5_:DisplayObject = null;
         var _loc6_:_f6f12dbbfbe7f740316e0e9f = getChildByName(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("პႏက်ჷჵဢၕဗဤႎ၆ၢ႗ေ။ბၤႢჄო၉ႀၞဠႵႫვჀသႩცှ႞Ⴕဈၸჾ၂ვ","ႛမჵ၀გဿჹကၝ္းထღၻჟဆ")) as _f6f12dbbfbe7f740316e0e9f;
         var _loc7_:_b1c568080240cc3772c55d90 = getChildByName(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捑揸掷揨揝捧掏捋掠挀挥捴挗揳揺挧採挴掷捗揇掽掭捑捘揦捳捸","捱捋換揀挲換捁捙掩挵捆掣掏捀掤捏")) as _b1c568080240cc3772c55d90;
         var _loc8_:_345abaae6c23ec00331192f6 = getChildByName(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劤剾劚刌勠刃劤剢務劰勘勋劤刬勪刷劾劦剢勪劾刾刣剑劜勨剕剑刕剞刓劏勺创別刁","剝劚剿刍则劺刦剉勸剧剙剐剁助勌剾")) as _345abaae6c23ec00331192f6;
         var _loc9_:int = 0x4C1C10B9 ^ -1119670271 ^ 0x1CC2D577 ^ -308415025;
         var _loc10_:Array = [_loc8_,_loc7_,_loc6_];
         _loc1_ = -891204837 ^ 0x1BB90D61 ^ -1735909400 ^ 0x49D05992;
         for each(_loc2_ in _loc10_)
         {
            if(_loc2_ != null && _loc2_.visible && _loc2_.alpha > (0x735655ED ^ -498783335 ^ -859027263 ^ 0x5DDF36B5))
            {
               _loc1_++;
               _loc9_ += this._2549abe71f43ec2195779fd7(_loc2_);
            }
         }
         _loc3_ = _loc9_ + Math.max(0x4E194FC7 ^ -1634984705 ^ -1711969236 ^ 0x49603F14,_loc1_ - 1) * this._406284a8ec13a2982a0f5bd6;
         _loc4_ = this._1f1638cbafe41d3d173e6aa3.height / (-2111954128 ^ 0x5C37A292 ^ 0x23D0AA70 ^ -34001968) - _loc3_ / (-1056331810 ^ -1820575480 ^ -720777081 ^ -2021896621);
         for each(_loc5_ in _loc10_)
         {
            if(_loc5_ != null && _loc5_.visible && _loc5_.alpha > (0x0BE989AB ^ -543497369 ^ 0x3DB59969 ^ -372837467))
            {
               _loc5_.y = _loc4_;
               _loc4_ += this._2549abe71f43ec2195779fd7(_loc5_) + this._406284a8ec13a2982a0f5bd6;
            }
         }
      }
      
      private function _2549abe71f43ec2195779fd7(param1:DisplayObject) : Number
      {
         return param1.height;
      }
      
      private function _533ea41672d6424c7732f4a1(param1:_720429110fd3cfc01812b5a0 = null) : void
      {
         var _loc2_:int = -1758156351 ^ -104566082 ^ 0x6316B0F6 ^ 0x79D19DEE;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x12171A89 ^ -169648904 ^ -581992625 ^ 0x4E8CCF58))
            {
               case 0:
                  boatPanel.visible = true;
                  boatPanel.isBoatControlActivated = true;
                  _loc2_ = -583746789 ^ -715312992 ^ 0x1371C958 ^ 0x6F2FB486;
                  break;
               case 1:
                  if(app.user.atTheBoat.value == true)
                  {
                     _loc2_ = -17119419 ^ -517276957 ^ -891422126 ^ -1590021742;
                  }
                  else
                  {
                     _loc2_ = -1967493422 ^ -1266461975 ^ -1579747040 ^ -338152577;
                  }
                  break;
               case 2:
                  boatPanel.visible = false;
                  _loc2_ = 0x6EC1C667 ^ 0x3CD8A760 ^ -593544496 ^ -89018958;
                  break;
               case 3:
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function _9a910818aa8db15fa6680d8c(param1:_720429110fd3cfc01812b5a0) : void
      {
         var _loc2_:_9b5482b3978b7abe1547abb8 = GameSwf.instance.managerTutorial.tutorialInProgress;
         var _loc3_:Boolean = _loc2_ != null && _loc2_.needLockGui;
         if(app.user.inFishingProcess.value == true || app.user.inTalkWithNPC.value == true || _loc3_)
         {
            this._b7909fd1221142499b331575();
         }
         else
         {
            this._12de47c9b64a3377efe8bb20();
         }
      }
      
      public function _b7909fd1221142499b331575() : void
      {
         mainMenu.lock();
         controllerButtonFishingLine.isLocked = true;
         informerRod.lock();
         baitInformer.lock();
      }
      
      public function _12de47c9b64a3377efe8bb20() : void
      {
         mainMenu.unlock();
         controllerButtonFishingLine.isLocked = false;
         informerRod.unlock();
         baitInformer.unlock();
      }
      
      public function _c70bc4af1327211e682e4c1d(param1:int, param2:int, param3:int) : void
      {
         var _loc4_:_29f22a0f3291b172753f3231 = null;
         var _loc5_:_29f22a0f3291b172753f3231 = null;
         for each(_loc4_ in this._52d7f155c0c1aa26599edf03)
         {
            if(_loc4_.itemId == param2)
            {
               return;
            }
         }
         _controllerBoosters._dfac9a8e0f13cdd7663125db(param1,param2);
         _loc5_ = new _29f22a0f3291b172753f3231(param1,param2);
         this._52d7f155c0c1aa26599edf03.push(_loc5_);
      }
      
      public function _b95cd9b8dc3e72f3ad0156f2() : void
      {
         this._a722b274fb2223894e543e6a(_67282af25befe9778e5c8dd1.LUCK_POTION.id);
         this._a722b274fb2223894e543e6a(_67282af25befe9778e5c8dd1.FISH_RADAR.id);
         this._a722b274fb2223894e543e6a(_67282af25befe9778e5c8dd1.MAGIC_WATCH.id);
         this._a722b274fb2223894e543e6a(_67282af25befe9778e5c8dd1.EXP_BOOSTER.id);
         this._a722b274fb2223894e543e6a(_67282af25befe9778e5c8dd1.SHINY_POTION.id);
         this._a722b274fb2223894e543e6a(_67282af25befe9778e5c8dd1.POWER_BOOSTER.id);
      }
      
      public function get influencingItemWidgets() : Array
      {
         return this._52d7f155c0c1aa26599edf03;
      }
      
      public function _a722b274fb2223894e543e6a(param1:int) : void
      {
         var _loc2_:_29f22a0f3291b172753f3231 = null;
         _controllerBoosters._900a1f1bb2fa04204f399383(param1);
         for each(_loc2_ in this._52d7f155c0c1aa26599edf03)
         {
            if(_loc2_.itemTypeId == param1)
            {
               _8e13ffc955ce803f9ca06283._1b520a4567f7aef011d3fe68(this._52d7f155c0c1aa26599edf03,_loc2_);
               break;
            }
         }
      }
      
      public function _3a6a9660456e7623c0f998d0(param1:Boolean) : void
      {
         fishcoinsIndicator.visible = param1;
         fishbucksIndicator.visible = param1;
         energyIndicator.visible = param1;
         levelIndicator.visible = param1;
         controllerButtonFishingLine.view.source.visible = param1;
         informerRod.visible = param1;
         baitInformer.visible = param1;
         _controllerSettings.buttonsIsVisible = param1;
      }
      
      public function get isMenuLocked() : Boolean
      {
         return mainMenu.isLocked();
      }
      
      public function _55d4ee171c9212725ca72d00(param1:uint) : void
      {
         var _loc2_:int = 0x1BF324F4 ^ -1121341717 ^ -891299431 ^ -1308056177;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (-512641292 ^ 0xE4FAED ^ 0x1E937F11 ^ 0x210BC500))
            {
               case 0:
                  this._b95c50dd0c652423b4b1846b(param1,0x776A503B ^ 0x0D7C3845 ^ 0x46B3E415 ^ 0x3CA58E33,_706b9e8a05fa6a971551d21d.ECT_MAINTANENCE,this._4c1b2a3f54a5cef5e5fa23d1);
                  return;
               case 1:
                  if(param1 < (-624410526 ^ 0x217066CB ^ -1539539872 ^ 0x5F845AC8))
                  {
                     _loc2_ = 0x59A7F617 ^ 0x0DA783AE ^ -1681350306 ^ 0x11C522ED;
                  }
                  else
                  {
                     _loc2_ = -462807796 ^ -1054911892 ^ 0x3A85A97F ^ -1040379881;
                  }
                  break;
               case 2:
                  _45231761937416c3f2d3a259._c31664f755cb8875b11f02ba();
                  _loc2_ = 0x598F7018 ^ -1644297147 ^ 0x3439023A ^ 0x2E45806F;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function _b95c50dd0c652423b4b1846b(param1:int, param2:int, param3:String, param4:Function = null, param5:String = null) : _ddb31413e3f8701e7e98beaf
      {
         var _loc6_:_ddb31413e3f8701e7e98beaf = this._b66d5fe309c22d89cc02cda6(param3);
         if(_loc6_ != null)
         {
            return _loc6_;
         }
         _loc6_ = new _ddb31413e3f8701e7e98beaf(param1,param2);
         _loc6_.controllerCountdown.type = param3;
         _loc6_.controllerCountdown.onCompleteFunction = param4;
         _loc6_.controllerCountdown.membersScoreType = param5;
         _loc6_.x = -230485290 ^ -1130718898 ^ -491557244 ^ -1402280584;
         _loc6_.y = (-1313798954 ^ 0x479E354B ^ 0x2F3902F5 ^ -652856564) + this._f19f5bd9405e5f212857a3b6.length * (-26171225 ^ 0x70A272CB ^ 0x7B9EF610 ^ -179557020);
         this._f19f5bd9405e5f212857a3b6.push(_loc6_);
         addChild(_loc6_);
         return _loc6_;
      }
      
      public function _b66d5fe309c22d89cc02cda6(param1:String) : _ddb31413e3f8701e7e98beaf
      {
         var _loc2_:_ddb31413e3f8701e7e98beaf = null;
         var _loc3_:_ddb31413e3f8701e7e98beaf = null;
         for each(_loc2_ in this._f19f5bd9405e5f212857a3b6)
         {
            if(_loc2_.controllerCountdown.type == param1)
            {
               _loc3_ = _loc2_;
               break;
            }
         }
         return _loc3_;
      }
      
      public function _7da8f3c12244070df2c23152(param1:String) : void
      {
         var _loc2_:_ddb31413e3f8701e7e98beaf = null;
         var _loc3_:int = 0x6C8E4429 ^ -942574244 ^ -176949395 ^ 0x5E2CC618;
         while(_loc3_ < this._f19f5bd9405e5f212857a3b6.length)
         {
            _loc2_ = this._f19f5bd9405e5f212857a3b6[_loc3_];
            if(_loc2_.controllerCountdown.type == param1)
            {
               this._f19f5bd9405e5f212857a3b6.splice(_loc3_,0x65AF7D37 ^ 0x698AD4F1 ^ 0x44AA7A07 ^ 0x488FD3C0);
               _loc2_.destroy();
               break;
            }
            _loc3_++;
         }
      }
      
      private function _4c1b2a3f54a5cef5e5fa23d1() : void
      {
         _45231761937416c3f2d3a259._c31664f755cb8875b11f02ba();
      }
      
      public function update(param1:String) : void
      {
         switch(param1)
         {
            case _6b63fd0a4028eb279b227831.ECU_FISHING_LINE_COLOR:
               §§push(0x5D19CF1F ^ 0x32F43DC3 ^ 0x0A01EE43 ^ 0x65EC1C9F);
               break;
            case _6b63fd0a4028eb279b227831.ECU_FISHING_LINE_LEVEL:
               §§push(-38349685 ^ -945925632 ^ 0x75FA40A0 ^ 0x4FD2C62A);
               break;
            case _6b63fd0a4028eb279b227831.ECU_EVENTS_EVENT_END:
               §§push(0x7C7D00B4 ^ 0x739BF42B ^ -183624681 ^ -85399414);
               break;
            case _6b63fd0a4028eb279b227831.ECU_EVENTS_EVENT_START:
               §§push(-1734008142 ^ 0x6D8A9540 ^ 0x1F00080B ^ -365969414);
               break;
            case _6b63fd0a4028eb279b227831.ECU_EVENTS_EVENT_SHOWN:
               §§push(-1298922939 ^ 0x7F1461B6 ^ -1793007369 ^ 0x58A08300);
               break;
            case _6b63fd0a4028eb279b227831.ECU_SALES_SALE_END:
               §§push(-1182308844 ^ 0x464CB772 ^ -1174414425 ^ 0x46340AC4);
               break;
            case _6b63fd0a4028eb279b227831.ECU_SALES_SALE_START:
               §§push(-1701042666 ^ 0x37275315 ^ -1557686383 ^ 0x0E9CE294);
               break;
            case _6b63fd0a4028eb279b227831.ECU_SALES_SALE_SHOWN:
               §§push(0x08A4CCA4 ^ 0x65111AFD ^ -1999562710 ^ -446378380);
               break;
            case _6b63fd0a4028eb279b227831.ECU_TUTORIAL_COMMON_COMPLETE:
               §§push(-1564023655 ^ -1812302695 ^ -902547589 ^ -83318925);
               break;
            case _6b63fd0a4028eb279b227831.ECU_SHINY_STATE:
               §§push(-883987330 ^ -800048493 ^ -918049283 ^ -765920487);
               break;
            default:
               §§push(0x69F63A15 ^ 0x45C3F235 ^ -613915628 ^ -144856002);
         }
         switch(§§pop())
         {
            case 0:
               controllerButtonFishingLine.update(param1);
               break;
            case 1:
               controllerButtonFishingLine.update(param1);
               break;
            case 2:
            case 3:
            case 4:
               controllerSettings.update(param1);
               break;
            case 5:
            case 6:
            case 7:
            case 8:
               this._82da2d841f822609f0473021();
               break;
            case 9:
               controllerBoosters.update(param1);
               break;
            default:
               Debug.assert(false);
         }
      }
      
      private function _82da2d841f822609f0473021() : void
      {
         var _loc1_:_a88bd0e7945ef2fef78c2757 = GameSwf.instance.managerSales;
         var _loc2_:_30373f6dfb5b92bd81a483eb = _loc1_._7db2e9fb4bb231b6c8b8b892();
         if(_loc2_ == null || _loc2_.isShown || !GameSwf.instance.managerTutorial.isTutorialCommonComplete)
         {
            this._22b56253261a8ad168c5fd12.hide();
         }
         else
         {
            this._22b56253261a8ad168c5fd12.show();
         }
      }
      
      override public function destroy() : void
      {
         var _loc1_:_ddb31413e3f8701e7e98beaf = null;
         _controllerSettings._90eac9ca552fe54c2ca0299f();
         _controllerSettings = null;
         _controllerBoosters._90eac9ca552fe54c2ca0299f();
         _controllerBoosters = null;
         for each(_loc1_ in this._f19f5bd9405e5f212857a3b6)
         {
            _loc1_.destroy();
         }
         this._f19f5bd9405e5f212857a3b6 = [];
         this.deactivate();
         removeAllChildren(this);
         removeFromParent(this);
         this._bf6d33eec3467e140db6046b();
         _02fbe4cbe9e83f1b8c711799._87b72cd49d8fc861c4443e4d(this);
         super.destroy();
      }
      
      public function activate() : void
      {
         _controllerSettings.isActive = true;
         this._68b5115a4acb5b3135ff21d0();
         plingPanel.activate();
         if(this.dailyQuestManWidget != null && !_f6f12dbbfbe7f740316e0e9f.dailyQuestsModel.prizeIsCollect)
         {
            this.dailyQuestManWidget.enable();
         }
         if(this.missionsUncleSamWidget != null)
         {
            this.missionsUncleSamWidget.enable();
         }
         if(this.collectionsGirlWidget != null)
         {
            this.collectionsGirlWidget.enable();
         }
      }
      
      public function deactivate() : void
      {
         var _loc1_:int = 0x5DB633A9 ^ -171669061 ^ -1546656342 ^ 0x547921B7;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (0x4401760D ^ 0x44844CEA ^ 0x3E0D525A ^ 0x614C16BB))
            {
               case 0:
                  plingPanel.deactivate();
                  _loc1_ = 0x6459A777 ^ 0x0B646712 ^ -1888659881 ^ -1080760271;
                  break;
               case 1:
                  if(this.missionsUncleSamWidget != null)
                  {
                     _loc1_ = -417787509 ^ 0x44C9DEAF ^ 0x682E3BE6 ^ -1808102720;
                  }
                  else
                  {
                     _loc1_ = -1220920151 ^ -731332456 ^ -412825080 ^ -604878793;
                  }
                  break;
               case 2:
                  _controllerSettings.isActive = false;
                  _loc1_ = -696926802 ^ -1507534594 ^ -1938849193 ^ -1543857918;
                  break;
               case 3:
                  this._bf6d33eec3467e140db6046b();
                  if(this.dailyQuestManWidget != null)
                  {
                     _loc1_ = -186801138 ^ 0x5AB6AB1F ^ -1936034887 ^ 0x7D3502A4;
                  }
                  else
                  {
                     _loc1_ = -1720342992 ^ -852959641 ^ -57471534 ^ -150336638;
                  }
                  break;
               case 4:
                  this.missionsUncleSamWidget.deactivate();
                  _loc1_ = -1256901449 ^ 0x045948EC ^ 0x6BA79887 ^ -2060477742;
                  break;
               case 5:
                  return;
               case 6:
                  if(plingPanel != null)
                  {
                     _loc1_ = -1767358313 ^ 0x3C8791B3 ^ -1933420272 ^ 0x7929F632;
                  }
                  else
                  {
                     _loc1_ = 0x1274E9B7 ^ -39870500 ^ 0x4C6FA21D ^ -62870923;
                  }
                  break;
               case 7:
                  this.collectionsGirlWidget.deactivate();
                  _loc1_ = -179873412 ^ -1088580246 ^ 0x26C1CAE7 ^ 0x335F78F1;
                  break;
               case 8:
                  if(this.collectionsGirlWidget != null)
                  {
                     _loc1_ = -195984251 ^ 0x70D27599 ^ 0x06BC4A6E ^ -570702477;
                  }
                  else
                  {
                     _loc1_ = 0x526EB658 ^ -934280954 ^ 0x07EA34AA ^ -1039073804;
                  }
                  break;
               case 9:
                  if(_controllerSettings != null)
                  {
                     _loc1_ = -512601319 ^ -2086356595 ^ 0x1DC5F5BC ^ 0x20D7612C;
                  }
                  else
                  {
                     _loc1_ = -1297155837 ^ -902014310 ^ 0x6264FCAD ^ 0x45322131;
                  }
                  break;
               case 10:
                  this.dailyQuestManWidget.deactivate();
                  _loc1_ = -163778317 ^ 0x6C3BA887 ^ -1914001923 ^ 0x4829838E;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
   }
}

