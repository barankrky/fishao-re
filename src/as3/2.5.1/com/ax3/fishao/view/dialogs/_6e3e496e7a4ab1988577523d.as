package com.ax3.fishao.view.dialogs
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.events._02fbe4cbe9e83f1b8c711799;
   import com.ax3.fishao.control.managers._3a8a2602dcf9bf49b62e62af;
   import com.ax3.fishao.display.dialogs._532cdbb4a995ec5c253adbc5;
   import com.ax3.fishao.model.vo._4958d20007bef43d6fa5624d;
   import com.ax3.fishao.utils._348e382085b4689106cdc054;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.wrappers._40858abc038fcd29a3aaacb1;
   import com.ax3.fishao.view.wrappers._767872a2ca68f8601a59876b;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class _6e3e496e7a4ab1988577523d extends _46bbddfcc140674830df834d
   {
      
      private static const _3fc461e0ff61944abe46bfaa:Number = 0x046A43A6 ^ 0x13584290 ^ -1740218826 ^ -1888199366;
      
      private static const _cd2ce3f451dfb2c353bc1287:Number = 0x04D2F219 ^ -1479809095 ^ 0x0FDAF312 ^ -1396447836;
      
      public static const USER_INFO_NAME:String = _95da7f1147c669197db81295._8f4866de82b7339154180ecb("勯剼劍勵勡刿刴剬勛劖办劙办勶劺勅勘勠劫勂刓勷勿刌剴勰剤划勎刕","刯劣剷勣割剈劂劻列務勾劗切剚剏劝");
      
      public static const FISHES_NAME:String = _95da7f1147c669197db81295._8f4866de82b7339154180ecb("剽动勫剋勦剠勦勁刓勫勻剜剰勫勢刐剄刈勲刞剐剻則刮刯剡","刉刧刖劥剑剚劸刔刕剕剆剹劐勬勵勞");
      
      public static const PRIZES_NAME:String = _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挚揧捘捰挫掃捵捨捋揕挦掌捎掣捻揾挘捎探捀挎挢掓揂捖掄","揗按捖揊掓揈挬掉揠挅揳援据挦揌挊");
      
      public static const INVENTORY_NAME:String = _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("းညၯဇქ჈၅ၓႿၧ၍იၝ္႗ှၥტႬჴၢဪလမჴၿ႙ီ჎ცႁဗ","ჟန၉ဥႀၮဃႱ၌ჄფႲჟဈჲႩ");
      
      public static const REPORT_NAME:String = _95da7f1147c669197db81295._8f4866de82b7339154180ecb("刲剛則剤刦刷勔剣剰刈劂刽势劉切剸刭劓刬勬劳刷刺刾劶劖","刖剳勴刽勵勞剚劁剚勾創刀剘勈劻剚");
      
      public static const USER_INFO_CAPTION:String = _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("换掽揌捆挶掞掭揢挠捹揳掭捲挘揨挟掕挑揃掰掐捻控捓掬捌揇掷捆揠揥指揉挊","捭掂挬掃掛揫掴提捐揥挩接捈揊掷握");
      
      public static const FISHES_CAPTION:String = _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ႀგႻႝလჲႎჲႯგၼჿလ၆ဘၯ႗ၶႝ၍႖ဳჾႲ္႑ႄဧၖၨ","ჂპၿჵჱဌဨၺႍၾႳფჰႬႇၟ");
      
      public static const PRIZES_CAPTION:String = _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("၉უၶ႘ၕၱအႳႯၪၵဂုၒႷ၇რსႵ჎ჷဪၤ჏Ⴕဂ჻့႔ဧ","Ⴑ႘ၱည჋၎ၟწჼၣးဵၷဘ၅Ⴎ");
      
      public static const INVENTORY_CAPTION:String = _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၫჰႡჾ၊ွဩႚၖ჈Ⴭဵကစ႒დၶၷ჌င჆ႇွၹဧ႐ႊဿუဖმၚ၂ၔိလ","დၪპ၀Ⴗჟၫလ၈ှႨჹႻქოၱ");
      
      public static const REPORT_CAPTION:String = _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ႭဌႦკိ჏჉႘ဢყ၃ႜპ჉ံၕၯအლხႴၛ၍჌Ⴤၢၖႏဨჸၿ႞","თၱးეႨ၂ჭၯჵცၠယႏჃယၣ");
      
      private static const _5ec5caad9215c2699688cb5f:Vector.<String> = new <String>[USER_INFO_NAME,FISHES_NAME,PRIZES_NAME,INVENTORY_NAME,REPORT_NAME];
      
      private static const _488deda7e0c792ced2a68bd5:Vector.<String> = new <String>[USER_INFO_CAPTION,FISHES_CAPTION,PRIZES_CAPTION,INVENTORY_CAPTION,REPORT_CAPTION];
      
      public static var USER_INFO_DATA_LOADED_COMPLETE:String = _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ေှვ၉჈ჸၪႅ႒ၚႶႌ႘ဗဥ၁ဿცႰ၇ႪႺჃ၇ၠႳႵ჌ႉჰაၫჽႬဃ჈စ႗၎၏ဿე႑ကვႺဨჱხ႘ဖ၊ဎၡ႓ႇ်Ⴕဪေ","ႰშၠჰჱဈဿႝၹიႾစზ့ဟႝ");
      
      private var _c2421a71f98f7ecc00ce65f4:_348e382085b4689106cdc054;
      
      private var _9fa9295bb5355e4de0f0d186:String;
      
      private var _a059e16cd85d57b6ffa162e1:Boolean = false;
      
      private var _9768b1c77d7e098cfdaed78d:String;
      
      public function _6e3e496e7a4ab1988577523d()
      {
         super();
         this._9fa9295bb5355e4de0f0d186 = "";
      }
      
      protected function _ba7fe333230ac51496d90cb8(param1:MouseEvent) : void
      {
         close();
      }
      
      override protected function _d998e9465b31be9894488c29(param1:DisplayObjectContainer) : void
      {
         super._d998e9465b31be9894488c29(param1);
         _isLoaded = true;
         _asset.visible = this._a059e16cd85d57b6ffa162e1;
      }
      
      override protected function _935ac2966ddad68dfc449202() : void
      {
         super._935ac2966ddad68dfc449202();
         closeBtn.handler = this._ba7fe333230ac51496d90cb8;
         referralsTab.parent.removeChild(referralsTab);
         referralsPanel.parent.removeChild(referralsPanel);
         var _loc1_:Vector.<_40858abc038fcd29a3aaacb1> = new <_40858abc038fcd29a3aaacb1>[userInfoTab,fishesTab,prizesTab,inventoryTab,reportTab];
         var _loc2_:Vector.<_767872a2ca68f8601a59876b> = new <_767872a2ca68f8601a59876b>[userInfoPanel,fishesPanel,prizesPanel,inventoryPanel,reportPanel];
         var _loc3_:Number = 0x303EE2FE ^ 0x5E216AC7 ^ -2035779269 ^ -390598398;
         while(_loc3_ < _loc1_.length)
         {
            _loc1_[_loc3_].init(_c2ad9d37d7be0097d6d2e977.get(_488deda7e0c792ced2a68bd5[_loc3_]),tabUpLayer,tabDownLayer,_5ec5caad9215c2699688cb5f[_loc3_]);
            _loc1_[_loc3_].addEventListener(MouseEvent.CLICK,this._2332f9515d5fc5c00819c092);
            _loc3_++;
         }
         this._c2421a71f98f7ecc00ce65f4 = new _348e382085b4689106cdc054(_loc1_,_loc2_);
         if(this._9fa9295bb5355e4de0f0d186 != "")
         {
            this._e52343156d490543715f0266(this._9fa9295bb5355e4de0f0d186,this._9768b1c77d7e098cfdaed78d);
         }
         reportPanel.banButton.handler = this._d8347808edaa34f7e3ab3d47;
         _02fbe4cbe9e83f1b8c711799.addEventListener(this,userInfoPanel,USER_INFO_DATA_LOADED_COMPLETE,this._c02236db5db55d72144e53ed);
      }
      
      private function _c02236db5db55d72144e53ed(param1:Event) : void
      {
         var _loc2_:int = -1030376493 ^ 0x066298D1 ^ -1021854718 ^ 0x4CEB507F;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x39E7A2FB ^ 0x044AE619 ^ -29285645 ^ -1998085780))
            {
               case 0:
                  return;
               case 1:
                  _asset.visible = true;
                  _loc2_ = 0x04AFE650 ^ 0x6C4DBC75 ^ 0x01837F16 ^ 0x226AE24E;
                  break;
               case 2:
                  if(_isLoaded)
                  {
                     _loc2_ = -196293037 ^ 0x69D5FF9A ^ 0x5FCA63AD ^ -1990683368;
                  }
                  else
                  {
                     _loc2_ = -654637250 ^ -1735800012 ^ -186648819 ^ -5833607;
                  }
                  break;
               case 3:
                  this._a059e16cd85d57b6ffa162e1 = true;
                  _loc2_ = 0x5C97AB69 ^ 0x5167053F ^ -1038727591 ^ -2064830606;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function _d8347808edaa34f7e3ab3d47(param1:MouseEvent) : void
      {
         var _loc2_:_532cdbb4a995ec5c253adbc5 = app.dialogFactory._3687890959399d31d2252ca9();
         var _loc3_:_4958d20007bef43d6fa5624d = new _4958d20007bef43d6fa5624d();
         _loc3_.abuserUsername = this._9fa9295bb5355e4de0f0d186;
         _loc2_._27d0c2c0e8a772401e2175c6(_loc3_);
      }
      
      public function _e52343156d490543715f0266(param1:String, param2:String = "userInfoTab") : void
      {
         var _loc3_:int = 0x2B1C8E16 ^ 0x1B103F64 ^ 0x6AF02941 ^ 0x7D1638D1;
         loop0:
         while(true)
         {
            switch(_loc3_ ^ (-729355945 ^ 0x520A3713 ^ 0x5E5DA553 ^ -12854283))
            {
               case 0:
                  this._9fa9295bb5355e4de0f0d186 = param1;
                  this._9768b1c77d7e098cfdaed78d = param2;
                  if(_5bd733c96b3534c9e3e5a15e())
                  {
                     _loc3_ = 0x6C879A37 ^ 0x7188CC64 ^ 0x3270E9F8 ^ 0x08951F4B;
                  }
                  else
                  {
                     _loc3_ = -2137583931 ^ 0x195054E2 ^ 0x75107B34 ^ -885161488;
                  }
                  break;
               case 1:
                  return;
               case 2:
                  userInfoPanel.login = param1;
                  fishesPanel.login = param1;
                  prizesPanel.login = param1;
                  inventoryPanel.login = param1;
                  reportPanel.login = param1;
                  this._4d64a16664b669c12265242f(_6e3e496e7a4ab1988577523d.USER_INFO_NAME);
                  this._4d64a16664b669c12265242f(this._9768b1c77d7e098cfdaed78d);
                  _loc3_ = 0x5EFDE302 ^ -2050204329 ^ -925256495 ^ 0x3402AA67;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function _2332f9515d5fc5c00819c092(param1:MouseEvent) : void
      {
         _3a8a2602dcf9bf49b62e62af.play(_3a8a2602dcf9bf49b62e62af.SFX_049_UI_Switch_tab);
         this._4d64a16664b669c12265242f(param1.currentTarget.name);
      }
      
      private function _4d64a16664b669c12265242f(param1:String) : void
      {
         this._c2421a71f98f7ecc00ce65f4._cfdf5a2911155c7c841ecedc(param1,_c2ad9d37d7be0097d6d2e977._a1824cf8cfedd1c4a5e49576(_488deda7e0c792ced2a68bd5[_5ec5caad9215c2699688cb5f.indexOf(param1)]),title);
      }
      
      override public function show() : void
      {
         super.show();
      }
      
      override public function get height() : Number
      {
         return _3fc461e0ff61944abe46bfaa;
      }
      
      override public function get width() : Number
      {
         return _cd2ce3f451dfb2c353bc1287;
      }
      
      override public function activate() : void
      {
         super.activate();
         reportPanel.banButton.visible = app.user.isModerator;
         reportTab.visible = app.user.username != this._9fa9295bb5355e4de0f0d186;
      }
   }
}

