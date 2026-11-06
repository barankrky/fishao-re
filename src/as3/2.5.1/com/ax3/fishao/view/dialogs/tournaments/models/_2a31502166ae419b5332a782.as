package com.ax3.fishao.view.dialogs.tournaments.models
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.vars.app;
   import com.ax3.utils.math.limit;
   import com.ax3.utils.timer._34a2ba6ad978d976b8b0f5a4;
   import com.ax3.utils.timer._69eec7d2f73604da25ccda04;
   import com.ax3.utils.timer._92d7656ddc3c3da810e99c74;
   import flash.utils.getTimer;
   import protocol.api.tournaments.enter.ResponseTournamentEnter;
   
   public class _2a31502166ae419b5332a782 implements _69eec7d2f73604da25ccda04
   {
      
      protected var _id:String;
      
      protected var _locationId:int;
      
      protected var _type:String;
      
      protected var _timeLeftStart:int;
      
      protected var _timeLeftSignUp:int;
      
      protected var _timeLeftEnd:int;
      
      protected var _duration:uint;
      
      protected var _members:Array;
      
      protected var _isPlayerSignedUp:Boolean;
      
      protected var _signUpCost:int;
      
      protected var _state:String;
      
      protected var _memberLevelMin:int;
      
      protected var _memberLevelMax:int;
      
      protected var _difficulty:String;
      
      protected var _prizeItems:Array;
      
      protected var _timeOnInit:int;
      
      protected var _timeLeftStartOnInit:int;
      
      protected var _timeLeftSignUpOnInit:int;
      
      protected var _timeLeftEndOnInit:int;
      
      protected var _membersCountSignedUp:int;
      
      protected var _membersCountMax:int;
      
      protected var _fishToWinCount:int;
      
      protected var _rewardCoefficient_1:Number;
      
      protected var _rewardCoefficient_2:Number;
      
      protected var _rewardCoefficient_3:Number;
      
      protected var _worldId:String;
      
      protected var _url:String;
      
      public function _2a31502166ae419b5332a782()
      {
         super();
         this._members = [];
         this._prizeItems = [];
      }
      
      private static function _a36d620b7cb92e39f4ab8fdf(param1:String) : int
      {
         var _loc2_:int = 0x6D5F0516 ^ 0x5DB75A7D ^ -1786806364 ^ -1516822321;
         switch(param1)
         {
            case _a1842a5c36511100aec6f1ca.ETT_BOAT_ON_SEA:
               §§push(-166669719 ^ 0x148964B4 ^ 0x4BD161B9 ^ -1454844060);
               break;
            case _a1842a5c36511100aec6f1ca.ETT_LAKE_RUN:
               §§push(-2137736197 ^ -2048461070 ^ -606504490 ^ -559205154);
               break;
            case _a1842a5c36511100aec6f1ca.ETT_RACE:
               §§push(-2055869570 ^ 0x5DA6F962 ^ 0x667CC6A6 ^ -1095773000);
               break;
            case _a1842a5c36511100aec6f1ca.ETT_MORAY:
               §§push(0x62E51633 ^ 0x44E7B96B ^ -1767848650 ^ -1331533203);
               break;
            default:
               §§push(-951498680 ^ 0x17328701 ^ 0x71E1CA15 ^ -1583741608);
         }
         switch(§§pop())
         {
            case 0:
               _loc2_ = -613421242 ^ 0x582B6107 ^ -983261843 ^ 0x462013E5;
               break;
            case 1:
               _loc2_ = 0x6316C9B6 ^ -175465800 ^ 0x294D0E1F ^ -1076797989;
               break;
            case 2:
               _loc2_ = -1402102883 ^ -476449437 ^ -752744452 ^ -1663669815;
               break;
            case 3:
               _loc2_ = 0x362D75A7 ^ 0x66639CEA ^ -582326436 ^ -1929081123;
               break;
            default:
               Debug.assert(false,_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勗办创勺助刭刦剦劺劂务劻刞勛刚券制割劼勦劃剤剅刕剨功刨勢勵刡刐剮劮剱勶剞劫勶劼剛剡勒勏劈刍剤刉切劼刕剔劭効劅剖剘刀勔助刊剣刱务刁剸割劜劾刧刈劏勤勪劧劅勀刃勳刺劫劙劙別刊勜劽刖劒创勵勇勗剢勸劖剔刯勗刌刷劧刄勊判剹勷劃刿勚勬劰力勮剳剭劃勅劕劯勫勳剴勱勾刖剗加剴刹刲剁勌労劖劝刮劗劃刊刔勲勎切刖劅募剞刭刨剽勂劅勷剢勡剻剃剚剼剏劻勥勌刍劄勍刄刟創劘刱刱剕初刷劫創劎剒勜剘剭","刵刻刘剰勅分勐勗刊刓劁劜勃劧刺刍") + param1);
         }
         return _loc2_;
      }
      
      public static function _2442f37119aa816a34f3242d(param1:String) : String
      {
         var _loc2_:String = "";
         switch(param1)
         {
            case _a1842a5c36511100aec6f1ca.ETT_BOAT_ON_SEA:
               §§push(0x4F4675FF ^ 0x5D082B9B ^ 0x09DDAE5B ^ 0x1B93F03F);
               break;
            case _a1842a5c36511100aec6f1ca.ETT_LAKE_RUN:
               §§push(0x6A3AF822 ^ 0x5DF284BB ^ 0x1E8EF3E3 ^ 0x29468F7B);
               break;
            case _a1842a5c36511100aec6f1ca.ETT_RACE:
               §§push(-847601412 ^ -1048130425 ^ -1088187801 ^ -1277166050);
               break;
            case _a1842a5c36511100aec6f1ca.ETT_MORAY:
               §§push(-167818639 ^ 0x36451E9D ^ -709629680 ^ 0x1609BDFF);
               break;
            default:
               §§push(0x2D68AD4C ^ 0x4D36AD3C ^ 0x42F316F2 ^ 0x22AD1686);
         }
         switch(§§pop())
         {
            case 0:
               _loc2_ = _2ea0ee0e407c812911cabdab.ETPT_BOAT_ON_SEA;
               break;
            case 1:
               _loc2_ = _2ea0ee0e407c812911cabdab.ETPT_LAKE_RUN;
               break;
            case 2:
               _loc2_ = _2ea0ee0e407c812911cabdab.ETPT_RACE;
               break;
            case 3:
               _loc2_ = _2ea0ee0e407c812911cabdab.ETPT_MORAY;
               break;
            default:
               Debug.assert(false,_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ფႵၦკဆစွသႌၱၫဠဟဒဩၶၨპეკ჉၁ဒႮჸူႶၴ჎ၯူზဵჶჲၸာဏჩ၂သძဳ႘ၱညშဴဧၧႳဂၖႧ၎ၲႎႇဘ჆့ဗჁၒფဋျၭတ၀ဨွ႖ႎႨထႾႀႷႲ჎ჁႉှႎႂၱჇႴႣၜဢယၪၤჽხၽႶ၃ტၪဖ႕დ჎ၨნၽ္ဓ჈ဓ၃ც႑ဌႬၷქჸჁ႓႟ဗၼტဤწႧ၂პႛჸႥႾႵႶသ႙ႤႻၖႴၭဵეၜၧ၉႟ႱႾႉრဟညჲဝ႐ၘႷၰ႕ၶလဟၿၮၚႬ႑ცႂ","႕ညႅ႙჋ိထါၟყဳပငპၰ၌") + param1);
         }
         return _loc2_;
      }
      
      public function get id() : String
      {
         return this._id;
      }
      
      public function get locationId() : int
      {
         return this._locationId;
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get timeLeftStart() : int
      {
         return this._timeLeftStart;
      }
      
      public function get timeLeftSignUp() : int
      {
         return this._timeLeftSignUp;
      }
      
      public function get timeLeftEnd() : int
      {
         return this._timeLeftEnd;
      }
      
      public function get duration() : uint
      {
         return this._duration;
      }
      
      public function get difficulty() : String
      {
         return this._difficulty;
      }
      
      public function get members() : Array
      {
         return this._members;
      }
      
      public function get membersCountSignedUp() : int
      {
         return this._membersCountSignedUp;
      }
      
      public function get membersCountMax() : int
      {
         return this._membersCountMax;
      }
      
      public function get signUpCost() : int
      {
         return this._signUpCost;
      }
      
      public function get state() : String
      {
         return this._state;
      }
      
      public function set state(param1:String) : void
      {
         var _loc2_:int = 0x68676729 ^ 0x757A87F8 ^ 0x48315F92 ^ -1003170576;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (-1316452982 ^ -1890919207 ^ 0x203FCA6A ^ -1880754037))
            {
               case 0:
                  return;
               case 1:
                  if(this._state == param1)
                  {
                     _loc2_ = 0x64A30D75 ^ -2130510199 ^ -928839531 ^ -1139109669;
                  }
                  else
                  {
                     _loc2_ = -1646895002 ^ -1168454171 ^ -134655693 ^ 0x416D9700;
                  }
                  break;
               case 2:
                  this._state = param1;
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function get prizeItems() : Array
      {
         return this._prizeItems;
      }
      
      public function get isPlayerSignedUp() : Boolean
      {
         return this._isPlayerSignedUp;
      }
      
      public function set isPlayerSignedUp(param1:Boolean) : void
      {
         this._isPlayerSignedUp = param1;
      }
      
      public function get fishToWinCount() : int
      {
         return this._fishToWinCount;
      }
      
      public function get memberLevelMin() : int
      {
         return this._memberLevelMin;
      }
      
      public function get memberLevelMax() : int
      {
         return this._memberLevelMax;
      }
      
      public function set id(param1:String) : void
      {
         this._id = param1;
      }
      
      public function get worldId() : String
      {
         return this._worldId;
      }
      
      public function get url() : String
      {
         return this._url;
      }
      
      public function _7e53818033d1886bad4a1d01() : void
      {
         this._locationId = _a36d620b7cb92e39f4ab8fdf(this._type);
         var _loc1_:String = _2442f37119aa816a34f3242d(this._type);
         var _loc2_:_e49f888e5d8714a6c39e60da = new _e49f888e5d8714a6c39e60da(-283905986 ^ 0x49DBCA42 ^ -121927333 ^ 0x5E73B326,_loc1_,this._rewardCoefficient_1);
         this._prizeItems.push(_loc2_);
         var _loc3_:_e49f888e5d8714a6c39e60da = new _e49f888e5d8714a6c39e60da(-627872136 ^ 0x03DB7BE9 ^ -796848260 ^ 0x09C91AEF,_2ea0ee0e407c812911cabdab.ETPT_FISHCOINS,this._rewardCoefficient_2);
         this._prizeItems.push(_loc3_);
         var _loc4_:_e49f888e5d8714a6c39e60da = new _e49f888e5d8714a6c39e60da(0x378620C5 ^ 0x41BA4DF0 ^ 0x5EAB3D5E ^ 0x28975068,_2ea0ee0e407c812911cabdab.ETPT_FISHCOINS,this._rewardCoefficient_3);
         this._prizeItems.push(_loc4_);
         this._timeOnInit = getTimer();
         this._timeLeftSignUpOnInit = this._timeLeftSignUp;
         this._timeLeftStartOnInit = this._timeLeftStart;
         this._timeLeftEndOnInit = this._timeLeftEnd;
         this._8e0cb0c89f2616cd4c68f663();
      }
      
      public function update(param1:uint, param2:uint) : void
      {
         var _loc3_:int = int((param1 - this._timeOnInit) / (0x427237AD ^ -1351574312 ^ 0x1157B983 ^ -61533922));
         this._timeLeftSignUp = limit(this._timeLeftSignUpOnInit - _loc3_,0x5C425F1A ^ 0x1ACAD3C6 ^ -1957505222 ^ -841327642,int.MAX_VALUE);
         this._timeLeftStart = limit(this._timeLeftStartOnInit - _loc3_,0x1B533F10 ^ -1548128259 ^ -1097030427 ^ 0x0676F408,int.MAX_VALUE);
         this._timeLeftEnd = limit(this._timeLeftEndOnInit - _loc3_,0x18181406 ^ 0x5E7D02F9 ^ -1367781518 ^ -400795251,int.MAX_VALUE);
         if(this._timeLeftSignUp <= (0x216F2750 ^ -269027507 ^ -1078126175 ^ 0x7124C9BC) && this._timeLeftStart > (0x2D0A77BA ^ 0x78924569 ^ -994370326 ^ -1859965383) && this._state != _87c5db8b779e4199260f7152.ETS_SIGNING)
         {
            this.state = _87c5db8b779e4199260f7152.ETS_SIGNING;
         }
      }
      
      private function _8e0cb0c89f2616cd4c68f663() : void
      {
         this._3f9dce4c64d29d58d9aefeb8();
         _92d7656ddc3c3da810e99c74.getInstance()._57ad3faeff9ca92cbf9fe447(_34a2ba6ad978d976b8b0f5a4.TIMER_200).add(this);
      }
      
      private function _3f9dce4c64d29d58d9aefeb8() : void
      {
         _92d7656ddc3c3da810e99c74.getInstance()._57ad3faeff9ca92cbf9fe447(_34a2ba6ad978d976b8b0f5a4.TIMER_200).remove(this);
      }
      
      public function _368600b8e7f2131bf5cf83af(param1:String) : _4a26c3e739ada00470a83032
      {
         var _loc2_:_4a26c3e739ada00470a83032 = null;
         var _loc3_:_4a26c3e739ada00470a83032 = null;
         for each(_loc2_ in this._members)
         {
            if(_loc2_.login == param1)
            {
               _loc3_ = _loc2_;
               break;
            }
         }
         return _loc3_;
      }
      
      public function _b791b98a9f3de94ffe6bb5e9(param1:uint) : _4a26c3e739ada00470a83032
      {
         var _loc2_:_4a26c3e739ada00470a83032 = null;
         var _loc3_:_4a26c3e739ada00470a83032 = null;
         for each(_loc2_ in this._members)
         {
            if(_loc2_.position == param1)
            {
               _loc3_ = _loc2_;
               break;
            }
         }
         return _loc3_;
      }
      
      public function _386b700ee35253aed185d2b6() : _4a26c3e739ada00470a83032
      {
         return this._368600b8e7f2131bf5cf83af(app.user.username);
      }
      
      public function _1448bb9a12239fda20969b39() : _e49f888e5d8714a6c39e60da
      {
         var _loc1_:_4a26c3e739ada00470a83032 = this._368600b8e7f2131bf5cf83af(app.user.username);
         return this._b0bcfa47e87923a8a8bca7e5(_loc1_.position);
      }
      
      private function _b0bcfa47e87923a8a8bca7e5(param1:int) : _e49f888e5d8714a6c39e60da
      {
         var _loc2_:_e49f888e5d8714a6c39e60da = null;
         var _loc3_:_e49f888e5d8714a6c39e60da = null;
         for each(_loc2_ in this._prizeItems)
         {
            if(_loc2_.prizePosition == param1)
            {
               _loc3_ = _loc2_;
               break;
            }
         }
         return _loc3_;
      }
      
      public function _c819e1b755a434d9c8a283f5() : void
      {
         var _loc1_:_4a26c3e739ada00470a83032 = null;
         for each(_loc1_ in this._members)
         {
            _loc1_._8d59c3a16e986a170b6230b5();
         }
      }
      
      public function updateTime(param1:ResponseTournamentEnter) : void
      {
         this._timeOnInit = getTimer();
         this._timeLeftSignUpOnInit = this._timeLeftSignUp = param1.timeLeftToSignUp;
         this._timeLeftStartOnInit = this._timeLeftStart = param1.timeLeftToStart;
         this._timeLeftEndOnInit = this._timeLeftEnd = param1.timeLeftToEnd;
         this._8e0cb0c89f2616cd4c68f663();
      }
      
      public function deserialize(param1:Object) : void
      {
         var _loc2_:int = 0x4DAB0191 ^ -717155455 ^ -112811081 ^ 0x0C4A631A;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x1F314270 ^ -1951889351 ^ 0x5DC18CC6 ^ -1531014093))
            {
               case 0:
                  this._id = Debug.assertProperty(param1,_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ႄၙၙဘၷထႥျႎჵ჌Ⴐ႔ჹႎႛ။ၞဃბစრယၵၑဒ႟ွဨဉბူႹჁ","ၭცჄၞၳ၇ႎ၏კါ၊ღႝႠၽဩ"));
                  _loc2_ = -978308310 ^ -1087512399 ^ 0x420CE7C3 ^ 0x5577E6E6;
                  break;
               case 1:
                  this._type = Debug.assertProperty(param1,_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("Ⴛ႘჋ဟჁჂႀဈဏဘႺიၼჼწ႘","ၻ၏ၗဃ၌ႵဤၧၗႴ၌ჯုႤზၫ"));
                  this._state = Debug.assertProperty(param1,_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劊剮刪刮刳勩剑剒刺劍剴剪剭副利务勝刋","刭劝勖剑刪勿劽剎劝劓刌勥勁剶刘刺"));
                  this._duration = Debug.assertProperty(param1,_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剽勪劽勽劖募劉割剂刵劎刂勂刲勪勔劗刷劳勐勣刉劻勐剮勋劀勵劋划劉分励到制剪則剚剻剦","刜勣劝務刟剑剼刮别劓剠剡刯剑劉剪")) * (0x3CE38FFD ^ 0x503F960B ^ -1751643890 ^ -79425340);
                  this._membersCountMax = Debug.assertProperty(param1,_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၱႣႥၧဳ၌჌ႻႤიႳჱထჾႉံျပၗဦဌႅჺရ႗სႯ႞ၡဖჭ႙ဣ၄ဎၯၗპႊႌၳႉ","ၨမ႖ჹჼၿဖႶဥႡჳဧ჋ႛဆႀ"));
                  this._membersCountSignedUp = Debug.assertProperty(param1,_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勠勆刷剒剫剰勗勧剅刢剣剺勞剄劒勁勖則劢剒劃刐劃劢勿刯剻刳勣劥剁刯劽剒剛刊勠勽剻刿刧勎刞勍劾剫刵劥","勶刧剁刃剛剰剪刬务切刡副劃刡劚勽"));
                  this._difficulty = Debug.assertProperty(param1,_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("授挬揘挞揁揺挗捼挩掿挹挅提捈挾揧掀挫掦插揎挾掰掌揎揸挰掞","捥插掗挓捊捷捜接揢捣挧掤捺揋捊掞"));
                  this._memberLevelMin = Debug.assertProperty(param1,_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၭ႒ၐဣჴၘဆ၂႐ႀჱၓႉ჈ဴာ္ဆး႐ၧჅံႣჷၚბမႢ჌ႦထჱၹညკရႝႸ၊მၝ","ჶဇიპႾ၏ჟႌ჉၏ၾႸၙၑဌႚ"));
                  this._memberLevelMax = Debug.assertProperty(param1,_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ႺၓႿ၈Ⴤႄ။ჍႿ၇ဥၠၪဤႵႡ၍၈ႸႿႴၜჳႬမჴခჴჾေႪძ၏ဵ်ၟწဥဿျზၻ","ჷ၁ဂဳၳဘნႧჱရქၴყၺင်"));
                  this._timeLeftSignUp = Debug.assertProperty(param1,_95da7f1147c669197db81295._8f4866de82b7339154180ecb("創剐劳勣剙劒勭剝勆利别剜刅刕勪剐刃劵刮勋剟刺券剖勄劚刦刅刴剝勣剨加劬刓勚刞刣刑勲劓剻劺勹刀助刾勢","刅剐劼券刭剷劝创剳勚勶劧劶剗勖勁"));
                  this._timeLeftStart = Debug.assertProperty(param1,_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ႃხစၦჭ၎ျ႘၄ჱე၁჋ဖჍၷၩၴၚႪ႕ၺၥြၜႨၼჅႠႤჇႠჟၯႁ၎ါ၎჈ე႗ჽႴ჆","ၪუၙဿ်္ძႾ႓ၖဏ႑ႝဋ၄ၴ"));
                  this._timeLeftEnd = Debug.assertProperty(param1,_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揆推採捰挗揹揝持捷捫挏掋掁掴捙掘挤掽挠掝推揲挹掏掍捦捜捍掤揥揿揩捣掐捽挸揋揼揊掊","措掶掘揝揺挷描掶捒捕掎捡掿掬挜措"));
                  this._signUpCost = Debug.assertProperty(param1,_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၵ၎Ⴌၰဗဪ႙႞ၝၛტဇၻჭჀၭဲჩၡ၅ႉკ၃ႅႪ၊ႩႬႱၶႏႃ","ၖုბ၂ღဲႽ၈ၐၥဇဴ၎ဂე၁"));
                  this._isPlayerSignedUp = Debug.assertProperty(param1,_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捽捫掛捆掍挤揀挝掤揄挊振挢捛挢挡掄挊挴揼挴挕捁挎插振捒揢捌捠挣揭捜揅捕捛掃捎掂揶揹揣揳挪挣掑","捧揃採捞捠援按掊掹捲揄挪捚捹掣探"));
                  this._fishToWinCount = Debug.assertProperty(param1,_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ႺၑჼႆႇႧ၉၉၌ჅუუႴၜႝနဧჭၢဢႇႳည႓ဢဤ჉ჺჷჾွၶჅၲ၀჏ႄၾၪမႤ၇","თၩႌ႐ႷယწၥၔၱဪჀးჸအႩ"));
                  if(this._isPlayerSignedUp)
                  {
                     _loc2_ = 0x6F21FC41 ^ -1344051504 ^ -1000032641 ^ 0x6940FE52;
                  }
                  else
                  {
                     _loc2_ = -1221008393 ^ -1913952144 ^ -1020074655 ^ -1811432360;
                  }
                  break;
               case 2:
                  this._rewardCoefficient_1 = Debug.assertProperty(param1,_95da7f1147c669197db81295._8f4866de82b7339154180ecb("刨刺勎剒别切剪勣剨创刅分勻刭劁删刺勸剐劧刘剰劶刾前劲劓勷劻切劢刹剒剗刨劆刱劊勪助劕剳剻剋刂刴剩剚","勯勅勍剣劦劖剩劓剝剖勆勦劅刊刷勨"));
                  this._rewardCoefficient_2 = Debug.assertProperty(param1,_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ჼნၟღ჏იႰၜၮ၅႔ဲၲၐსဗၲၗႣဒွ႖ႀၜႩဤဏტနႣဒၵჸႷႤႛႡၕ჻ႭკႽ္ဋ႗ႏဏဦ","႙ၣႜრ႖Ⴧၝလ၍ဘჲყႽუჃႻ"));
                  this._rewardCoefficient_3 = Debug.assertProperty(param1,_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捂挺捅挤掩捚揶揙揊掀揼掴揻挓捤挢挌揥捶揕揝捣捂捫掴挹採揾揕捽挚揜揍挪挅捏揃掛挈揑掭掴揨掴掬挘挩揫","揋揍损揬掞掅接捎挔揾挽挆捸掷揉捇"));
                  this._worldId = Debug.assertProperty(param1,_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ჶႀ჻ၨၶၚღ჉Ⴀჭ႐ၯჿ၅ၨဇဒျႅပჩဂ჈၂","Ⴍၾေ။ပႳ၎ႜჱႡ်ႌစလ၇ႆ"));
                  this._url = Debug.assertProperty(param1,_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("Ⴃဵၾ჉ႏბ႗၆჏ၪღღტნ","ဴ჉႖ဃုဂ၇စႅჃღၠႹ႟ႴჀ"));
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function _75925e7dfdf901c64fb3e8fc(param1:Object, param2:Boolean = false) : void
      {
         var _loc3_:String = null;
         var _loc4_:Object = null;
         var _loc5_:_4a26c3e739ada00470a83032 = null;
         for(_loc3_ in param1)
         {
            if(param1.hasOwnProperty(_loc3_))
            {
               _loc4_ = param1[_loc3_];
               _loc5_ = this._368600b8e7f2131bf5cf83af(_loc3_);
               if(_loc5_ == null)
               {
                  _loc5_ = new _4a26c3e739ada00470a83032();
                  if(param2)
                  {
                     _loc5_._3324dc4279f24bf4ba6351d3(_loc4_);
                  }
                  else
                  {
                     _loc5_.deserialize(_loc4_);
                  }
                  this._members.push(_loc5_);
               }
               else
               {
                  _loc5_.updateInfo(_loc4_);
               }
            }
         }
      }
      
      public function _90eac9ca552fe54c2ca0299f() : void
      {
         this._members = null;
         this._prizeItems = null;
      }
   }
}

