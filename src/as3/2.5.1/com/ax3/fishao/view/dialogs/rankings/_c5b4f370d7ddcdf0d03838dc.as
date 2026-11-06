package com.ax3.fishao.view.dialogs.rankings
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.display.wrappers.impl._b6959442d774100015b69ffa;
   import com.ax3.fishao._dfa25706e58a240c1e33e5c6;
   import com.ax3.fishao.display.popups._73899a4de8f83c8d2c26f545;
   import com.ax3.fishao.model.vo._cff30366d510ea862540bfef;
   import com.ax3.fishao.utils._745ca4cad2f6acc1f3084ea1;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs.fishes._cd108dc25fb4e5ceaadd7a9d;
   import com.ax3.fishao.view.dialogs.rankings.model._7b5c1c7b056c8acade2b9708;
   import com.ax3.fishao.view.dialogs.rankings.model._c3327135e083cacb389c3eac;
   import com.ax3.fishao.view.dialogs.rankings.views._e4b41b300893e09035445982;
   import com.ax3.fishao.view.dialogs.string._85b2141a2303f6545d411d7a;
   import com.ax3.fishao.view.wrappers.impl._45050138a2c5c7b0f497e4b4;
   import com.ax3.fishao.view.wrappers.impl._593f9faa4abfdef2dd5e6544;
   import com.ax3.fishao.view.wrappers.impl.profile.profileControls._cc10ca05aac4527c75bdb2e7;
   import com.ax3.fishao.view.wrappers.impl.profile.profileControls.pagesController._3e3bab3b8d99ff9638f45353;
   import com.ax3.fishao.view.wrappers.impl.profile.profileControls.pagesController._a5b8b5a0e66fa8f31d236147;
   import com.ax3.fishao.view.wrappers.impl.profile.profileControls.pagesController._bdbf5ff4e1b06b31215378bb;
   import com.ax3.jss.requests.server._5e1bab759fcaea6d1f84faa7;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.text.TextFieldAutoSize;
   import protocol.api.profile.rankings.ResponseProfileRankings;
   
   public class _c5b4f370d7ddcdf0d03838dc extends _78a8260cec414ac0d2fece40
   {
      
      public static const DIFFERENT_FISH:String = _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ჂჽဪჁာၸႥဲဴၾၾြၕၔီრდჂၵვျႀၴႍ჈၊ၺიႦწႮငဈႩႂ჊ႾႉဵძႻ၊၊ဉ჌ဲႊပႿႎ၅ყရკ","ႴၲႮა႞႘Ⴔၲၥံၧႍႈၜၬႛ");
      
      public static const BIGGEST_FISH:String = _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ႜဦသံჰတၓႢ႓႔အრႯႇ၍ნၱႧဧူထနႡၭၮ႘რ၊ဗ႐၉ဍၻ႙ႼေၳოဤჅႦႍႳၗဝမჱ჌ၯႇ","჉းეშဠ၎ႄဩ၀ၷးီဏ၅႒ဪ");
      
      public static const TOTAL_FISH:String = _95da7f1147c669197db81295._8f4866de82b7339154180ecb("力副剨分刖劗努勐勁勲割刡勩勺剽則劣刭剾刾刧刷勵劲刐剱剈剂剞勝劤募劗劐務刡勮刮剭列创劦劖制勪剅","利劘劅刮剈勐勓勤剒刱勖剅劥剝剹劊");
      
      public static const LEVEL:String = _95da7f1147c669197db81295._8f4866de82b7339154180ecb("剺勅務勯判剁劑勈剰刼創刮刄勂勰刯劏勑务勇剝勔刉刋刚剿劊劒勶剭剙刃刨勾勆則","剝勣加剑剋割効勧列刁剫剏剺劣割勊");
      
      public static const MISSIONS_COMPLETED:String = _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ဍႚခၢ႔႙ၴლၷႸႸႫမါါြႉშ၃်჻ႰႷႤეჿူဉჱႩၲ၁Ⴇ၇ႆშျႋႬဩၖႽ၄Ⴐ်ၭ၏჻ါჩႆ႖႟ႜ჋ဤဳჸპძႋႄ","ႦჹူထႰ၏ႚယ၃ვဤ჎႒რႄႯ");
      
      public static const BADGES_COLLECTED:String = _95da7f1147c669197db81295._8f4866de82b7339154180ecb("劄劈刨勔勅勚勢办勰刽勥劃勠剋力剻剧勄剩剡刦勠刌勧劃则剬劇勀勱删刹刴创力刘劊剘劥剃勓勉勝勎利劧刐刨刓勜劼剹劢剰劾劂剎刓","副剈劘勰劊勾勭刬判劐劳勺刅刧劈劙");
      
      public static const HOME_POINTS:String = _95da7f1147c669197db81295._8f4866de82b7339154180ecb("删勿刋剋劀勄剁刿刨劈剭刡刈劃刨剴刲劺刎刪剫剆劼刭劼刎剗刃勗别別刕刽劓勺勨刐削勍勠务劭剗劗劕勰剴到","労勖劗勇勯劸劊劔刯切刄則劵勣劍勋");
      
      public static const TOURNAMENTS_WON:String = _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၕ၍၎ၓჶဝၣႷၛႸႜ႘့လၢၦ჎Ⴤ႑ၟဇဗၑဌჭოၤႬျ჻၂ဒნဆႉၝၚ჆၊ဍჿჶႡၮဏ჆ၩტႺႤოხ႟Ⴍအ၀","჌ჸპၙ၎ၤႝညტၮၥჷ჎ႍჀၪ");
      
      private static const _0881968101076784ab63faca:int = -973361041 ^ -1879331965 ^ 0x3F5F5290 ^ 0x755F497C;
      
      private static const _aa4e8dc990905a1dcd9b6bc5:int = -846877141 ^ 0x24E3AD92 ^ -511162681 ^ 0x08EE457E;
      
      private static const _f7cfc8b9e19215161f5334db:int = -570827894 ^ -1135575139 ^ 0x6D3FDA04 ^ 0x0C967E13;
      
      private static const _a560427724411d1536c53bdb:int = -1279764033 ^ 0x65C9CE67 ^ 0x6D49636C ^ -1153895279;
      
      public static const COUNT_ROWS:int = -1098330686 ^ -990127003 ^ -1187775554 ^ -1019155952;
      
      private static const _aed2654e2ef540bea34e0181:int = -871252835 ^ -1983643137 ^ 0x508F565A ^ 0x155AEB39;
      
      private var _88165079e97d442565414bf6:Vector.<String> = new Vector.<String>();
      
      private var _c246dea2794abd7292752dac:Vector.<_cff30366d510ea862540bfef>;
      
      private var _5017b03dd7d7ddde4add5850:_cd108dc25fb4e5ceaadd7a9d;
      
      private var _e0124c6678d8a8170b01ed56:Array;
      
      private var _10e250d1d1b32a70ab05f323:int;
      
      private var _c24960359d042b90b198b1dd:Vector.<Object>;
      
      public function _c5b4f370d7ddcdf0d03838dc()
      {
         super();
         this._c24960359d042b90b198b1dd = new Vector.<Object>(-2015623432 ^ -824069677 ^ 0x76ACB9B9 ^ 0x3F910E92);
         this._88165079e97d442565414bf6.push(_c2ad9d37d7be0097d6d2e977.get(DIFFERENT_FISH));
         this._88165079e97d442565414bf6.push(_c2ad9d37d7be0097d6d2e977.get(BIGGEST_FISH));
         this._88165079e97d442565414bf6.push(_c2ad9d37d7be0097d6d2e977.get(TOTAL_FISH));
         this._88165079e97d442565414bf6.push(_c2ad9d37d7be0097d6d2e977.get(LEVEL));
         this._88165079e97d442565414bf6.push(_c2ad9d37d7be0097d6d2e977.get(MISSIONS_COMPLETED));
         this._88165079e97d442565414bf6.push(_c2ad9d37d7be0097d6d2e977.get(BADGES_COLLECTED));
         this._88165079e97d442565414bf6.push(_c2ad9d37d7be0097d6d2e977.get(HOME_POINTS));
         this._88165079e97d442565414bf6.push(_c2ad9d37d7be0097d6d2e977.get(TOURNAMENTS_WON));
         this._c246dea2794abd7292752dac = Vector.<_cff30366d510ea862540bfef>(app.fishDict.getAll());
         this._c246dea2794abd7292752dac.sort(_cff30366d510ea862540bfef._f5502442600f90ab60bf8136);
         this._5017b03dd7d7ddde4add5850 = GameSwf.instance.managerFishes;
         this._10e250d1d1b32a70ab05f323 = -637547469 ^ 0x02C2CAF5 ^ -1202043711 ^ -1667711496;
      }
      
      private function _c2a53d177503b882152f924c(param1:Event) : void
      {
         this._10e250d1d1b32a70ab05f323 = _pagesController.currentPage;
         this._11f3b83556be367ef7802190(_pagesController.currentPage);
      }
      
      private function _653e8f18e9cba30a0dcbc65d(param1:Event) : void
      {
         rankingSubtypePicker.visible = rankingTypePicker.selectedItemIndex == _7b5c1c7b056c8acade2b9708.FISH_SIZE || rankingTypePicker.selectedItemIndex == _7b5c1c7b056c8acade2b9708.FISH_COUNT;
         rankingSubtypePicker.selectedItemIndex = -63782005 ^ 0x6026254D ^ 0x4770CAC9 ^ -614192113;
         this._10e250d1d1b32a70ab05f323 = -1809032563 ^ 0x1F18D130 ^ 0x632FFDC3 ^ 0x17E48981;
         this._70177cf88d4b51343fcbd392();
         this._cba5d5b220b1fbd8eb3dd519();
      }
      
      private function _c1c02f42451fb67f9003e1e2(param1:Event) : void
      {
         this._10e250d1d1b32a70ab05f323 = 0x1BF647CE ^ 0x6A352FF6 ^ -103869554 ^ 0x77F38449;
         this._70177cf88d4b51343fcbd392();
         this._cba5d5b220b1fbd8eb3dd519();
      }
      
      private function _7850c9b3dc408b6107c80f9c(param1:_5e1bab759fcaea6d1f84faa7) : void
      {
         var _loc2_:String = null;
         var _loc3_:Vector.<String> = new Vector.<String>();
         _loc3_.push(_c2ad9d37d7be0097d6d2e977.get(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勬刴办剒劏劀剶勉剱勒劺勦剨则剦剩勼勪劋勈剻刕副勲刌劬勊刻勞勀剮劚劖剟劂劰剀剘勴務劊动刂勎勁劘勲劑","剴刈刴剿勭劄剧剝办勭副刿劽勸剎劭")));
         this._e0124c6678d8a8170b01ed56 = this._5017b03dd7d7ddde4add5850._beedd347b0befc05b4231987(this._c246dea2794abd7292752dac);
         var _loc4_:int = 0x4196CBBA ^ 0x4C82FE20 ^ -2048522865 ^ -1997393899;
         while(_loc4_ < this._e0124c6678d8a8170b01ed56.length)
         {
            _loc2_ = (this._e0124c6678d8a8170b01ed56[_loc4_] as _cff30366d510ea862540bfef).displayName;
            _loc3_.push(_loc2_);
            _loc4_++;
         }
         rankingSubtypePicker.create(_loc3_);
         this._70177cf88d4b51343fcbd392();
         this._cba5d5b220b1fbd8eb3dd519();
      }
      
      override protected function _935ac2966ddad68dfc449202() : void
      {
         closeButton.handler = function(param1:MouseEvent):void
         {
            close();
         };
         title.text = _c2ad9d37d7be0097d6d2e977.get(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捐掶揔掕掼掰掇捪揼挚掖掤掆挗掿捴揖揖捡捽掫捘捞捠揋揟掻捧挚揬捎掃揥掤握掱","掛挪排捬掵揧捓捾捪掀捐揱挚按捕挝"));
         _rankingItem = _asset.getChildByName(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("則動劰加剘劂加刮勥勶劺勅劀劾剭办劒刵勠劾刖劐剠劋勚劺勣刾勪剑","刯務劂勂刨劍勤剛初劔刦別列剠勋劄"));
         _itemFactory = new _b6959442d774100015b69ffa(_app.resourceManager,dialogAssetURL,_e4b41b300893e09035445982);
         _itemFactory.process(_rankingItem);
         _rankingTypeFactory = new _b6959442d774100015b69ffa(_app.resourceManager,dialogAssetURL,_45050138a2c5c7b0f497e4b4);
         _rankingTypeFactory.process(rankingTypePicker.itemTemplate);
         rankingTypePicker._c5d5235acc70f20f98ab98c9(_rankingTypeFactory);
         rankingTypePicker.addEventListener(Event.CHANGE,this._653e8f18e9cba30a0dcbc65d);
         _rankingSubtypeFactory = new _b6959442d774100015b69ffa(_app.resourceManager,dialogAssetURL,_45050138a2c5c7b0f497e4b4);
         _rankingSubtypeFactory.process(rankingSubtypePicker.itemTemplate);
         rankingSubtypePicker._c5d5235acc70f20f98ab98c9(_rankingSubtypeFactory);
         rankingSubtypePicker.addEventListener(Event.CHANGE,this._c1c02f42451fb67f9003e1e2);
         rankingSubtypePicker.visible = false;
         _amountTextWrapper = new _73899a4de8f83c8d2c26f545(amountTypeText);
         tabs._7bf258038fc042efd3588c8b(_c2ad9d37d7be0097d6d2e977.get(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ါႍზႭი႐ၐယႌူၽდၭႲႂၗႀჷწჼႺဧႇဪ႔Ⴄျ်჋ეၾလဩဟქၗჺၤწဩၾၞეჟမჯဖ၉၆ხႩႹ","ွქံၞႆၳ႘ထჅოဏ჈დဤუႡ")));
         tabs._7bf258038fc042efd3588c8b(_c2ad9d37d7be0097d6d2e977.get(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捿掟揚掠挔捐捠挱揑捦挨捫揿挃挂捩揸捃挰掴掔換振捗控掽揱挽掰揑揸措掫提掜掬捯捽挭掅捳揼掘捪掣握","揊挭掐揕挖挌掅挔挝捹捹挄挂掓揅捄")));
         tabs._7bf258038fc042efd3588c8b(_c2ad9d37d7be0097d6d2e977.get(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捃挲挙捩掰挹掋揰揕掹揟掼捯捀揘掵揜换掻揔插掔挻挞持掃掺揻掛挱掜揀掚据掘揥捣捩掽掸","掝挲挰挶掁揇揸挫掎提挿挹挕揉捘挼")));
         tabs.addEventListener(_593f9faa4abfdef2dd5e6544.TAB_CHANGED,this._1a027cf27e58607bad91c5a2);
         this._ebb64a02f22cfd43c48561c3();
         super._935ac2966ddad68dfc449202();
      }
      
      private function _4d30cb70b3c7d8beff5a70ab(param1:ResponseProfileRankings) : void
      {
         var _loc2_:Object = null;
         var _loc3_:int = 0x157D3D53 ^ -1575771909 ^ 0x208681B7 ^ -1746396129;
         var _loc4_:int = 0x407D7AD0 ^ 0x139BB1BE ^ 0x59B6E7A3 ^ 0x0A502CCD;
         var _loc5_:_c3327135e083cacb389c3eac = null;
         var _loc6_:int = -1666218364 ^ -1544584373 ^ -1228162077 ^ -1987330516;
         _pagesController.removeEventListener(_3e3bab3b8d99ff9638f45353.EVENT_CHANGE_PAGE,this._c2a53d177503b882152f924c);
         this._c24960359d042b90b198b1dd = new Vector.<Object>(-1592530783 ^ 0x55C6A8FF ^ 0x6821BB7E ^ -1661666528);
         var _loc7_:_c3327135e083cacb389c3eac = null;
         var _loc8_:Boolean = false;
         for each(_loc2_ in param1.itemsData)
         {
            _loc5_ = new _c3327135e083cacb389c3eac(rankingTypePicker.selectedItemIndex);
            _loc5_.deserialize(_loc2_);
            if(_loc5_.login.toLowerCase() == app.user.username.toLowerCase())
            {
               if(_loc8_)
               {
                  continue;
               }
               _loc7_ = _loc5_;
               _loc8_ = true;
            }
            this._c24960359d042b90b198b1dd.push(_loc5_);
         }
         this._c24960359d042b90b198b1dd = this._c24960359d042b90b198b1dd.sort(_c3327135e083cacb389c3eac._19732dd0d7063a3c949aeaa3);
         _loc3_ = this._c24960359d042b90b198b1dd.length / (0x5A1C4B4D ^ -896429030 ^ -1442393564 ^ 0x3A8B0D7A);
         _loc4_ = 0x275836BE ^ 0x66102DAE ^ -1098789557 ^ -3549605;
         if(_loc7_ != null)
         {
            _loc6_ = this._c24960359d042b90b198b1dd.indexOf(_loc7_);
            _loc4_ = _loc6_ / (0x0BFC4D38 ^ 0x45AB8A90 ^ -1966089412 ^ -996664163);
         }
         this._11f3b83556be367ef7802190(_loc4_);
         _pagesController.addEventListener(_3e3bab3b8d99ff9638f45353.EVENT_CHANGE_PAGE,this._c2a53d177503b882152f924c);
      }
      
      private function _11f3b83556be367ef7802190(param1:int) : void
      {
         _pagesController._4877aa8ae68d9d94c130193c(this._c24960359d042b90b198b1dd.slice(param1 * COUNT_ROWS,(param1 + (-187705485 ^ 0x14922AC9 ^ -1361020806 ^ 0x4EBD85C1)) * COUNT_ROWS),param1,Math.ceil(this._c24960359d042b90b198b1dd.length / COUNT_ROWS));
      }
      
      override public function activate() : void
      {
         super.activate();
         this._479dcc936bf1d097d6bfdae7();
      }
      
      private function _1a027cf27e58607bad91c5a2(param1:Event) : void
      {
         this._70177cf88d4b51343fcbd392();
      }
      
      private function _ebb64a02f22cfd43c48561c3() : void
      {
         numberText.text = _c2ad9d37d7be0097d6d2e977.get(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掕损挞揀挱援挋捽掛掮揫掼指持捡揞控挫挰挼掂掟挽提挽捕揋捏捀捎捘掖据挵","挧揊捀捅捩掬提捄挖揰捪挃挬据捗揪"));
         nameText.text = _c2ad9d37d7be0097d6d2e977.get(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("჉ႏၴႫဎဂ့ჲ၏ႚბဪၯၽႳၳ","ႈႩၕႴႈၰႶ၆ျჺၭჺငႼႽგ"));
         amountTypeText.text = "";
         rankingTypePicker.create(this._88165079e97d442565414bf6);
         rankingTypePicker.text = this._88165079e97d442565414bf6[-596505589 ^ 0x651FF969 ^ -1706895905 ^ 0x232F20BD];
         rankingTypePicker.iconIndex = 0x5BD15A1E ^ -1932464454 ^ 0x53E04A0E ^ -2065563989;
         rankingTypePicker.selectedItemIndex = 0x204A180F ^ -1060965908 ^ 0x447544C7 ^ -1526878940;
         this._d1f07fb004ead808619132a3();
      }
      
      private function _479dcc936bf1d097d6bfdae7() : void
      {
         this._5017b03dd7d7ddde4add5850._8bf4de9d74518e406a443aa3(_745ca4cad2f6acc1f3084ea1._8f86b04e4306f87a82dcadcb(this._7850c9b3dc408b6107c80f9c));
      }
      
      private function _d1f07fb004ead808619132a3() : void
      {
         var _loc1_:_bdbf5ff4e1b06b31215378bb = new _bdbf5ff4e1b06b31215378bb(pagesTextField,rightPageButton,leftPageButton,TextFieldAutoSize.RIGHT);
         var _loc2_:_a5b8b5a0e66fa8f31d236147 = new _a5b8b5a0e66fa8f31d236147(itemsContainer,_0881968101076784ab63faca,_aa4e8dc990905a1dcd9b6bc5,_f7cfc8b9e19215161f5334db,_a560427724411d1536c53bdb,COUNT_ROWS,_aed2654e2ef540bea34e0181);
         var _loc3_:_cc10ca05aac4527c75bdb2e7 = new _cc10ca05aac4527c75bdb2e7(_itemFactory);
         _pagesController = new _3e3bab3b8d99ff9638f45353(_loc1_,_loc2_,_loc3_);
         _pagesController.autosize = TextFieldAutoSize.RIGHT;
      }
      
      private function _cba5d5b220b1fbd8eb3dd519() : void
      {
         switch(rankingTypePicker.selectedItemIndex)
         {
            case _7b5c1c7b056c8acade2b9708.DIFFERENT_FISH:
               §§push(0x08E9170D ^ 0x73BA9D94 ^ -1474197374 ^ -747503077);
               break;
            case _7b5c1c7b056c8acade2b9708.FISH_COUNT:
               §§push(-566782828 ^ 0x1184B86B ^ 0x71B25195 ^ -1107198613);
               break;
            case _7b5c1c7b056c8acade2b9708.FISH_SIZE:
               §§push(0x252FD003 ^ -105233655 ^ -521580691 ^ 0x3C7CDC65);
               break;
            case _7b5c1c7b056c8acade2b9708.LEVEL:
               §§push(0x2681C2A9 ^ 0x02A1DD63 ^ -782965995 ^ -176882468);
               break;
            case _7b5c1c7b056c8acade2b9708.MISSIONS_COMPLETED:
               §§push(-1381326771 ^ -1298916966 ^ -1078280087 ^ -1601930822);
               break;
            case _7b5c1c7b056c8acade2b9708.BADGES_COLLECTED:
               §§push(-611230029 ^ 0x0ECC84E5 ^ -1363808835 ^ 0x7BE837EE);
               break;
            case _7b5c1c7b056c8acade2b9708.HOME_POINTS:
               §§push(0x5737980A ^ -1326925253 ^ 0x1D4EC64D ^ -91102086);
               break;
            case _7b5c1c7b056c8acade2b9708.TOURNAMENTS_WON:
               §§push(0x5CC5909A ^ 0x6281AF3C ^ 0x7F8B7C27 ^ 0x41CF4386);
               break;
            default:
               §§push(0x31E0D4C8 ^ -2043251466 ^ -1683652271 ^ 0x2C732167);
         }
         switch(§§pop())
         {
            case 0:
            case 1:
               _amountTextWrapper.text = _c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a.EST_DIALOG_RANKINGS_AMOUNT_FISH_COUNT);
               break;
            case 2:
               _amountTextWrapper.text = _c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a.EST_DIALOG_RANKINGS_AMOUNT_FISH_SIZE);
               break;
            case 3:
               _amountTextWrapper.text = _c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a.EST_DIALOG_RANKINGS_AMOUNT_LEVEL);
               break;
            case 4:
               _amountTextWrapper.text = _c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a.EST_DIALOG_RANKINGS_AMOUNT_MISSIONS);
               break;
            case 5:
               _amountTextWrapper.text = _c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a.EST_DIALOG_RANKINGS_AMOUNT_BADGES);
               break;
            case 6:
               _amountTextWrapper.text = _c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a.EST_DIALOG_RANKINGS_AMOUNT_HOME_POINTS);
               break;
            case 7:
               _amountTextWrapper.text = _c2ad9d37d7be0097d6d2e977.get(_85b2141a2303f6545d411d7a.EST_DIALOG_RANKINGS_AMOUNT_TOURNAMENTS);
               break;
            default:
               _amountTextWrapper.text = "";
         }
      }
      
      private function _70177cf88d4b51343fcbd392() : void
      {
         var _loc1_:int = -1077118509 ^ 0x7EB74661 ^ 0x069E0E42 ^ -941280784;
         var _loc2_:int = -973864710 ^ 0x4CE354C0 ^ 0x1112EDB1 ^ -1744455285;
         if(rankingTypePicker.selectedItemIndex == _7b5c1c7b056c8acade2b9708.FISH_SIZE || rankingTypePicker.selectedItemIndex == _7b5c1c7b056c8acade2b9708.FISH_COUNT)
         {
            if(rankingSubtypePicker.selectedItemIndex > (-753896148 ^ -628180574 ^ -1055325799 ^ -930624233))
            {
               _loc1_ = rankingSubtypePicker.selectedItemIndex - 1;
               _loc2_ = (this._e0124c6678d8a8170b01ed56[_loc1_] as _cff30366d510ea862540bfef).id;
            }
         }
         var _loc3_:int = this._10e250d1d1b32a70ab05f323;
         _dfa25706e58a240c1e33e5c6.profileExtension._d8169f021e18b3ae3042d396(app.user.username,rankingTypePicker.selectedItemIndex,_loc2_,tabs.currentTab,this._10e250d1d1b32a70ab05f323,_745ca4cad2f6acc1f3084ea1._8f86b04e4306f87a82dcadcb(this._4d30cb70b3c7d8beff5a70ab));
      }
   }
}

