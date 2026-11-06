package com.ax3.fishao.locations.entries
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.adobe.crypto.MD5;
   import com.ax3.display._473832fc48e3c8aba3f6d2fe;
   import com.ax3.display.rod._b161a89a77152785050fe395;
   import com.ax3.events._02fbe4cbe9e83f1b8c711799;
   import com.ax3.events._720429110fd3cfc01812b5a0;
   import com.ax3.fishao.Config;
   import com.ax3.fishao._dfa25706e58a240c1e33e5c6;
   import com.ax3.fishao.control.managers._546478a0ebe6f447d8faeff7;
   import com.ax3.fishao.display.panels._9fd7a7cc8b0e1dff9d3b56e1;
   import com.ax3.fishao.entries._810c4ade948afb64e9c7ee25;
   import com.ax3.fishao.locations._01cf9a78594a0bb30b57b0c3;
   import com.ax3.fishao.locations._3e7dee0195ecd6b652b730f1;
   import com.ax3.fishao.locations.base._4039c287ddb4ef46ab65ab0e;
   import com.ax3.fishao.locations.base._bd60f9ad6ef4aaf28041ce8f;
   import com.ax3.fishao.locations.chars._2fcef105b08d78e8c46cbf27;
   import com.ax3.fishao.locations.chars._412bba20db41500babcd2a85;
   import com.ax3.fishao.locations.chars._600d447c132e71fe3abc23ea;
   import com.ax3.fishao.locations.chars._709a8761c08236d1b5935ace;
   import com.ax3.fishao.locations.npc.base._ba120ae720a391732e866217;
   import com.ax3.fishao.locations.objects.boat._40c40768738c862c74ddd128;
   import com.ax3.fishao.locations.objects.boat._d8a6f04331e45b3fc4efa7e8;
   import com.ax3.fishao.model._01a2aa99fe260235a2a4e8a7;
   import com.ax3.fishao.model._91aad973ddd3030366bf3e1f;
   import com.ax3.fishao.model.vo._cff30366d510ea862540bfef;
   import com.ax3.fishao.tutorial._9b5482b3978b7abe1547abb8;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs._8256b1324608dc993f5220be;
   import com.ax3.fishao.view.dialogs.boosters._a42e98efb52b535d1d5ff699;
   import com.ax3.fishao.view.dialogs.boosters.base._862e2792496d13d3dff5b3ca;
   import com.ax3.fishao.view.dialogs.boosters.power._c0f6f454d344211cfc065be1;
   import com.ax3.fishao.view.dialogs.fishes._cd108dc25fb4e5ceaadd7a9d;
   import com.ax3.fishao.view.dialogs.tournaments._9adbacee9e79da53f4cf55bb;
   import com.ax3.fishao.view.dialogs.tournaments.models._2a31502166ae419b5332a782;
   import com.ax3.fishao.view.panels._6224ee65e8bcd94fd313831b;
   import com.ax3.fishao.watercraft._a00a2200c99ccb365fe1b90e;
   import com.ax3.jss.requests.server._5e1bab759fcaea6d1f84faa7;
   import com.ax3.utils._8dbac3cb2bae16fc4e0e0f27;
   import com.ax3.utils._d44ecfcb81ec9d39734ee3c3;
   import com.ax3.utils.removeFromParent;
   import com.junkbyte.console.Cc;
   import flash.display.BlendMode;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.DataEvent;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.geom.Point;
   import flash.utils.clearTimeout;
   import flash.utils.getTimer;
   import flash.utils.setTimeout;
   import protocol.sr.ErrorResp;
   import protocol.sr.FishingResp;
   
   public class _c9513c48978d5034cc9ff2f4 extends _08c120b706560fce9302bcab
   {
      
      public static const MOVE_END:String = _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捜捐揯揨掙捛挆挽描揩挕挃揊挾掼挆掮挖挢捼捇掗挐描","捹掯揣挔挻挈揽揥捖捁捿掖捃挳捼掼");
      
      public static const THROW_IN:String = _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("Ⴚჯႁု႓ႋჴဤႃဎႦ႗ძၾჍၗႥ჊ၑ၈ဿႺႾဓ႘ႈဲႡညဓီ႕","ၒဒဲგ၁ႛဏ၌ჩჀဥჼ႗ႎရၙ");
      
      private static const _33071d11a5a43a87084914ee:int = 0x4E15D796 ^ 0x068B6511 ^ 0x6C68E4C4 ^ 0x24F65616;
      
      private const _0a853948c6b410690e302092:_473832fc48e3c8aba3f6d2fe = new _473832fc48e3c8aba3f6d2fe(_433075a5d49397e40222eeae._9417d5d828724209ec5cfbb1("Ⴈၦဌၝငည႔Ⴣၘၓჟო၊ၩၦဧံၽႨး჻၂ძჸ","ႚჅგဒႽထၟ၀ჴၸႳႏთၰჂფ"),0x7143B4A4 ^ -502956381 ^ 0x6C0CEA06 ^ -5976337,0x2B5B9BB9 ^ 0x2878913B ^ -1207051696 ^ -1154559789);
      
      private const _7b19599c034e3fbbeb39835f:Event = new Event(THROW_IN);
      
      private const _7cd4f7f8823bde1010018859:Event = new Event(MOVE_END);
      
      private var _4ebc446ae69c03b5546f722d:int;
      
      private var _a83f0c923afa83310e73797f:int;
      
      public var circleSprite:Sprite = new Sprite();
      
      protected var _bitePanel:_9fd7a7cc8b0e1dff9d3b56e1;
      
      public var bitePanelContainer:DisplayObjectContainer;
      
      private var _1669b8b2532e676f8e33dabf:int;
      
      private var _dc4bf63c671d0c9f7621700c:int;
      
      private var _a7613c572f02689c72eb9186:int;
      
      private var _ab86863d35525fe39378e199:_4039c287ddb4ef46ab65ab0e;
      
      private var _41ba227eba774c9779a1e62e:int = 0;
      
      private var _6780d51b231cce7a8da5b54d:String = "";
      
      private var _5ea6b6aedf82e0fa9121d4f5:int = 0;
      
      private var _07b6e3533b843c13c3022f48:int = 0;
      
      private var _048be4afcc3f2bbbae21309c:_6224ee65e8bcd94fd313831b = new _6224ee65e8bcd94fd313831b();
      
      private var _01e9e0088fa87d77879c7bc7:Boolean = false;
      
      private const _3549b774be0396e1841a0827:Array = [_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劢刏勥劰刄剽別勿删删剹剘劳勍劖剱刟劣労剹刉创剑劚劒刯劦剨剽勊劵别","列剌刺利劝勓勪劘剚努劥刷劉删勐创"),_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揬捑捗挱挱掍掆揌採挕掿挤揶掳挽捏挰指揸挳掍挜挣捰揄捈捐掱捋捺挧挋","揫掜捷揍掤揹挶揝揨捔挫挻挠捔捸挏"),_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ზလႤქဆၭႣგ႙ၹဧ႟ჱၡ႞ာჳ჏၃ღမင႐ႊႹჶႰၙ့ဏჲၟ","Ⴊ႔჌ဖႴာჅဈ၄၇ე჊ဒ႙მ႐")];
      
      protected var _bitePanelShowTimeoutId:int = -1;
      
      private var _90d0791fced4ac9d5f61ed13:int;
      
      private var _00e3955309567b508776be16:_a42e98efb52b535d1d5ff699;
      
      private var _5e7491f47554bc07286baa6c:_9adbacee9e79da53f4cf55bb;
      
      private var _ba0666bb46e354a8df322da8:_cd108dc25fb4e5ceaadd7a9d;
      
      private var _5d7353d83a6c247011d838d8:_ba120ae720a391732e866217 = null;
      
      public var state:_2fcef105b08d78e8c46cbf27 = _2fcef105b08d78e8c46cbf27.NORMAL;
      
      public function _c9513c48978d5034cc9ff2f4(param1:_810c4ade948afb64e9c7ee25, param2:_4039c287ddb4ef46ab65ab0e, param3:_3e7dee0195ecd6b652b730f1)
      {
         this._ab86863d35525fe39378e199 = param2;
         this.circleSprite.blendMode = BlendMode.OVERLAY;
         this.circleSprite.alpha = _39d7d82359bf8046fe8ef6c4._ed4a735c5a6981f99dda5b73("捦揖捣挓捈捍採揚揙挳採掩捲挿挨揕揶挿掱捕挿捞捺掔","排掛掳挠揪挌捣捱掿掛揥捨挄掐掍掭");
         this._610f06586492b058cadfdf70();
         super(param1,param3);
         _02fbe4cbe9e83f1b8c711799.addEventListener(this,app.user,_01a2aa99fe260235a2a4e8a7.BAIT_TYPE_CHANGE,this._f0fcffa52c744336807c94d9);
         _02fbe4cbe9e83f1b8c711799.addEventListener(this,GameSwf.settings,_546478a0ebe6f447d8faeff7.FLOAT_CHANGE,this._0bb2b3db9297877680967081);
         this.init();
      }
      
      override protected function get defaultRopeLineStyle() : _473832fc48e3c8aba3f6d2fe
      {
         return this._0a853948c6b410690e302092;
      }
      
      protected function get canFishing() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:_9b5482b3978b7abe1547abb8 = GameSwf.instance.managerTutorial.tutorialInProgress;
         if(_loc2_ != null)
         {
            _loc1_ = _loc2_.canFishing;
         }
         return _loc1_ && !this._93db766860106b900c89ac3a() && (!onRaft || GameSwf.currentLocationDialog.raft != null && GameSwf.currentLocationDialog.raft.state == _a00a2200c99ccb365fe1b90e.ON_THE_MIDDLE) && this.state == _2fcef105b08d78e8c46cbf27.NORMAL;
      }
      
      private function get _3b95d8509d3f24d13825bb5b() : String
      {
         return MD5.hash(this._1669b8b2532e676f8e33dabf.toString() + this._dc4bf63c671d0c9f7621700c.toString() + this._90d0791fced4ac9d5f61ed13.toString());
      }
      
      private function get _825b288dbbb61306777c1cff() : Number
      {
         var _loc1_:Number = -166713034 ^ 0x600B0F58 ^ 0x66523C4B ^ -263644636;
         var _loc2_:_862e2792496d13d3dff5b3ca = this._00e3955309567b508776be16._211a004fe426db88fb50af2c(_01cf9a78594a0bb30b57b0c3.EBT_POWER_BOOSTER);
         if(_loc2_ != null)
         {
            _loc1_ = (_loc2_ as _c0f6f454d344211cfc065be1).powerMultiply;
         }
         return _loc1_;
      }
      
      public function onMouseClick(param1:Number, param2:Number) : void
      {
         app.performanceManager.sleepMode = false;
         if(!app.user.canMove || this._93db766860106b900c89ac3a() || this.inBiteProcess)
         {
            return;
         }
         this._139c8b808f423ad8ad174e74(param1,param2);
      }
      
      protected function _700de4bb8697d0fa859ddab2(param1:Event) : void
      {
         app.user.inFishingProcess.value = false;
         this._3eb451f129710259c0ac1fdb();
         _dfa25706e58a240c1e33e5c6.locationExtension._26c692ee41e73769a6113192(false,this._896840766c14575d2892b58a(),this._3b95d8509d3f24d13825bb5b);
         var _loc2_:Class = this._bitePanel.dialogToShowClass;
         var _loc3_:_8256b1324608dc993f5220be = new _loc2_();
         _loc3_.show();
      }
      
      protected function _9233e7c18b76169f8f59d3b2(param1:int, param2:int, param3:_cff30366d510ea862540bfef, param4:Boolean, param5:int) : void
      {
         this._90d0791fced4ac9d5f61ed13 = param5;
         this._1669b8b2532e676f8e33dabf = param1;
         this._dc4bf63c671d0c9f7621700c = param2;
         this._a7613c572f02689c72eb9186 = -639317526 ^ 0x40B96775 ^ 0x4AA74EB3 ^ -738533338;
         bite();
         clearTimeout(this._bitePanelShowTimeoutId);
         var _loc6_:Number = this._ba0666bb46e354a8df322da8._6a559f143dd5200adad296c3(param1);
         this._bitePanelShowTimeoutId = -1796520727 ^ -2131565195 ^ 0x165BB84F ^ -37886420;
         this._bitePanelShowTimeoutId = setTimeout(this._f5ffe8da6f85956f2b9f21fe,-572087677 ^ 0x0653CC94 ^ 0x3956AC66 ^ -488388927,param2,param3.rating,param4,_loc6_);
      }
      
      private function _12f96602d42f0901f363cc9c(param1:Event) : void
      {
         this._3eb451f129710259c0ac1fdb();
         app.user.inFishingProcess.value = false;
      }
      
      private function _055bd774e87b5f9b70be34f4(param1:Event) : void
      {
         app.user.inFishingProcess.value = false;
         this._3eb451f129710259c0ac1fdb();
         _dfa25706e58a240c1e33e5c6.locationExtension._26c692ee41e73769a6113192(true,this._896840766c14575d2892b58a(),this._3b95d8509d3f24d13825bb5b);
      }
      
      private function init() : void
      {
         this._00e3955309567b508776be16 = GameSwf.instance.managerBoosters;
         this._5e7491f47554bc07286baa6c = GameSwf.instance.managerTournaments;
         this._ba0666bb46e354a8df322da8 = GameSwf.instance.managerFishes;
      }
      
      protected function _610f06586492b058cadfdf70() : void
      {
         this._bitePanel = new _9fd7a7cc8b0e1dff9d3b56e1();
      }
      
      override public function _89619ce3363ecc3ce96c8aba() : void
      {
         var closeToTheLake:Boolean = isCloseToTheLake;
         var isUserCanFishing:Boolean = this.canFishing;
         var isRegularPlayer:Boolean = !(this is _c9513c48978d5034cc9ff2f4) && !(this is _ba120ae720a391732e866217);
         if(closeToTheLake && isUserCanFishing && isMovingToRaft == false && (boat == null || isRegularPlayer || this is _c9513c48978d5034cc9ff2f4 && app.user.charState.value == _2fcef105b08d78e8c46cbf27.NORMAL))
         {
            clearTimeout(_showRodTimerId);
            _showRodTimerId = setTimeout(function():void
            {
               isNeedShowRod = false;
               _1ac276fa38c42f5b354104cd();
               _b5f50eb5f03242465d43613f(_lastX,_lastY);
            },-263311058 ^ -1896497696 ^ 0x18054499 ^ 0x66BEC9C7);
         }
         else if(isRodVisible)
         {
            this._ea52ddaca1a080cc2518c8da();
         }
      }
      
      private function _f0fcffa52c744336807c94d9(param1:Event) : void
      {
         this._07b6e3533b843c13c3022f48 = 0x6A9C3ACE ^ 0x68D2412F ^ -177893304 ^ -148116567;
      }
      
      private function _9bdf39d69833523a0f7b693a(param1:_720429110fd3cfc01812b5a0) : void
      {
         var _loc2_:int = 0x66344C63 ^ -589214869 ^ 0x0A40F2F7 ^ -2048220739;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x0BA273E6 ^ 0x6A55777A ^ 0x5B0A4872 ^ 0x0F8218AC))
            {
               case 0:
                  this.state = app.user.charState.value;
                  if(app.user.charState.value == _2fcef105b08d78e8c46cbf27.NORMAL)
                  {
                     _loc2_ = -948739164 ^ -138438669 ^ 0x149584F8 ^ 0x112624E8;
                  }
                  else
                  {
                     _loc2_ = 0x35D54DAF ^ 0x2939FBC9 ^ -453862477 ^ -849249900;
                  }
                  break;
               case 1:
                  if(app.user.inFishingProcess.value)
                  {
                     _loc2_ = -415739149 ^ -541228668 ^ -338797262 ^ -432743935;
                  }
                  else
                  {
                     _loc2_ = 0x198FFBCF ^ -61840779 ^ -1831822718 ^ 0x42705778;
                  }
                  break;
               case 2:
                  moveStrategy = _boatMoveStrategy;
                  this._ea52ddaca1a080cc2518c8da();
                  this._6227fd5da1ce67d0b36a4f90();
                  _loc2_ = 0x316AA7BC ^ 0x72B2936E ^ 0x654F8072 ^ 0x13E8E0E6;
                  break;
               case 3:
                  if(app.user.charState.value == _2fcef105b08d78e8c46cbf27.SAIL_BY_BOAT)
                  {
                     _loc2_ = 0x62CF61E6 ^ -705160766 ^ 0x78747B08 ^ -96708753;
                  }
                  else
                  {
                     _loc2_ = -209981677 ^ -1829327549 ^ 0x045BB781 ^ 0x50A9A197;
                  }
                  break;
               case 4:
                  return;
               case 5:
                  this._11af0ae1dc88e5244bdef63d();
                  _boatMoveStrategy.stop();
                  boat.graphic._9eb7d763103333597ca3343d(_d8a6f04331e45b3fc4efa7e8.NORMAL);
                  _loc2_ = -651409486 ^ -1270497444 ^ -1380398881 ^ -173120393;
                  break;
               case 6:
                  _6cafef5908dd0ab8c7a3e877();
                  _loc2_ = 0x233C2294 ^ -1438992723 ^ -132639823 ^ 0x4461D3C8;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      protected function _139c8b808f423ad8ad174e74(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = false;
         var _loc5_:Point = null;
         var _loc6_:String = null;
         var _loc7_:Point = null;
         var _loc8_:Point = new Point(param1,param2);
         if(onRaft && !GameSwf.currentLocationDialog.raftRectangle.contains(_loc8_.x - raft.offsetX,_loc8_.y - raft.offsetY))
         {
            if(!moveStrategy.isLakeHit(_loc8_))
            {
               return;
            }
         }
         var _loc9_:Point = _loc8_.clone();
         if(boat != null)
         {
            _loc8_ = boat._267630a818c67641d048fa59(_loc8_);
         }
         if(raft != null)
         {
            _loc8_.x -= raft.offsetX;
            _loc8_.y -= raft.offsetY;
         }
         if(moveStrategy is _600d447c132e71fe3abc23ea)
         {
            this._b1f7457b16931a1882a5f4ed(_loc9_.x,_loc9_.y);
         }
         else
         {
            if(_moveStrategy is _412bba20db41500babcd2a85)
            {
               _pathMoveStrategy.reset();
               _moveStrategy = _pathMoveStrategy;
            }
            if(moveStrategy._4670bff38705895c648e18bd(_loc9_))
            {
               _loc3_ = moveStrategy.isLakeHit(_loc9_);
               _loc4_ = this._ab86863d35525fe39378e199.dialog._7c0f8e1e99739d07d394663c(_loc9_.x,_loc9_.y);
               if(_loc3_ && this.circleSprite.visible && !_loc4_ && isRodVisible)
               {
                  if(_d9fc460712ce3ee73afa1e5e() == _b161a89a77152785050fe395.READY)
                  {
                     _loc5_ = new Point(graphic.x,graphic.y);
                     if(_d44ecfcb81ec9d39734ee3c3._49df0674abf66a3fc5c8350d(_loc5_,_currentRodRadiusPx,_loc9_))
                     {
                        if(_rod.visible == false)
                        {
                           isNeedShowRod = true;
                        }
                        if(app.user.energy.value == (0x458ACCC3 ^ 0x558A1F14 ^ -1154701550 ^ -1423149883) && this._ab86863d35525fe39378e199.isTournament == false)
                        {
                           GameSwf.instance._825ea3c2451d64893c2367e0();
                        }
                        else
                        {
                           this._912f511bdd1d607aa06afe6c(_loc9_.x,_loc9_.y,-287628983 ^ -1550310472 ^ -1743773027 ^ -715972499,false);
                           _loc6_ = this._127580a0c86a2b65e0eb468f(_loc9_);
                           if(_loc6_ != this._6780d51b231cce7a8da5b54d)
                           {
                              this._6780d51b231cce7a8da5b54d = _loc6_;
                              this._5ea6b6aedf82e0fa9121d4f5 = 0x7D8DAF8D ^ -2100757598 ^ -530591938 ^ 0x1F1A9B11;
                           }
                           this._b5b7515658130ef767746f37(_loc6_,_loc9_.x,_loc9_.y);
                        }
                     }
                     else
                     {
                        _loc7_ = this._7433e0ea5a1e103c441f0ed3(boat,raft,_loc8_.x,_loc8_.y);
                        if(_loc7_ != null)
                        {
                           this._237cc8893fefa0bfe0552bbb(_loc7_.x,_loc7_.y);
                        }
                     }
                  }
                  else if((_d9fc460712ce3ee73afa1e5e() == _b161a89a77152785050fe395.FISHING || _d9fc460712ce3ee73afa1e5e() == _b161a89a77152785050fe395.THROW_IN_ANIMATION) && this.inBiteProcess == false && _rod.inThrowInAnimationProcess == false)
                  {
                     this._9bb0902c5747c416f00d19ae();
                  }
                  else if(_d9fc460712ce3ee73afa1e5e() == _b161a89a77152785050fe395.BITE && this.inBiteProcess == false)
                  {
                     app.user.inFishingProcess.value = false;
                     _40b57941344db42954ffb9f1();
                  }
               }
               else
               {
                  this._d0941621d17e4313d493d006(this._7433e0ea5a1e103c441f0ed3(boat,raft,_loc8_.x,_loc8_.y));
               }
            }
            else
            {
               this._d0941621d17e4313d493d006(_loc8_);
            }
         }
      }
      
      private function _7433e0ea5a1e103c441f0ed3(param1:_40c40768738c862c74ddd128, param2:_a00a2200c99ccb365fe1b90e, param3:Number, param4:Number) : Point
      {
         return param1 == null && param2 == null ? _42da5931475ef60d3da8d4a2(param3,param4) : null;
      }
      
      private function _d0941621d17e4313d493d006(param1:Point) : void
      {
         var _loc2_:int = -1661818937 ^ -779611300 ^ 0x42605763 ^ 0x277F9E87;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x74FD5BA4 ^ 0x4DFE7ABE ^ -1178946698 ^ -1461915887))
            {
               case 0:
                  this._237cc8893fefa0bfe0552bbb(param1.x,param1.y);
                  _loc2_ = -1815965081 ^ -217497456 ^ -1750321381 ^ -553477995;
                  break;
               case 1:
                  if(raft != null)
                  {
                     _loc2_ = 0x42FCB8DF ^ 0x59FCAB9E ^ -866340062 ^ -12985059;
                  }
                  else
                  {
                     _loc2_ = 0x15C81872 ^ 0x4F315BA8 ^ -605200363 ^ -1452187982;
                  }
                  break;
               case 2:
                  if(param1 != null)
                  {
                     _loc2_ = -1849576797 ^ -158852574 ^ 0x46092F10 ^ 0x0925FAE9;
                  }
                  else
                  {
                     _loc2_ = -1942389535 ^ -146102531 ^ 0x2791239A ^ 0x748784FF;
                  }
                  break;
               case 3:
                  this._237cc8893fefa0bfe0552bbb(param1.x,param1.y);
                  _loc2_ = -2037233533 ^ -719579451 ^ -527507252 ^ -1687829517;
                  break;
               case 4:
                  return;
               case 5:
                  if(boat == null)
                  {
                     _loc2_ = 0x03F8DFDE ^ -1982203431 ^ 0x39F5474E ^ -1682891723;
                  }
                  else
                  {
                     _loc2_ = 0x4B995644 ^ 0x44D8E558 ^ 0x2DF1D7AD ^ 0x0AD519C8;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function _b5660deb0c277f3554a43b66() : Boolean
      {
         return _rod.state == _b161a89a77152785050fe395.READY && this.inBiteProcess == false && this._93db766860106b900c89ac3a() == false && Boolean(app.user.canMove) && this._01e9e0088fa87d77879c7bc7 == false;
      }
      
      public function _127580a0c86a2b65e0eb468f(param1:Point) : String
      {
         var _loc2_:DisplayObject = null;
         _lakeCells.visible = true;
         _lakeCells.x = 0x6CD9299C ^ -566699392 ^ 0x27C2762E ^ -1792834254;
         _lakeCells.y = -1587403791 ^ 0x5160D99E ^ -288027832 ^ 0x1ED7F127;
         var _loc3_:Array = MovieClip(_lakeCells).getObjectsUnderPoint(new Point(param1.x,param1.y));
         if(_loc3_.length > (-1782211107 ^ 0x74655E0F ^ 0x65FB44AF ^ -2074376323))
         {
            _loc2_ = _loc3_.pop();
            while(_loc2_.parent.parent != _lakeCells)
            {
               _loc2_ = _loc3_.pop();
            }
            _lakeCells.visible = false;
            return _loc2_.parent.name;
         }
         return "";
      }
      
      override public function _b5f50eb5f03242465d43613f(param1:int, param2:int) : void
      {
         super._b5f50eb5f03242465d43613f(param1,param2);
         var _loc3_:Boolean = moveStrategy.isLakeHit(new Point(param1,param2));
         var _loc4_:Boolean = this._f7dcc9f639288c18c3c4e83c(param1,param2);
         var _loc5_:Boolean = this._ab86863d35525fe39378e199.dialog._7c0f8e1e99739d07d394663c(param1,param2);
         if(isRodVisible && (!onRaft || GameSwf.currentLocationDialog.raft != null && GameSwf.currentLocationDialog.raft.state == _a00a2200c99ccb365fe1b90e.ON_THE_MIDDLE))
         {
            if(!_loc5_ && _loc3_ && _loc4_)
            {
               this.circleSprite.visible = true;
               this.circleSprite.cacheAsBitmap = false;
               this.circleSprite.graphics.clear();
               this.circleSprite.graphics.lineStyle(-444043533 ^ -411252172 ^ 0x4F980220 ^ 0x4D6CA6E4,0x56259FC3 ^ 0x2212AC42 ^ -627102124 ^ -1369972182);
               this.circleSprite.graphics.beginFill(-1154394029 ^ -1197724623 ^ 0x3B61F706 ^ 0x38337C9B,_95da7f1147c669197db81295._6371735dc9287bd2d9618c1e("勔劷劑勁勠列剬勂劌分劰勵剰労劣刼勷劌划勁勆剣勬勡","刕勽剟刬剣勁刐创効分切剷勎劑勌剧"));
               this.circleSprite.graphics.drawCircle(graphic.x,graphic.y,_currentRodRadiusPx);
               this.circleSprite.graphics.endFill();
               this.circleSprite.cacheAsBitmap = true;
            }
            else
            {
               this._6227fd5da1ce67d0b36a4f90();
            }
         }
      }
      
      private function _b5b7515658130ef767746f37(param1:String, param2:Number, param3:Number) : void
      {
         app.user.inFishingProcess.value = true;
         var _loc4_:Array = param1.split(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劍刃劯勢勖剷劌劓劂剱","勃剬勣刬勡剛刪剿勔勾勱別勪剎刿刄"));
         _dfa25706e58a240c1e33e5c6.fishingExtension._bb388056cd31eb71678cb6d4(int(_loc4_[0x1520D2E8 ^ -1372185088 ^ 0x476619B3 ^ -59714214]),int(_loc4_[-1684954777 ^ -53565054 ^ -304855348 ^ -1970581973]) - 1,param2,param3,this._ec95e3b14f4f5fffa62184bf);
      }
      
      public function _f5ffe8da6f85956f2b9f21fe(param1:int = 10, param2:int = 1, param3:Boolean = false, param4:Number = 1) : void
      {
         var _loc5_:int = -1715813294 ^ 0x11C82241 ^ -245363917 ^ 0x42E55305;
         loop0:
         while(true)
         {
            switch(_loc5_ ^ (-1466904050 ^ -968082993 ^ 0x42FFF633 ^ 0x17D4A3D6))
            {
               case 0:
                  this._321e6c9a4122084b619ea5ab(param1,param2,param3,param4);
                  return;
               case 1:
                  if(app.user.inFishingProcess.value == false)
                  {
                     _loc5_ = -512614553 ^ -585295019 ^ -965672461 ^ -1041646617;
                  }
                  else
                  {
                     _loc5_ = 0x3275568B ^ 0x7DAAF3DC ^ -776924393 ^ -1516697500;
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
      
      protected function _321e6c9a4122084b619ea5ab(param1:int, param2:int, param3:Boolean, param4:Number) : void
      {
         this._bitePanelShowTimeoutId = 0x6C08878D ^ -1819329280 ^ 0x7F20718A ^ 0x7F5834F8;
         _02fbe4cbe9e83f1b8c711799.addEventListener(this,this._bitePanel,Event.COMPLETE,this._055bd774e87b5f9b70be34f4);
         _02fbe4cbe9e83f1b8c711799.addEventListener(this,this._bitePanel,Event.CANCEL,this._700de4bb8697d0fa859ddab2);
         _02fbe4cbe9e83f1b8c711799.addEventListener(this,this._bitePanel,Event.CLOSE,this._12f96602d42f0901f363cc9c);
         this._bitePanel.minigameDurationMultiplier = param4;
         this._bitePanel.boosterMultiplier = this._825b288dbbb61306777c1cff;
         this._bitePanel.fishingLineLength = app.user.fishingLine.lineLength;
         this._bitePanel.rodSizeCm = _rodQualityPower;
         this._bitePanel.fishSizeCm = param1;
         this._bitePanel.rarity = param2;
         this._bitePanel.fishIsShiny = param3;
         var _loc5_:Point = graphic.parent.localToGlobal(new Point(graphic.x,graphic.y));
         this._bitePanel.y = _loc5_.y;
         this._bitePanel.x = _loc5_.x;
         this.bitePanelContainer.addChild(this._bitePanel);
         var _loc6_:Point = this._bitePanel.parent.localToGlobal(new Point(this._bitePanel.x,this._bitePanel.y));
         if(_loc6_.x + this._bitePanel.width > Config.SCREEN_WIDTH - _9fd7a7cc8b0e1dff9d3b56e1.RIGHT_PADDING)
         {
            this._bitePanel.x -= _loc6_.x + this._bitePanel.width - (Config.SCREEN_WIDTH - _9fd7a7cc8b0e1dff9d3b56e1.RIGHT_PADDING);
         }
         else if(_loc6_.x < _9fd7a7cc8b0e1dff9d3b56e1.RIGHT_PADDING)
         {
            this._bitePanel.x -= _loc6_.x - _9fd7a7cc8b0e1dff9d3b56e1.RIGHT_PADDING;
         }
         if(_loc6_.y + this._bitePanel.height > Config.SCREEN_HEIGHT - _9fd7a7cc8b0e1dff9d3b56e1.BOTTOM_PADDING)
         {
            this._bitePanel.y -= _loc6_.y + this._bitePanel.height - (Config.SCREEN_HEIGHT - _9fd7a7cc8b0e1dff9d3b56e1.BOTTOM_PADDING);
         }
         else if(_loc6_.y < _9fd7a7cc8b0e1dff9d3b56e1.BOTTOM_PADDING)
         {
            this._bitePanel.y -= _loc6_.y - _9fd7a7cc8b0e1dff9d3b56e1.BOTTOM_PADDING;
         }
         GameSwf.currentLocationDialog.gui.mainMenu._b45fcd424bffdd5c59051c3f();
         this._bitePanel.start();
      }
      
      private function _ec95e3b14f4f5fffa62184bf(param1:_5e1bab759fcaea6d1f84faa7) : void
      {
         var _loc2_:FishingResp = null;
         var _loc3_:int = 0x5E7D23FB ^ 0x2F50E122 ^ 0x276681BD ^ 0x564B4364;
         var _loc4_:int = -708498616 ^ 0x5456A833 ^ -1315038006 ^ 0x300D9FB1;
         var _loc5_:Boolean = false;
         var _loc6_:int = -952629598 ^ -869355117 ^ 0x7393C760 ^ 0x78857051;
         var _loc7_:_cff30366d510ea862540bfef = null;
         if(destroyed)
         {
            return;
         }
         if(param1 is FishingResp)
         {
            if(_aa534c45c727463a0794bb69())
            {
               _loc2_ = param1 as FishingResp;
               _loc3_ = _loc2_.fishLength;
               _loc4_ = _loc2_.fishId;
               _loc5_ = _loc2_.isShiny;
               _loc6_ = _loc2_.timestamp;
               _loc7_ = _cff30366d510ea862540bfef(app.fishDict.get(_loc4_));
               if(_loc4_ > (0x4157B01A ^ 0x63048FA4 ^ 0x5A16C034 ^ -2017853323) && _loc7_ != null)
               {
                  this._9233e7c18b76169f8f59d3b2(_loc4_,_loc3_,_loc7_,_loc5_,_loc6_);
               }
               else
               {
                  app.user.inFishingProcess.value = false;
                  this.reelIn();
                  this._2d97590e502b3f263db52bf0();
               }
            }
         }
         else if(param1 is ErrorResp && (param1 as ErrorResp).descr == _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揑掻挟捻揲挙挤挻挄掽捥挩捌挛掃捗","捼掻掊揌捋捇捀揫挐掦揈掳捴揲挓挘"))
         {
            _6cafef5908dd0ab8c7a3e877(false,false);
         }
      }
      
      private function _2d97590e502b3f263db52bf0() : void
      {
         var _loc1_:DisplayObject = null;
         var _loc2_:Point = null;
         if(app.user.level >= (0x1946A4C5 ^ -1876192397 ^ -2039629814 ^ 0x0F008FA8))
         {
            return;
         }
         ++this._41ba227eba774c9779a1e62e;
         ++this._5ea6b6aedf82e0fa9121d4f5;
         ++this._07b6e3533b843c13c3022f48;
         if(this._5ea6b6aedf82e0fa9121d4f5 >= (-2056929464 ^ 0x39142FB0 ^ -790888715 ^ 0x6CAA6E08))
         {
            this._5ea6b6aedf82e0fa9121d4f5 = 0x4F7BAAD1 ^ -1275416560 ^ 0x0EFD0EA2 ^ -226749341;
            this._048be4afcc3f2bbbae21309c.text = _c2ad9d37d7be0097d6d2e977.get(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捶挙揺捭掱掽揹揟揧挿挴掏捆挍揫掍揶掸揥挘捱捫捲掻捴挠揀捵描掆捲揙插揿捶掩掿挢揬捫掙挴捬換","挰掭掇捽掩掎挀捊揕揆捛揠捊掵掓揮"));
         }
         else if(this._07b6e3533b843c13c3022f48 >= (0x16B06F66 ^ 0x495A012A ^ 0x6FCB4F36 ^ 0x3021217F))
         {
            this._07b6e3533b843c13c3022f48 = -1473202890 ^ -1356577999 ^ 0x1E15A6ED ^ 0x190150EA;
            this._048be4afcc3f2bbbae21309c.text = _c2ad9d37d7be0097d6d2e977.get(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("刷剩勲刃剹勿刜剙剻刡勫勋刦勚勴勇劰劋劅刕劝劍務利剘刐利勔労劧勃刎副勗刉勼加勹劁剁劍剝助势剆剂勏删勅創劧劗劚勰剧劶删刍","劉刑剎勹剄劦劢剘剂勯剻刂勸別劤刴"));
         }
         else if(this._41ba227eba774c9779a1e62e >= (0x1265F946 ^ 0x1DF27D4B ^ 0x6BC820FF ^ 0x645FA4F7))
         {
            this._41ba227eba774c9779a1e62e = -662053769 ^ -344640054 ^ -267122370 ^ -1008148349;
            this._048be4afcc3f2bbbae21309c.text = _c2ad9d37d7be0097d6d2e977.get(_8dbac3cb2bae16fc4e0e0f27._44739042c814649b8594b259(this._3549b774be0396e1841a0827));
         }
         if(this._6780d51b231cce7a8da5b54d != "")
         {
            _loc1_ = MovieClip(_lakeCells).getChildByName(this._6780d51b231cce7a8da5b54d);
            this._048be4afcc3f2bbbae21309c.x = _loc1_.x + _loc1_.width - this._048be4afcc3f2bbbae21309c.width / (0x117B3077 ^ -1310529019 ^ -1250355429 ^ 0x15E0CD6B);
            this._048be4afcc3f2bbbae21309c.y = _loc1_.y + _loc1_.height - this._048be4afcc3f2bbbae21309c.height / (-1883937029 ^ 0x50288C21 ^ -1367655409 ^ 0x71E6D6D7);
            _bd60f9ad6ef4aaf28041ce8f.charMessagesLayer.addChild(this._048be4afcc3f2bbbae21309c);
            _loc2_ = this._048be4afcc3f2bbbae21309c.parent.localToGlobal(new Point(this._048be4afcc3f2bbbae21309c.x,this._048be4afcc3f2bbbae21309c.y));
            if(_loc2_.x + this._048be4afcc3f2bbbae21309c.width > Config.SCREEN_WIDTH - _6224ee65e8bcd94fd313831b.SCREEN_PADDING)
            {
               this._048be4afcc3f2bbbae21309c.x -= _loc2_.x + this._048be4afcc3f2bbbae21309c.width - (Config.SCREEN_WIDTH - _6224ee65e8bcd94fd313831b.SCREEN_PADDING);
            }
            else if(_loc2_.x < _9fd7a7cc8b0e1dff9d3b56e1.RIGHT_PADDING)
            {
               this._048be4afcc3f2bbbae21309c.x -= _loc2_.x - _9fd7a7cc8b0e1dff9d3b56e1.RIGHT_PADDING;
            }
            if(_loc2_.y + this._048be4afcc3f2bbbae21309c.height > Config.SCREEN_HEIGHT - _6224ee65e8bcd94fd313831b.SCREEN_PADDING)
            {
               this._048be4afcc3f2bbbae21309c.y -= _loc2_.y + this._048be4afcc3f2bbbae21309c.height - (Config.SCREEN_HEIGHT - _6224ee65e8bcd94fd313831b.SCREEN_PADDING);
            }
            else if(_loc2_.y < _6224ee65e8bcd94fd313831b.SCREEN_PADDING)
            {
               this._048be4afcc3f2bbbae21309c.y -= _loc2_.y - _6224ee65e8bcd94fd313831b.SCREEN_PADDING;
            }
         }
      }
      
      private function _896840766c14575d2892b58a() : String
      {
         var _loc1_:String = "";
         var _loc2_:_2a31502166ae419b5332a782 = this._5e7491f47554bc07286baa6c.tournamentCurrent;
         if(_loc2_ != null)
         {
            _loc1_ = _loc2_.id;
         }
         return _loc1_;
      }
      
      private function _3eb451f129710259c0ac1fdb() : void
      {
         var _loc1_:int = -348655747 ^ -197462811 ^ 0x390A9677 ^ 0x30053C2B;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (0x49EDBF00 ^ 0x7D3C40EF ^ -1089885371 ^ -1646598804))
            {
               case 0:
                  this._bitePanel.parent.removeChild(this._bitePanel);
                  _loc1_ = -1046060939 ^ 0x07C4F2D5 ^ 0x3CE00D9A ^ -327143683;
                  break;
               case 1:
                  this.reelIn();
                  return;
               case 2:
                  _02fbe4cbe9e83f1b8c711799.removeEventListener(this,this._bitePanel,Event.COMPLETE,this._055bd774e87b5f9b70be34f4);
                  _02fbe4cbe9e83f1b8c711799.removeEventListener(this,this._bitePanel,Event.CANCEL,this._700de4bb8697d0fa859ddab2);
                  _02fbe4cbe9e83f1b8c711799.removeEventListener(this,this._bitePanel,Event.CLOSE,this._12f96602d42f0901f363cc9c);
                  if(this._bitePanel.parent != null)
                  {
                     _loc1_ = 0x29D5EB8E ^ 0x05F12336 ^ 0x3C28DD63 ^ 0x060EA41D;
                  }
                  else
                  {
                     _loc1_ = 0x447E75C8 ^ 0x28541FFB ^ -606073401 ^ -1580673485;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function _237cc8893fefa0bfe0552bbb(param1:int, param2:int) : void
      {
         if(!app.user.canMove)
         {
            return;
         }
         var _loc3_:_b161a89a77152785050fe395 = _d9fc460712ce3ee73afa1e5e();
         if(_loc3_ == _b161a89a77152785050fe395.READY)
         {
            this._6227fd5da1ce67d0b36a4f90();
            this._b1f7457b16931a1882a5f4ed(param1,param2);
            super._b20f70f036a8ce7b1ebc2911(param1,param2);
         }
      }
      
      public function _6227fd5da1ce67d0b36a4f90() : void
      {
         var _loc1_:int = -416696462 ^ 0x2BD0E20E ^ 0x0A60BDC8 ^ 0x1421E36E;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (0x2B10BF04 ^ 0x7C892DC8 ^ 0x3BB580CB ^ -1097590305))
            {
               case 0:
                  return;
               case 1:
                  this.circleSprite.graphics.clear();
                  this.circleSprite.visible = false;
                  _loc1_ = -1307900249 ^ -78565469 ^ 0x70104787 ^ -336435877;
                  break;
               case 2:
                  if(this.circleSprite.visible)
                  {
                     _loc1_ = -2082827667 ^ -1441793399 ^ 0x58553626 ^ -1556589285;
                  }
                  else
                  {
                     _loc1_ = 0x6E634849 ^ -1049222940 ^ -1756854355 ^ -354032424;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      override public function _11af0ae1dc88e5244bdef63d() : void
      {
         var _loc1_:int = -1643893006 ^ -824682024 ^ 0x38F28023 ^ -765993071;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (0x3BEE108E ^ -1950843624 ^ 0x27B26072 ^ 0x2D9D257E))
            {
               case 0:
                  super._11af0ae1dc88e5244bdef63d();
                  this.eventDispatcher.dispatchEvent(this._7cd4f7f8823bde1010018859);
                  return;
               case 1:
                  return;
               case 2:
                  if(destroyed)
                  {
                     _loc1_ = 0x5AB9D548 ^ -904728528 ^ 0x02C713D3 ^ 0x28151E30;
                  }
                  else
                  {
                     _loc1_ = 0x6B0BB3C6 ^ 0x147C926B ^ -996078421 ^ 0x01AF059C;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function get inBiteProcess() : Boolean
      {
         return this._bitePanel.parent != null || this._bitePanelShowTimeoutId > (-607356965 ^ -1466023101 ^ -1308037074 ^ 0x3EA53B49);
      }
      
      override public function _c8602d88efc64575cdc92b85() : void
      {
         this._6227fd5da1ce67d0b36a4f90();
         super._c8602d88efc64575cdc92b85();
      }
      
      override public function _b1f7457b16931a1882a5f4ed(param1:Number, param2:Number, param3:Number = NaN) : void
      {
         this._6227fd5da1ce67d0b36a4f90();
         super._b1f7457b16931a1882a5f4ed(param1,param2,param3);
      }
      
      public function _9022b325f6002b7537ebef62(param1:_ba120ae720a391732e866217) : void
      {
         var _loc2_:int = -1252390744 ^ -264435717 ^ -422355584 ^ 0x13325797;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (-757047929 ^ -510468439 ^ -121543516 ^ 0x7B35E2CF))
            {
               case 0:
                  this._ea52ddaca1a080cc2518c8da();
                  _loc2_ = 0x26EC530F ^ 0x16BE49DC ^ 0x14562CC0 ^ -1803406508;
                  break;
               case 1:
                  app.user.inTalkWithNPC.value = true;
                  this._5d7353d83a6c247011d838d8 = param1;
                  this._5d7353d83a6c247011d838d8.player = this;
                  if(_rod.visible)
                  {
                     _loc2_ = 0x382D561D ^ 0x728CE843 ^ 0x41C1BDA6 ^ -1142552899;
                  }
                  else
                  {
                     _loc2_ = 0x4E68A9AA ^ -897063330 ^ -2041345903 ^ -1304772062;
                  }
                  break;
               case 2:
                  locationUser.setPosition(position.x,position.y);
                  this._b1f7457b16931a1882a5f4ed(position.x,position.y);
                  _e4a9539bc08e42b3d1467d8a(param1);
                  _9ec5ae7ccbeebf37b003f58d(true);
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function _ca0c9d4131fba504301d569e() : void
      {
         var _loc1_:int = 0x270E3FCC ^ 0x7B17638B ^ 0x1363973F ^ 0x1A9A72F5;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (-1356194171 ^ -1592268390 ^ 0x57DBB85D ^ 0x0C06F6CD))
            {
               case 0:
                  this._5d7353d83a6c247011d838d8.player = null;
                  this._5d7353d83a6c247011d838d8 = null;
                  this._11af0ae1dc88e5244bdef63d();
                  _loc1_ = 0x4519205F ^ -1016434464 ^ -1978924074 ^ 0x599FEAE7;
                  break;
               case 1:
                  app.user.inTalkWithNPC.value = false;
                  return;
               case 2:
                  if(this._5d7353d83a6c247011d838d8 != null)
                  {
                     _loc1_ = 0x71A82A65 ^ -1273944464 ^ -611586737 ^ 0x4BD258D5;
                  }
                  else
                  {
                     _loc1_ = 0x740C8E9C ^ 0x236B8353 ^ -126415865 ^ -84887482;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function _93db766860106b900c89ac3a() : Boolean
      {
         return this._5d7353d83a6c247011d838d8 != null;
      }
      
      override public function setPosition(param1:Number, param2:Number, param3:Number = -1) : void
      {
         var _loc4_:int = -1302256077 ^ 0x7E3357D8 ^ 0x1D01B06B ^ -1463794561;
         loop0:
         while(true)
         {
            switch(_loc4_ ^ (0x7B7B3C02 ^ 0x5BDA9DEC ^ 0x200F09AE ^ 0x793D2DBE))
            {
               case 0:
                  GameSwf.currentLocationDialog.moveCameraToChar(-1544071941 ^ 0x2BAC6E7E ^ -178043814 ^ 0x7D387EDE);
                  _loc4_ = -858045006 ^ -1418933514 ^ 0x3ECF23CC ^ 0x20EB2974;
                  break;
               case 1:
                  super.setPosition(param1,param2,param3);
                  if(GameSwf.currentLocationDialog != null)
                  {
                     _loc4_ = -383151830 ^ 0x6F060799 ^ -710484555 ^ 0x2A1ACEF8;
                  }
                  else
                  {
                     _loc4_ = 0x0AB25ACD ^ -954025024 ^ 0x75D158AC ^ -1043186595;
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
      
      override public function _866cbd5df047403d748b3e2d(param1:_40c40768738c862c74ddd128) : void
      {
         super._866cbd5df047403d748b3e2d(param1);
         app.user.atTheBoat.value = true;
         app.user.charState.value = _2fcef105b08d78e8c46cbf27.SAIL_BY_BOAT;
      }
      
      public function activate() : void
      {
         _02fbe4cbe9e83f1b8c711799.addEventListener(this,app.user.charState,_720429110fd3cfc01812b5a0.CHANGE,this._9bdf39d69833523a0f7b693a);
      }
      
      public function deactivate() : void
      {
         _02fbe4cbe9e83f1b8c711799.removeEventListener(this,app.user.charState,_720429110fd3cfc01812b5a0.CHANGE,this._9bdf39d69833523a0f7b693a);
      }
      
      override public function destroy() : void
      {
         var _loc1_:int = 0x5DCF9EC6 ^ 0x4792A936 ^ -384404600 ^ 0x398A4B8A;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (0x254379D6 ^ 0x4FA7B938 ^ 0x31E4A8EA ^ -1849595914))
            {
               case 0:
                  this.deactivate();
                  clearTimeout(this._bitePanelShowTimeoutId);
                  this._bitePanelShowTimeoutId = 0x083FD03C ^ -1950298398 ^ -681294239 ^ -1419466944;
                  _02fbe4cbe9e83f1b8c711799.removeEventListener(this,app.user,_01a2aa99fe260235a2a4e8a7.BAIT_TYPE_CHANGE,this._f0fcffa52c744336807c94d9);
                  if(this._048be4afcc3f2bbbae21309c != null)
                  {
                     _loc1_ = 0x6B6F5CE9 ^ 0x313BA311 ^ -1340538518 ^ 0x208CF163;
                  }
                  else
                  {
                     _loc1_ = 0x55F454BB ^ 0x6ACEC369 ^ 0x445CE830 ^ -1314426858;
                  }
                  break;
               case 1:
                  this._6227fd5da1ce67d0b36a4f90();
                  removeFromParent(this.circleSprite);
                  this.circleSprite = null;
                  _loc1_ = 0x6CA91215 ^ 0x69AF4128 ^ -746062219 ^ 0x1C40A2BF;
                  break;
               case 2:
                  this.bitePanelContainer = null;
                  _02fbe4cbe9e83f1b8c711799._87b72cd49d8fc861c4443e4d(this);
                  this._ab86863d35525fe39378e199 = null;
                  this._5d7353d83a6c247011d838d8 = null;
                  this.state = null;
                  return;
               case 3:
                  this._048be4afcc3f2bbbae21309c.destroy();
                  removeFromParent(this._048be4afcc3f2bbbae21309c);
                  this._048be4afcc3f2bbbae21309c = null;
                  _loc1_ = -1397152107 ^ 0x4623A912 ^ 0x421DE6A6 ^ 0x624666D5;
                  break;
               case 4:
                  this._bitePanel.destroy();
                  this._bitePanel = null;
                  _loc1_ = 0x2F32D490 ^ -1099716367 ^ -1316017805 ^ -368092446;
                  break;
               case 5:
                  if(this._bitePanel != null)
                  {
                     _loc1_ = -1658996696 ^ 0x2E7FA51B ^ 0x1703BEF9 ^ 0x6EA0AC3C;
                  }
                  else
                  {
                     _loc1_ = -1240187306 ^ -2034097556 ^ 0x31B1DFF9 ^ -878261197;
                  }
                  break;
               case 6:
                  super.destroy();
                  if(this.circleSprite != null)
                  {
                     _loc1_ = -897302174 ^ 0x510A7509 ^ 0x6B949CD0 ^ 0x3ADBA748;
                  }
                  else
                  {
                     _loc1_ = -178922244 ^ 0x5AD32FAA ^ 0x131F6417 ^ 0x765898B6;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      override public function _1c5844c9d006616ded423d2f(param1:int, param2:_91aad973ddd3030366bf3e1f) : void
      {
         this._b5f50eb5f03242465d43613f(_lastX,_lastY);
         super._1c5844c9d006616ded423d2f(param1,param2);
      }
      
      public function get eventDispatcher() : EventDispatcher
      {
         return EventDispatcher(_charSprite);
      }
      
      public function get programmedMove() : Boolean
      {
         return this._01e9e0088fa87d77879c7bc7;
      }
      
      public function set programmedMove(param1:Boolean) : void
      {
         this._01e9e0088fa87d77879c7bc7 = param1;
      }
      
      override public function _912f511bdd1d607aa06afe6c(param1:Number, param2:Number, param3:Number, param4:Boolean = false) : void
      {
         Cc.log(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捽掯掊挺挛探掎挥挵掹捗捔掻掳挒掇揌掰掣揗捽挰挥揩掗掫挺捊捦挐捆损捿挥捡挭掌捊揋揭掆捻掐掮揓挿","换掾捶挳据接揤掲捙挻掅揢捵捙捓捋") + param1 + _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("႑႓ငႲၬ჎ၺတၳ႟ၙ჈ႵႨ","ႜႁ჉჋ည჊ზჺ၉Ⴋ၊႟းါၗႧ") + param2 + _95da7f1147c669197db81295._8f4866de82b7339154180ecb("勓剶剄劸刂剬勆刺剭劳劲創删勿勅勖刓剹劺勹勰劣刜剺剣劀剣勂副刻刦別刉刄剮劚勨劬删劉剗剌剏切创削励刍劷勐勾到劤劝","勔刎勫劈刡刃剂劐剻勱勛划刼剿刔勰") + param4 + _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("Ⴄၧ္Ⴂၞ၎უုႅმ","၊ႭၒဣၨၞၧႮႦၲ႗းၡဍဦႥ"));
         try
         {
            if(app.user.inFishingProcess.value == true || app.user.inTalkWithNPC.value == true)
            {
               Cc.error(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勸勽劓剸勰勻剟劬剻勐劜剻勾劶刕剙剖刢劺剉劦労剂劖剛勓劲勰剚勎副刂判刜劆勧勗剗剳劃刽刊刕勵勑划勆努劗剳剎刴剷勍劇劍勈勚剌勬剄利勖剱刔剤劚劐剜劁刋劸剚利剅剌勖勐勲劎劲劯勖劙剁劰勠剗剳剋剽劁勞勲勅劁刄劙划刱勌勉勱劻剅剽","勴劔勩勷剷剃剖勁刳刨剑勸刾劃刕力") + app.user.inFishingProcess.value + _95da7f1147c669197db81295._8f4866de82b7339154180ecb("劙劂剱刏劂前刹勼剸剐劻勼剚劵勾剣剤剝勡勴剳刕划勻劁剙劂劋刢劫初刌动募刻剄刞刓剔刅","勑剽劈勷劧剦刲剌助劵勩刮勰动別剥") + app.user.inTalkWithNPC.value + _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ჳဖ၍დვჱၓၪလ်ဳုჽျတგဖၑქჟၙဘ႕႟ၻ၅Ⴥဨ჆ဨႇႳၼၫၑႰ჎ၝ","ၝၘႸဇဆဳႆႚ჆ႋဂသ၍ြၴႢ") + GameSwf.currentLocationDialog.gui.isMenuLocked + _95da7f1147c669197db81295._8f4866de82b7339154180ecb("加勫剝劃劼刌勵剰勑勋","勍劘勁剠勵劲刬刺剔劁剃刄勦劼判剢"));
               GameSwf._6b2ea987f29b60cd755db2f5(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("力劸勧勲勾勍刳制剤勋劀剾刜剏劊刴刱募刈勰劸剴劄劑剞势刐勽券力刲刾","剫刐刘刪劲剖劵刼办务前劐剘剅勯刴"));
            }
         }
         catch(e:Error)
         {
         }
         super._912f511bdd1d607aa06afe6c(param1,param2,param3,param4);
         _9ec5ae7ccbeebf37b003f58d();
         this.eventDispatcher.dispatchEvent(this._7b19599c034e3fbbeb39835f);
      }
      
      protected function _9bb0902c5747c416f00d19ae() : void
      {
         app.user.inFishingProcess.value = false;
         clearTimeout(this._bitePanelShowTimeoutId);
         this._bitePanelShowTimeoutId = -1217855118 ^ -1322397164 ^ -796138337 ^ 0x2930C806;
         this.reelIn();
         _dfa25706e58a240c1e33e5c6.fishingExtension._366c3e3bcf5cdf552265c88f();
      }
      
      override protected function _ca56e0fbc229ff7f04ebb46b() : void
      {
         super._ca56e0fbc229ff7f04ebb46b();
         _controllerUserPopup.buttonPmVisible = false;
      }
      
      override public function _88c96ba6ec7842170a984455() : void
      {
         app.user.charState.value = _2fcef105b08d78e8c46cbf27.NORMAL;
         this._6227fd5da1ce67d0b36a4f90();
         this._ea52ddaca1a080cc2518c8da();
         super._88c96ba6ec7842170a984455();
      }
      
      private function _0bb2b3db9297877680967081(param1:DataEvent) : void
      {
         var _loc2_:String = param1.data;
         if(_rod != null)
         {
            _rod._5ab99f81dfbca109ba4c2502(parseInt(_loc2_));
         }
      }
      
      override public function update(param1:uint, param2:uint, param3:Number) : void
      {
         var _loc4_:int = -935989844 ^ -973673870 ^ -1726715020 ^ -1238370106;
         loop0:
         while(true)
         {
            switch(_loc4_ ^ (-1601921209 ^ -279307365 ^ -1967672332 ^ -409885886))
            {
               case 0:
                  this._4ebc446ae69c03b5546f722d = getTimer();
                  if(this._b5660deb0c277f3554a43b66())
                  {
                     _loc4_ = -360611499 ^ -827358115 ^ 0x36837AE5 ^ 0x3055EB8C;
                  }
                  else
                  {
                     _loc4_ = -304013212 ^ -1217486341 ^ 0x5432534A ^ 0x2C4546BC;
                  }
                  break;
               case 1:
                  _9ec5ae7ccbeebf37b003f58d();
                  _loc4_ = 0x04688BE2 ^ 0x268BB7B4 ^ -1118285546 ^ -1119618784;
                  break;
               case 2:
                  this._a83f0c923afa83310e73797f = getTimer();
                  if(this._b5660deb0c277f3554a43b66())
                  {
                     _loc4_ = 0x147EEEEB ^ 0x0E3225E8 ^ -2082895624 ^ -1150429296;
                  }
                  else
                  {
                     _loc4_ = 0x536DC21F ^ 0x64D3A3E1 ^ 0x1EFE58A5 ^ 0x0BB8AD3B;
                  }
                  break;
               case 3:
                  if(boat != null)
                  {
                     _loc4_ = 0x3C85F666 ^ 0x769C13D3 ^ -661395696 ^ -1334667578;
                  }
                  else
                  {
                     _loc4_ = 0x4132313A ^ -1799755329 ^ 0x73A10B43 ^ -2066593880;
                  }
                  break;
               case 4:
                  _loc4_ = -543177302 ^ -1274620164 ^ -727507555 ^ -1648190804;
                  break;
               case 5:
                  return;
               case 6:
                  super.update(param1,param2,param3);
                  if(app.user.inLogoutProcess)
                  {
                     _loc4_ = 0x2598FBDD ^ -378208989 ^ -553837634 ^ 0x30E9892F;
                  }
                  else
                  {
                     _loc4_ = -1905590977 ^ -314562944 ^ 0x4860BE6D ^ 0x09B2F1BF;
                  }
                  break;
               case 7:
                  if(getTimer() - this._4ebc446ae69c03b5546f722d > (0x0C2E69D0 ^ 0x1CEFCC4A ^ 0x3EB5C386 ^ 0x2E746616) * (-432667808 ^ 0x7267DA29 ^ -1602435347 ^ 0x342D1C4C))
                  {
                     _loc4_ = 0x3FE898A3 ^ -1960196084 ^ 0x67000347 ^ -247871614;
                  }
                  else
                  {
                     _loc4_ = 0x1FB37AB7 ^ 0x611E2A10 ^ -887647683 ^ -1757260036;
                  }
                  break;
               case 8:
                  _boatMoveStrategy._3fe36ac61185e221c585b08e();
                  _loc4_ = 0x5147ECC4 ^ -1281187697 ^ -1728245672 ^ 0x58E0C874;
                  break;
               case 9:
                  _boatMoveStrategy._3fe36ac61185e221c585b08e(true);
                  _loc4_ = 0x341CFEB4 ^ -1511938068 ^ 0x41C1C9D6 ^ -222034720;
                  break;
               case 10:
                  if(boat != null)
                  {
                     _loc4_ = -1316166031 ^ 0x41A15B45 ^ -660003095 ^ 0x0A7C0FBF;
                  }
                  else
                  {
                     _loc4_ = 0x29E5A15C ^ -390731609 ^ -76981277 ^ 0x18C1867F;
                  }
                  break;
               case 11:
                  _9ec5ae7ccbeebf37b003f58d(true);
                  _loc4_ = -589598849 ^ -477432614 ^ 0x2C36FFEE ^ 0x319FF022;
                  break;
               case 12:
                  if(getTimer() - this._a83f0c923afa83310e73797f > (-1044112687 ^ 0x5BA43DB1 ^ 0x768F43EB ^ -319855233))
                  {
                     _loc4_ = 0x4444FE26 ^ 0x0778FC26 ^ -50221290 ^ -1664796290;
                  }
                  else
                  {
                     _loc4_ = -984488398 ^ -1462769133 ^ 0x2DCE9224 ^ 0x62A80A62;
                  }
                  break;
               case 13:
                  this._50833d320fb8e59d85bdf61e();
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function _50833d320fb8e59d85bdf61e() : void
      {
         if(isMovingToRaft && !(_moveStrategy is _709a8761c08236d1b5935ace))
         {
            Cc.warn(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劄劍勥劰劂切勳勴刽勳刦劢劍加劰剷劾効劾勉勠剪劂刪剄劺列列勧劊刽劫勺勣别劍勻勃勞刁刬勍利効剏刔刅勫切务勮列励勭劇劅刌勋列劝刂勌劓劥刚刖勑剹勪刺刖别勒劁勌勺则勜勎勪勏刴到刖勼剩","剸剱励刕剖刎勆劻劸勵劤刊务加刌勳") + _moveStrategy);
            GameSwf._6b2ea987f29b60cd755db2f5();
         }
      }
      
      private function _f7dcc9f639288c18c3c4e83c(param1:int, param2:int) : Boolean
      {
         var _loc3_:Number = Math.atan2(param2 - graphic.y,param1 - graphic.x);
         var _loc4_:Point = new Point(_33071d11a5a43a87084914ee * Math.cos(_loc3_) + graphic.x,_33071d11a5a43a87084914ee * Math.sin(_loc3_) + graphic.y);
         return _moveStrategy.isLakeHit(_loc4_);
      }
      
      public function _c499c42f6332219f0ae96de9() : Boolean
      {
         return _moveStrategy._932bcd14906ee6abb2c18abc(position,true);
      }
      
      public function _af07cf345935b141205980c7() : void
      {
         var _loc1_:Point = _42da5931475ef60d3da8d4a2(position.x,position.y);
         Cc.log(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勭劽刀剏刐勁刣剄劝勐勹勨劄劰劮剠利剴勾劅刮剾刼刡勺刮劼勩勆勏勒刘勵刿刵别勎刵刼剜劦劇剾剭刧剱劈劳","劳劈剢剹刟刯劺劺剬劒刡刡刌劁劏剀") + position + _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捿掋揘捃挕挌探掛指掇挠捵挾揰掚揸","挟掴捲捸挡揗捲挾挴捶揘挡揟揲捠损") + _loc1_ + _95da7f1147c669197db81295._8f4866de82b7339154180ecb("剴剂勢務勌刼刖剽刣勳","劒删剜剪删刱刪勼剛劖勉刞勦勶勄勌"));
         _5b04cf41b6b9c6cbf830da97(_loc1_.x,_loc1_.y);
      }
      
      override protected function _040fb4a29a3fbff23177faac() : void
      {
         super._040fb4a29a3fbff23177faac();
         this._ca0c9d4131fba504301d569e();
      }
      
      public function _1b373857a1a724ed904f4d98() : Boolean
      {
         return _moveStrategy is _709a8761c08236d1b5935ace && (_moveStrategy as _709a8761c08236d1b5935ace)._a9e2dd6063c60dc4a60d90ba();
      }
      
      override public function _ea52ddaca1a080cc2518c8da() : void
      {
         super._ea52ddaca1a080cc2518c8da();
         this._bb5af52a40c1d43845e33c5e();
      }
      
      private function _bb5af52a40c1d43845e33c5e() : void
      {
         var _loc1_:int = -1369871546 ^ 0x1923CD47 ^ -1982447668 ^ 0x16FC51AC;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (0x7CAC169A ^ -1912691014 ^ 0x1239DB16 ^ -885284012))
            {
               case 0:
                  this._bitePanelShowTimeoutId = -147163072 ^ 0x0A6B16FE ^ 0x722E1204 ^ 0x70808345;
                  clearTimeout(this._bitePanelShowTimeoutId);
                  _loc1_ = 0x38C09CB5 ^ 0x4699074E ^ 0x42BEFFF7 ^ 0x14B7AC6F;
                  break;
               case 1:
                  return;
               case 2:
                  this._bitePanel.cancel();
                  if(this._bitePanelShowTimeoutId != (0x08DBE402 ^ 0x5C568C4E ^ 0x295F4D1B ^ -2110924120))
                  {
                     _loc1_ = -1640661177 ^ -1605214610 ^ 0x28E24FEB ^ 0x3ED5A6A0;
                  }
                  else
                  {
                     _loc1_ = -1017396460 ^ 0x59ECC488 ^ 0x6F5DF9CC ^ -574998989;
                  }
                  break;
               case 3:
                  app.user.inFishingProcess.value = false;
                  if(this._bitePanel != null)
                  {
                     _loc1_ = -1245071562 ^ -1440971493 ^ 0x6E121A23 ^ 0x5997E06E;
                  }
                  else
                  {
                     _loc1_ = -2073911773 ^ -1238399339 ^ -108921124 ^ -476303863;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      override public function reelIn() : void
      {
         super.reelIn();
         this._bb5af52a40c1d43845e33c5e();
      }
      
      override public function _ce8c2233b28d0fc4b7d33c95(param1:String, param2:Object) : void
      {
         if(GameSwf.currentLocationDialog.raft != null && GameSwf.currentLocationDialog.raft._d1b347acde8bd0cff6c33ae7(this) && param1 == _08c120b706560fce9302bcab.SERVER_STATE_STOP_FISHING && app.user.inFishingProcess.value == true)
         {
            super._ce8c2233b28d0fc4b7d33c95(param1,param2);
         }
      }
   }
}

