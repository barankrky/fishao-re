package com.ax3.fishao.model
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.events._720429110fd3cfc01812b5a0;
   import com.ax3.fishao.Config;
   import com.ax3.fishao._a1e0e2bf54cc08cc6a7d5b7c;
   import com.ax3.fishao._dfa25706e58a240c1e33e5c6;
   import com.ax3.fishao.control.managers._3a8a2602dcf9bf49b62e62af;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.locations._01cf9a78594a0bb30b57b0c3;
   import com.ax3.fishao.locations.base._67f8febc099eaa05c48aa41e;
   import com.ax3.fishao.locations.chars._2fcef105b08d78e8c46cbf27;
   import com.ax3.fishao.model.info._0760ce29bdab6fd5166927ab;
   import com.ax3.fishao.model.info._69796f101fc3fc2b4b8665e9;
   import com.ax3.fishao.view.dialogs._0737efdbd5337ba3fbc64b2e;
   import com.ax3.fishao.view.dialogs.base._22437dfd77f65dbf9dbc4281;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces._6b63fd0a4028eb279b227831;
   import com.ax3.fishao.view.dialogs.fishingLine.model._72a97cef3acbd28d8d164ec8;
   import com.ax3.utils._aa46d9061fb6637c5f30405a;
   import com.ax3.utils._bebc31ae11b6ac3cc8ae6184;
   import com.ax3.utils.math.limit;
   import com.ax3.utils.sound._c5aa52fca149ae6f0be6dc5b;
   import com.ax3.utils.timer._33dd41a12065671be9311587;
   import com.junkbyte.console.Cc;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.external.ExternalInterface;
   import flash.utils.getTimer;
   import protocol.api.fishingLine.data.FishingLineLevelInfo;
   import protocol.api.moneyTree.data.MoneyTreeLevelInfo;
   import protocol.sr.IncomingPMResp;
   
   public class _01a2aa99fe260235a2a4e8a7 extends EventDispatcher
   {
      
      public static const ROD_TYPE_CHANGE:String = _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၷၸჱ჏჈ၐႦဃၙ႓ၟტစუ။჌ႽဒႝၻჂტျႩၧჟდႚၬၰႩ႐ჹႄ်ႬႴ჏ႩၦეၺႉჰှဟოဆဇႡ","ႇဳယႅჷ႞ၫၐခႰႸႦ჉ၵ႒ၭ");
      
      public static const BAIT_TYPE_CHANGE:String = _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ႝႸ၌ფ႔ႧჰႾႜၪှှჍჇჶႫ႒ဆ჉Ⴡჴဗშხဤმ၁Ⴘ႒ဟნ၄ဟှ့ဌႢႉ჆ႍၿၖ၃ြႯမႦ၁ჟဏဤ႓","ၶ၇အႄၫტიဿ၈ဗႹၮ၊Ⴌဆၯ");
      
      public static const ROD_COUNT_CHANGE:String = _95da7f1147c669197db81295._8f4866de82b7339154180ecb("判劵刼勊勰刿勓勁勱刋剏剮劲刴勝劻动剥剔劌勗剉勼劲勼勉劽勦剛剩刨剰劻劸別劤刎刔刟劯剆剻劤刷则刳刊刿勡划到勫","勭劋剃分剘到刣剨勸助勬刜劫勞勮刌");
      
      public static const BAIT_COUNT_CHANGE:String = _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("შဘ႐ၝရ္ဋဿბჹဳႂဋ၅၄ႉ်თႳႨဟვ჎ၠჟႣკ၇ტဠჀႉႧၰლჁၔလჄႇဩၱဗိဢၤႳა჋ၛႴႹိ့","ჽ႟჆ზၗတၦჺၫჇူ၆ႺဘჂႌ");
      
      private const _d8d7feb96bc46b47e529f9a4:Event = new Event(ROD_TYPE_CHANGE);
      
      private const _4cd8e6aae4e2bf103b8359ad:Event = new Event(BAIT_TYPE_CHANGE);
      
      private const _8f5af45550bd675e7faf7713:Event = new Event(ROD_COUNT_CHANGE);
      
      private const _8a97597a36314fe3c9af3bb1:Event = new Event(BAIT_COUNT_CHANGE);
      
      private var _35061db72bc40640c825c9d0:int = -1;
      
      private var _b03ee4ec9f794f353c35e77b:int = 0;
      
      private var _08cdf53bc89ca96498dc7eac:FishingLineLevelInfo;
      
      private var _2b94707d7535deb914d07348:String;
      
      private var _18123ad0557fe274bd7b72fe:MoneyTreeLevelInfo;
      
      private var _fa07f340106dcbcb1476d298:int = 0;
      
      private var _17338944ddb505d6b57e27f8:int = 0;
      
      private var _aa5146d04e7cef374df6e3d1:Boolean = true;
      
      public var energy:_aa46d9061fb6637c5f30405a = new _aa46d9061fb6637c5f30405a(-1550426180 ^ 0x2DDD0E20 ^ -351742924 ^ 0x654385A8);
      
      private var _f163e104c72c144dc374631d:_aa46d9061fb6637c5f30405a;
      
      private var _ba25662fb75d1c1695af6bdf:_aa46d9061fb6637c5f30405a;
      
      private var _816fceec81f68807feb4edb9:_aa46d9061fb6637c5f30405a;
      
      private var _d0cec09fdd11b6892d519a6d:_aa46d9061fb6637c5f30405a;
      
      private var _7426784af3d842576781d423:_aa46d9061fb6637c5f30405a;
      
      private var _66f8506fcd285dd896ae428f:Object;
      
      public var completedMissionData:Vector.<Object> = new Vector.<Object>();
      
      private var _9fa2f7cd24801a915e62654b:_aa46d9061fb6637c5f30405a;
      
      private var _b9625c60d50a143fdb809c43:_aa46d9061fb6637c5f30405a;
      
      public var needToShowDailyQuestsComplete:Boolean = false;
      
      public var username:String;
      
      public var isGuest:Boolean = false;
      
      public var isModerator:Boolean = false;
      
      public var isFirstLoginAfterRegistration:Boolean = false;
      
      public var inventory:_5c61816df588994ab1b4dbe4 = new _5c61816df588994ab1b4dbe4();
      
      private var _55a38a8521628a8a8dcf6c58:_aa46d9061fb6637c5f30405a;
      
      private var _688c994f389939bb6b8cd732:_aa46d9061fb6637c5f30405a;
      
      private var _8af27cebc19fc72f528febcf:_aa46d9061fb6637c5f30405a;
      
      private var _735affbb99adb99bedcf3bcb:_aa46d9061fb6637c5f30405a;
      
      private var _48267947952834848a9a50ed:_aa46d9061fb6637c5f30405a;
      
      private var _0be76e040a8ff503cf8f7512:_aa46d9061fb6637c5f30405a;
      
      public var isTalkingWithNPC:_aa46d9061fb6637c5f30405a;
      
      public var charState:_aa46d9061fb6637c5f30405a = new _aa46d9061fb6637c5f30405a(_2fcef105b08d78e8c46cbf27.NORMAL);
      
      public var atTheBoat:_aa46d9061fb6637c5f30405a = new _aa46d9061fb6637c5f30405a(false);
      
      public var inFishingProcess:_aa46d9061fb6637c5f30405a = new _aa46d9061fb6637c5f30405a(false);
      
      public var inTalkWithNPC:_aa46d9061fb6637c5f30405a = new _aa46d9061fb6637c5f30405a(false);
      
      public var country:String = "UKR";
      
      private var _f4f6f6d8d5d90a78f9bf7522:Vector.<_c5aa52fca149ae6f0be6dc5b> = new Vector.<_c5aa52fca149ae6f0be6dc5b>(-408881222 ^ -1629228750 ^ -2646480 ^ -2037081928);
      
      public var emailActivation:int = 0;
      
      public var currentLuckPotionTimeMark:_020eb172ea5f58203a09fdb5;
      
      public var currentMagicWatchTimeMark:_020eb172ea5f58203a09fdb5;
      
      public var currentFishRadarTimeMark:_020eb172ea5f58203a09fdb5;
      
      public var currentExpBoosterTimeMark:_020eb172ea5f58203a09fdb5;
      
      public var currentShinyPotionTimeMark:_020eb172ea5f58203a09fdb5;
      
      public var currentPowerBoosterTimeMark:_020eb172ea5f58203a09fdb5;
      
      public var luckPotionAlarm:_33dd41a12065671be9311587;
      
      public var magicWatchAlarm:_33dd41a12065671be9311587;
      
      public var fishRadarAlarm:_33dd41a12065671be9311587;
      
      public var expBoosterAlarm:_33dd41a12065671be9311587;
      
      public var shinyPotionAlarm:_33dd41a12065671be9311587;
      
      public var powerBoosterAlarm:_33dd41a12065671be9311587;
      
      private var _147bbbb3ef96df2595efef97:int = 1;
      
      public var useCampaignLeadClicktag:_bebc31ae11b6ac3cc8ae6184 = new _bebc31ae11b6ac3cc8ae6184();
      
      private var _e7e7e6148009ec0c40951a29:int = 0;
      
      public var emailActivationSent:Boolean = false;
      
      public var hasSeenNewMissions:Boolean = false;
      
      private var _864b51ad2355c5408e1b1fd4:Boolean;
      
      public function _01a2aa99fe260235a2a4e8a7()
      {
         super();
         this.inventory.addEventListener(_5c61816df588994ab1b4dbe4.RODS_CHANGE,this._bd9aac18cfc8cb0bb217f3a6);
         this.inventory.addEventListener(_5c61816df588994ab1b4dbe4.BAITS_CHANGE,this._2d944af4dac3653ffb13413e);
         this.inFishingProcess.addEventListener(_720429110fd3cfc01812b5a0.CHANGE,this._ca1afe2b80ef68b97181fffd);
         this._f163e104c72c144dc374631d = new _aa46d9061fb6637c5f30405a(0x06183C6B ^ -2138705465 ^ 0x5194CC09 ^ -687275612);
         this._ba25662fb75d1c1695af6bdf = new _aa46d9061fb6637c5f30405a(-600954583 ^ -332113469 ^ -1320657183 ^ -2125320693);
         this._9fa2f7cd24801a915e62654b = new _aa46d9061fb6637c5f30405a(-194197438 ^ 0x209A809E ^ 0x5EB60A7D ^ -1975500127);
         this._b9625c60d50a143fdb809c43 = new _aa46d9061fb6637c5f30405a(0x2E100C15 ^ -483949861 ^ 0x17E74A9C ^ -623852462);
         this._816fceec81f68807feb4edb9 = new _aa46d9061fb6637c5f30405a(-329438018 ^ -601518518 ^ 0x25BCDF50 ^ 0x15C47DA4);
         this._7426784af3d842576781d423 = new _aa46d9061fb6637c5f30405a(-489953086 ^ -1403124454 ^ -1135200697 ^ -222045282);
         this._d0cec09fdd11b6892d519a6d = new _aa46d9061fb6637c5f30405a(0x59DB23CF ^ 0x7B40AE56 ^ 0x5B6ACD6F ^ 0x79F140F6);
         this._55a38a8521628a8a8dcf6c58 = new _aa46d9061fb6637c5f30405a(false);
         this._688c994f389939bb6b8cd732 = new _aa46d9061fb6637c5f30405a(false);
         this._8af27cebc19fc72f528febcf = new _aa46d9061fb6637c5f30405a(false);
         this._735affbb99adb99bedcf3bcb = new _aa46d9061fb6637c5f30405a(false);
         this._48267947952834848a9a50ed = new _aa46d9061fb6637c5f30405a(false);
         this._0be76e040a8ff503cf8f7512 = new _aa46d9061fb6637c5f30405a(false);
         this.isTalkingWithNPC = new _aa46d9061fb6637c5f30405a(false);
         this._e878cd7d34520b4378b34fd4(this._ed197a869f39df99dcaadf1f);
         this._864b51ad2355c5408e1b1fd4 = false;
         _dfa25706e58a240c1e33e5c6.fscModel._93c85485e20e2accb736dfc6(IncomingPMResp,this._1d420adec0b33d4c2bce512a);
      }
      
      public function set fishingLineColor(param1:String) : void
      {
         var _loc2_:int = -1831680788 ^ -2021415645 ^ 0x6EE1E692 ^ -985029950;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x5B62A228 ^ -2031321982 ^ -1837593496 ^ -250644644))
            {
               case 0:
                  return;
               case 1:
                  if(this._2b94707d7535deb914d07348 == param1)
                  {
                     _loc2_ = -55608504 ^ -101722142 ^ 0x650E0931 ^ -558399483;
                  }
                  else
                  {
                     _loc2_ = -1700303157 ^ 0x69BE8C6D ^ -293235242 ^ -1553640724;
                  }
                  break;
               case 2:
                  this._2b94707d7535deb914d07348 = param1;
                  _0737efdbd5337ba3fbc64b2e.getInstance()._83fe3f7775d32c7cda3d7865(_6b63fd0a4028eb279b227831.ECU_FISHING_LINE_COLOR,_22437dfd77f65dbf9dbc4281.EDT_FISHING_LINE);
                  GameSwf._129977da7249dc6dfa32c5f9(_6b63fd0a4028eb279b227831.ECU_FISHING_LINE_COLOR);
                  this._1157d7f20c13eb1006b65a4f();
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function get fishingLineColor() : String
      {
         return this._2b94707d7535deb914d07348;
      }
      
      public function set fishingLine(param1:FishingLineLevelInfo) : void
      {
         var _loc2_:int = -1140750962 ^ -1378691659 ^ 0x5276F4AF ^ -631498667;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (-604807092 ^ -1442178660 ^ -2124742701 ^ 0x695A3AC2))
            {
               case 0:
                  if(this._08cdf53bc89ca96498dc7eac == param1)
                  {
                     _loc2_ = -1425080040 ^ 0x3971A4B8 ^ 0x4A15AAE4 ^ 0x4192B387;
                  }
                  else
                  {
                     _loc2_ = -1520812373 ^ -1173700346 ^ -1245610618 ^ 0x33683EEB;
                  }
                  break;
               case 1:
                  this._08cdf53bc89ca96498dc7eac = param1;
                  GameSwf._129977da7249dc6dfa32c5f9(_6b63fd0a4028eb279b227831.ECU_FISHING_LINE_LEVEL);
                  return;
               case 2:
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function get fishingLine() : FishingLineLevelInfo
      {
         return this._08cdf53bc89ca96498dc7eac;
      }
      
      public function set moneyTree(param1:MoneyTreeLevelInfo) : void
      {
         var _loc2_:int = 0x1CB15128 ^ -74332281 ^ 0x759BF8E8 ^ -613559537;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x4FCFB868 ^ -1064484930 ^ -1309477071 ^ 0x7766CDAF))
            {
               case 0:
                  if(this._18123ad0557fe274bd7b72fe == param1)
                  {
                     _loc2_ = -1847489224 ^ 0x33F6FDA5 ^ 0x082283BD ^ -471642519;
                  }
                  else
                  {
                     _loc2_ = -751887946 ^ 0x142354A0 ^ 0x238204A9 ^ -1386679051;
                  }
                  break;
               case 1:
                  return;
               case 2:
                  this._18123ad0557fe274bd7b72fe = param1;
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function get moneyTree() : MoneyTreeLevelInfo
      {
         return this._18123ad0557fe274bd7b72fe;
      }
      
      public function get isEventsAvailable() : Boolean
      {
         return this._f163e104c72c144dc374631d.value >= (-972719849 ^ -1899174533 ^ -1059294791 ^ -2011828784);
      }
      
      public function set inLogountProcess(param1:Boolean) : void
      {
         this._864b51ad2355c5408e1b1fd4 = param1;
      }
      
      public function get inLogoutProcess() : Boolean
      {
         return this._864b51ad2355c5408e1b1fd4;
      }
      
      public function _ac79ac4740284e613b88524d() : void
      {
         this.isGuest = true;
         Config.IS_GUEST = true;
      }
      
      public function _ba7a9dd72a2936fe257207d7() : void
      {
         this.isGuest = false;
         Config.IS_GUEST = false;
      }
      
      public function _3e688a08030b41f9128070b7() : void
      {
         var _loc1_:int = 0x23470F68 ^ -655627810 ^ -1328043943 ^ 0x4F1582C4;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (0x65630194 ^ -1339738821 ^ -76713708 ^ 0x2A458991))
            {
               case 0:
                  this.isFirstLoginAfterRegistration = true;
                  this.isGuest = false;
                  Config.IS_GUEST = false;
                  return;
               case 1:
                  if(this.isGuest)
                  {
                     _loc1_ = 0x751C18D1 ^ -1004870239 ^ 0x0FC2FAD7 ^ -1163211889;
                  }
                  else
                  {
                     _loc1_ = 0x79C3B61F ^ 0x05835E4E ^ -992866497 ^ -1124324540;
                  }
                  break;
               case 2:
                  this.useCampaignLeadClicktag.activate();
                  this._ce1be7920cc97cc5005b2eaa();
                  _loc1_ = -137278999 ^ -1096054051 ^ -1915687040 ^ -1060839266;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function _1d420adec0b33d4c2bce512a(param1:*) : void
      {
         ++this.unreadPMNumber;
         Cc.log(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("振挋揺掞掶挍挦捌揾揺掩掴揣揠捰捍掤掛挘掺揯揂揼援揿挖掞捚挮挳挛捤挸揯掮捼揦捣掫掼掃掕挜挕掁捔","揳捚挽捼挠挨挕插揘挈挃掕挶挟揉挮"));
      }
      
      public function get unreadPMNumber() : int
      {
         return this._e7e7e6148009ec0c40951a29;
      }
      
      public function set unreadPMNumber(param1:int) : void
      {
         if(param1 < (-1353757262 ^ 0x4C3D2757 ^ -1125920915 ^ 0x5F91A588))
         {
            this._e7e7e6148009ec0c40951a29 = 0x0F73FEE5 ^ -2109267918 ^ 0x31B521DE ^ -1132331255;
         }
         else
         {
            this._e7e7e6148009ec0c40951a29 = param1;
         }
         var _loc2_:_67f8febc099eaa05c48aa41e = GameSwf.currentLocationDialog;
         if(_loc2_ != null)
         {
            _loc2_.gui.mainMenu.communicationIcon.amount = this._e7e7e6148009ec0c40951a29;
         }
      }
      
      private function _ca1afe2b80ef68b97181fffd(param1:_720429110fd3cfc01812b5a0) : void
      {
         Cc.log(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၦ၂တႌဪဓၠဗწყ်გႥန჌ၪ჋ၧტჅႸვზၫაးႸღႍွღႍჼ႑ႬႀႸၖ჈ဋႇ႞","ჄႇႦონၾႚႷၝყံဍჀ၏ႚႠ"),this.inFishingProcess != null ? this.inFishingProcess.value : _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ჼည့ှဂႦ၁ჳၒၿဪဩၾစგဪ","Ⴘၡჸ႞ႹႂဠჅုჽႰၜၪ႗၌Ⴉ"));
      }
      
      private function _ed197a869f39df99dcaadf1f(param1:_720429110fd3cfc01812b5a0) : void
      {
         var _loc2_:* = int(limit(Number(param1.newValue) - Number(param1.oldValue),0x5BBD26E8 ^ -2091485105 ^ -1744471234 ^ 0x40EE2599,-1525705711 ^ 0x34E75D1B ^ -1397775029 ^ 0x3D476C42));
         if(_loc2_ > (-1917276253 ^ 0x49AEB978 ^ 0x2BBC32FD ^ -274062298) && param1.oldValue > (-439029273 ^ -174818774 ^ -640756274 ^ -913416701))
         {
            this._f4f6f6d8d5d90a78f9bf7522 = new Vector.<_c5aa52fca149ae6f0be6dc5b>(0x11FE0354 ^ -1939918844 ^ 0x54F5264D ^ -917236451);
            while(_loc2_-- > (0x5D523BDA ^ 0x7BAF1A97 ^ -925412037 ^ -299207562))
            {
               this._f4f6f6d8d5d90a78f9bf7522.push(_3a8a2602dcf9bf49b62e62af.SFX_059_UI_Level_increase_count);
            }
         }
      }
      
      public function _ec74454b6e430d88fcceb42e() : void
      {
      }
      
      private function _2d944af4dac3653ffb13413e(param1:Event) : void
      {
         var _loc2_:_69796f101fc3fc2b4b8665e9 = this.inventory._d65c0405e9175079a9c60504(this.baitInfoId);
         if(_loc2_ != null)
         {
            this.baitCount = _loc2_.quantity;
         }
         else
         {
            this.baitCount = 0x38A39664 ^ -701301564 ^ 0x2DB856D9 ^ -1020707719;
         }
      }
      
      private function _bd9aac18cfc8cb0bb217f3a6(param1:Event) : void
      {
         var _loc2_:_0760ce29bdab6fd5166927ab = this.inventory._986e832fab94e942a17764c6(this.userRodId);
         if(_loc2_ != null)
         {
            this.rodCount = _loc2_.quantity;
         }
         else if(this.userRodId == _a1e0e2bf54cc08cc6a7d5b7c.ER_ROD_EMPTY)
         {
            this.rodCount = 0x6CB5E4EA ^ -205343850 ^ -1452410853 ^ -907718504;
         }
         else
         {
            this.rodCount = 0x154215AA ^ -660898099 ^ -192644364 ^ 0x395D1193;
         }
      }
      
      public function _bb1d6c3a8bcfb8ddcf396978(param1:Number) : void
      {
         this._f163e104c72c144dc374631d.value = param1;
      }
      
      public function get level() : Number
      {
         return this._f163e104c72c144dc374631d.value;
      }
      
      public function set level(param1:Number) : void
      {
         this._f163e104c72c144dc374631d.value = param1;
      }
      
      public function set spendings(param1:Number) : void
      {
         this._ba25662fb75d1c1695af6bdf.value = param1;
      }
      
      public function get spendings() : Number
      {
         return this._ba25662fb75d1c1695af6bdf.value;
      }
      
      public function get userRodId() : int
      {
         return this._35061db72bc40640c825c9d0;
      }
      
      public function set userRodId(param1:int) : void
      {
         var _loc2_:int = 0x6C05920B ^ 0x557AF408 ^ -1156031058 ^ 0x5CB022E7;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (-999234027 ^ -144947406 ^ -1499024538 ^ 0x4B5D0B0B))
            {
               case 0:
                  if(this._35061db72bc40640c825c9d0 == param1)
                  {
                     _loc2_ = 0x186CE3E1 ^ -1459366878 ^ 0x2EE56113 ^ 0x415D4F9B;
                  }
                  else
                  {
                     _loc2_ = -240445754 ^ 0x3887E987 ^ 0x0EA11184 ^ 0x195AF78D;
                  }
                  break;
               case 1:
                  return;
               case 2:
                  this._35061db72bc40640c825c9d0 = param1;
                  dispatchEvent(this._d8d7feb96bc46b47e529f9a4);
                  this.inventory._e9214595aa08b133b57e8ee1();
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function get baitInfoId() : int
      {
         return this._b03ee4ec9f794f353c35e77b;
      }
      
      public function set baitInfoId(param1:int) : void
      {
         var _loc2_:int = 0x4C42BB4C ^ 0x55008E5D ^ -1200507115 ^ 0x4758C765;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x47362668 ^ -947081266 ^ 0x5F77F2EA ^ 0x39A63E2F))
            {
               case 0:
                  dispatchEvent(this._4cd8e6aae4e2bf103b8359ad);
                  return;
               case 1:
                  this._b03ee4ec9f794f353c35e77b = param1;
                  this.inventory._76b20d6ad3d24f33b6494d38();
                  _loc2_ = -1590414179 ^ 0x2FAEFEC6 ^ 0x63D16EB8 ^ 0x0B20E180;
                  break;
               case 2:
                  if(this._b03ee4ec9f794f353c35e77b != param1)
                  {
                     _loc2_ = 0x4539FAF5 ^ -910015489 ^ -746055380 ^ -1189550780;
                  }
                  else
                  {
                     _loc2_ = 0x0717CB33 ^ -170594101 ^ 0x2998011F ^ 0x3D307F84;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function get rodCount() : int
      {
         return this._fa07f340106dcbcb1476d298;
      }
      
      public function set rodCount(param1:int) : void
      {
         var _loc2_:int = 0x27E66FBE ^ -964497741 ^ 0x41D62050 ^ 0x7E60FA4A;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x50830134 ^ -1914774525 ^ 0x72F8F8BF ^ 0x71777E9E))
            {
               case 0:
                  this._fa07f340106dcbcb1476d298 = param1;
                  dispatchEvent(this._8f5af45550bd675e7faf7713);
                  _loc2_ = 0x788810FD ^ 0x4401DA94 ^ 0x1BDFBBA2 ^ -108778785;
                  break;
               case 1:
                  if(this._fa07f340106dcbcb1476d298 != param1)
                  {
                     _loc2_ = -1168208090 ^ 0x03DE448B ^ -164176543 ^ -1855697446;
                  }
                  else
                  {
                     _loc2_ = 0x783D47CB ^ -1460809118 ^ -48658051 ^ -216315968;
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
      
      public function get baitCount() : int
      {
         return this._17338944ddb505d6b57e27f8;
      }
      
      public function set baitCount(param1:int) : void
      {
         var _loc2_:int = 0x1032C453 ^ 0x1C56500C ^ -2018084723 ^ -855961920;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (-2084030021 ^ 0x739CEBD0 ^ -1323131338 ^ 0x065FAE4F))
            {
               case 0:
                  if(this._17338944ddb505d6b57e27f8 != param1)
                  {
                     _loc2_ = 0x34D01105 ^ 0x033E0DE7 ^ -1654579795 ^ -307829921;
                  }
                  else
                  {
                     _loc2_ = -1095202574 ^ 0x30407826 ^ -415188566 ^ 0x2E91AB6D;
                  }
                  break;
               case 1:
                  return;
               case 2:
                  this._17338944ddb505d6b57e27f8 = param1;
                  dispatchEvent(this._8a97597a36314fe3c9af3bb1);
                  _loc2_ = -1859973849 ^ 0x699EDB62 ^ -1074453845 ^ 0x6116FD;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function get canMove() : Boolean
      {
         return this._aa5146d04e7cef374df6e3d1;
      }
      
      public function set canMove(param1:Boolean) : void
      {
         this._aa5146d04e7cef374df6e3d1 = param1;
      }
      
      public function get fishcoins() : int
      {
         return int(this._9fa2f7cd24801a915e62654b.value);
      }
      
      public function set fishcoins(param1:int) : void
      {
         var _loc2_:int = -844576163 ^ -777047234 ^ 0x10C3D5FA ^ -1673288263;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (-120787453 ^ -1180701779 ^ -2022067147 ^ 0x56AD38BA))
            {
               case 0:
                  this._9fa2f7cd24801a915e62654b.value = param1;
                  return;
               case 1:
                  if(param1 < this._9fa2f7cd24801a915e62654b.value)
                  {
                     _loc2_ = -1966563275 ^ -1768345070 ^ 0x6CAC4F26 ^ -528853982;
                  }
                  else
                  {
                     _loc2_ = -103176844 ^ -1227893876 ^ -885361384 ^ 0x14AB8AC1;
                  }
                  break;
               case 2:
                  _3a8a2602dcf9bf49b62e62af.play(_3a8a2602dcf9bf49b62e62af.SFX_054_UI_Buy_click);
                  _loc2_ = 0x7C04F5E1 ^ 0x63EEDF3B ^ -957698756 ^ 0x49870EC7;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function get fishbucks() : int
      {
         return int(this._b9625c60d50a143fdb809c43.value);
      }
      
      public function set fishbucks(param1:int) : void
      {
         var _loc2_:int = -2129878225 ^ -226969060 ^ 0x323201F2 ^ 0x3FC65813;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x1FEB43 ^ 0x04902A32 ^ -273173069 ^ -1783090159))
            {
               case 0:
                  this._b9625c60d50a143fdb809c43.value = param1;
                  return;
               case 1:
                  if(param1 < this._b9625c60d50a143fdb809c43.value)
                  {
                     _loc2_ = -920509032 ^ 0x66DAB8CB ^ -310437207 ^ 0x3C07C72B;
                  }
                  else
                  {
                     _loc2_ = 0x3265B6 ^ -969867149 ^ -2097004306 ^ 0x3B8165F8;
                  }
                  break;
               case 2:
                  _3a8a2602dcf9bf49b62e62af.play(_3a8a2602dcf9bf49b62e62af.SFX_054_UI_Buy_click);
                  _loc2_ = -609507677 ^ -530719055 ^ 0x0612AC4A ^ 0x4364948B;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function _c2cb288bf8bd6f749d06eb93(param1:Function) : void
      {
         this._9fa2f7cd24801a915e62654b.addEventListener(_720429110fd3cfc01812b5a0.CHANGE,param1);
      }
      
      public function _c9d56ed8e8557c55b8235f4f(param1:Function) : void
      {
         this._9fa2f7cd24801a915e62654b.removeEventListener(_720429110fd3cfc01812b5a0.CHANGE,param1);
      }
      
      public function _b4cae3abe96a2089ccbc80fc(param1:Function) : void
      {
         this._b9625c60d50a143fdb809c43.addEventListener(_720429110fd3cfc01812b5a0.CHANGE,param1);
      }
      
      public function _8577097c0ec141ab849ff3ae(param1:Function) : void
      {
         this._b9625c60d50a143fdb809c43.removeEventListener(_720429110fd3cfc01812b5a0.CHANGE,param1);
      }
      
      public function get experience() : int
      {
         return int(this._816fceec81f68807feb4edb9.value);
      }
      
      public function set experience(param1:int) : void
      {
         this._816fceec81f68807feb4edb9.value = param1;
      }
      
      public function get prevExpLimit() : int
      {
         return int(this._d0cec09fdd11b6892d519a6d.value);
      }
      
      public function set prevExpLimit(param1:int) : void
      {
         this._d0cec09fdd11b6892d519a6d.value = param1;
      }
      
      public function get nextExpLimit() : int
      {
         return int(this._7426784af3d842576781d423.value);
      }
      
      public function set nextExpLimit(param1:int) : void
      {
         this._7426784af3d842576781d423.value = param1;
      }
      
      public function get newLevelData() : Object
      {
         return this._66f8506fcd285dd896ae428f;
      }
      
      public function set newLevelData(param1:Object) : void
      {
         var _loc2_:int = 0x7582AE03 ^ -1373701648 ^ -135068690 ^ -1424490870;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (-919271874 ^ -1531344130 ^ 0x04388983 ^ -288575530))
            {
               case 0:
                  this._66f8506fcd285dd896ae428f = param1;
                  _loc2_ = 0x306A2821 ^ -1004040052 ^ -558031481 ^ -1383592002;
                  break;
               case 1:
                  return;
               case 2:
                  if(this._66f8506fcd285dd896ae428f != param1)
                  {
                     _loc2_ = -1914192296 ^ 0x5E85B26B ^ -823049141 ^ -1695816979;
                  }
                  else
                  {
                     _loc2_ = 0x3E9B8635 ^ -113879191 ^ -126149965 ^ -1196531333;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function _23cc1867bd28849f49fc86b6(param1:String) : Boolean
      {
         return this._97bfbc21f314b825226cacae(param1).value;
      }
      
      public function _be073f824a93cbbb7ebe9cd5(param1:String, param2:Boolean) : void
      {
         var _loc3_:_aa46d9061fb6637c5f30405a = this._97bfbc21f314b825226cacae(param1);
         _loc3_.value = param2;
      }
      
      private function _97bfbc21f314b825226cacae(param1:String) : _aa46d9061fb6637c5f30405a
      {
         var _loc2_:_aa46d9061fb6637c5f30405a = null;
         switch(param1)
         {
            case _01cf9a78594a0bb30b57b0c3.EBT_EXP:
               §§push(0x218ABF5A ^ 0x65470313 ^ 0x2067AE37 ^ 0x64AA127E);
               break;
            case _01cf9a78594a0bb30b57b0c3.EBT_LUCKY_POTION:
               §§push(0x56E80CB9 ^ 0x0FC85742 ^ 0x407AA99C ^ 0x195AF266);
               break;
            case _01cf9a78594a0bb30b57b0c3.EBT_MAGIC_WATCH:
               §§push(0x029DFB03 ^ 0x7305D55E ^ -1021195600 ^ -1296440081);
               break;
            case _01cf9a78594a0bb30b57b0c3.EBT_RADAR:
               §§push(0x2D85C3EB ^ 0x297E20CD ^ -1843393773 ^ -1763973066);
               break;
            case _01cf9a78594a0bb30b57b0c3.EBT_SHINY_POTION:
               §§push(-1294637175 ^ 0x7F4A2B50 ^ 0x721FF284 ^ -1082081703);
               break;
            case _01cf9a78594a0bb30b57b0c3.EBT_POWER_BOOSTER:
               §§push(-273108119 ^ 0x3E1D9F55 ^ 0x2DEF92D5 ^ -62210324);
               break;
            default:
               §§push(-500281268 ^ -1692607961 ^ 0x64EF16B4 ^ 0x1DDD9CD9);
         }
         switch(§§pop())
         {
            case 0:
               _loc2_ = this._735affbb99adb99bedcf3bcb;
               break;
            case 1:
               _loc2_ = this._55a38a8521628a8a8dcf6c58;
               break;
            case 2:
               _loc2_ = this._688c994f389939bb6b8cd732;
               break;
            case 3:
               _loc2_ = this._8af27cebc19fc72f528febcf;
               break;
            case 4:
               _loc2_ = this._48267947952834848a9a50ed;
               break;
            case 5:
               _loc2_ = this._0be76e040a8ff503cf8f7512;
               break;
            default:
               Debug.assert(false);
         }
         return _loc2_;
      }
      
      public function get isInfluencedOfLuckPotion() : Boolean
      {
         return this._55a38a8521628a8a8dcf6c58.value;
      }
      
      public function get isInfluencedOfMagicWatch() : Boolean
      {
         return this._688c994f389939bb6b8cd732.value;
      }
      
      public function get isInfluencedOfFishRadar() : Boolean
      {
         return this._8af27cebc19fc72f528febcf.value;
      }
      
      public function get isInfluencedOfExpBooster() : Boolean
      {
         return this._735affbb99adb99bedcf3bcb.value;
      }
      
      public function get isInfluencedOfShinyPotion() : Boolean
      {
         return this._48267947952834848a9a50ed.value;
      }
      
      public function get isInfluencedOfPowerBooster() : Boolean
      {
         return this._0be76e040a8ff503cf8f7512.value;
      }
      
      public function get oldLevel() : int
      {
         return this._147bbbb3ef96df2595efef97;
      }
      
      public function set oldLevel(param1:int) : void
      {
         this._147bbbb3ef96df2595efef97 = param1;
      }
      
      public function _f1f7d7e8bb164ad4b97c63c5(param1:Function) : void
      {
         this._f163e104c72c144dc374631d.addEventListener(_720429110fd3cfc01812b5a0.CHANGE,param1);
      }
      
      public function _d448bc64b43862324feeb1d4(param1:Function) : void
      {
         this._f163e104c72c144dc374631d.removeEventListener(_720429110fd3cfc01812b5a0.CHANGE,param1);
      }
      
      public function _dc844cc0f2591b301ccc1282(param1:Function) : void
      {
         this._55a38a8521628a8a8dcf6c58.addEventListener(_720429110fd3cfc01812b5a0.CHANGE,param1);
      }
      
      public function _3f16d9f1d8128271ec9f0f77(param1:Function) : void
      {
         this._55a38a8521628a8a8dcf6c58.removeEventListener(_720429110fd3cfc01812b5a0.CHANGE,param1);
      }
      
      public function _28629bd626139285c6409a4a(param1:Function) : void
      {
         this._688c994f389939bb6b8cd732.addEventListener(_720429110fd3cfc01812b5a0.CHANGE,param1);
      }
      
      public function _2c5b8fa99a233de64895b9a5(param1:Function) : void
      {
         this._688c994f389939bb6b8cd732.removeEventListener(_720429110fd3cfc01812b5a0.CHANGE,param1);
      }
      
      public function _748cd46d4747fff1fea1816d(param1:Function) : void
      {
         this._8af27cebc19fc72f528febcf.addEventListener(_720429110fd3cfc01812b5a0.CHANGE,param1);
      }
      
      public function _ce096206a0493b2510c745ef(param1:Function) : void
      {
         this._8af27cebc19fc72f528febcf.removeEventListener(_720429110fd3cfc01812b5a0.CHANGE,param1);
      }
      
      public function _ea6ce76e28c603a839249f33(param1:Function) : void
      {
         this._735affbb99adb99bedcf3bcb.addEventListener(_720429110fd3cfc01812b5a0.CHANGE,param1);
      }
      
      public function _190ea1c62a930c409dd2cab2(param1:Function) : void
      {
         this._735affbb99adb99bedcf3bcb.removeEventListener(_720429110fd3cfc01812b5a0.CHANGE,param1);
      }
      
      public function _ada76c5265b66e5f2df388d3(param1:Function) : void
      {
         this._48267947952834848a9a50ed.addEventListener(_720429110fd3cfc01812b5a0.CHANGE,param1);
      }
      
      public function _347e285384f62b356eeb116c(param1:Function) : void
      {
         this._48267947952834848a9a50ed.removeEventListener(_720429110fd3cfc01812b5a0.CHANGE,param1);
      }
      
      public function _db41211ba82c113380305f92(param1:Function) : void
      {
         this._48267947952834848a9a50ed.addEventListener(_720429110fd3cfc01812b5a0.CHANGE,param1);
      }
      
      public function _bb1d30278876b4802f16098d(param1:Function) : void
      {
         this._48267947952834848a9a50ed.removeEventListener(_720429110fd3cfc01812b5a0.CHANGE,param1);
      }
      
      public function _3d476b4a3e07300e30a6726e(param1:Function) : void
      {
         this.isTalkingWithNPC.addEventListener(_720429110fd3cfc01812b5a0.CHANGE,param1);
      }
      
      public function _55255f9d420cfafab391a727(param1:Function) : void
      {
         this.isTalkingWithNPC.removeEventListener(_720429110fd3cfc01812b5a0.CHANGE,param1);
      }
      
      public function _e878cd7d34520b4378b34fd4(param1:Function) : void
      {
         this._816fceec81f68807feb4edb9.addEventListener(_720429110fd3cfc01812b5a0.CHANGE,param1);
      }
      
      public function _0fd5ec095253ad2d29429e30(param1:Function) : void
      {
         this._816fceec81f68807feb4edb9.removeEventListener(_720429110fd3cfc01812b5a0.CHANGE,param1);
      }
      
      public function _d5dbaa88e5fe97f0640d5566(param1:Function) : void
      {
         this._d0cec09fdd11b6892d519a6d.addEventListener(_720429110fd3cfc01812b5a0.CHANGE,param1);
      }
      
      public function _ec74ef05e5b74692d5263b01(param1:Function) : void
      {
         this._d0cec09fdd11b6892d519a6d.removeEventListener(_720429110fd3cfc01812b5a0.CHANGE,param1);
      }
      
      public function _b3e056cb7e4f2dd0ed40dbfc(param1:Function) : void
      {
         this._7426784af3d842576781d423.addEventListener(_720429110fd3cfc01812b5a0.CHANGE,param1);
      }
      
      public function _3e4a0d3c206eefe6c739e65a(param1:Function) : void
      {
         this._7426784af3d842576781d423.removeEventListener(_720429110fd3cfc01812b5a0.CHANGE,param1);
      }
      
      public function _0197120ef6d49b0893064c98(param1:_020eb172ea5f58203a09fdb5) : int
      {
         var _loc2_:int = 0x411D7275 ^ 0x0734B16C ^ 0x49D812A6 ^ 0x19A752C8;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (-812536219 ^ -2004669805 ^ 0x2D678B3E ^ 0x7C238CBF))
            {
               case 0:
                  if(param1 != null)
                  {
                     _loc2_ = -1621103012 ^ -1700697892 ^ -1302541262 ^ -1577793081;
                  }
                  else
                  {
                     _loc2_ = -2128873029 ^ 0x1F6F3BA4 ^ 0x735E6943 ^ -75749334;
                  }
                  break;
               case 1:
                  return -1230893908 ^ 0x62478B44 ^ 0x4594EF36 ^ 0x6E8E9721;
               case 2:
                  return param1._0995b3aa2fe33ceaf8dd4322(getTimer());
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function _ce1be7920cc97cc5005b2eaa() : void
      {
         if(Boolean(Config.CAMPAIGN_REC_ID) && Boolean(this.useCampaignLeadClicktag.isActive()) && !this.isGuest)
         {
            this.useCampaignLeadClicktag._85ad564edc2ee16f745d9dfa();
            if(ExternalInterface.available)
            {
               ExternalInterface.call(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ဴၒႾჃႆლႃၵჄႩၳრჴဟၨჳ၎့Ⴊၧ჋ဂტံ၍ၲႎတ჉၄","ႥႴၯဲၵჃဩၧၒჾႰ၍ဓၼႦი"),Config.CAMPAIGN_REC_ID);
            }
         }
      }
      
      public function _808bb7ca461a99abfe608cfe(param1:Boolean) : void
      {
         var _loc2_:int = 0x19950185 ^ -602644564 ^ -1979897397 ^ 0x343140A9;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (-810120792 ^ -489690092 ^ 0x4B40E29A ^ 0x1E74B06D))
            {
               case 0:
                  if(param1)
                  {
                     _loc2_ = 0x3852EBBC ^ 0x7BF6B867 ^ 0x6E596DD5 ^ 0x55B00944;
                  }
                  else
                  {
                     _loc2_ = 0x2493DB84 ^ 0x427B04FF ^ 0x2D55BA15 ^ 0x33F05227;
                  }
                  break;
               case 1:
                  this.isFirstLoginAfterRegistration = true;
                  _loc2_ = 0x2BD8EC42 ^ -327326777 ^ 0x1924B9FB ^ -1496579785;
                  break;
               case 2:
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function _1157d7f20c13eb1006b65a4f() : void
      {
         var _loc1_:_67f8febc099eaa05c48aa41e = GameSwf.currentLocationDialog;
         if(_loc1_ == null || _loc1_.player == null || _loc1_.player.rod == null)
         {
            return;
         }
         GameSwf.currentLocationDialog.player.rod._2481ffc8f141fbced9f2246c(_72a97cef3acbd28d8d164ec8._c5779887be8eacdb7aa956f2(this._2b94707d7535deb914d07348));
      }
   }
}

