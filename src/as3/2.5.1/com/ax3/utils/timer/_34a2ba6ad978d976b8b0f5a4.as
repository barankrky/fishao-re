package com.ax3.utils.timer
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import flash.display.Stage;
   import flash.events.Event;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   import flash.utils.getTimer;
   
   public class _34a2ba6ad978d976b8b0f5a4
   {
      
      public static const TIMER_10M:String = _95da7f1147c669197db81295._8f4866de82b7339154180ecb("剰剪剸刬剺刺剥功動剢勏刧劽剭剖剩勶劣劎刉","勁剠劇刌劌勎勓創分剪刜勭勞勺勝別");
      
      public static const TIMER_30S:String = _95da7f1147c669197db81295._8f4866de82b7339154180ecb("切勈剉剃剟刖勷劭剬创勊刨剓剤削剔劧刦","刄剬切劈劓別勲劻劍劬剧剔刿刔劬刅");
      
      public static const TIMER_10S:String = _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捽捴掬接掑捜掰挽挞揙揸捑捰挪插捡揨揌","掚掰挜挙揧揤掗捜掄揉捿揲掎掴掸捎");
      
      public static const TIMER_2S:String = _95da7f1147c669197db81295._8f4866de82b7339154180ecb("力剙劸勡割剢劫剰剬剬劷剏刷剆划剺","割剈勔勑劺助办剪劏劌勄勐刭勹勔劄");
      
      public static const TIMER_1S:String = _95da7f1147c669197db81295._8f4866de82b7339154180ecb("勹剮勧勽割剰刏劎勷勁勛劃制勑刈勨","剺动剀勬劾勋剹創劇勖刂勄剧剰労刯");
      
      public static const TIMER_500:String = _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捑捾捖捲捠捯掉揩捙揺掾挋捃掄","挖揂揁捞挳掲揽换挟揫捭捹捌捀掺揶");
      
      public static const TIMER_200:String = _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("სမ၌ၚ၄ၫჿႯაცႧၐ၀ၬ","ნႝა၇჏჈ၕ၍ნႀဤဩჹ္၄დ");
      
      public static const ENTER_FRAME:String = _95da7f1147c669197db81295._8f4866de82b7339154180ecb("劍勨勃勌刀初刦剳刴剋勮刔剛剺剷刢勂勩劯勀助劏剜勱剢剓剰剱","劇劷劺刱剢勁剋判办刧劻勂勓动勉劋");
      
      private var _c3851aefd95fa431bfceb0a5:Timer;
      
      private var _fd157e5d85590cdb9f2a3030:Number = NaN;
      
      private var _6d92adb50ab38479128921f2:Stage;
      
      private var _e426c3a512d3e0fbc4dc3f53:Vector.<_69eec7d2f73604da25ccda04> = new Vector.<_69eec7d2f73604da25ccda04>();
      
      private var _5e44a5450a5bfb5b69bc2847:Vector.<Function> = new Vector.<Function>();
      
      public var currentCount:int = 0;
      
      private var _8644da24d00bbdc1c51c5cea:int;
      
      public function _34a2ba6ad978d976b8b0f5a4(param1:Stage, param2:Number)
      {
         super();
         this._6d92adb50ab38479128921f2 = param1;
         this._fd157e5d85590cdb9f2a3030 = param2;
         if(this._fd157e5d85590cdb9f2a3030 > (0x1D389397 ^ -1568511954 ^ 0x2EFD03FF ^ -1857554362))
         {
            this._c3851aefd95fa431bfceb0a5 = new Timer(this._fd157e5d85590cdb9f2a3030);
            this._c3851aefd95fa431bfceb0a5.addEventListener(TimerEvent.TIMER,this.onUpdate);
            this._c3851aefd95fa431bfceb0a5.start();
         }
         else if(this._fd157e5d85590cdb9f2a3030 == (0x080C13E2 ^ -944100309 ^ -466078657 ^ -730729463))
         {
            _92d7656ddc3c3da810e99c74.frameRate = this._6d92adb50ab38479128921f2.frameRate;
            _92d7656ddc3c3da810e99c74.frameTimeMs = (-924091177 ^ -1248509016 ^ -936207595 ^ -1253267582) / _92d7656ddc3c3da810e99c74.frameRate;
            this._6d92adb50ab38479128921f2.addEventListener(Event.ENTER_FRAME,this._b86526ecab9079a25b8121df);
         }
         this._8644da24d00bbdc1c51c5cea = getTimer();
      }
      
      private function onUpdate(param1:TimerEvent) : void
      {
         this._07fdd1c8ae8932a27ccc9573();
      }
      
      private function _b86526ecab9079a25b8121df(param1:Event) : void
      {
         this._07fdd1c8ae8932a27ccc9573();
      }
      
      private function _07fdd1c8ae8932a27ccc9573() : void
      {
         var _loc1_:_69eec7d2f73604da25ccda04 = null;
         var _loc2_:Function = null;
         var _loc3_:int = getTimer();
         var _loc4_:int = _loc3_ - this._8644da24d00bbdc1c51c5cea;
         ++this.currentCount;
         for each(_loc1_ in this._e426c3a512d3e0fbc4dc3f53)
         {
            _loc1_.update(_loc3_,_loc4_);
         }
         for each(_loc2_ in this._5e44a5450a5bfb5b69bc2847)
         {
            _loc2_(_loc3_,_loc4_);
         }
         this._8644da24d00bbdc1c51c5cea = _loc3_;
      }
      
      public function add(param1:_69eec7d2f73604da25ccda04) : void
      {
         var _loc2_:int = 0x40B1B6CD ^ 0x508B9ADA ^ -1075238720 ^ -58359237;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x3C97F39B ^ -283566704 ^ -1180833955 ^ 0x39458FB8))
            {
               case 0:
                  this._e426c3a512d3e0fbc4dc3f53.push(param1);
                  _loc2_ = 0x64F36678 ^ 0x2408D8AD ^ -2036040685 ^ -1794554839;
                  break;
               case 1:
                  return;
               case 2:
                  if(this._e426c3a512d3e0fbc4dc3f53.indexOf(param1) == (-78058315 ^ 0x6CE31D77 ^ 0x899FCC ^ 0x68CD91F1))
                  {
                     _loc2_ = -2643558 ^ 0x30959F59 ^ -2090081177 ^ 0x1F7F544A;
                  }
                  else
                  {
                     _loc2_ = -2026269659 ^ 0x75B97090 ^ -26544246 ^ 0x5FBC95D0;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function remove(param1:_69eec7d2f73604da25ccda04) : void
      {
         var _loc2_:int = -1475980124 ^ -523152914 ^ -636854870 ^ 0x1C168C38;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x74811718 ^ -1245387256 ^ 0x144B8DA0 ^ 0x5BC5A86A))
            {
               case 0:
                  this._e426c3a512d3e0fbc4dc3f53.splice(this._e426c3a512d3e0fbc4dc3f53.indexOf(param1),0x610D01C6 ^ 0x1A3371E5 ^ -818177098 ^ -1274680428);
                  _loc2_ = 0x71F1232F ^ 0x3FF07C36 ^ -1581584026 ^ 0x61707AA4;
                  break;
               case 1:
                  return;
               case 2:
                  if(this._e426c3a512d3e0fbc4dc3f53.indexOf(param1) > (-662799362 ^ 0x6BC9118A ^ 0x66429DCC ^ 0x2A0A0847))
                  {
                     _loc2_ = -1499791602 ^ -453887590 ^ -2008991459 ^ 0x44E22B53;
                  }
                  else
                  {
                     _loc2_ = 0x6B3F461A ^ 0x2C856748 ^ 0x069F0EB4 ^ -806421699;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function _475178699397df7592a9026e(param1:Function) : void
      {
         var _loc2_:int = -362376271 ^ -1150212413 ^ -2037540399 ^ 0x15635014;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x4AE85FC7 ^ -519963719 ^ -493305242 ^ -1954014545))
            {
               case 0:
                  if(this._5e44a5450a5bfb5b69bc2847.indexOf(param1) == (0x1B7D670E ^ 0x3A98A2F9 ^ -2135956631 ^ 0x5EB5D961))
                  {
                     _loc2_ = 0x63FC9EBC ^ 0x20599E2B ^ -1538703990 ^ 0x251541AB;
                  }
                  else
                  {
                     _loc2_ = -2041779509 ^ 0x17ABCE28 ^ 0x427D758A ^ 0x11632DDC;
                  }
                  break;
               case 1:
                  this._5e44a5450a5bfb5b69bc2847.push(param1);
                  _loc2_ = -514736202 ^ -1105052911 ^ 0x3745CDA6 ^ -1429260876;
                  break;
               case 2:
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function _95b5d5379ad5d337e4cae733(param1:Function) : void
      {
         var _loc2_:int = 0x7448BD37 ^ -1113010772 ^ -1939122431 ^ 0x458B279A;
         var _loc3_:int = -1770892402 ^ -357899470 ^ 0x160663D7 ^ 0x19B3897E;
         loop0:
         while(true)
         {
            switch(_loc3_ ^ (-2005267223 ^ 0x10EE10D4 ^ -244217181 ^ 0x1A88CC8B))
            {
               case 0:
                  _loc2_ = this._5e44a5450a5bfb5b69bc2847.indexOf(param1);
                  if(_loc2_ > (-229861152 ^ -1059565088 ^ 0x5106F1B0 ^ -1670527153))
                  {
                     _loc3_ = 0x70987AAC ^ 0x21DA60C3 ^ -1953781820 ^ -1448810564;
                  }
                  else
                  {
                     _loc3_ = 0x396DC305 ^ 0x7A9547FF ^ 0x4D011BC2 ^ 0x7D94C52C;
                  }
                  break;
               case 1:
                  return;
               case 2:
                  this._5e44a5450a5bfb5b69bc2847.splice(_loc2_,-889426081 ^ 0x5E477688 ^ -511059481 ^ 0x7532C031);
                  _loc3_ = -384343078 ^ -404383315 ^ -2059873915 ^ -123244058;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function toString() : String
      {
         return _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ႋဠრ჋ၽჯၔႻ၄ႅႱၡჭႭჩჀႄჽၽხႤဩ၎ၞ႕ဈ႖ჄဒဖჾႦၜႌ၉Ⴍႏჶၧကွ႘းႊဳဣႠႛဧၳၫရဠဟဴၢჴ჉႔ႀဆၦႧჃ၏Ⴊ","၆ဿယၛၵၧၟၯႳဧჀၘၥိၬႉ") + this._fd157e5d85590cdb9f2a3030 + _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("措掦揈描挕掹揬挤捫捌揌捌握挫挝掦掕捋掵捹挕挈挮掤挘挴掞揢揳捝授揋捶捜揘换捧揜捷掂揿捔揖控捂挣","捫捀揕掀掓捳掏掑掣捒揙揩挶掺挪揥") + this._e426c3a512d3e0fbc4dc3f53.length + _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("Ⴃ၂႘၂ჩႴဂჭခတဵဈႰှဒჹၖკ႕ဣဢ၆၊ဣၯ၎ဠဝၳၤဗဆ၁ၲဒဂႿႄဳၜှဿဪလ႘ჵီႁჩဉ","ၸဿ႔၀႖ჰႫႝႷჲၣၚိႲႏႪ") + this._5e44a5450a5bfb5b69bc2847.length + _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("持挍揔揬挴捜揜揩挼捲挦掻","掏捷挧捗挒掭掘捏揪捅接捆挶捥挿挷");
      }
   }
}

