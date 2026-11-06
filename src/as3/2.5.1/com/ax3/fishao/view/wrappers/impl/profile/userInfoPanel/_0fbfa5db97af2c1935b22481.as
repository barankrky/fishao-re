package com.ax3.fishao.view.wrappers.impl.profile.userInfoPanel
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.display.wrappers.IAssetWrapperRecursive;
   import com.ax3.display.wrappers.impl._eb2314ffc37429732989b460;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.display.dialogs._477aae31689d8cc1711fcd75;
   import com.ax3.fishao.model._c0d0e24e1ed8eae578a7b0b2;
   import com.ax3.fishao.model.profile.userInfoPanelData._9d0b65107bf98925061205cc;
   import com.ax3.fishao.model.types._3e150da9e23ba0916ccbf8e9;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs._6e3e496e7a4ab1988577523d;
   import com.ax3.fishao.view.dialogs.string._706c123ff0b2d45829c1bb3e;
   import com.ax3.fishao.view.dialogs.string._85b2141a2303f6545d411d7a;
   import com.ax3.fishao.view.wrappers.impl.FrameButtonWrapper;
   import com.ax3.fishao.view.wrappers.impl.profile.*;
   import com.ax3.utils._510d9148470a678356a77991;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.text.TextFormatAlign;
   
   public class _0fbfa5db97af2c1935b22481 extends _9d02c280d3d4b261c7a094d9 implements IAssetWrapperRecursive
   {
      
      private static const _3ed0a63d5b13bfb8ec1c5346:int = -1476657008 ^ -591319906 ^ -1730413575 ^ -471410825;
      
      private static const _80559022c49a916441a996b8:int = 0x47253AC0 ^ 0x2CCF4300 ^ 0x2F619E2D ^ 0x448BE753;
      
      private static const _6d2c389a1afd7c42216e3739:int = 0x3BE40EA4 ^ -172372561 ^ -1691439821 ^ 0x55736EA3;
      
      private static const _c1b65dbf79f84d0026630791:int = -152401169 ^ -2077616764 ^ -1593202948 ^ -741787297;
      
      private static const _e97f973893523f15f60089bf:int = 0x103F79FE ^ -1286050458 ^ 0x704303FA ^ -752609417;
      
      private static const _d8b7369ba354422702e6eb5f:int = -320130526 ^ 0x68368DC8 ^ -1620538878 ^ 0x1BB535FD;
      
      private static const _614d9f56c9dac87cb936a0ec:int = 0x5143E69A ^ 0x11BA4203 ^ 0x7B8A6A85 ^ 0x3B73CE09;
      
      private static const _0e5fd48891a46ed3d492366d:int = 0x2424F0EC ^ 0x41FB1D1C ^ -1278426179 ^ -703386024;
      
      public static const TABS_LIST_UPDATE:String = _95da7f1147c669197db81295._8f4866de82b7339154180ecb("刑剫剈剃利刲勩助勞勧勇動劑剃募剼勂割劻劤劰劝刘劥刿剢别利刖功劚剜剽剙刭勋","劉別勽刱剘劙劢勘勵勬劖劘勾劋剹勓");
      
      public var addAsFriendButton:FrameButtonWrapper;
      
      public var flagContainer:DisplayObjectContainer;
      
      public var totalPlayedHours:_81717eb7b06bf0689057c865;
      
      public var tournamentsWon:_81717eb7b06bf0689057c865;
      
      public var numberOfPrizesWon:_81717eb7b06bf0689057c865;
      
      public var fishesCaught:_81717eb7b06bf0689057c865;
      
      public var totalFishesCaught:_81717eb7b06bf0689057c865;
      
      public var biggestFishCaught:_81717eb7b06bf0689057c865;
      
      public var homePoints:_81717eb7b06bf0689057c865;
      
      public var numberOfMissionsCompleted:_81717eb7b06bf0689057c865;
      
      public var userNameText:TextField;
      
      public var userYearsText:TextField;
      
      public var userCountryText:TextField;
      
      public var userMemberSinceText:TextField;
      
      public var userBannedText:TextField;
      
      public var userLevelText:TextField;
      
      public var userStatusTextOnline:TextField;
      
      public var userStatusTextOffline:TextField;
      
      public var statusOn:DisplayObjectContainer;
      
      public var statusOff:DisplayObjectContainer;
      
      public var avatarContainer:DisplayObjectContainer;
      
      private var _f81b78a1f24daf7ac1d39bf6:_477aae31689d8cc1711fcd75;
      
      private var _26bf99ad617e810f6bbcc3f1:_9d0b65107bf98925061205cc;
      
      private var _47a21dae258c0655d0f4e765:_e12cb11c2be1d38c7c9f6051;
      
      private var _21232198344339f69557ac27:_eb2314ffc37429732989b460;
      
      private var _6cc0492388a8053a38d7dd58:_eb2314ffc37429732989b460;
      
      public function _0fbfa5db97af2c1935b22481()
      {
         super();
      }
      
      private static function _4fbcc704f057eb1fb8d3f515(param1:DisplayObject, param2:_eb2314ffc37429732989b460) : void
      {
         param2.graphics.beginFill(0x1615257C ^ 0x3B4F6EE3 ^ 0x545C8C7D ^ 0x7996A772,-1994906442 ^ 0x4670A0B1 ^ 0x25965E7B ^ -352396676);
         var _temp_2:* = param2.graphics;
         var _temp_1:* = 0x77F4D840 ^ -1913884515 ^ -1976673868 ^ 0x7036F169;
         _temp_2.drawRect(_temp_1,_temp_1,param1.width,param1.height);
         param2.graphics.endFill();
         param2.x = param1.x;
         param2.y = param1.y;
         param1.parent.addChild(param2);
      }
      
      private function set _7fcb2817ec8caba635094032(param1:String) : void
      {
         switch(param1)
         {
            case _9d0b65107bf98925061205cc.IS_FRIENDS:
               §§push(0x1BD904B5 ^ 0x7E3FCFF8 ^ 0x7ABCC8FB ^ 0x1F5A03B6);
               break;
            case _9d0b65107bf98925061205cc.FRENDSHIP_BANNED:
               §§push(-1678420011 ^ 0x31D029F3 ^ 0x20712CD1 ^ -1974185226);
               break;
            case _9d0b65107bf98925061205cc.ALREADY_SEND:
               §§push(-266266429 ^ -393111216 ^ -1800582024 ^ -1944203799);
               break;
            default:
               §§push(-1673063552 ^ -455811141 ^ 0x6CF82D33 ^ 0x146BE10B);
         }
         switch(§§pop())
         {
            case 0:
            case 1:
               this.addAsFriendButton.visible = false;
               this.addAsFriendButton.disable();
               break;
            case 2:
               this.addAsFriendButton.visible = true;
               this.addAsFriendButton.disable();
               break;
            default:
               this.addAsFriendButton.visible = true;
               this.addAsFriendButton.enable();
         }
      }
      
      private function set _bb3e829d2d11447a5f9a2178(param1:Boolean) : void
      {
         this.statusOn.visible = param1;
         this.userStatusTextOnline.visible = param1;
         this.statusOff.visible = !param1;
         this.userStatusTextOffline.visible = !param1;
      }
      
      private function set _640920d16180962b15d07fa9(param1:Boolean) : void
      {
         this.addAsFriendButton.visible = !param1;
      }
      
      private function set _0a377aa9056227afc158daae(param1:String) : void
      {
         _510d9148470a678356a77991._dfc01609cda83a1c4e0a9ae9(param1,this.flagContainer[_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勄勊刜刁削剠剹劵劙刢剪剏刳勨勑加利劷剓削前刃則列励刌","刅制劏刣勋切刟勆刎剖劒勺劜刽剝劬")],_app.resourceManager,_e97f973893523f15f60089bf,_d8b7369ba354422702e6eb5f,_614d9f56c9dac87cb936a0ec,_0e5fd48891a46ed3d492366d);
      }
      
      public function get showInventory() : Boolean
      {
         return this._26bf99ad617e810f6bbcc3f1.showInventory;
      }
      
      private function _0a2e2cadd0d79e6de3c0de37(param1:Event) : void
      {
         this.addAsFriendButton.disable();
         this._26bf99ad617e810f6bbcc3f1.addAsFriend(_login,this._cf0f26175b3b119146971d22);
      }
      
      private function _cf0f26175b3b119146971d22() : void
      {
      }
      
      override public function onAssetProcessComplete() : void
      {
         this._909d863a3d831a64b7d6751a();
         this._21232198344339f69557ac27 = new _eb2314ffc37429732989b460();
         this._6cc0492388a8053a38d7dd58 = new _eb2314ffc37429732989b460();
         this._26bf99ad617e810f6bbcc3f1 = new _9d0b65107bf98925061205cc();
         this._f81b78a1f24daf7ac1d39bf6 = new _477aae31689d8cc1711fcd75(this.userYearsText,this.flagContainer,this.userCountryText);
         this._47a21dae258c0655d0f4e765 = new _e12cb11c2be1d38c7c9f6051(Debug.assertProperty(_asset,_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劌勠勛务刅刱刅刄刖劾務勒剌助勫勪勏刿剿勩剪劵剙刭劇劺勃创力剐刄勁","剨判剠剄勔刅刳劄剢剳刢刁加刉劙刖")));
      }
      
      override public function update(param1:Function) : void
      {
         super.update(param1);
         this._26bf99ad617e810f6bbcc3f1.load(_login,this._9517b90f4bd20a757e758746);
      }
      
      private function _909d863a3d831a64b7d6751a() : void
      {
         this.addAsFriendButton.label = _c2ad9d37d7be0097d6d2e977._a1824cf8cfedd1c4a5e49576(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掯捱掽捠挞挡挧挚揪挞揧捚捖揧挒捬掑捘揕揲捬揉捯捗揞捛捵捅挌挛","捅採换揶掎掲控捌掳捧掭捳揸挟揋揀"));
         this.addAsFriendButton.handler = this._0a2e2cadd0d79e6de3c0de37;
         this.totalPlayedHours.labelText = _c2ad9d37d7be0097d6d2e977._a1824cf8cfedd1c4a5e49576(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揘掖揘掓挺挅挅掽握捇捰掙捘揶揆掶換揳挑掺揔捆掴揣捺挥掁掘按揧推揥掱揓捸揆掑挦掕挶","措挨揰挢描掇控挤掁揹挕揧援捛捉揳"));
         this.tournamentsWon.labelText = _c2ad9d37d7be0097d6d2e977._a1824cf8cfedd1c4a5e49576(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("၌်စჺႃაႍဝ႟ႳပზၺჷႽႅ჊პၶႀၑၵბၜ၊Ⴊჾၯ၍လგ၍ဴဵ၌ဒ","ၽတဦး၈ჽၧဴႠြნს၀ႂတႾ"));
         this.numberOfPrizesWon.labelText = _c2ad9d37d7be0097d6d2e977._a1824cf8cfedd1c4a5e49576(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ကჟၥု჌ဿჽ့၆ჭႷူႬ႒၉လ၆ၺႝႤၕ႐၈သხႌႼႱႚမၯဲၻჲ၈ა၇჊Ⴂႊၵ჉","ႏၽჱნွ႑ႉ჎ႝ္႘၊ლსၕအ"));
         this.fishesCaught.labelText = _c2ad9d37d7be0097d6d2e977._a1824cf8cfedd1c4a5e49576(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ႎ၀႘ၔႰးၴჴဿჇႝဥშဣဟယ။Ⴣၣთၝ၇ၒ႙႔လႏპჸ၌ი၎","ა჌ထဴၼჺႧ႒ဨფႹჰჩ္ლရ"));
         this.totalFishesCaught.labelText = _c2ad9d37d7be0097d6d2e977._a1824cf8cfedd1c4a5e49576(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揈揥揮捆揈捊挵掘挳挿挥挝挻掽揶揪捠揧揪捪挴掻採揕揅授捲掝捿挓掔揉揚揘捥挤挽揀挂挅挹掦","推掘揚捌掫掄捔挎换揓掕掍挦挕掂捝"));
         this.biggestFishCaught.labelText = _c2ad9d37d7be0097d6d2e977._a1824cf8cfedd1c4a5e49576(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捎揳捵掶捅捂援揺揬捱捅挀掶捱掖掵捁掦捼捌捁捳捯挔揤掉掠掭挟揷挃捧接捜揲推掝揱揾捗挪掙","推挝掆掊掌捏挑援捱挋挒捧挙揜捴挧"));
         this.homePoints.labelText = _c2ad9d37d7be0097d6d2e977._a1824cf8cfedd1c4a5e49576(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၝႂ႔ၜႝკှႫჸၛၨၕიဇၛ႑რၓၴဇႏါႅლစჼ၅၍","ဨ၆၊Ⴉ჈ဵ႕ႆၙႤႪၣღၸწၠ"));
         this.numberOfMissionsCompleted.labelText = _c2ad9d37d7be0097d6d2e977._a1824cf8cfedd1c4a5e49576(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ჍყႃႬၱၑဴეძ၅႑ႅဠႬထ၆ၬၻႳვივჃზၓဪၫၶႛჍၬၦႝ႓ჰၿ","ၿဏႼწၑိဩေႆႭႥငႦႶ჈Ⴑ"));
         this.userStatusTextOnline.text = _c2ad9d37d7be0097d6d2e977.get(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ံტၣဓဿဈჶၐႝညဳიၙა်ႅရၾးဩ","ႁაႴეၔ၇჆ჿჵქძဆၠს၏ဃ"));
         this.userStatusTextOffline.text = _c2ad9d37d7be0097d6d2e977.get(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剞剖勈削勲勣剖勵勲勫剅剤勨剽刞励劊勨刢刲剽刃","募勞刬力勓割劍勾劧剙刏剷劖刔剘分"));
      }
      
      private function _9517b90f4bd20a757e758746() : void
      {
         if(this._47a21dae258c0655d0f4e765 != null)
         {
            this._47a21dae258c0655d0f4e765.clubData = this._26bf99ad617e810f6bbcc3f1.clubInfo;
         }
         this.totalPlayedHours.labelValueText = this._26bf99ad617e810f6bbcc3f1.totalPlayedHours.toString();
         this.tournamentsWon.labelValueText = this._26bf99ad617e810f6bbcc3f1.tournamentsWon.toString();
         this.numberOfPrizesWon.labelValueText = this._26bf99ad617e810f6bbcc3f1.numberOfPrizesWon.toString();
         this.fishesCaught.labelValueText = this._26bf99ad617e810f6bbcc3f1.fishesCaught.toString() + _95da7f1147c669197db81295._8f4866de82b7339154180ecb("务勵剙劲劸剪勖副刋剟","剄劓剬务刢剙剶劚勧勛勍勢劰剟刺刢") + this._26bf99ad617e810f6bbcc3f1.amountOfAllFishTypes.toString();
         this.totalFishesCaught.labelValueText = this._26bf99ad617e810f6bbcc3f1.totalFishesCaught.toString();
         this.biggestFishCaught.labelValueText = _c2ad9d37d7be0097d6d2e977._d6caeb4f7f3c13c311445662(this._26bf99ad617e810f6bbcc3f1.biggestFishCaught);
         this.homePoints.labelValueText = this._26bf99ad617e810f6bbcc3f1.homePoints.toString();
         this.numberOfMissionsCompleted.labelValueText = this._26bf99ad617e810f6bbcc3f1.missionsCompleted.toString();
         this.userYearsText.text = this._26bf99ad617e810f6bbcc3f1.age == "" ? "" : _c2ad9d37d7be0097d6d2e977.get(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揵挢揑挮挍挾挭掊揷掐掂揭挗掑揁掖捝挄挎探捿捌掓掘捓捭揝捠挻掞捁捠握挫掹掕","揩揘挄挾捋挿挿捍揈按揿掖揊揟捍掿")).replace(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ႛဍჭၣၸჾဣှဓჇၘညၜးဆဦၱၳ","၏Ⴜ၈္Ⴤတၮ၍ၛၡႼ၈ၾჄპႆ"),this._26bf99ad617e810f6bbcc3f1.age);
         this.userCountryText.text = _c2ad9d37d7be0097d6d2e977.get(this._26bf99ad617e810f6bbcc3f1.languageName);
         this._f81b78a1f24daf7ac1d39bf6._7ce3a9f750739ce40e208781();
         _4fbcc704f057eb1fb8d3f515(this.userCountryText,this._6cc0492388a8053a38d7dd58);
         _4fbcc704f057eb1fb8d3f515(this.flagContainer,this._21232198344339f69557ac27);
         var _loc1_:_c0d0e24e1ed8eae578a7b0b2 = app.countries._b31895c8df36744f6beebecb(this._26bf99ad617e810f6bbcc3f1.countryName);
         var _loc2_:String = _c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a.EST_DIALOG_USER_PROFILE_COUNTRY).replace(_706c123ff0b2d45829c1bb3e.ESTS_COUNTRY,_loc1_.name);
         this._6cc0492388a8053a38d7dd58.tooltipText = _loc2_;
         this._21232198344339f69557ac27.tooltipText = _loc2_;
         this.userNameText.text = this._26bf99ad617e810f6bbcc3f1.usersName;
         this.userMemberSinceText.text = _c2ad9d37d7be0097d6d2e977.get(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剪剷勪勺剷刋剭勚劐勣创加劑删动刓刊到勤勶剸勱别势勎刃剟勷剁刨副加勚勉刁則剳刮勥劃務剕剒剧","剀判勐劘勪勾勅勈勠剪刾刋勲剔动勾")).replace(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挗揬掅掾揟捐揰挟挺挆掺挒挢捥挧揭捑揜挩掑挥捡挰捜挆按捼援掏揋掴掐捋捗据捺挬揾损掸挓挩掟挃掫捀揻捞","掂揖捁掄捰捒挚揮揯揣掿揪揅提捱损"),this._26bf99ad617e810f6bbcc3f1.dateOfRegistration);
         var _loc3_:TextFormat = new TextFormat();
         _loc3_.align = TextFormatAlign.CENTER;
         this.userLevelText.text = this._26bf99ad617e810f6bbcc3f1.usersLevel.toString();
         this.userLevelText.setTextFormat(_loc3_);
         this._bb3e829d2d11447a5f9a2178 = this._26bf99ad617e810f6bbcc3f1.userIsOnline;
         this._640920d16180962b15d07fa9 = this._26bf99ad617e810f6bbcc3f1.userIsFriend || app.user.username == _login;
         if(this._26bf99ad617e810f6bbcc3f1.banType != null && this._26bf99ad617e810f6bbcc3f1.banType != _3e150da9e23ba0916ccbf8e9.NORMAL)
         {
            this.userBannedText.text = _c2ad9d37d7be0097d6d2e977.get(this._26bf99ad617e810f6bbcc3f1.banType.name);
         }
         else
         {
            this.userBannedText.text = this._26bf99ad617e810f6bbcc3f1.userIsModerator ? _c2ad9d37d7be0097d6d2e977._a1824cf8cfedd1c4a5e49576(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剟剳勃刞剾勶到刧勀列刋劶刯剶勘勄勵刹刷募劝勍到劖刔勣","剪剞刖刂募劮劲劽励券劰刬劫劜勫剕")) : "";
         }
         this._0a377aa9056227afc158daae = this._26bf99ad617e810f6bbcc3f1.languageFlagUrl;
         _510d9148470a678356a77991._6c705fb8a87b0c80d1272891(_login,this.avatarContainer,_3ed0a63d5b13bfb8ec1c5346,_80559022c49a916441a996b8,_6d2c389a1afd7c42216e3739,_c1b65dbf79f84d0026630791);
         this._7fcb2817ec8caba635094032 = this._26bf99ad617e810f6bbcc3f1.friendshipState;
         dispatchEvent(new Event(TABS_LIST_UPDATE));
         dispatchEvent(new Event(_6e3e496e7a4ab1988577523d.USER_INFO_DATA_LOADED_COMPLETE));
         _06764c2cef0a83e404316a1f();
      }
   }
}

