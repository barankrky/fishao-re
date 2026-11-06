package com.ax3.fishao.locations.entries
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import assets.common.CharShadow;
   import com.ax3.display._473832fc48e3c8aba3f6d2fe;
   import com.ax3.display.rod._70197a58a4eba697ed6a96dc;
   import com.ax3.display.rod._b161a89a77152785050fe395;
   import com.ax3.fishao._67282af25befe9778e5c8dd1;
   import com.ax3.fishao._a1e0e2bf54cc08cc6a7d5b7c;
   import com.ax3.fishao._dfa25706e58a240c1e33e5c6;
   import com.ax3.fishao.control.managers._3a8a2602dcf9bf49b62e62af;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.debug._9b189a790efd59581443eb40;
   import com.ax3.fishao.entries._810c4ade948afb64e9c7ee25;
   import com.ax3.fishao.locations._3e7dee0195ecd6b652b730f1;
   import com.ax3.fishao.locations._8d59d661459118aa8e94ae34;
   import com.ax3.fishao.locations.base._67f8febc099eaa05c48aa41e;
   import com.ax3.fishao.locations.base._bd60f9ad6ef4aaf28041ce8f;
   import com.ax3.fishao.locations.chars._2e5b3522a164ee588f85e4b1;
   import com.ax3.fishao.locations.chars._2fcef105b08d78e8c46cbf27;
   import com.ax3.fishao.locations.chars._412bba20db41500babcd2a85;
   import com.ax3.fishao.locations.chars._475c38f3babd554048e06a1c;
   import com.ax3.fishao.locations.chars._600d447c132e71fe3abc23ea;
   import com.ax3.fishao.locations.chars._709a8761c08236d1b5935ace;
   import com.ax3.fishao.locations.chars._85c463930cec98e06d72d6a3;
   import com.ax3.fishao.locations.chars._8b5edf1c1de2751d1bc6fca0;
   import com.ax3.fishao.locations.chars._bc5b95970bb4c8cdb17ae210;
   import com.ax3.fishao.locations.chars._d557186cde1a474d8468f3b2;
   import com.ax3.fishao.locations.chars._faab80cfc2fee99ff0930b0b;
   import com.ax3.fishao.locations.chars.commands._16c375dcd3d66ff8ae819841;
   import com.ax3.fishao.locations.chars.commands._1ca333487aeb8f57ff543491;
   import com.ax3.fishao.locations.chars.commands._3ba073024ca466d13112f68e;
   import com.ax3.fishao.locations.chars.commands._4bac6deccd436ea35eb1d27b;
   import com.ax3.fishao.locations.chars.commands._6f7ee591923b9d4206119776;
   import com.ax3.fishao.locations.chars.commands._76938cad36557880bc855380;
   import com.ax3.fishao.locations.npc.base._ba120ae720a391732e866217;
   import com.ax3.fishao.locations.objects.boat._40c40768738c862c74ddd128;
   import com.ax3.fishao.locations.privateHouse._c24229eda44b942058106fae;
   import com.ax3.fishao.locations.privateHouse.model._2713ec585daceb8ad62e2797;
   import com.ax3.fishao.model._91aad973ddd3030366bf3e1f;
   import com.ax3.fishao.tutorial._283b592e1b144e604db439f2;
   import com.ax3.fishao.tutorial._9b5482b3978b7abe1547abb8;
   import com.ax3.fishao.utils._d3d70238b67f17bb35699a2c;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs.fishingLine.model._72a97cef3acbd28d8d164ec8;
   import com.ax3.fishao.view.dialogs.tournaments.models._2a31502166ae419b5332a782;
   import com.ax3.fishao.view.panels._62ea006324db14444801a91e;
   import com.ax3.fishao.view.panels._b50543a62d285cc45338b507;
   import com.ax3.fishao.view.panels.user_popup._92885560496ae9c2acd16824;
   import com.ax3.fishao.watercraft._a00a2200c99ccb365fe1b90e;
   import com.ax3.geom._a5c3dbdfbeb709a5bf92d27c;
   import com.ax3.utils._d44ecfcb81ec9d39734ee3c3;
   import com.ax3.utils.math.limit;
   import com.ax3.utils.removeAllChildren;
   import com.ax3.utils.removeFromParent;
   import com.ax3.utils.string.zeroPad;
   import com.brokenfunction.json.decodeJson;
   import com.inkora.tween.TweenCube;
   import com.junkbyte.console.Cc;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.utils.clearTimeout;
   import flash.utils.getTimer;
   import flash.utils.setTimeout;
   
   public class _08c120b706560fce9302bcab extends _c09cca9a4bb308034fa72749
   {
      
      private static const _60a64d1cee062b374c8c9e41:_473832fc48e3c8aba3f6d2fe = new _473832fc48e3c8aba3f6d2fe(_95da7f1147c669197db81295._6371735dc9287bd2d9618c1e("勘勜刄劕剿剒功刮勒剉刘刔刅劅勨勨剡剺勲勻勹剈劉刁","剖剃劙刿則劶勭刪刟剏勯券則剩剂募"),-765306549 ^ 0x3752E147 ^ -279004999 ^ 0x0A80EE5B,_39d7d82359bf8046fe8ef6c4._ed4a735c5a6981f99dda5b73("揝掬挝捷挏揧挙挋捿揳揹捋捽挌捼採揮揨揜援揨挫揨揷","掙揫掤掴捳掊掵掶揅挮揰换挿挦揂捃"));
      
      private static const _675adf6bcbbfa15d14771928:int = 0x13C0CE4E ^ -1262439311 ^ 0x22B120DC ^ -2051974613;
      
      private static const _58f7e6500ceff6fc2b90277c:int = -833414706 ^ -1080559552 ^ -112536896 ^ -2003946910;
      
      private static const _3ff6b852b654f5feb15d851c:int = 0x7AAE0D7A ^ -1371996560 ^ 0x4C4461FC ^ -1731030270;
      
      protected static const MIN_DISTANCE_TO_WATER:Number = 0x31806EB5 ^ 0x64AC95E5 ^ -462636328 ^ -1321188928;
      
      private static const _c5fbb76a073bfb91d41aedad:String = _95da7f1147c669197db81295._8f4866de82b7339154180ecb("劻办剱劗勂剭别剔剦刢励剆刊刕劌動劸勃刃刓剖剖剥勨劢初勖勵刷利劐剞","剄刣劗勆剗利刃剸刕刣剻勸勋劈劋勂");
      
      public static const SERVER_STATE_STOP_FISHING:String = _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揲捔揑揬揔掆排揲提掇捚持揅挪排掁捫挧挣挏掓捽掉掻挠掖揵挼揌採","捊掫揌挪換捽挘捺揦掉揂揉揗挝掷捝");
      
      private static const _26ce5143ec0e4587ec16f55d:String = _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掺掞揟揙捅揉损捖捋掝挓授捄掣捓捨","捃挵揄掜排换揼揀挥揀挓揜揥掓挝挌");
      
      private static const _72d15259d7baa77950564559:String = _95da7f1147c669197db81295._8f4866de82b7339154180ecb("勉剻剞刊勤券勩勷剱刟刿勘勻劜劌剌劈劆勇努","刀剐划剜劣剣刳勎剿刌劏劚剨劙努办");
      
      protected static const SERVER_STATE_DIDNT_CATCH:String = _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("Ⴓ၉ဢ၌჋ჺႡს။Ⴑၸ႙ၴვႊႉထႁဎဥჟႍကၱყ჆ီၟ","ჸႍ၂ျჺၣႬဘჾိၒၥ၄Ⴑპ၊");
      
      public static var mapOffset:Point = new Point();
      
      public static var speed:Number = 0x720DE54F ^ -618776965 ^ 0x242FA08F ^ -1925418050;
      
      protected static var CHAR_SHADOW:CharShadow = new CharShadow();
      
      private static const _b2bd831d3ba5e32cc40461b8:int = 0x5407CE51 ^ -928837846 ^ 0x438969D1 ^ 0x20D25755;
      
      public static var CHAR_ANIMATION_SPEED:int = 0x45824429 ^ 0x349D3607 ^ -89253305 ^ -1951307756;
      
      private static const _75ce0dec8149ee9e0b4118c3:int = -551342360 ^ -1591769521 ^ -450260103 ^ -1693107470;
      
      private static const _bf2378e2891797e1c076406b:int = -635226726 ^ 0x34E5D331 ^ -538906471 ^ 0x312616FA;
      
      public static var locationLayersScrollRect:Rectangle = new Rectangle();
      
      private const _fd52fd2647fb75c6152cbdb2:int = 9;
      
      private const _2ad01a96e4da2a5b5eb25f9a:int = 19;
      
      private const _00d5574f1f53809302cb8eef:int = 500;
      
      private const _c201603143574a9fd1ac8f26:Number = 1;
      
      private var _f4d50138cc94b775cea59f60:Boolean = true;
      
      private var _92c5087902db9c03eb127c0b:Boolean = false;
      
      protected var _lastY:int;
      
      protected var _lastX:int;
      
      protected var _charViewport:_d557186cde1a474d8468f3b2;
      
      private var _dca1466ecc6c56770ff0bb41:_b50543a62d285cc45338b507 = new _b50543a62d285cc45338b507();
      
      protected var _controllerUserPopup:_92885560496ae9c2acd16824;
      
      protected var _charSprite:Sprite = new Sprite();
      
      protected var _fishCatchEmoticons:_62ea006324db14444801a91e = null;
      
      private var _ef03a21a5c8fa335d04a05f8:MovieClip = null;
      
      protected var _showRodTimerId:uint;
      
      public var finalTargetPosition:Point = new Point();
      
      public var position:_a5c3dbdfbeb709a5bf92d27c;
      
      protected var _obstacleMap:BitmapData;
      
      private var _c7cf90b57c9d6e074cc30a90:Point = null;
      
      private var path:Vector.<Point>;
      
      private var _6bd0243a76da09f7848f5c05:Point;
      
      private var _f58b82ae4fe5a01e8c4b2630:Point;
      
      protected var _fishingArea:Vector.<Point>;
      
      protected var _lastRotationAngle:int = 90;
      
      protected var _charShadow:Bitmap;
      
      protected var _rod:_70197a58a4eba697ed6a96dc;
      
      protected var _frameIndex:int;
      
      protected var _charAnimationSource:_85c463930cec98e06d72d6a3;
      
      protected var _moveStrategy:_8b5edf1c1de2751d1bc6fca0 = null;
      
      protected var _keyboartMove:_412bba20db41500babcd2a85;
      
      protected var _pathMoveStrategy:_2e5b3522a164ee588f85e4b1;
      
      protected var _forceMoveStrategy:_709a8761c08236d1b5935ace;
      
      protected var _freezeMovementStrategy:_475c38f3babd554048e06a1c;
      
      protected var _speedMultiplier:Number;
      
      private var _c4ae25d2bfb411f3c2989299:Point;
      
      protected var _lakeCells:DisplayObject;
      
      protected var isNeedShowRod:Boolean = false;
      
      private var _8803f35d7864b0628f49ea31:String;
      
      public var locationUser:_810c4ade948afb64e9c7ee25;
      
      private var _133a94009c7077f22907f2c5:_43c06507a1ca0c884cf0046d;
      
      protected var _boatMoveStrategy:_600d447c132e71fe3abc23ea;
      
      public var boats:Vector.<_40c40768738c862c74ddd128>;
      
      private var _d316a1f809a03b71f554bc4c:_8d59d661459118aa8e94ae34;
      
      private var _2b7dde7b118f243ef04265db:Number = 1.7976931348623157e+308;
      
      public var raft:_a00a2200c99ccb365fe1b90e = null;
      
      private var _3711cae4480c0495da843ea9:Boolean = false;
      
      private var _ed4324592c0c72c1a45f34f7:BitmapData;
      
      private var _6f1fac7832d67604ae5bbe05:int;
      
      public var locationLayers:_bd60f9ad6ef4aaf28041ce8f;
      
      public var __lastModeCommand:_76938cad36557880bc855380;
      
      public var __lastStartFishingCommand:_4bac6deccd436ea35eb1d27b;
      
      private var _168f29fe0505de9bdb858ead:Boolean = false;
      
      public var boat:_40c40768738c862c74ddd128;
      
      private var _bc95ea836d25947ba8d9f0e0:int;
      
      protected var _currentRodRadiusPx:int;
      
      protected var _lastSentPosition:_a5c3dbdfbeb709a5bf92d27c;
      
      public var isMovingToRaft:Boolean = false;
      
      protected var _rodQualityPower:Number;
      
      private var _e3d391a3df413796a12f6263:Vector.<_3ba073024ca466d13112f68e>;
      
      private var _a011804b18fa320a5af85715:_3ba073024ca466d13112f68e = null;
      
      public var destroyed:Boolean = false;
      
      private var _570273a7503099747b562a50:Point;
      
      private var _93738f91c13d106ac78eef7d:Point;
      
      private var _8ec36fd5fdaad973befd6973:Point;
      
      private var _cbe934fd4ca9a01c4f07d684:int;
      
      private var _4b4317696affbc70634dd752:int = 0;
      
      private var _ad4bd959c4683bb38e0b19dd:String;
      
      private var _6a67138fcac6603a69bcfdf7:String;
      
      public function _08c120b706560fce9302bcab(param1:_810c4ade948afb64e9c7ee25, param2:_3e7dee0195ecd6b652b730f1)
      {
         var _loc3_:int = 0x34FC759E ^ -892699570 ^ -149305164 ^ 0x092FC164;
         var _temp_3:* = this;
         var _temp_2:* = §§findproperty(_a5c3dbdfbeb709a5bf92d27c);
         var _temp_1:* = -361579883 ^ -1804499680 ^ 0x28A80462 ^ 0x56AB3BD7;
         _temp_3.position = new _a5c3dbdfbeb709a5bf92d27c(_temp_1,_temp_1,-270135279 ^ 0x54F127C0 ^ -1901534637 ^ 0x35BFD5D8);
         this._6bd0243a76da09f7848f5c05 = new Point();
         this._f58b82ae4fe5a01e8c4b2630 = new Point();
         this._fishingArea = new Vector.<Point>();
         this._keyboartMove = new _412bba20db41500babcd2a85();
         this._pathMoveStrategy = new _2e5b3522a164ee588f85e4b1();
         this._forceMoveStrategy = new _709a8761c08236d1b5935ace();
         this._freezeMovementStrategy = new _475c38f3babd554048e06a1c();
         this._c4ae25d2bfb411f3c2989299 = new Point();
         this._lastSentPosition = new _a5c3dbdfbeb709a5bf92d27c();
         this._e3d391a3df413796a12f6263 = new Vector.<_3ba073024ca466d13112f68e>();
         super();
         this._boatMoveStrategy = new _600d447c132e71fe3abc23ea();
         this._boatMoveStrategy.floatInWaterManager = param2;
         this.locationUser = param1;
         var _loc4_:_473832fc48e3c8aba3f6d2fe = this.defaultRopeLineStyle;
         _loc4_.color = _72a97cef3acbd28d8d164ec8._c5779887be8eacdb7aa956f2(this.locationUser.fishingLineColor);
         this._rod = new _70197a58a4eba697ed6a96dc(_loc4_,param2,this._pathMoveStrategy._7c0237bdbbe607e4e3b0965a);
         var _loc5_:int = MIN_DISTANCE_TO_WATER;
         while(_loc5_ > (0x20FF31F0 ^ -459689307 ^ -1253805204 ^ 0x7122F038))
         {
            _loc3_ = -651732996 ^ -3473396 ^ 0x1C89C3 ^ 0x26F0DE33;
            while(_loc3_ <= (-249518855 ^ 0x1BBCA638 ^ -685374406 ^ 0x3DBA0793))
            {
               this._fishingArea.push(new Point(_loc5_ * Math.cos(_loc3_),_loc5_ * Math.sin(_loc3_)));
               _loc3_ += -1810132538 ^ -349171612 ^ 0x65AAC03F ^ 0x1A814183;
            }
            _loc5_ = -1907339006 ^ -1987367855 ^ -282616585 ^ 0x17031E43;
         }
         this._fishingArea.fixed = true;
         graphic = new Sprite();
         if(this is _ba120ae720a391732e866217)
         {
            graphic.name = _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၕႁညიဳႝ၎ႏ႘ၼჹၩჽႛဤဌၨရဩჱႼနႧႆ႗၊။ႅდထ","჌႒်ဨၜჰၰქၥჀပ႒႖჋ჯဲ");
         }
         else if(this is _c9513c48978d5034cc9ff2f4)
         {
            graphic.name = _95da7f1147c669197db81295._8f4866de82b7339154180ecb("分劤刲删剬勑刍勯刦劃劜刭勿勺勷劖劊勽勓動劑勂勽刳劒勍勈加刌勴勀务剣剞劚刟办劗劮劑剄勈勂力務刳","務刾刷勷勉剅刵券刅判剂剒剚剆勓剷") + param1.username;
         }
         else
         {
            graphic.name = _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ဘကဥၓၡႇ႑აၦဉჾစၻဆ႗ლၭႈႲ჌ჩဈ။ႁჳჃღမ჆႒၊Ⴁჺ჆ုნဦေႌၬႋ၊ၘၑ","ၑვ၎ဿ႟ဋၱၴებႱၐၥၡျჁ") + param1.username;
         }
         if(this.position.rotation == (-2111470137 ^ 0x6ABF34DC ^ -2033828503 ^ -1851559027))
         {
            this.position.rotation = 0x397F3CE5 ^ -1091410042 ^ -316930358 ^ 0x6A915DF3;
         }
         this._0224dc224792aa25034cbe6d();
         this._ea52ddaca1a080cc2518c8da();
         this._keyboartMove.target = this;
         this._pathMoveStrategy.target = this;
         this._forceMoveStrategy.target = this;
         this._ca56e0fbc229ff7f04ebb46b();
         this._22529d44305d9d9ce9be7148();
         this.moveStrategy = this._pathMoveStrategy;
         this._boatMoveStrategy.target = this;
         this._boatMoveStrategy.init(this._pathMoveStrategy,this._keyboartMove);
         this._8606e2a8d94f637089fc8480();
      }
      
      private static function sendResult() : void
      {
         var _loc1_:_2a31502166ae419b5332a782 = GameSwf.instance.managerTournaments.tournamentCurrent;
         var _loc2_:String = _loc1_ != null ? _loc1_.id : "";
         _dfa25706e58a240c1e33e5c6.fishingExtension._1db0863d41287aad98511f3e(Math.random() > _39d7d82359bf8046fe8ef6c4._ed4a735c5a6981f99dda5b73("揷挸揋掑挏挄掙掜挌揦掑揫掲捕掦掓揷挸揽掅掰揰揖揍","掀揂掇掘挝掏挠掓挍挫挾挼挨挾挽捑"),_loc2_);
         Cc.error(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("႙დဦႝႦ႒့კၝႸၣჿဏၘႸၡჹၝႍဗဴ႒ეႬჹ၂ႇ၎ၯჇႨၯთჷသႦ၁ၗဠზჭဨდႺၢ႟ჭဥဠဦმႻ","ၚၵჼါჺၝ။စၴჵဎြဈၸႂ჊"));
         GameSwf._6b2ea987f29b60cd755db2f5(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捵揬揙掀捸捺揕挗捑挫挨揀捜挽捋揧掫揳捗捴掸振揇挽捀挷揈捗","握捧挊揸探捻挔揤掱捼据挫捺捺捶按"));
      }
      
      public static function _f190aa7e3fff37e97443ecf7(param1:Number, param2:Number) : Number
      {
         var _loc3_:Number = param1 - param2;
         if(_loc3_ > (-1073282199 ^ 0x243A0EA1 ^ -340886488 ^ 0x0F937154))
         {
            _loc3_ = (-236408447 ^ 0x070CEFE1 ^ 0x3FA54714 ^ 0x36BEE7EC) + _loc3_;
         }
         else if(_loc3_ < (-43314303 ^ 0x229576C0 ^ 0x517ACE1B ^ 0x717B5416))
         {
            _loc3_ = (0x30B1414E ^ -1549421120 ^ 0x29AADBDA ^ -1161941444) + _loc3_;
         }
         return _loc3_;
      }
      
      private static function _eb9d4e7af61d661085b4066f(param1:int) : int
      {
         var _loc2_:int = -1243944935 ^ -1895503141 ^ 0x6C740C6B ^ 0x4F740362;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x1072EEFB ^ 0x0C8960CB ^ -1432678482 ^ -1346466730))
            {
               case 0:
                  return _58f7e6500ceff6fc2b90277c;
               case 1:
                  if(param1 <= (0xC4A033 ^ -1578617513 ^ 0x4024994A ^ -519566213))
                  {
                     _loc2_ = 0x76EA8DC0 ^ -436318251 ^ -733787690 ^ 0x5E89860B;
                  }
                  else
                  {
                     _loc2_ = 0x15B89640 ^ -1331732376 ^ 0x32706684 ^ -1903583898;
                  }
                  break;
               case 2:
                  return _3ff6b852b654f5feb15d851c;
               case 3:
                  if(param1 <= (0x27504CC0 ^ 0x5A36BC01 ^ -1137163386 ^ -1050758394))
                  {
                     _loc2_ = 0x06241CC2 ^ 0x194D6D70 ^ 0x378ED4EE ^ 0x3139A890;
                  }
                  else
                  {
                     _loc2_ = 0x0C4D093B ^ -822859420 ^ -1866659146 ^ 0x4BDA2720;
                  }
                  break;
               case 4:
                  return _675adf6bcbbfa15d14771928;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function get controllerUserPopup() : _92885560496ae9c2acd16824
      {
         return this._controllerUserPopup;
      }
      
      public function get roomPrevious() : String
      {
         return this._6a67138fcac6603a69bcfdf7;
      }
      
      public function get roomCurrent() : String
      {
         return this._ad4bd959c4683bb38e0b19dd;
      }
      
      public function set roomCurrent(param1:String) : void
      {
         this._6a67138fcac6603a69bcfdf7 = this._ad4bd959c4683bb38e0b19dd;
         this._ad4bd959c4683bb38e0b19dd = param1;
      }
      
      private function _82a8eb8c9faf7bd8fe98993a() : Boolean
      {
         return this._moveStrategy is _600d447c132e71fe3abc23ea && _600d447c132e71fe3abc23ea(this._moveStrategy).state != _bc5b95970bb4c8cdb17ae210.ON_BOAT;
      }
      
      public function onBoat() : Boolean
      {
         return this.boat != null;
      }
      
      public function get isFreezed() : Boolean
      {
         return this.moveStrategy == this._freezeMovementStrategy;
      }
      
      public function _0cc93dc6a86af66e328f4956() : Boolean
      {
         var _loc1_:Boolean = false;
         if(this._8ec36fd5fdaad973befd6973 == null || Math.abs(this._8ec36fd5fdaad973befd6973.x - this.position.x) > (-2066422746 ^ 0x2F886266 ^ -874001076 ^ 0x60BB4B06) || Math.abs(this._8ec36fd5fdaad973befd6973.y - this.position.y) > (0x6C9E3188 ^ -1157111031 ^ 0x57FEE2EF ^ -2140721052))
         {
            _loc1_ = true;
         }
         this._8ec36fd5fdaad973befd6973 = this.position.clone();
         return _loc1_;
      }
      
      public function wasPathSearch() : Boolean
      {
         return this._moveStrategy is _2e5b3522a164ee588f85e4b1 && this._pathMoveStrategy.wasPathSearch;
      }
      
      public function _de225c729c70cb3bddd2d479() : Boolean
      {
         return this.raft == null && this.boat == null && !(this._moveStrategy is _600d447c132e71fe3abc23ea) && !this.isFreezed && !(this._moveStrategy is _709a8761c08236d1b5935ace);
      }
      
      protected function _aa534c45c727463a0794bb69() : Boolean
      {
         var _loc1_:_b161a89a77152785050fe395 = this._d9fc460712ce3ee73afa1e5e();
         return _loc1_ == _b161a89a77152785050fe395.FISHING || _loc1_ == _b161a89a77152785050fe395.THROW_IN_ANIMATION || _loc1_ == _b161a89a77152785050fe395.BITE || _loc1_ == _b161a89a77152785050fe395.BITE_START;
      }
      
      public function get visible() : Boolean
      {
         return this._charSprite.visible;
      }
      
      public function set visible(param1:Boolean) : void
      {
         this._charSprite.visible = param1;
      }
      
      public function get lastSentPosition() : _a5c3dbdfbeb709a5bf92d27c
      {
         return this._lastSentPosition;
      }
      
      private function _548f90d1a09cfd32c528f935() : Number
      {
         return (0x25B2C85A ^ -208085102 ^ -1935832931 ^ 0x5AB79F54) - limit(this._2b7dde7b118f243ef04265db / _75ce0dec8149ee9e0b4118c3,0x398E0139 ^ -1915651139 ^ -988015332 ^ 0x71436F98,-1689642656 ^ -1012823574 ^ -1288070968 ^ -338556861);
      }
      
      public function _eb5219c52607a5e672ab42a0() : Number
      {
         return (-1527265995 ^ 0x6E93590A ^ -2076826894 ^ 0x4E52BECC) - limit(this._2b7dde7b118f243ef04265db / _bf2378e2891797e1c076406b,0x15C657C9 ^ -1137431921 ^ 0x65C4E99F ^ -868838183,0x7EDFD023 ^ 0x54859825 ^ -1954832635 ^ -1591617790);
      }
      
      public function _6e26cba323340280bd895ce7(param1:Number, param2:Number) : void
      {
         this._boatMoveStrategy._6e26cba323340280bd895ce7(param1,param2);
         this._pathMoveStrategy._6e26cba323340280bd895ce7(param1,param2);
         this._forceMoveStrategy._6e26cba323340280bd895ce7(param1,param2);
      }
      
      private function _edb3396c37edac08a21ceea4() : Boolean
      {
         return (this.raft == null || this.raft.state == _a00a2200c99ccb365fe1b90e.ON_THE_MIDDLE) && this._rod.typeId > _a1e0e2bf54cc08cc6a7d5b7c.ER_ROD_EMPTY;
      }
      
      public function get isCloseToTheLake() : Boolean
      {
         var _loc1_:Point = null;
         for each(_loc1_ in this._fishingArea)
         {
            if(this.moveStrategy.isLakeHit(new Point(_loc1_.x + graphic.x,_loc1_.y + graphic.y)))
            {
               return true;
            }
         }
         return false;
      }
      
      public function set currentSurface(param1:_8d59d661459118aa8e94ae34) : void
      {
         if(this._d316a1f809a03b71f554bc4c != param1)
         {
            if(this._168f29fe0505de9bdb858ead && this._3711cae4480c0495da843ea9)
            {
               if(GameSwf.settings.sfx && this._d316a1f809a03b71f554bc4c != null && this._d316a1f809a03b71f554bc4c.soundFile != null)
               {
                  _3a8a2602dcf9bf49b62e62af._113c8c14c0cbfde31fbea9d6(this._d316a1f809a03b71f554bc4c.soundFile,this);
               }
               if(Boolean(GameSwf.settings.sfx) && Boolean(param1) && param1.soundFile != null)
               {
                  _3a8a2602dcf9bf49b62e62af._e1d8e35fdae39ed0bc63ebea(param1.soundFile,this,this._548f90d1a09cfd32c528f935());
               }
            }
            this._d316a1f809a03b71f554bc4c = param1;
         }
      }
      
      public function set distanceToPlayer(param1:Number) : void
      {
         if(Math.floor(this._2b7dde7b118f243ef04265db / (0x48A7E0EE ^ 0x1300AD6B ^ 0x4D44C613 ^ 0x16E38B9C)) == Math.floor(param1 / (0x35E9D9A6 ^ 0x03D4EFD1 ^ 0x3205302D ^ 0x04380650)))
         {
            return;
         }
         this._2b7dde7b118f243ef04265db = param1;
         if(this._3711cae4480c0495da843ea9 && this._168f29fe0505de9bdb858ead && this._d316a1f809a03b71f554bc4c != null)
         {
            if(this._2b7dde7b118f243ef04265db > _75ce0dec8149ee9e0b4118c3)
            {
               _3a8a2602dcf9bf49b62e62af._113c8c14c0cbfde31fbea9d6(this._d316a1f809a03b71f554bc4c.soundFile,this);
            }
            else if(this._d316a1f809a03b71f554bc4c != null && this._d316a1f809a03b71f554bc4c.soundFile != null)
            {
               _3a8a2602dcf9bf49b62e62af._e1d8e35fdae39ed0bc63ebea(this._d316a1f809a03b71f554bc4c.soundFile,this,this._548f90d1a09cfd32c528f935());
            }
         }
      }
      
      public function get rod() : _70197a58a4eba697ed6a96dc
      {
         return this._rod;
      }
      
      protected function get defaultRopeLineStyle() : _473832fc48e3c8aba3f6d2fe
      {
         return new _473832fc48e3c8aba3f6d2fe(_60a64d1cee062b374c8c9e41.thickness,_60a64d1cee062b374c8c9e41.color,_60a64d1cee062b374c8c9e41.alpha);
      }
      
      public function get charViewport() : _d557186cde1a474d8468f3b2
      {
         return this._charViewport;
      }
      
      protected function get canShowUserPopupBaseOnMoveStrategy() : Boolean
      {
         var _loc1_:Boolean = true;
         if(this.moveStrategy == this._forceMoveStrategy || this.moveStrategy == this._freezeMovementStrategy)
         {
            _loc1_ = false;
         }
         return _loc1_;
      }
      
      protected function get canShowInTutorial() : Boolean
      {
         var _loc1_:Boolean = true;
         var _loc2_:_9b5482b3978b7abe1547abb8 = GameSwf.instance.managerTutorial.tutorialInProgress;
         if(_loc2_ != null)
         {
            _loc1_ = _loc2_._3a7d84cb0f6340bd38d53429(this);
         }
         return _loc1_;
      }
      
      public function set level(param1:int) : void
      {
         this._controllerUserPopup.level = param1;
      }
      
      public function setPosition(param1:Number, param2:Number, param3:Number = -1) : void
      {
         if(param1 != (0x71452807 ^ -689463361 ^ -1083207677 ^ -416098236))
         {
            this.position.x = param1;
            graphicPosition.x = graphic.x = param1;
         }
         if(param2 != (0x7CF39180 ^ 0x3A57A449 ^ 0x1CA9AFBB ^ -1510840947))
         {
            this.position.y = param2;
            graphicPosition.y = graphic.y = param2;
         }
         if(param3 != (-1733567216 ^ 0x0F4A1E7A ^ 0x31FC61C8 ^ 0x59E25D5D) && !isNaN(param3))
         {
            this.position.rotation = param3;
         }
      }
      
      public function _0dc9cf5e352cb7f18341f664() : Boolean
      {
         return Point.distance(this.finalTargetPosition,this.position) > speed;
      }
      
      public function set message(param1:String) : void
      {
         var _loc2_:int = 0x0266F2A7 ^ 0x318197AC ^ 0x359EF5F0 ^ -1036521873;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x742B68B4 ^ -1191227663 ^ 0x031B9C9C ^ 0x0B81C44F))
            {
               case 0:
                  this._dca1466ecc6c56770ff0bb41.volume = this._eb5219c52607a5e672ab42a0();
                  this._dca1466ecc6c56770ff0bb41.text = param1;
                  _loc2_ = -1711945258 ^ -1831796451 ^ 0x242D745E ^ -347618814;
                  break;
               case 1:
                  return;
               case 2:
                  if(graphic.visible)
                  {
                     _loc2_ = 0x0103FE47 ^ 0x2A667FD4 ^ -2125506932 ^ 0x6E64A989;
                  }
                  else
                  {
                     _loc2_ = -1312182389 ^ 0x3C6BF5D4 ^ 0x50EE8D02 ^ 0x1902A9CA;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function get chat() : _b50543a62d285cc45338b507
      {
         return this._dca1466ecc6c56770ff0bb41;
      }
      
      public function _b20f70f036a8ce7b1ebc2911(param1:Number, param2:Number) : void
      {
         this._c4ae25d2bfb411f3c2989299 = new Point(param1,param2);
         this._14fd2868d3710a33e01faa02(param1 - this.position.x,param2 - this.position.y);
      }
      
      public function get isRodVisible() : Boolean
      {
         return this._rod.visible;
      }
      
      public function get onRaft() : Boolean
      {
         return this._92c5087902db9c03eb127c0b;
      }
      
      public function set onRaft(param1:Boolean) : void
      {
         this._92c5087902db9c03eb127c0b = param1;
         if(this._92c5087902db9c03eb127c0b && GameSwf.currentLocationDialog.raft != null && !GameSwf.currentLocationDialog.raft._d1b347acde8bd0cff6c33ae7(this))
         {
            GameSwf.currentLocationDialog.raft._92d6baab4102395a7951d68b(this);
         }
         else if(!this._92c5087902db9c03eb127c0b)
         {
            GameSwf.currentLocationDialog.raft.removeChar(this);
         }
      }
      
      public function get isOnForceMove() : Boolean
      {
         var _loc1_:Boolean = false;
         if(this._moveStrategy != null)
         {
            _loc1_ = this._moveStrategy == this._forceMoveStrategy;
         }
         return _loc1_;
      }
      
      public function get moveStrategy() : _8b5edf1c1de2751d1bc6fca0
      {
         return this._moveStrategy;
      }
      
      public function set moveStrategy(param1:_8b5edf1c1de2751d1bc6fca0) : void
      {
         var _loc2_:int = 0x60E75BE7 ^ -11910164 ^ -66258522 ^ -302357206;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (-1877971221 ^ -321574416 ^ 0x7FCEF015 ^ -1924123767))
            {
               case 0:
                  if(this._moveStrategy != null)
                  {
                     _loc2_ = 0x153D739D ^ -864532033 ^ -1039765541 ^ -1793535620;
                  }
                  else
                  {
                     _loc2_ = 0x7DFBB8B9 ^ -681254857 ^ 0x3F86448D ^ 0x1B429885;
                  }
                  break;
               case 1:
                  this._moveStrategy = param1;
                  return;
               case 2:
                  this._moveStrategy.disable();
                  _loc2_ = 0x44204CCB ^ 0x36A70B43 ^ 0x5958C470 ^ -1518073986;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function _d9fc460712ce3ee73afa1e5e() : _b161a89a77152785050fe395
      {
         return this._rod.state;
      }
      
      public function _7df06d1da20fad3e50e8e3c1(param1:DisplayObject) : void
      {
         this._lakeCells = param1;
      }
      
      public function _a43618439352bc03017c3c39() : Boolean
      {
         return this.moveStrategy != null && this.moveStrategy._a43618439352bc03017c3c39();
      }
      
      public function _bdc65a6326e91a3b031ee7c7() : Boolean
      {
         return this.moveStrategy != null && this.moveStrategy._bdc65a6326e91a3b031ee7c7();
      }
      
      private function _131f25dc22f969881186838a() : Number
      {
         return this.moveStrategy != null && this.moveStrategy._bdc65a6326e91a3b031ee7c7() ? this.moveStrategy._db384801298e04376755aa5d() : NaN;
      }
      
      public function _a9758614678827114f90d3aa(param1:BitmapData, param2:BitmapData, param3:Number, param4:Number) : void
      {
         this._obstacleMap = param1;
         this._ed4324592c0c72c1a45f34f7 = param2;
         this._keyboartMove._97a5a7e3bc4bf69d61e7aef7(param1,param2,param3,param4);
         this._pathMoveStrategy._97a5a7e3bc4bf69d61e7aef7(param1,param2,param3,param4);
         this._boatMoveStrategy._97a5a7e3bc4bf69d61e7aef7(param1,param2,param3,param4);
         this._forceMoveStrategy._97a5a7e3bc4bf69d61e7aef7(param1,param2,param3,param4);
      }
      
      public function set boatObstacleMap(param1:BitmapData) : void
      {
         this._boatMoveStrategy.boatObstacleMap = param1;
      }
      
      public function _0224dc224792aa25034cbe6d(param1:uint = 0, param2:uint = 0) : void
      {
         var _loc3_:DisplayObject = null;
         var _loc4_:int = 0x3679F439 ^ -1655468241 ^ 0x01A9440A ^ -1434239204;
         var _loc5_:int = -862201026 ^ -1545212438 ^ -895647865 ^ -1511831213;
         var _loc6_:Point = null;
         var _loc7_:int = -738441311 ^ 0x61C97960 ^ -755915462 ^ 0x60C49BFB;
         var _loc8_:int = 0x6ACF8D15 ^ -1595816636 ^ 0x657BC106 ^ -1353348777;
         if(this._charAnimationSource != null && this._charViewport != null)
         {
            if(this.boat == null)
            {
               if(this.raft == null)
               {
                  if(this._570273a7503099747b562a50 == null)
                  {
                     graphicPosition.x = graphic.x = int(this.position.x + _39d7d82359bf8046fe8ef6c4._ed4a735c5a6981f99dda5b73("揊捊捤描握揃掮掌挟捸掟换掟揽揚挺挿掳揥揧握挿捤捷","捪捹捻揯揭掇挞揷掏接挺揉探挑挲揠"));
                     graphicPosition.y = graphic.y = int(this.position.y + _95da7f1147c669197db81295._6371735dc9287bd2d9618c1e("剳劜副勼刚削劽別切劖劏勿劝勧剼劝剚剅剾劖剪势创利","劮刚勇創刵剮勿刊剂励前刁勱剉勤劄"));
                  }
                  else
                  {
                     graphicPosition.x = graphic.x = int(this._570273a7503099747b562a50.x + _39d7d82359bf8046fe8ef6c4._ed4a735c5a6981f99dda5b73("挏掾挓挙挗挀挞掉掾掱捥捭捎捨揰掷挎揘捵掰掷挡揩挍","挃挷揓控揬挕挶揚掾掸揎揌捭挿掍掬"));
                     graphicPosition.y = graphic.y = int(this._570273a7503099747b562a50.y + _95da7f1147c669197db81295._6371735dc9287bd2d9618c1e("刋勒劦剐劶刟勬劐劳到勀剕劣勝劽刳勔剭劲勿勰剅剤劢","剡勍别劉劽刎劆刈剰劥剞励勠劚刯剴"));
                  }
               }
               else
               {
                  graphicPosition.x = graphic.x = int(this.position.x + this.raft.offsetX);
                  graphicPosition.y = graphic.y = int(this.position.y + this.raft.offsetY);
               }
            }
            else
            {
               _loc6_ = this.boat._985f48f37c102603628fed8f(int(this.position.x + _95da7f1147c669197db81295._6371735dc9287bd2d9618c1e("刧劲削创剮动勮刃别劆则刉剮剦勅募刎勢刋剂劖劗刀刉","剋動剳刉剰勨劖刀劭别分勞则刃勾勵")),int(this.position.y + _95da7f1147c669197db81295._6371735dc9287bd2d9618c1e("刲勿势劀劯刦剎劰刘剂勌剋剁力勍劘刖加削刟勝刡則剒","刌刷剙判劢勬劧刘劻劔剳劼劑勶剚劍")));
               graphicPosition.x = graphic.x = _loc6_.x;
               graphicPosition.y = graphic.y = _loc6_.y;
            }
            this._dca1466ecc6c56770ff0bb41.x = graphic.x;
            this._dca1466ecc6c56770ff0bb41.y = graphic.y;
            if(this._fishCatchEmoticons != null)
            {
               this._fishCatchEmoticons.x = graphic.x;
               this._fishCatchEmoticons.y = graphic.y;
            }
            _loc3_ = this._controllerUserPopup.view.source;
            _loc3_.x = graphic.x;
            _loc3_.y = graphic.y - (0x6C58CD3A ^ 0x20CE080E ^ -1772105016 ^ -624355381);
            if(this._lastRotationAngle != this.position.rotation)
            {
               this._lastRotationAngle = this.position.rotation;
               if(this._lastRotationAngle > (-362985856 ^ -740248774 ^ 0x3B7D6067 ^ 0x02C09569))
               {
                  this._lastRotationAngle = (-2002832864 ^ 0x271B6E14 ^ 0x3BB3A265 ^ 0x6BC800C9) + this._lastRotationAngle;
               }
               else if(this._lastRotationAngle < (0x0E990851 ^ 0x386C3E90 ^ 0x391951D2 ^ -267151265))
               {
                  this._lastRotationAngle = (0x7ABFD467 ^ -754069205 ^ -2011080753 ^ 0x219353EB) + this._lastRotationAngle;
               }
               this.position.rotation = this._lastRotationAngle;
            }
            _loc4_ = this._lastRotationAngle;
            if(this.boat != null)
            {
               _loc4_ = this.boat._491742ba3ea18846c625e312(_loc4_);
            }
            _loc5_ = (Math.round(_loc4_ / (0x69E948F0 ^ 0x09BA7165 ^ 0x4FF270A8 ^ 0x2FA14910)) + (-1573207432 ^ -64456539 ^ -1083918053 ^ -512359488)) % (-1899912826 ^ 0x7A3D2E01 ^ -440973429 ^ 0x114BC804);
            if(graphic.visible)
            {
               if(this._bdc65a6326e91a3b031ee7c7())
               {
                  if(this._3711cae4480c0495da843ea9 == false)
                  {
                     this._3711cae4480c0495da843ea9 = true;
                     if(Boolean(GameSwf.settings.sfx) && Boolean(this._d316a1f809a03b71f554bc4c) && Boolean(this._d316a1f809a03b71f554bc4c.soundFile))
                     {
                        _3a8a2602dcf9bf49b62e62af._e1d8e35fdae39ed0bc63ebea(this._d316a1f809a03b71f554bc4c.soundFile,this,this._548f90d1a09cfd32c528f935());
                     }
                  }
                  this._charViewport.frame = param1 / CHAR_ANIMATION_SPEED % (-1255722681 ^ -1474961398 ^ -711208798 ^ -928448021);
               }
               else
               {
                  if(this._3711cae4480c0495da843ea9)
                  {
                     this._3711cae4480c0495da843ea9 = false;
                     if(Boolean(GameSwf.settings.sfx) && Boolean(this._d316a1f809a03b71f554bc4c) && Boolean(this._d316a1f809a03b71f554bc4c.soundFile))
                     {
                        _3a8a2602dcf9bf49b62e62af._113c8c14c0cbfde31fbea9d6(this._d316a1f809a03b71f554bc4c.soundFile,this);
                     }
                  }
                  this._charViewport.frame = -225298137 ^ -845133448 ^ -1239512788 ^ -1993541261;
               }
               _loc7_ = this._charViewport.frame;
               if(_loc7_ == (0x694DD9DB ^ -1641599494 ^ 0x71C4945C ^ -2035392385))
               {
                  _loc7_ = 0x46615DE9 ^ 0x1F945748 ^ 0x34A98623 ^ 0x6D5C8C82;
               }
               if(_loc7_ == (0x7EDD2F2B ^ -494540145 ^ -485105799 ^ 0x7F4D1ADE))
               {
                  _loc7_ = -1393310410 ^ -2121311087 ^ 0x757A70CC ^ 0x5806E969;
               }
               _loc8_ = _loc5_ + _loc7_ * (0x65FBACCA ^ -1659173734 ^ -1331077430 ^ 0x4849F692);
               if(this._frameIndex != _loc8_)
               {
                  this._frameIndex = _loc8_;
                  this._charViewport.bitmapData = this._charAnimationSource._b007a8f45848923a4a7c0631(this._frameIndex);
                  this._a7da4ea02a24d7f0dd5921e4();
               }
               if(this._rod.visible)
               {
                  this._rod.direction = _70197a58a4eba697ed6a96dc._d72f50c5ba971940a0f0a71b(this._frameIndex);
                  this._rod._f7998d81aa01070a8a3af13a(this._charViewport,this.locationUser.viewConfig.body.color);
               }
            }
            else
            {
               if(this._3711cae4480c0495da843ea9)
               {
                  this._3711cae4480c0495da843ea9 = false;
                  if(Boolean(GameSwf.settings.sfx) && Boolean(this._d316a1f809a03b71f554bc4c) && Boolean(this._d316a1f809a03b71f554bc4c.soundFile))
                  {
                     _3a8a2602dcf9bf49b62e62af._113c8c14c0cbfde31fbea9d6(this._d316a1f809a03b71f554bc4c.soundFile,this);
                  }
               }
               this._charViewport.frame = -1973056864 ^ 0x0B0EB65F ^ -1282730325 ^ 0x32E02A54;
            }
         }
      }
      
      private function _89ccd1323d1857b957635827() : void
      {
         var _loc1_:int = -1449340136 ^ 0x17E36E60 ^ 0x382036BB ^ -1371733585;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (0x06EF3D5A ^ 0x18CFF86F ^ 0x3B048D5B ^ 0x0D46C203))
            {
               case 0:
                  if(this._charAnimationSource)
                  {
                     _loc1_ = -2087942450 ^ -1393362571 ^ -1762533545 ^ -1846728061;
                  }
                  else
                  {
                     _loc1_ = -1138998938 ^ 0x4AC5CA5E ^ -123101481 ^ 0x26129F87;
                  }
                  break;
               case 1:
                  if(this._charViewport)
                  {
                     _loc1_ = -1175983888 ^ 0x6B27BF2C ^ 0x1396E190 ^ -382452702;
                  }
                  else
                  {
                     _loc1_ = -653051771 ^ 0x69929419 ^ 0x791BA3D2 ^ -503806685;
                  }
                  break;
               case 2:
                  this._charAnimationSource.destroy();
                  _loc1_ = 0x2A22626D ^ -1049740748 ^ 0x34EBBD1C ^ -138055891;
                  break;
               case 3:
                  this._charViewport.destroy();
                  if(this._charViewport.parent == this._charSprite)
                  {
                     _loc1_ = -350320043 ^ -49003694 ^ -782564186 ^ -281851960;
                  }
                  else
                  {
                     _loc1_ = 0x5367353E ^ -1872984124 ^ 0x187D10F1 ^ -215734170;
                  }
                  break;
               case 4:
                  this._charSprite.removeChild(this._charViewport);
                  _loc1_ = 0x25AD0168 ^ -1296868440 ^ 0x507EB7AB ^ -285055226;
                  break;
               case 5:
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function moveTo(param1:Number, param2:Number) : void
      {
         this.position.x = param1;
         this.position.y = param2;
      }
      
      public function _93eadffa54c4b1bfff0374ab(param1:Number, param2:Number) : void
      {
         if(this.moveStrategy == this._boatMoveStrategy)
         {
            if(this._boatMoveStrategy._1d90133f14d0230dc0788db9() || !(this is _c9513c48978d5034cc9ff2f4))
            {
               this.moveStrategy = this._keyboartMove;
            }
         }
         if(this.moveStrategy == this._pathMoveStrategy && (param1 != (-301575656 ^ 0x34F6AFF0 ^ -1754068732 ^ 0x4D83F4EC) || param2 != (-178049381 ^ 0x36C1DA9E ^ 0x7078D0A6 ^ -1277549405)))
         {
            this.moveStrategy = this._keyboartMove;
         }
         if(this.moveStrategy == this._keyboartMove)
         {
            this._keyboartMove._93eadffa54c4b1bfff0374ab(param1,param2);
         }
         if(this.moveStrategy == this._boatMoveStrategy)
         {
            this._boatMoveStrategy._93eadffa54c4b1bfff0374ab(param1,param2);
         }
      }
      
      public function _b1f7457b16931a1882a5f4ed(param1:Number, param2:Number, param3:Number = NaN) : void
      {
         this._6f1fac7832d67604ae5bbe05 = getTimer();
         this._pathMoveStrategy.wasPathSearch = false;
         if(this.moveStrategy == this._forceMoveStrategy)
         {
            return;
         }
         if(param3 == (0x6234377E ^ -918520743 ^ 0x4A0DFDAC ^ 0x1E864974))
         {
            param3 = NaN;
         }
         if(this.moveStrategy == this._boatMoveStrategy)
         {
            if(this._boatMoveStrategy._1d90133f14d0230dc0788db9() || !(this is _c9513c48978d5034cc9ff2f4))
            {
               this.moveStrategy = this._pathMoveStrategy;
            }
         }
         if(this.moveStrategy == null || this.moveStrategy == this._keyboartMove)
         {
            this.moveStrategy = this._pathMoveStrategy;
         }
         if(this.moveStrategy == this._pathMoveStrategy)
         {
            if(this._rod.visible)
            {
               this._ea52ddaca1a080cc2518c8da();
            }
            this._pathMoveStrategy.moveTo(param1,param2,param3);
         }
         if(this.moveStrategy == this._boatMoveStrategy)
         {
            if(this is _c9513c48978d5034cc9ff2f4)
            {
               this._boatMoveStrategy._e79468769a1f2dfe076686e3(param1,param2);
            }
            else
            {
               this._boatMoveStrategy.moveTo(param1,param2,param3);
            }
         }
      }
      
      public function _1cc3d070e1f499bddccd0742() : Boolean
      {
         var _loc1_:Boolean = false;
         var _loc2_:Point = graphic.localToGlobal(new Point(graphic.mouseX,graphic.mouseY));
         if(this.canShowInTutorial && graphic.hitTestPoint(_loc2_.x,_loc2_.y) && this.canShowUserPopupBaseOnMoveStrategy)
         {
            this._controllerUserPopup.show();
            _loc1_ = true;
         }
         return _loc1_;
      }
      
      public function _b8c369dbe6dd94d27ff0fb7e() : void
      {
         var _loc1_:int = -331634632 ^ -334733423 ^ 0x7EEB2A66 ^ -1632292572;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (0x58198B4D ^ 0x15BFF3C3 ^ 0x78C616BB ^ -720796961))
            {
               case 0:
                  this.moveStrategy = this._pathMoveStrategy;
                  _loc1_ = -1739839378 ^ 0x379014E9 ^ -1073828588 ^ -263488133;
                  break;
               case 1:
                  if(this._moveStrategy != this._boatMoveStrategy)
                  {
                     _loc1_ = 0x603CBAE1 ^ 0x1352CB50 ^ -312070096 ^ 0x7E61AD6B;
                  }
                  else
                  {
                     _loc1_ = -1561783805 ^ 0x0F539A26 ^ 0x66894C24 ^ 0x2B5A28E9;
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
      
      protected function _ca56e0fbc229ff7f04ebb46b() : void
      {
         this._controllerUserPopup = new _92885560496ae9c2acd16824(this);
      }
      
      public function _22529d44305d9d9ce9be7148() : _faab80cfc2fee99ff0930b0b
      {
         this._89ccd1323d1857b957635827();
         this._charAnimationSource = new _85c463930cec98e06d72d6a3();
         var _temp_4:* = this._charAnimationSource;
         var _temp_3:* = _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揠挭挫掶挶捧捚掻捇揻揄掼掲掓揫掐捿揙揼挘揖捇挷挓","据捚捶挾捁揉揜掭挼掦捩挋捍挩揩挍");
         var _temp_2:* = §§findproperty(Rectangle);
         var _temp_1:* = 0x2CA4EBC4 ^ 0x353BAD13 ^ 0x073AB0FB ^ 0x1EA5F62C;
         _temp_4.config({(_temp_3):new Rectangle(_temp_1,_temp_1,0x7EAE1790 ^ 0x6F5DBAFC ^ -208744227 ^ -495092349,0x7062545D ^ -2097448619 ^ -127818525 ^ 0x0AF889BB)});
         var _loc1_:BitmapData = GameSwf.charsManager._f33202ab6195fcbfe355132f(this.locationUser.viewConfig);
         this._charAnimationSource.bitmapData = _loc1_;
         if(_loc1_ == null)
         {
            graphic.visible = false;
         }
         else if(graphic.visible == false)
         {
            graphic.alpha = 0x7010D2A9 ^ -1744288636 ^ 0x0857C749 ^ -531672732;
            graphic.visible = true;
            TweenCube.to(this.graphic,0x19E97B27 ^ 0x02F9C321 ^ 0x5F46DF38 ^ 0x4456673F,{(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揤挤揓捽掾揬挃揪揮捂掶捼挳掁捳揘捂捂","挤揢捖挜挟挥掵掛掤挴挺掜捥捆揽掸")):0x0B42A491 ^ 0x5659BD4A ^ -127356430 ^ -1519146968});
         }
         this._charViewport = new _d557186cde1a474d8468f3b2();
         this._charViewport.smoothing = true;
         this._133a94009c7077f22907f2c5 = new _43c06507a1ca0c884cf0046d(this);
         if(graphic is DisplayObjectContainer)
         {
            removeAllChildren(DisplayObjectContainer(graphic));
            this._charShadow = new Bitmap(CHAR_SHADOW);
            removeAllChildren(this._charSprite);
            this._charSprite.addChild(this._charShadow);
            this._charSprite.addChild(this._charViewport);
            DisplayObjectContainer(graphic).addChild(this._charSprite);
            DisplayObjectContainer(graphic).addChild(this._rod);
            _bd60f9ad6ef4aaf28041ce8f.charMessagesLayer.addChild(this._dca1466ecc6c56770ff0bb41);
            _bd60f9ad6ef4aaf28041ce8f.charMessagesLayer.addChild(this._controllerUserPopup.view.source);
         }
         this._frameIndex = int.MIN_VALUE;
         this._lastRotationAngle = int.MIN_VALUE;
         this._0224dc224792aa25034cbe6d();
         this._656c9dc6e99f5cc1326f5a53();
         return this._charAnimationSource;
      }
      
      public function _8606e2a8d94f637089fc8480(param1:int = -1) : void
      {
         var _loc2_:String = null;
         var _loc3_:Object = null;
         var _loc4_:int = _67282af25befe9778e5c8dd1._a8f7d2e13fb6fd63b20725a1(param1);
         var _loc5_:Object = app.looksDict.get(_loc4_);
         if(_loc5_ != null)
         {
            _loc2_ = Debug.getPropertyOrDefault(_loc5_,_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("჊ငკိჹျ჌იႄႌဒ၆ဢႧႼ။ၺც","ეလ႑ჼွွႦფၟသႷ႙ႤႳၞၸ"),"");
            if(_loc2_ == null || _loc2_.length == (-367047942 ^ -1265283448 ^ -1747778152 ^ -916913686))
            {
               this._speedMultiplier = this._c201603143574a9fd1ac8f26;
            }
            else
            {
               _loc3_ = decodeJson(_loc2_);
               if(_loc3_.hasOwnProperty(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挙插換揲挳捳掛捐捒探捯揱捡捤捱捆捻挳挠掊挢掚振指掤揾捳挼揁捻揈挕掝揺换掘掱揑掁捩","掕挨揄掦排揭描掣換挭揫挦換挟捳挑")))
               {
                  this._speedMultiplier = Number(_loc3_.speed_multiplier);
               }
               else
               {
                  this._speedMultiplier = this._c201603143574a9fd1ac8f26;
               }
            }
         }
         else
         {
            this._speedMultiplier = this._c201603143574a9fd1ac8f26;
         }
         this._keyboartMove.speedMultiplier = this._speedMultiplier;
         this._pathMoveStrategy.speedMultiplier = this._speedMultiplier;
      }
      
      protected function _656c9dc6e99f5cc1326f5a53() : void
      {
         var _loc1_:_283b592e1b144e604db439f2 = GameSwf.instance.managerTutorial;
         if(!_loc1_.isAnyTutorialInProgress)
         {
            return;
         }
         var _loc2_:_9b5482b3978b7abe1547abb8 = _loc1_.tutorialInProgress;
         _d3d70238b67f17bb35699a2c._ebea62b8ec3e654b81ce8b79(graphic,_loc2_._3a7d84cb0f6340bd38d53429(this));
      }
      
      public function update(param1:uint, param2:uint, param3:Number) : void
      {
         var _loc4_:Number = NaN;
         this._576fa5878f87f11db6e3394f();
         if(this.moveStrategy != null && this._obstacleMap != null)
         {
            this.moveStrategy.update(param1,param2,param3);
            if(this.destroyed)
            {
               return;
            }
            if(this.moveStrategy != null && this.moveStrategy._bdc65a6326e91a3b031ee7c7())
            {
               this._c8602d88efc64575cdc92b85();
            }
            else
            {
               this._942a8f57ef8b0bf7eb977e7c();
            }
         }
         if(graphic.visible)
         {
            if(this._f4d50138cc94b775cea59f60)
            {
               this._f4d50138cc94b775cea59f60 = false;
               this._rod.rope._e793d8e60eaab3c87ec6013c();
            }
            _loc4_ = this._131f25dc22f969881186838a();
            if(isNaN(_loc4_) == false)
            {
               _loc4_ = this._f525464ed52eee5c24b751e0(_loc4_);
               this.position.rotation = _loc4_;
            }
         }
         else
         {
            this._f4d50138cc94b775cea59f60 = true;
         }
         if(this._rod != null && this._rod.visible)
         {
            this._rod.update(param3);
         }
         this._0224dc224792aa25034cbe6d(param1,param2);
         if(getTimer() - this._6f1fac7832d67604ae5bbe05 > this._00d5574f1f53809302cb8eef)
         {
            this._6f1fac7832d67604ae5bbe05 = getTimer();
            if(!(this is _c9513c48978d5034cc9ff2f4) && !this._a43618439352bc03017c3c39() && !this.locationUser.username == _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揵捰捭挡掜挜揝揗揘捃挾挢揄掸揎掋捷掽","接捴捳掤捇掘揿挶捱掕挹掬挻挼掎挀"))
            {
               this._058b9f00f18728a7f15a9685(this.locationUser.position);
               if(!this.locationUser.position.equals(this.position) || !isNaN(this.locationUser.position.rotation) && !_67f8febc099eaa05c48aa41e._1c3659e23ef175c26ea94bb5(this.locationUser.position,this.position) && this._aa534c45c727463a0794bb69() == false)
               {
                  this._b1f7457b16931a1882a5f4ed(this.locationUser.position.x,this.locationUser.position.y,this.locationUser.position.rotation);
               }
            }
         }
      }
      
      public function _f525464ed52eee5c24b751e0(param1:Number) : Number
      {
         if(this.boat != null && this._moveStrategy is _600d447c132e71fe3abc23ea == false)
         {
            param1 = this.boat._87b3acb53125f420158bfaad(param1);
         }
         return param1;
      }
      
      protected function _72a7fe1b788b508325bc82d5() : void
      {
         this._c7cf90b57c9d6e074cc30a90 = null;
         this._0224dc224792aa25034cbe6d();
      }
      
      public function move() : void
      {
         var _loc1_:Number = NaN;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:Number = NaN;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         do
         {
            _loc1_ = this._c7cf90b57c9d6e074cc30a90.x - this.position.x;
            _loc2_ = this._c7cf90b57c9d6e074cc30a90.y - this.position.y;
            _loc3_ = Math.sqrt(_loc1_ * _loc1_ + _loc2_ * _loc2_);
            if(_loc3_ <= speed)
            {
               if(this._7e02d753cf9e82592ee9f281() == false)
               {
                  break;
               }
            }
         }
         while(_loc3_ <= speed);
         if(this._0dc9cf5e352cb7f18341f664() && _loc3_ < speed)
         {
            _loc1_ = this.finalTargetPosition.x - this.position.x;
            _loc2_ = this.finalTargetPosition.y - this.position.y;
            _loc3_ = Math.sqrt(_loc1_ * _loc1_ + _loc2_ * _loc2_);
            this._c7cf90b57c9d6e074cc30a90 = this.finalTargetPosition.clone();
         }
         if(_loc3_ > speed)
         {
            _loc4_ = Math.atan2(_loc2_,_loc1_);
            _loc5_ = Math.round(_loc4_ / (Math.PI / (-453987858 ^ 0x06D4C807 ^ -221202012 ^ 0x10F4C049))) * (Math.PI / (0x0915EC1A ^ -780088025 ^ -1821397076 ^ 0x4BFA8E95));
            _loc6_ = this.position.x + speed * Math.cos(_loc5_);
            _loc7_ = this.position.y + speed * Math.sin(_loc5_);
            if(this._2e57ed706f48c41987f05070(_loc6_ + mapOffset.x,_loc7_ + mapOffset.y) == true)
            {
               _loc6_ = this.position.x + speed * Math.cos(_loc5_);
               _loc7_ = this.position.y + speed * Math.sin(_loc5_);
            }
            _loc8_ = _loc6_ - this.position.x;
            _loc9_ = _loc7_ - this.position.y;
            _loc10_ = _f190aa7e3fff37e97443ecf7(Math.atan2(_loc9_,_loc8_) * (-1349605543 ^ 0x510A8452 ^ -1756372271 ^ 0x69CBC16E) / Math.PI,this.position.rotation);
            this.position.rotation += _loc10_ * _95da7f1147c669197db81295._6371735dc9287bd2d9618c1e("勷剉剟利剌勓刵創劤割勉剎勣劓刞刄劌勇剃剕剬刣勝劰","剼勪剗剽切勜勱勽勐剻劜削劧剨劏刭");
            this.position.x = _loc6_;
            this.position.y = _loc7_;
         }
      }
      
      private function _2e57ed706f48c41987f05070(param1:Number, param2:Number) : Boolean
      {
         var _loc3_:Point = new Point(param1,param2);
         return this._obstacleMap.getPixel32(param1,param2) > (-2006293080 ^ -1984773525 ^ 0x212DF965 ^ 0x200AA159) && GameSwf.currentLocationDialog.raftRectangle.containsPoint(_loc3_) || GameSwf.currentLocationDialog._b24937139cc44ffe53f7fc23(param1,param2,this);
      }
      
      private function _7e02d753cf9e82592ee9f281() : Boolean
      {
         if(this._c7cf90b57c9d6e074cc30a90 != this.finalTargetPosition)
         {
            if(this.path != null && this.path.length > (0x766743FF ^ -1889055309 ^ -2095906173 ^ 0x7A130CCF))
            {
               this._c7cf90b57c9d6e074cc30a90 = this.path.shift();
               return true;
            }
         }
         return false;
      }
      
      public function _c9aef71caac01218bc064356() : void
      {
         this._22529d44305d9d9ce9be7148();
         var _temp_2:* = this;
         var _temp_1:* = -2000013532 ^ 0x2067F6FE ^ 0x7B8E0D4B ^ -752628591;
         _temp_2.update(_temp_1,_temp_1,-683485558 ^ 0x286D13B5 ^ 0x5CC230C9 ^ -1544686089);
      }
      
      protected function _a7da4ea02a24d7f0dd5921e4() : void
      {
         var _loc1_:int = 0x78A6430A ^ 0x479D631B ^ 0x45B348B3 ^ 0x176A2ED2;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (0x767B4AB1 ^ 0x45C80BEC ^ -801002000 ^ -1911510312))
            {
               case 0:
                  var _temp_4:* = this._charAnimationSource;
                  var _temp_3:* = _95da7f1147c669197db81295._8f4866de82b7339154180ecb("刴劳剔初力剗剌刀剌劣劥刐劯勠勊勢刍劂剑勨剷助剫勠","勡劾刌剨剺勓到劺劒功劜勫効剘勶剮");
                  var _temp_2:* = §§findproperty(Rectangle);
                  var _temp_1:* = -1337539506 ^ 0x69B353F8 ^ 0x655D1EEC ^ -1129805478;
                  _temp_4.config({(_temp_3):new Rectangle(_temp_1,_temp_1,0x2EC4EC92 ^ -306496523 ^ 0x15B4A838 ^ -691306693,-2025663567 ^ -1553563643 ^ -996021652 ^ -528107099)});
                  this._charViewport.y = -int(this._charViewport.height) + this._2ad01a96e4da2a5b5eb25f9a;
                  _loc1_ = -1617626404 ^ -1828220539 ^ -294396048 ^ -1895632294;
                  break;
               case 1:
                  this._charShadow.x = -int(this._charShadow.width / (0x6EF5BF15 ^ 0x4DE87A89 ^ -671992297 ^ -185601143)) + _b2bd831d3ba5e32cc40461b8;
                  this._charShadow.y = -int(this._charShadow.height / (-1638029132 ^ -1536442424 ^ 0x6446544E ^ 0x5E704330));
                  _loc1_ = 0x417C275E ^ 0x5046C930 ^ -1834768939 ^ -293925427;
                  break;
               case 2:
                  this._charViewport.x = -int(this._charViewport.width / (0x6B779555 ^ -616265118 ^ 0x61E1FF2F ^ -774709222));
                  if(this.locationUser.username.toLowerCase() == _95da7f1147c669197db81295._8f4866de82b7339154180ecb("劚劵削剒勿剎劓加剡刹剉劥剹剟勵勲刭劧刣剚","勗勭劖創则刲劒刬勱勒剚劦剤初勰刌"))
                  {
                     _loc1_ = -1974953612 ^ -47145087 ^ 0x27F257B2 ^ 0x3D681732;
                  }
                  else
                  {
                     _loc1_ = -2040551236 ^ 0x77C3FF06 ^ 0x6EB849CB ^ -221882368;
                  }
                  break;
               case 3:
                  if(this._charViewport != null)
                  {
                     _loc1_ = 0x11097A90 ^ -380473975 ^ 0x68D21A68 ^ -43300090;
                  }
                  else
                  {
                     _loc1_ = 0x639686F7 ^ 0x22BE8707 ^ -1737936836 ^ -1264355393;
                  }
                  break;
               case 4:
                  this._charViewport.y = -int(this._charViewport.height) + this._fd52fd2647fb75c6152cbdb2;
                  _loc1_ = -1917149647 ^ 0x27519CDE ^ -1126870316 ^ 0x7BDC1648;
                  break;
               case 5:
                  if(this._charShadow != null)
                  {
                     _loc1_ = -1469709885 ^ 0x4132776F ^ 0x327D7257 ^ -1228193137;
                  }
                  else
                  {
                     _loc1_ = -141719040 ^ 0x498F992A ^ -1591164066 ^ 0x72C89602;
                  }
                  break;
               case 6:
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function _ea52ddaca1a080cc2518c8da() : void
      {
         var _loc1_:int = -1271367639 ^ 0x5FD24FD8 ^ 0x7903A50E ^ 0x0D057434;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (0x455EC9C6 ^ -621753889 ^ 0x075121B8 ^ 0x0713C769))
            {
               case 0:
                  clearTimeout(this._showRodTimerId);
                  return;
               case 1:
                  this._a7da4ea02a24d7f0dd5921e4();
                  _loc1_ = 0x29D5D068 ^ -934331546 ^ -100186011 ^ -2072951389;
                  break;
               case 2:
                  this._charSprite.addChild(this._charViewport);
                  _loc1_ = 0x0F9FB35F ^ 0x30A4FABA ^ 0x6119B895 ^ -1043458119;
                  break;
               case 3:
                  if(this._rod.visible)
                  {
                     _loc1_ = 0x12FCB1A7 ^ 0x5C2B0DB1 ^ 0x3D167F12 ^ -332585526;
                  }
                  else
                  {
                     _loc1_ = -1183016912 ^ -1854510036 ^ 0x0B20B74F ^ -1127832165;
                  }
                  break;
               case 4:
                  if(this._charViewport != null)
                  {
                     _loc1_ = -565585592 ^ -1992896313 ^ -970907650 ^ 0x0EB2F0BB;
                  }
                  else
                  {
                     _loc1_ = 0x448ED191 ^ -1707998631 ^ 0x156E0C7B ^ 0x543E397A;
                  }
                  break;
               case 5:
                  this._charSprite.addChild(this._charShadow);
                  TweenCube.destroyTweensOf(this._charShadow,false);
                  this._charShadow.alpha = 0x573D2F15 ^ 0x7E85F8E9 ^ -1016224057 ^ -355110598;
                  _loc1_ = 0x38101AAD ^ -1201768410 ^ -1373543894 ^ -1316755859;
                  break;
               case 6:
                  this.reelIn();
                  this._rod.visible = false;
                  this._rod.ready();
                  this._0224dc224792aa25034cbe6d();
                  removeAllChildren(this._charSprite);
                  if(this._charShadow != null)
                  {
                     _loc1_ = -1058595230 ^ -170365020 ^ -1894741365 ^ 0x25C31D80;
                  }
                  else
                  {
                     _loc1_ = 0x61C7DF41 ^ 0x7C478022 ^ -1857145333 ^ 0x13228FA4;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function _1ac276fa38c42f5b354104cd(param1:Boolean = false) : Boolean
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = this._rod.visible;
         var _loc4_:Boolean = Boolean(app.user.inTalkWithNPC.value);
         var _loc5_:Boolean = this._moveStrategy is _2e5b3522a164ee588f85e4b1 && (this._moveStrategy as _2e5b3522a164ee588f85e4b1)._a9e2dd6063c60dc4a60d90ba() == false;
         Cc.log(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勿刼刟劁剔劓刺剿劥劋剉剒勌创剅剷勦刣剬劒到努勍勥劥创劊勯剸劰劵刵剕劊剺券剟删勒剷刣劫劾劤到剏刓劲务刱勑剜劝勭勬刕刻劧勊劈勳别刱劼勿励勧勔劉办劭劏劋刁","勏判勓劼列劝劅办刬勺勒勯劰劄劀劁") + _loc3_ + _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ႅშ႔ეၭၡၹ္ၦႌၘ႓ჲဿၵၠထဋ჆ၾႍႩၒံჯၮႈေჾၔဧႫဌ့ဧြၽ၁ဴ႙ဥჸံူა၇მၜ","ဉ႕ဲჩဌႠსဿ၀ႛ့႕მ၀Ⴈႚ") + _loc4_ + _95da7f1147c669197db81295._8f4866de82b7339154180ecb("助勎刐剞勶劾勪勑刽刦劬劚勫劕勐勚勛劅剉剃勲初势割募剙剘勷切剒剗列刴勩剫劌刂刖剀券","劖刓剴刬勰劮劗动割勆勱剴劫勗剽剷") + this._moveStrategy + _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("႕ႏჷဖჅဢ႑ზ႓ႬჇမၐူႨჶჹၥဤဉဘჍဴႩ၀ჯမ၅ဟკဍ၄჻ჰ႒ႇ႓ၕႉၔႣდကၹႚლჷႧုჇხ်႑Ⴚႉყ჊႟ၕჃပ႟ၳႨფმမ၅ဣဪႧ႞ၴၗႅၦდဓဢၮႅႮၸႎႊႼႳႺႆၴ","ဤၔးဂიႧအ႐ဳဧႧဎဗყႶႱ") + _loc5_);
         var _loc6_:Boolean = _loc3_ == false && (this is _c9513c48978d5034cc9ff2f4 && _loc4_ == false || !(this is _c9513c48978d5034cc9ff2f4)) && !_loc5_;
         if(_loc6_ || param1)
         {
            this._0d2bfba6e9f4d0eab67dd120();
            this._rod.direction = _70197a58a4eba697ed6a96dc._d72f50c5ba971940a0f0a71b(this._frameIndex);
            this._rod._f7998d81aa01070a8a3af13a(this._charViewport,this.locationUser.viewConfig.body.color);
            this._rod.visible = true;
            if(this._charShadow != null)
            {
               TweenCube.destroyTweensOf(this._charShadow,false);
               TweenCube.to(this._charShadow,_70197a58a4eba697ed6a96dc.ROD_FADE_TIME_SEC,{(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剬劓剷剮剪刍勝切刻剾劯勑勋刻劁到剂刑","劗剧刢剼劶剧別剦剬勊勂劑剻刀刈劝")):-325911298 ^ -2136349536 ^ -1329725338 ^ -595257288});
            }
            _loc2_ = true;
         }
         return _loc2_;
      }
      
      public function bite() : void
      {
         this._rod.bite();
      }
      
      protected function _40b57941344db42954ffb9f1() : void
      {
         var _loc1_:int = 0x449E2EBD ^ -1318693482 ^ -296756829 ^ 0x43E6313E;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (-749652577 ^ -238887727 ^ -2145250432 ^ -85956232))
            {
               case 0:
                  this._rod.reelInHandler = sendResult;
                  this._rod.reelIn();
                  if(this is _c9513c48978d5034cc9ff2f4)
                  {
                     _loc1_ = -2134755866 ^ 0x3B3A8D3F ^ 0x3261AA35 ^ -775388837;
                  }
                  else
                  {
                     _loc1_ = -734146394 ^ 0x22F59370 ^ 0x109D5B45 ^ -1106998489;
                  }
                  break;
               case 1:
                  app.user.inFishingProcess.value = false;
                  _loc1_ = -1694874126 ^ -274783358 ^ 0x01B2350D ^ 0x2C86C0C9;
                  break;
               case 2:
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function reelIn() : void
      {
         var _loc1_:int = 0x7C04ECBE ^ -955587772 ^ -491490629 ^ -2091600170;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (-963953117 ^ -2024795146 ^ 0x7A585EDB ^ -512903013))
            {
               case 0:
                  this._rod.reelIn();
                  _loc1_ = -1047646053 ^ 0x0F2756CE ^ -1460293278 ^ -1129177949;
                  break;
               case 1:
                  return;
               case 2:
                  if(this._rod.visible)
                  {
                     _loc1_ = -1912523859 ^ 0x48D00918 ^ -958102421 ^ -623151797;
                  }
                  else
                  {
                     _loc1_ = 0x0A9215E4 ^ -1548786351 ^ 0x67EF2CF0 ^ 0x143C97D1;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function _912f511bdd1d607aa06afe6c(param1:Number, param2:Number, param3:Number, param4:Boolean = false) : void
      {
         var _loc5_:Point = null;
         Cc.log(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၯႳზიႈკၼႾၓင႑ဠာ့ဵ႔ႡႹၑႜ၄ჯႢၥ်၇ပჃ","ၨၾႮႮ႓ှბნႡႦၬႢၓ႞ჼၾ") + this.locationUser.username + _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၝ႟၎ჴლႀႃင၁ქဦႋၗဆၤႈိဇဘჅპဪသၱႦါဨၕခုီპ","ၤိၨႍၪ။჌გၽဈဋႯჄိႋნ") + param1 + _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ჯၐჰၭღ၆ဇჸႪႢႆၙဝჁၭၘ","ၰႧႤშჭကဠ၎დეၣႋႈဉပၵ") + param2 + _95da7f1147c669197db81295._8f4866de82b7339154180ecb("劸刜刚剐劧分勈功勚劢","刟剙勵刁勺劸刿劤刔劣刧勤劈勶动别"));
         var _loc6_:Number = param1 - graphic.x;
         var _loc7_:Number = param2 - graphic.y;
         if(this.boat != null)
         {
            _loc5_ = new Point(_loc6_,_loc7_);
            this._14fd2868d3710a33e01faa02(_loc5_.x,_loc5_.y);
         }
         else
         {
            this._14fd2868d3710a33e01faa02(_loc6_,_loc7_);
         }
         this._rod._912f511bdd1d607aa06afe6c(_loc6_,_loc7_,param3,this.graphic.x,this.graphic.y,!graphic.visible || param4);
         if(_loc6_ * _loc6_ + _loc7_ * _loc7_ > (-237607886 ^ 0x653F4EB0 ^ 0x0BC4767D ^ -1624416601) * (0x50A2300E ^ -313344848 ^ 0x7ACD5A6C ^ -952249206))
         {
            Cc.warn(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勺劊刉勽勂効剔剙剨劖剸剟劄刾剢勻勤剑劘勶剽劻勮刬刵剷劒劢劶剐刍劧剶勀劘刂剄勘刵剆","剭勎则勓勭劐勹励剐劊勱剜剰劐勦劋") + Math.sqrt(_loc6_ * _loc6_ + _loc7_ * _loc7_));
            Cc.log(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掎捿捐掉挎掙揧捍挜掵揘挈揉捈挷揥挘挝揑挅揤捰推捎揊捧挼揵掶捏掄掍挴挠挨捜掵掭揄揷持捣揟揂","握掮挐掄掜挊掁捄指挧掄揖排挀探掑") + (this.__lastModeCommand != null ? this.__lastModeCommand.toString() : _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挠揀损挆接揥捎挂捠捋捫揝掷挼揃捬","措掖揲捣揫揂掑捳捾揠挑掄捒挠掤捚")));
            Cc.log(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劫别勞劬劔努則券勏刳勍勳勔劓劽切勧劸刣刯判刿勄劮労剪","剛助勀剛勦勿劽切刈劘劰剚勴刲刀剌") + (this.position != null ? this.position.toString() : _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挤掳揤捘揙掍挕捂指掗挗捖挋捴掆揪","挘捐提挧掅揕掀挠挌掝挊揣捇探捻揌")));
            Cc.log(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("分刼別勝刨到劍剴刅劦势刘劤劆勢勦","刓刵刞劆刨副剪劣刂劸刜刅刟劤努劫") + app.performanceManager.fps);
            Cc.log(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ဆဟဧ၊჉ွლၠზၲႂဩၒ႗Ⴤფ။မနჄჀၚာၔႋე჉ၱခႠჅၴဘჍဎ႖ზႛၝძၚဌ၇ၨုယ჊ၨ၄ဳဏႌဍႚပဪႉზუႨ","ჴဉ၂წცၙ႞၏သဓ႒ဒႇၐၮွ") + (this.__lastStartFishingCommand != null ? this.__lastStartFishingCommand.toString() : _95da7f1147c669197db81295._8f4866de82b7339154180ecb("勡勢劃刯剔勷創剽劘勋剩剜勎劤勎刲","劍効副刉勠到劊劑劌刞切勑劻剳劵刻")));
         }
      }
      
      public function _c8602d88efc64575cdc92b85() : void
      {
         var _loc1_:int = -586614025 ^ -938038079 ^ 0x78B99EBC ^ -2032386460;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (0x02CDBCF3 ^ 0x74FCF2D8 ^ -127340227 ^ 0x652249FA))
            {
               case 0:
                  return;
               case 1:
                  this._168f29fe0505de9bdb858ead = true;
                  this._ea52ddaca1a080cc2518c8da();
                  _loc1_ = 0x433B7123 ^ -525235677 ^ 0x4E72EE1B ^ 0x0683E3F7;
                  break;
               case 2:
                  clearTimeout(this._showRodTimerId);
                  if(this._168f29fe0505de9bdb858ead == false)
                  {
                     _loc1_ = 0x01FF7E97 ^ 0x7D37A6C0 ^ 0x2091FC34 ^ -1222454642;
                  }
                  else
                  {
                     _loc1_ = -1140408491 ^ 0x1A70DE8C ^ -1259894464 ^ -102097291;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function _942a8f57ef8b0bf7eb977e7c() : void
      {
         var _loc1_:int = 0x0B81C5A8 ^ -459345418 ^ -740733218 ^ -281181468;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (0x273ED2E3 ^ 0x21A3F80A ^ -1263649014 ^ 0x61C8ED82))
            {
               case 0:
                  this._72a7fe1b788b508325bc82d5();
                  this._11af0ae1dc88e5244bdef63d();
                  _loc1_ = -337303368 ^ -76855248 ^ 0x1B58657D ^ -668074602;
                  break;
               case 1:
                  this._0224dc224792aa25034cbe6d();
                  _loc1_ = 0x71272DE1 ^ 0x0C3639AE ^ -771008078 ^ 0x7CE1B59C;
                  break;
               case 2:
                  return;
               case 3:
                  this.isNeedShowRod = false;
                  this._1ac276fa38c42f5b354104cd();
                  this._912f511bdd1d607aa06afe6c(this._c4ae25d2bfb411f3c2989299.x,this._c4ae25d2bfb411f3c2989299.y,this._eb5219c52607a5e672ab42a0());
                  _loc1_ = -1592402967 ^ -190458105 ^ 0x19DB1CC5 ^ -1617893302;
                  break;
               case 4:
                  this._168f29fe0505de9bdb858ead = false;
                  if(this.isNeedShowRod)
                  {
                     _loc1_ = 0x79FB5EAD ^ -678745767 ^ -1138210844 ^ -1046230926;
                  }
                  else
                  {
                     _loc1_ = 0x7B10629A ^ 0x26CA1901 ^ -2028090958 ^ 0x093C4A49;
                  }
                  break;
               case 5:
                  if(this._168f29fe0505de9bdb858ead == true)
                  {
                     _loc1_ = -1138141796 ^ 0x132094FD ^ 0x0E4BCEF5 ^ 0x72B9F7F1;
                  }
                  else
                  {
                     _loc1_ = -1332149281 ^ 0x4E5FABAB ^ -2010542731 ^ -1525359262;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function _11af0ae1dc88e5244bdef63d() : void
      {
         this._89619ce3363ecc3ce96c8aba();
         this._576fa5878f87f11db6e3394f();
      }
      
      public function _89619ce3363ecc3ce96c8aba() : void
      {
         var closeToTheLake:Boolean = this.isCloseToTheLake;
         var isUserCanFishing:Boolean = this._edb3396c37edac08a21ceea4();
         var isRegularPlayer:Boolean = !(this is _c9513c48978d5034cc9ff2f4) && !(this is _ba120ae720a391732e866217);
         if(closeToTheLake && isUserCanFishing && this.isMovingToRaft == false && (this.boat == null || isRegularPlayer || this is _c9513c48978d5034cc9ff2f4 && app.user.charState.value == _2fcef105b08d78e8c46cbf27.NORMAL))
         {
            clearTimeout(this._showRodTimerId);
            this._showRodTimerId = setTimeout(function():void
            {
               isNeedShowRod = false;
               _1ac276fa38c42f5b354104cd();
               _b5f50eb5f03242465d43613f(_lastX,_lastY);
            },0x7CBF209E ^ 0x43065A3B ^ 0x8915CB ^ 0x3F306EFE);
         }
         else if(this.isRodVisible)
         {
            this._ea52ddaca1a080cc2518c8da();
         }
      }
      
      public function _b5f50eb5f03242465d43613f(param1:int, param2:int) : void
      {
         this._lastX = param1;
         this._lastY = param2;
      }
      
      public function _ce8c2233b28d0fc4b7d33c95(param1:String, param2:Object) : void
      {
         var _loc3_:Array = null;
         var _loc4_:_4bac6deccd436ea35eb1d27b = null;
         if(this._8803f35d7864b0628f49ea31 != param1)
         {
            this._8803f35d7864b0628f49ea31 = param1;
            this.locationUser.initialFishingPos = null;
            switch(this._8803f35d7864b0628f49ea31)
            {
               case _c5fbb76a073bfb91d41aedad:
                  §§push(0x7E29B0CE ^ 0x107837D0 ^ 0x47CD8190 ^ 0x299C068E);
                  break;
               case SERVER_STATE_DIDNT_CATCH:
                  §§push(-1479506265 ^ -889168535 ^ 0x5A2CDE52 ^ 0x36FC059D);
                  break;
               case SERVER_STATE_STOP_FISHING:
                  §§push(-263944205 ^ -914192682 ^ -603527012 ^ -440342085);
                  break;
               case _26ce5143ec0e4587ec16f55d:
                  §§push(0x0ECD7F82 ^ -492712606 ^ -1614918385 ^ 0x73D2FFEC);
                  break;
               case _72d15259d7baa77950564559:
                  §§push(0x4DA1B415 ^ 0x36481C4B ^ -1457850361 ^ -755806115);
                  break;
               default:
                  §§push(0x06BF8D66 ^ -2056387272 ^ -291092129 ^ 0x6D77C104);
            }
            switch(§§pop())
            {
               case 0:
                  _loc3_ = String(param2.fishingPoint).split(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("削務劘剢劈劥勷剏動劖","剭勶助剪刢勼剸劄勋剗劕刭刹创劶劖"));
                  _loc4_ = new _4bac6deccd436ea35eb1d27b(this,_loc3_[0x189508B2 ^ 0x6BE78AAB ^ 0x1F170AF2 ^ 0x6C6588EB],_loc3_[0x7B8EA5CE ^ -1491703766 ^ -152109038 ^ 0x2A77CDF7]);
                  Cc.log(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၟგဲၨၟငာჁႥါႛဘႅဵႭ჏ၠჰအံါ჊ႃფဘဵနၽႿ၅ႊႉႰႁ჋ၱရვဒჸကძკ၃ဂဗჯႣ","Ⴢၮჴၬჩ်ၗႀოႜიစဤၿჁႤ") + _loc4_ + _95da7f1147c669197db81295._8f4866de82b7339154180ecb("劣勘努剤刘势刑剷列勣刱勰剁刧剧勓剌勯剃劦","勺刋刏勜剚勫勊割劜剛剏刄剔勾剴刑") + this.locationUser.username);
                  this._1617464a9f06d40877921ddc(_loc4_);
                  break;
               case 1:
                  GameSwf.currentLocationDialog._9a62ebd0db0249ee0917d4c7();
               case 2:
                  this._1617464a9f06d40877921ddc(new _16c375dcd3d66ff8ae819841(this));
                  break;
               case 3:
                  this._1617464a9f06d40877921ddc(new _6f7ee591923b9d4206119776(this));
                  break;
               case 4:
                  this._1617464a9f06d40877921ddc(new _16c375dcd3d66ff8ae819841(this));
                  break;
               default:
                  this._1617464a9f06d40877921ddc(new _1ca333487aeb8f57ff543491(this));
            }
         }
      }
      
      public function _1617464a9f06d40877921ddc(param1:_3ba073024ca466d13112f68e) : void
      {
         var _loc2_:_76938cad36557880bc855380 = null;
         var _loc3_:_3ba073024ca466d13112f68e = null;
         if(this.moveStrategy != this._forceMoveStrategy)
         {
            if(param1 is _76938cad36557880bc855380 && this._moveStrategy is _600d447c132e71fe3abc23ea)
            {
               _loc2_ = param1 as _76938cad36557880bc855380;
               if(_600d447c132e71fe3abc23ea(this._moveStrategy)._2dd3c41698379f86f6a451b1(_loc2_.x,_loc2_.y))
               {
                  return;
               }
            }
            while(this._e3d391a3df413796a12f6263.length > (-744147720 ^ -926021548 ^ -1521478843 ^ -1103417367) && param1._ce2e77815ef99a99d836c418(this._e3d391a3df413796a12f6263[this._e3d391a3df413796a12f6263.length - 1]))
            {
               _loc3_ = this._e3d391a3df413796a12f6263.pop();
               Cc.log(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挍捏挎揕掲挪挋捎捋掊挑捨捩揖掸挂掟掇捀捿換掳掹掩挞揍捝揄捉换掭揓揓挘挦捞挰捻挌挅揼捡揟掣掬捶挴据掲揗握掾掿挠挠揬捝揆採揺推揬挔揶挩揰","掠揋挚捄捚揖捁捦揢捊挍揆揑挥掀插") + _loc3_ + _95da7f1147c669197db81295._8f4866de82b7339154180ecb("劗剸剅勏劐刳勢勷制剗剭勖刌到勱剦刡剆劼勋刮剓","刹劾劳刬劤勇勪勫刁勝剃劚勵劈副劀") + param1);
            }
            if(this._e3d391a3df413796a12f6263.length == (-630251151 ^ -1651900184 ^ 0x3939B76A ^ 0x7EDC96F3) && (this._a011804b18fa320a5af85715 == null || this._a011804b18fa320a5af85715.isComplete() || param1._ce2e77815ef99a99d836c418(this._a011804b18fa320a5af85715)))
            {
               this._a011804b18fa320a5af85715 = param1;
               this._a011804b18fa320a5af85715.execute();
            }
            else
            {
               this._e3d391a3df413796a12f6263.push(param1);
            }
            this._576fa5878f87f11db6e3394f();
         }
      }
      
      private function _576fa5878f87f11db6e3394f() : void
      {
         var _loc1_:_3ba073024ca466d13112f68e = null;
         if(this._a011804b18fa320a5af85715 == null || this._a011804b18fa320a5af85715.isComplete())
         {
            if(this._e3d391a3df413796a12f6263.length > (-1948701364 ^ -1567945680 ^ -983025350 ^ -331737018))
            {
               this._a011804b18fa320a5af85715 = this._e3d391a3df413796a12f6263.shift();
               this._a011804b18fa320a5af85715.execute();
            }
            else
            {
               this._a011804b18fa320a5af85715 = null;
            }
         }
         var _loc2_:String = "";
         if(this._a011804b18fa320a5af85715 != null)
         {
            _loc2_ += _95da7f1147c669197db81295._8f4866de82b7339154180ecb("剠創剼劀剣刺刴勃劔切刉刷","刡前動努务劊刪刭勽刊劐刕勚劄勑劏") + this._a011804b18fa320a5af85715.toString();
         }
         else
         {
            _loc2_ += _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捯掩捋挳掐捌捭捫掽揕挝揨換挭揃揵捖捎掍揘","捺掴揇揦捫捬措挸挛捅挧掎挱挦挷挷");
         }
         for each(_loc1_ in this._e3d391a3df413796a12f6263)
         {
            _loc2_ += _95da7f1147c669197db81295._8f4866de82b7339154180ecb("加剮劉刊劔利刱剮刃劉","劑勃勺劇勹務勿勔刮劐刪勀勷勏勼刵") + _loc1_.toString();
         }
         if(this.locationUser.username == _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捰揩捃掄掛揓挟揍挲揠挌捺挻捊挭掭控捃","接挳掗揥掼揧挓捏据捧据挽捥掦揄掤"))
         {
            _9b189a790efd59581443eb40.change(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挫挏掶捥揔揥揪挽捞探掅揣挊挕捜捚捡捾","掵挤挡捃挆揂掆捄捘捙掐振揽揌捸揚"),_loc2_);
         }
      }
      
      public function _a6ba5ade9f66ae64e73c340b() : void
      {
         var _loc1_:int = 0x1AAC7D35 ^ -716673271 ^ 0x1F357396 ^ 0x21D392BA;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (-757543328 ^ -447701238 ^ -1551528177 ^ 0x650F2D74))
            {
               case 0:
                  return;
               case 1:
                  this._a011804b18fa320a5af85715 = null;
                  if(this._e3d391a3df413796a12f6263 != null)
                  {
                     _loc1_ = -1790905443 ^ 0x63A12555 ^ 0x7D98A031 ^ 0x7A7B85EA;
                  }
                  else
                  {
                     _loc1_ = -557852823 ^ -1517761655 ^ -484804895 ^ 0x692F9910;
                  }
                  break;
               case 2:
                  this._e3d391a3df413796a12f6263.length = 0x41107609 ^ 0x399E6054 ^ -204946307 ^ -1958292960;
                  _loc1_ = 0x23416DCE ^ -2067442959 ^ -1795314990 ^ -1032100100;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function _14fd2868d3710a33e01faa02(param1:Number, param2:Number, param3:Boolean = true) : void
      {
         var _temp_2:* = _d44ecfcb81ec9d39734ee3c3;
         var _temp_1:* = -723081549 ^ 0x40734345 ^ 0x0821B069 ^ -1665903201;
         var _loc4_:Number = _temp_2._fe8531c4059c45955b00d3e1(_temp_1,_temp_1,-param1,param2) - (-1263577666 ^ -1656021304 ^ -1108393346 ^ -1811216046);
         if(param3 && this.boat != null)
         {
            _loc4_ = this.boat._87b3acb53125f420158bfaad(_loc4_);
         }
         this.position.rotation = _loc4_;
         this._0224dc224792aa25034cbe6d();
      }
      
      public function _e4a9539bc08e42b3d1467d8a(param1:_08c120b706560fce9302bcab) : void
      {
         var _loc2_:int = -1682267787 ^ 0x028E8BC8 ^ 0x6B73771C ^ -1135124858;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x53FCE923 ^ 0x7A893284 ^ 0x4EB86B18 ^ 0x29DDB39A))
            {
               case 0:
                  return;
               case 1:
                  this._14fd2868d3710a33e01faa02(param1.position.x - this.position.x,param1.position.y - this.position.y);
                  if(this.moveStrategy != null)
                  {
                     _loc2_ = -866400626 ^ 0x05B34D09 ^ 0x637BF6F5 ^ -461144492;
                  }
                  else
                  {
                     _loc2_ = 0x4EBFAF17 ^ 0x4995A6FB ^ -701831865 ^ -1626280050;
                  }
                  break;
               case 2:
                  if(param1 != null)
                  {
                     _loc2_ = 0x1667F2DF ^ -1678060218 ^ 0x594C493F ^ -1698599550;
                  }
                  else
                  {
                     _loc2_ = -2129995726 ^ -1707257706 ^ 0x4B302EB0 ^ 0x1E17A531;
                  }
                  break;
               case 3:
                  this.moveStrategy.stop();
                  _loc2_ = -1527529904 ^ 0x31152701 ^ 0x5D2051BD ^ -2032743479;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function _1720671de72b884278f5266d(param1:int, param2:int) : void
      {
         var _loc3_:int = 0x39CB284F ^ -996299268 ^ 0x3E363110 ^ -2018876721;
         loop0:
         while(true)
         {
            switch(_loc3_ ^ (0x53CEF6E0 ^ 0x2EF94932 ^ -158649750 ^ -814326828))
            {
               case 0:
                  if(GameSwf.currentLocationDialog.raftRectangle != null)
                  {
                     _loc3_ = -81883054 ^ 0x2A52E326 ^ -1078280353 ^ 0x2A3C1A45;
                  }
                  else
                  {
                     _loc3_ = 0x3A0ED2E4 ^ -1244627330 ^ -1567769180 ^ 0x6999C753;
                  }
                  break;
               case 1:
                  return;
               case 2:
                  this.isMovingToRaft = true;
                  this._d920697e2d07908f09509e8e(param1,param2,this._040fb4a29a3fbff23177faac);
                  _loc3_ = -441716508 ^ -963251149 ^ 0x08E0F8AE ^ 0x6F142A14;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      protected function _040fb4a29a3fbff23177faac() : void
      {
         this.isMovingToRaft = false;
         this.onRaft = true;
      }
      
      public function _866cbd5df047403d748b3e2d(param1:_40c40768738c862c74ddd128) : void
      {
         this.boat = param1;
      }
      
      public function moveToBoat(param1:_40c40768738c862c74ddd128) : void
      {
         this.moveStrategy = this._boatMoveStrategy;
         this._boatMoveStrategy.moveToBoat(param1);
         param1.fieldChar = this;
         this._keyboartMove._41828d220a31759b508cc08d(this._boatMoveStrategy._85bb6fe23bdc84e4c7e7ae3b);
         this._pathMoveStrategy._41828d220a31759b508cc08d(this._boatMoveStrategy._85bb6fe23bdc84e4c7e7ae3b);
         this._boatMoveStrategy._41828d220a31759b508cc08d(this._boatMoveStrategy._85bb6fe23bdc84e4c7e7ae3b);
      }
      
      public function _c546eb84adc3ff027f8b512a(param1:_40c40768738c862c74ddd128) : void
      {
         this.moveStrategy = this._boatMoveStrategy;
         param1.fieldChar = this;
         this._boatMoveStrategy._c546eb84adc3ff027f8b512a(param1);
         this._keyboartMove._41828d220a31759b508cc08d(this._boatMoveStrategy._85bb6fe23bdc84e4c7e7ae3b);
         this._pathMoveStrategy._41828d220a31759b508cc08d(this._boatMoveStrategy._85bb6fe23bdc84e4c7e7ae3b);
         this._boatMoveStrategy._41828d220a31759b508cc08d(this._boatMoveStrategy._85bb6fe23bdc84e4c7e7ae3b);
      }
      
      public function _88c96ba6ec7842170a984455() : void
      {
         this._a6ba5ade9f66ae64e73c340b();
         this.moveStrategy = this._pathMoveStrategy;
         this.boat = null;
         this._keyboartMove._41828d220a31759b508cc08d(null);
         this._pathMoveStrategy._41828d220a31759b508cc08d(null);
         this._boatMoveStrategy._41828d220a31759b508cc08d(null);
      }
      
      public function destroy() : void
      {
         var _loc1_:_3ba073024ca466d13112f68e = null;
         this.destroyed = true;
         this._085a3f5253424374814a4d76();
         clearTimeout(this._showRodTimerId);
         if(this._d316a1f809a03b71f554bc4c != null && this._d316a1f809a03b71f554bc4c.soundFile != null)
         {
            _3a8a2602dcf9bf49b62e62af._113c8c14c0cbfde31fbea9d6(this._d316a1f809a03b71f554bc4c.soundFile,this);
         }
         this._4efe97489375e7581d0ac29f();
         if(this._charViewport != null)
         {
            this._charViewport.destroy();
            this._charViewport = null;
         }
         if(this._rod != null)
         {
            this._rod.destroy();
            this._rod = null;
         }
         if(this._charAnimationSource != null)
         {
            this._charAnimationSource.destroy();
            this._charAnimationSource = null;
         }
         this._moveStrategy = null;
         if(this._keyboartMove != null)
         {
            this._keyboartMove.destroy();
            this._keyboartMove = null;
         }
         if(this._pathMoveStrategy != null)
         {
            this._pathMoveStrategy.destroy();
            this._pathMoveStrategy = null;
         }
         if(this._forceMoveStrategy != null)
         {
            this._forceMoveStrategy.destroy();
            this._forceMoveStrategy = null;
         }
         this._fishingArea = null;
         this._lakeCells = null;
         this.locationUser = null;
         if(this._133a94009c7077f22907f2c5 != null)
         {
            this._133a94009c7077f22907f2c5.destroy();
            this._133a94009c7077f22907f2c5 = null;
         }
         if(this._boatMoveStrategy != null)
         {
            this._boatMoveStrategy.destroy();
            this._boatMoveStrategy = null;
         }
         this._obstacleMap = null;
         this._ed4324592c0c72c1a45f34f7 = null;
         if(this._charShadow != null)
         {
            TweenCube.destroyTweensOf(this._charShadow);
            removeFromParent(this._charShadow);
            this._charShadow = null;
         }
         if(this._dca1466ecc6c56770ff0bb41 != null)
         {
            removeFromParent(this._dca1466ecc6c56770ff0bb41);
            this._dca1466ecc6c56770ff0bb41.destroy();
            this._dca1466ecc6c56770ff0bb41 = null;
         }
         this._f58b82ae4fe5a01e8c4b2630 = null;
         for each(_loc1_ in this._e3d391a3df413796a12f6263)
         {
            _loc1_.destroy();
         }
         if(this._e3d391a3df413796a12f6263 != null)
         {
            this._e3d391a3df413796a12f6263.length = 0x202EDA86 ^ -1679014124 ^ 0x4EEE792D ^ -181607233;
            this._e3d391a3df413796a12f6263 = null;
         }
         if(this._charSprite != null)
         {
            TweenCube.destroyTweensOf(this._charSprite);
            removeFromParent(this._charSprite);
            this._charSprite = null;
         }
         if(this._controllerUserPopup != null)
         {
            removeFromParent(this._controllerUserPopup.view.source);
            this._controllerUserPopup._90eac9ca552fe54c2ca0299f();
            this._controllerUserPopup = null;
         }
         this._6bd0243a76da09f7848f5c05 = null;
         this._d316a1f809a03b71f554bc4c = null;
         this._c4ae25d2bfb411f3c2989299 = null;
         this._lastSentPosition = null;
         this.boats = null;
         this.finalTargetPosition = null;
         if(graphic != null)
         {
            removeFromParent(graphic);
            graphic = null;
         }
         graphicPosition = null;
         this.position = null;
         this.locationLayers = null;
      }
      
      private function _4efe97489375e7581d0ac29f() : void
      {
         if(graphic != null && graphic.parent != null)
         {
            TweenCube.destroyTweensOf(graphic);
            if(this.locationLayers != null && this.locationLayers.mainLayer == graphic.parent)
            {
               this.locationLayers.removeChar(graphic);
            }
         }
      }
      
      public function _a05663d58d744a2fe1d85d7b(param1:int, param2:int, param3:int) : void
      {
         this._moveStrategy = this._boatMoveStrategy;
         this._boatMoveStrategy._d4032cbcb284d156c3faa20f(param1,param2,param3);
      }
      
      public function _d920697e2d07908f09509e8e(param1:int, param2:int, param3:Function = null) : void
      {
         Cc.log(this + _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捺挎据挙掺接挗掌挄捘揗揮揈捿揭揹挾捭提援掀捻捚掙掤掚掀揓捶挳換挏捷揠挵捤","揦掕揱掓揽捭捬揦捨挢挅挽挄捻掉挛") + param1 + _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("指揲捥掮挙揰揙挦掲掴捛揌捒捄","挔掌捨捛捔挒掤捚揳揈揔揽捦掸挩挟") + param2 + _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၞჾგღჅღწီီႤ","Ⴞ၏ၴၶဤၚ့၆ႨႻဖჇႷာႽႢ"));
         this._a6ba5ade9f66ae64e73c340b();
         this.moveStrategy = this._forceMoveStrategy;
         this._forceMoveStrategy.moveTo(param1,param2,NaN,param3);
      }
      
      public function _1c5844c9d006616ded423d2f(param1:int, param2:_91aad973ddd3030366bf3e1f) : void
      {
         var _loc3_:Object = app.rodsDict.get(param1);
         if(_loc3_ != null)
         {
            this._bc95ea836d25947ba8d9f0e0 = parseInt(_loc3_[_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၣဋၱြჴၩაဌჟႹဈ჌჋ဂႰၱჾႉသန","တ႙းჰჟယႪ჏ჵჄჵၺၟჇႀၮ")]);
            this._rodQualityPower = _loc3_[_95da7f1147c669197db81295._8f4866de82b7339154180ecb("刍剷劯勃初剘刟刋劰劶劲創刍劺别别勎刦勞劙刯勾劵劔勫刓募勮剿勶勊勤勽剋","劅剨勴劑勒刲劔剗划剐刀勴労劼刑剂")];
            this._currentRodRadiusPx = _eb9d4e7af61d661085b4066f(this._bc95ea836d25947ba8d9f0e0);
         }
         this._rod._53961d197794ce9c3e53541b(param1,param2);
      }
      
      public function _6cafef5908dd0ab8c7a3e877(param1:Boolean = true, param2:Boolean = true) : void
      {
         if(this._d9fc460712ce3ee73afa1e5e() == _b161a89a77152785050fe395.FISHING || this._d9fc460712ce3ee73afa1e5e() == _b161a89a77152785050fe395.THROW_IN_ANIMATION)
         {
            if(this is _c9513c48978d5034cc9ff2f4)
            {
               app.user.inFishingProcess.value = false;
               if(param1)
               {
                  _dfa25706e58a240c1e33e5c6.fishingExtension._366c3e3bcf5cdf552265c88f();
               }
            }
         }
         if(param2)
         {
            this._ea52ddaca1a080cc2518c8da();
         }
         else
         {
            this._rod.reelIn();
         }
      }
      
      public function _9ec5ae7ccbeebf37b003f58d(param1:Boolean = false) : void
      {
         if(param1 || (this._lastSentPosition.x != this.position.x || this._lastSentPosition.y != this.position.y || this._lastSentPosition.rotation != this.position.rotation) && !this._82a8eb8c9faf7bd8fe98993a())
         {
            if(this._lastSentPosition.x == this.position.x && this._lastSentPosition.y == this.position.y && this._lastSentPosition.rotation == this.position.rotation)
            {
               ++this._4b4317696affbc70634dd752;
            }
            else
            {
               this._4b4317696affbc70634dd752 = -1713590211 ^ -1684050294 ^ -1640127355 ^ -1669432782;
            }
            this._lastSentPosition.x = this.position.x;
            this._lastSentPosition.y = this.position.y;
            this._lastSentPosition.rotation = this.position.rotation;
            this.locationUser.position.x = this.position.x;
            this.locationUser.position.y = this.position.y;
            this.locationUser.position.rotation = this.position.rotation;
            if(this is _c9513c48978d5034cc9ff2f4)
            {
               _9b189a790efd59581443eb40.change(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၬღႭၼဴ႗႓ၝှရတႉႏძფჽဍဋႀႂႴဩ჊ၪၸ႙ჩဃ","ႵၯႜჍ႕အခႀႎါၫႃီგჰၱ"),this._lastSentPosition);
            }
            if(this._4b4317696affbc70634dd752 < (-1683338803 ^ -2003199241 ^ 0x6941C485 ^ 0x7A7217BA))
            {
               _dfa25706e58a240c1e33e5c6.locationExtension.moveTo(0x0A1A42E4 ^ 0x31E82554 ^ 0x2EC0F514 ^ -355635877,-679589673 ^ -816947937 ^ 0x15A0C5A5 ^ -227594350,0x0B1AA1C5 ^ -418500077 ^ 0x7C351525 ^ 0x6FDE790C,this.position.x,this.position.y,this.position.rotation);
            }
         }
      }
      
      public function _5b04cf41b6b9c6cbf830da97(param1:Number, param2:Number) : void
      {
         var _loc3_:int = 0x231A3CD2 ^ -1210083673 ^ -1215320323 ^ 0x1E69CEF8;
         loop0:
         while(true)
         {
            switch(_loc3_ ^ (0x495082AC ^ 0x1DCD9249 ^ -671029462 ^ -1312932417))
            {
               case 0:
                  this._570273a7503099747b562a50 = graphicPosition.clone();
                  this._1963d0a948fa760e5dca0769();
                  if(this._93738f91c13d106ac78eef7d == null)
                  {
                     _loc3_ = 0x5F82AB60 ^ -58074390 ^ 0x0C6FEF48 ^ -1840819021;
                  }
                  else
                  {
                     _loc3_ = 0x0983D98A ^ -2049568493 ^ 0x1CC6F22F ^ -1380912956;
                  }
                  break;
               case 1:
                  this._78aa24e19377c8d043d474c7(this._87eeba1a31ce2836bd6616ac);
                  _loc3_ = -2006514704 ^ -1036561210 ^ -2101329427 ^ -172761943;
                  break;
               case 2:
                  this._93738f91c13d106ac78eef7d = new Point(param1,param2);
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function _78aa24e19377c8d043d474c7(param1:Function) : void
      {
         TweenCube.destroyTweensOf(this.graphic,false);
         TweenCube.to(this.graphic,-1008061777 ^ -884184016 ^ 0x6AD2553A ^ 0x62740BA4,{(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捝揶捒排揮挃揨挡据挺按挀揻捯揢挲揤揸","揟接揩揬揁捘揑挱捵掐揫掹掃掝捇掂")):-503755633 ^ 0x3ABE1F3E ^ 0x0B192D68 ^ -799113511},{(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၵႮაဎၳ႗ၦၯၺჷကှၯრႽ၇ႎၢჇထၗიၖၦჍၣიჺ","Ⴎျ჻နၛႭ႙ღ၃ၬၺ၏ၑ჏ႣႢ")):param1});
      }
      
      private function _87eeba1a31ce2836bd6616ac() : void
      {
         var _loc1_:int = -1484985557 ^ -426849098 ^ 0x4208E8F7 ^ -1785415845;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (0x0E6968AD ^ -1404957814 ^ 0x12F4E5DF ^ 0x26B1FECB))
            {
               case 0:
                  this.graphic.alpha = 0x0FC34D4D ^ 0x155DA6EC ^ 0x3AE2DF83 ^ 0x207C3422;
                  TweenCube.destroyTweensOf(this.graphic,false);
                  TweenCube.to(this.graphic,0x24934310 ^ 0x023B0419 ^ -260435424 ^ -690858712,{(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劐剌勑剋勑勑剱剴劦劖划剨劉剫勆勝刿剐","劓务勲刴勝剔劏剰勾劆劢剩剎勈剦刔")):-1131797503 ^ 0x13D9701F ^ 0x0A1BBF2D ^ -1521947854});
                  this._ea52ddaca1a080cc2518c8da();
                  this.setPosition(this._93738f91c13d106ac78eef7d.x,this._93738f91c13d106ac78eef7d.y);
                  this._570273a7503099747b562a50 = null;
                  this._93738f91c13d106ac78eef7d = null;
                  this._e0fa1409bf0227106cc53a79();
                  _loc1_ = 0x4C05B18A ^ -1095501055 ^ -1678849116 ^ -13174499;
                  break;
               case 1:
                  return;
               case 2:
                  if(this.graphic != null)
                  {
                     _loc1_ = 0x1B8DFF9C ^ 0x169626BC ^ 0x725391F7 ^ -383373084;
                  }
                  else
                  {
                     _loc1_ = 0x02587A3F ^ -1512256417 ^ -1912467805 ^ -1075265295;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function _015441cff5b379e5b657f935(param1:Number, param2:Number, param3:Number) : void
      {
         this.graphic.alpha = 0x40D6E92A ^ 0x0911DFA6 ^ -227739502 ^ -1146368482;
         TweenCube.destroyTweensOf(this.graphic,false);
         TweenCube.to(this.graphic,0x15D7963B ^ -893810278 ^ -1343790576 ^ 0x70897DB0,{(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捊挋捨掚挓掸掣揃捡掀捕捒揂捑挚掅掾挅","捞掽捀掓挽掴揾掙掉揿挰描挆挺挲挌")):-553623648 ^ -1346424475 ^ 0x590ECFF5 ^ 0x29B1A131});
         this._ea52ddaca1a080cc2518c8da();
         this.setPosition(param1,param2,param3);
      }
      
      public function _1963d0a948fa760e5dca0769() : void
      {
         this.moveStrategy = this._freezeMovementStrategy;
      }
      
      public function _e0fa1409bf0227106cc53a79() : void
      {
         var _loc1_:int = 0x605B3AA5 ^ 0x74FCB5E1 ^ 0x27FBA3F9 ^ -905968289;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (-1395677192 ^ -624796170 ^ 0x5CEE64A5 ^ -742410423))
            {
               case 0:
                  if(this.moveStrategy == this._freezeMovementStrategy)
                  {
                     _loc1_ = 0x37FBF176 ^ -558468949 ^ 0x1ECECF7E ^ 0x0EDF6743;
                  }
                  else
                  {
                     _loc1_ = 0x66F96D4D ^ -312111985 ^ 0x134B91FA ^ 0x618B59DB;
                  }
                  break;
               case 1:
                  return;
               case 2:
                  this.moveStrategy = this._pathMoveStrategy;
                  _loc1_ = 0x0B06F187 ^ 0x33A21FE8 ^ -523204393 ^ 0x21284F5B;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function _42da5931475ef60d3da8d4a2(param1:Number, param2:Number) : Point
      {
         var _loc3_:Point = null;
         var _loc4_:_c24229eda44b942058106fae = null;
         var _loc5_:Boolean = false;
         var _loc6_:Point = new Point(param1,param2);
         if(!this.moveStrategy._932bcd14906ee6abb2c18abc(_loc6_,true,true))
         {
            return _loc6_;
         }
         var _loc7_:int = 0x1CDF1678 ^ 0x40A7FDB8 ^ 0x64BDEC17 ^ 0x38C507D6;
         while(true)
         {
            _loc3_ = this._585c48a0ffb28695aabe8d7c(_loc6_,_loc7_);
            if(_loc3_ != null)
            {
               break;
            }
            _loc3_ = this._b3e68b45441d40d0b193318e(_loc6_,_loc7_);
            if(_loc3_ != null)
            {
               break;
            }
            if(++_loc7_ > (-1649993874 ^ 0x24FC3109 ^ -225151675 ^ 0x4BCF53D8))
            {
               if(!(GameSwf.currentLocationDialog is _c24229eda44b942058106fae))
               {
                  return _loc3_;
               }
               _loc4_ = GameSwf.currentLocationDialog as _c24229eda44b942058106fae;
               _loc5_ = this is _c9513c48978d5034cc9ff2f4;
               switch(this._ad4bd959c4683bb38e0b19dd)
               {
                  case _2713ec585daceb8ad62e2797.EPP_FIRST_FLOOR:
                     §§push(-1421823930 ^ -1802557565 ^ 0x4600107B ^ 0x79CF87BE);
                     break;
                  case _2713ec585daceb8ad62e2797.EPP_SECOND_FLOOR:
                     §§push(-331856574 ^ 0x0D92BBF5 ^ 0x0951B204 ^ -386184014);
                     break;
                  case _2713ec585daceb8ad62e2797.EPP_THIRD_FLOOR:
                     §§push(-743090452 ^ 0x796CE1A6 ^ 0x4A5B26CF ^ -528313977);
                     break;
                  default:
                     §§push(0x466981D4 ^ -1840352418 ^ 0x0C176449 ^ -667904320);
               }
               switch(§§pop())
               {
                  case 0:
                     _loc3_ = new Point(0x281DABB0 ^ -1785204637 ^ -73037429 ^ 0x462FD374,0x03F4D0E6 ^ 0x0CFECD1D ^ -1532164980 ^ -1415111999);
                     break;
                  case 1:
                     if(_loc5_)
                     {
                        _loc4_.isOnObstacleTrap = true;
                     }
                     _loc3_ = new Point(0x68EB139F ^ -1134426581 ^ -1598121914 ^ 0x74378D64,_67f8febc099eaa05c48aa41e.PRIVATE_HOUSE_GARDEN_HEIGHT - (-1084413367 ^ 0x68B80085 ^ -256905074 ^ 0x274ADA53));
                     break;
                  case 2:
                     if(_loc5_)
                     {
                        _loc4_.isOnObstacleTrap = true;
                     }
                     _loc3_ = new Point(-1593323604 ^ 0x6E7F49DA ^ -1480390547 ^ 0x68BB8F37,_67f8febc099eaa05c48aa41e.PRIVATE_HOUSE_GARDEN_HEIGHT - (-1785681368 ^ -2020097759 ^ 0x35C1B832 ^ 0x27C6D32A));
               }
               break;
            }
         }
         return _loc3_;
      }
      
      public function _585c48a0ffb28695aabe8d7c(param1:Point, param2:int) : Point
      {
         var _loc3_:int = (0x6159E53E ^ 0x4B7A7A1D ^ 0x0DE84E50 ^ 0x27CBD176) * param2;
         var _loc4_:Point = this._d4e191aaafc4cf0f4f19c169(new Point(param1.x,param1.y + _loc3_));
         if(_loc4_ != null)
         {
            return _loc4_;
         }
         _loc4_ = this._d4e191aaafc4cf0f4f19c169(new Point(param1.x + _loc3_,param1.y));
         if(_loc4_ != null)
         {
            return _loc4_;
         }
         _loc4_ = this._d4e191aaafc4cf0f4f19c169(new Point(param1.x,param1.y - _loc3_));
         if(_loc4_ != null)
         {
            return _loc4_;
         }
         _loc4_ = this._d4e191aaafc4cf0f4f19c169(new Point(param1.x - _loc3_,param1.y));
         if(_loc4_ != null)
         {
            return _loc4_;
         }
         return null;
      }
      
      public function _b3e68b45441d40d0b193318e(param1:Point, param2:Number) : Point
      {
         var _loc3_:int = (0x5E47C094 ^ 0x0D292DCF ^ 0x75814059 ^ 0x26EFAD07) * param2;
         var _loc4_:Point = this._d4e191aaafc4cf0f4f19c169(new Point(param1.x + _loc3_,param1.y + _loc3_));
         if(_loc4_ != null)
         {
            return _loc4_;
         }
         _loc4_ = this._d4e191aaafc4cf0f4f19c169(new Point(param1.x + _loc3_,param1.y - _loc3_));
         if(_loc4_ != null)
         {
            return _loc4_;
         }
         _loc4_ = this._d4e191aaafc4cf0f4f19c169(new Point(param1.x - _loc3_,param1.y + _loc3_));
         if(_loc4_ != null)
         {
            return _loc4_;
         }
         _loc4_ = this._d4e191aaafc4cf0f4f19c169(new Point(param1.x - _loc3_,param1.y - _loc3_));
         if(_loc4_ != null)
         {
            return _loc4_;
         }
         return null;
      }
      
      private function _d4e191aaafc4cf0f4f19c169(param1:Point) : Point
      {
         if((this._ad4bd959c4683bb38e0b19dd == _2713ec585daceb8ad62e2797.EPP_FIRST_FLOOR || this._ad4bd959c4683bb38e0b19dd == _2713ec585daceb8ad62e2797.EPP_SECOND_FLOOR || this._ad4bd959c4683bb38e0b19dd == _2713ec585daceb8ad62e2797.EPP_THIRD_FLOOR) && param1.y <= _67f8febc099eaa05c48aa41e.PRIVATE_HOUSE_GARDEN_HEIGHT)
         {
            return null;
         }
         var _loc2_:int = param1.x;
         var _loc3_:int = param1.y;
         if(_loc2_ < (-892758835 ^ 0x3855DAE7 ^ -1274078796 ^ 0x4693579E))
         {
            _loc2_ = 0x29A21395 ^ 0x28A0A3E6 ^ -420667497 ^ -403722268;
         }
         if(_loc3_ < (-977632243 ^ -1978041884 ^ 0x1B8331C9 ^ 0x5420CC20))
         {
            _loc3_ = -1061220523 ^ 0x7E1F91A3 ^ -314378489 ^ 0x53E269F1;
         }
         var _loc4_:Point = new Point(_loc2_,_loc3_);
         if(!this.moveStrategy._932bcd14906ee6abb2c18abc(_loc4_,true,true))
         {
            return _loc4_;
         }
         return null;
      }
      
      public function _45726b04b3ac7725e616487e(param1:int, param2:int) : int
      {
         return Math.sqrt((param1 - this.position.x) * (param1 - this.position.x) + (param2 - this.position.y) * (param2 - this.position.y));
      }
      
      public function _5ab99f81dfbca109ba4c2502(param1:String) : void
      {
         var _loc2_:String = zeroPad(param1,-1681900997 ^ -1439476875 ^ 0x5EACAAB0 ^ 0x6F5FC3FC);
         this._rod._5ab99f81dfbca109ba4c2502(parseInt(_loc2_));
      }
      
      public function _0c96c9b991bea05cd29237cf(param1:int, param2:int) : int
      {
         var _loc3_:int = 0x3A87E50A ^ -2058414771 ^ 0x50C092D0 ^ 0x060C8C6B;
         loop0:
         while(true)
         {
            switch(_loc3_ ^ (0x6DFF25A3 ^ -1358438139 ^ -1589522473 ^ -1967266418))
            {
               case 0:
                  return 0x51D72168 ^ 0x15EF2EE5 ^ 0x68A817AF ^ -747640867;
               case 1:
                  return Math.sqrt((param1 - this._93738f91c13d106ac78eef7d.x) * (param1 - this._93738f91c13d106ac78eef7d.x) + (param2 - this._93738f91c13d106ac78eef7d.y) * (param2 - this._93738f91c13d106ac78eef7d.y));
               case 2:
                  if(this._93738f91c13d106ac78eef7d != null)
                  {
                     _loc3_ = -2103173435 ^ -723236429 ^ 0x2352ECCF ^ -1676257977;
                  }
                  else
                  {
                     _loc3_ = -729039185 ^ -601066903 ^ -2068875341 ^ 0x650C558E;
                  }
                  break;
               case 3:
                  if(this.position == null)
                  {
                     _loc3_ = -1133448026 ^ -1679297547 ^ -19601426 ^ 0x30470E42;
                  }
                  else
                  {
                     _loc3_ = 0x56079D7C ^ 0x68EEE47D ^ -478273438 ^ 0x3493B79E;
                  }
                  break;
               case 4:
                  return this._45726b04b3ac7725e616487e(param1,param2);
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function _68bb1c90f1aade0755401e6d() : int
      {
         var _loc1_:int = 0x4B65B509 ^ -1688726091 ^ 0x71AEB0C9 ^ -1584197515;
         var _loc2_:int = 0x7D77BE27 ^ 0x410A8A65 ^ 0x05EF9D6E ^ -812356114;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (-201089722 ^ 0x74321E16 ^ -750240079 ^ -1518372573))
            {
               case 0:
                  _loc1_ = 0x7A75FC2B ^ 0x3194A746 ^ -2129387820 ^ -889895495;
                  if(this._cbe934fd4ca9a01c4f07d684 > (-276255680 ^ -680225365 ^ -841348815 ^ -182046502))
                  {
                     _loc2_ = 0x4F6CBEF5 ^ -1065251499 ^ 0x4294E8FF ^ 0x3B7F1F9F;
                  }
                  else
                  {
                     _loc2_ = -1930065237 ^ 0x78A387E9 ^ 0x7B3DE18F ^ 0x796D280E;
                  }
                  break;
               case 1:
                  this._cbe934fd4ca9a01c4f07d684 = getTimer();
                  return _loc1_;
               case 2:
                  _loc1_ = getTimer() - this._cbe934fd4ca9a01c4f07d684;
                  _loc2_ = 0x2F04BB56 ^ -1025642624 ^ 0x09845E3A ^ 0x125BCE2F;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function _acfc3c10c0aaf8be3a4b6568(param1:int, param2:int, param3:int) : void
      {
         var _loc4_:_76938cad36557880bc855380 = null;
         if(this.position.x != param1 || this.position.y != param2 || this.position.rotation != param3 && param3 != (-1660852288 ^ -1685307516 ^ -157201821 ^ 0x0FD3EDD8))
         {
            _loc4_ = new _76938cad36557880bc855380(this,param1,param2,param3);
            this._8b27decf734578f103921d46(_loc4_);
            if(this.position.x != _loc4_.x || this.position.y != _loc4_.y || _loc4_.r != (0x56ABCC1B ^ -631096718 ^ 0x5ECA2B58 ^ 0x2DFC22CE) && _67f8febc099eaa05c48aa41e._3ad151c153feb2bdefbdd30c(this.position.rotation,_loc4_.r) == false)
            {
               this._1617464a9f06d40877921ddc(_loc4_);
            }
         }
      }
      
      private function _8b27decf734578f103921d46(param1:_76938cad36557880bc855380) : void
      {
         var _loc2_:Point = null;
         if(this._pathMoveStrategy != null && this._de225c729c70cb3bddd2d479())
         {
            if(this._pathMoveStrategy._f0cc32364e2c99cf1496a9a6(param1.x,param1.y))
            {
               _loc2_ = this._42da5931475ef60d3da8d4a2(param1.x,param1.y);
               if(_loc2_ != null)
               {
                  param1.x = _loc2_.x;
                  param1.y = _loc2_.y;
               }
            }
         }
      }
      
      private function _058b9f00f18728a7f15a9685(param1:_a5c3dbdfbeb709a5bf92d27c) : void
      {
         var _loc2_:Point = null;
         if(this._pathMoveStrategy != null && this._de225c729c70cb3bddd2d479())
         {
            if(this._pathMoveStrategy._f0cc32364e2c99cf1496a9a6(param1.x,param1.y))
            {
               _loc2_ = this._42da5931475ef60d3da8d4a2(param1.x,param1.y);
               param1.x = _loc2_.x;
               param1.y = _loc2_.y;
            }
         }
      }
      
      public function _0d2bfba6e9f4d0eab67dd120() : void
      {
         var _loc1_:int = 0x4E679B41 ^ 0x43E0EC4B ^ -1532481894 ^ 0x7DBE37B2;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (-660310395 ^ -388519973 ^ 0x2DC31FCE ^ -920543054))
            {
               case 0:
                  if(this._moveStrategy != null)
                  {
                     _loc1_ = -513975332 ^ -1425764136 ^ -2066056528 ^ 0x1A12DF97;
                  }
                  else
                  {
                     _loc1_ = 0x1A188920 ^ -1726781039 ^ -333475818 ^ -1148903801;
                  }
                  break;
               case 1:
                  this._moveStrategy.stop();
                  _loc1_ = -1654308980 ^ -243083332 ^ -308406298 ^ 0x55E891F6;
                  break;
               case 2:
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function _f414a29a585bcef1dea39cdd() : void
      {
         var _loc1_:int = -1519519858 ^ -728132350 ^ -1164766973 ^ -1701867719;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (-707525294 ^ -233041012 ^ 0x62672FFF ^ 0x1447C597))
            {
               case 0:
                  if(this.locationUser != null)
                  {
                     _loc1_ = 0x7AAFD740 ^ 0x0DBA5A4B ^ 0x3D0C350C ^ 0x1BF144B3;
                  }
                  else
                  {
                     _loc1_ = -1592015089 ^ -2048770443 ^ -350888140 ^ -1643848964;
                  }
                  break;
               case 1:
                  this._1ac276fa38c42f5b354104cd();
                  this._912f511bdd1d607aa06afe6c(this.locationUser.initialFishingPos.x,this.locationUser.initialFishingPos.y,this._eb5219c52607a5e672ab42a0(),true);
                  this.locationUser.initialFishingPos = null;
                  _loc1_ = 0x610BB71A ^ 0x024626D4 ^ 0x29454979 ^ 0x1BE02405;
                  break;
               case 2:
                  if(this.locationUser.initialFishingPos != null)
                  {
                     _loc1_ = -1098871401 ^ -378828806 ^ 0x5AA9A946 ^ 0x5CAA5F9C;
                  }
                  else
                  {
                     _loc1_ = -1770207558 ^ 0x4CA25E5B ^ -1949601560 ^ 0xFD14BC;
                  }
                  break;
               case 3:
                  this._89619ce3363ecc3ce96c8aba();
                  _loc1_ = 0x0C682B43 ^ 0x7038C100 ^ 0x4933E6CC ^ 0x648BF03D;
                  break;
               case 4:
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function toString() : String
      {
         return _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掭掋挔挽掮挨採捃控揷挄揣掻捳揥掽捓捲捶挄掗揰挘揵捇掊挺捥挚挩揾据掱揲掵挣掣挭掏捓掣握捈揃挊揔掖揢","捵揈掿捥掚掻捅揲挟掃捇捯捽握挍捇") + (this.locationUser != null ? this.locationUser.username : _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၣႱတၮါ၍ၜႽၟရဍါဉြ჈ယ","ၵူၭჺၪლგჁၟညဂႋჵၬ႒თ")) + _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ဩဒႏဖჴႍၶ႓ႜ႔ၿၳ","ჃၙၿႷၑၟဦဗဦႛဈმიၞၚဢ");
      }
      
      public function _c1c6f51c729d7ec8f2fc094e() : void
      {
         this._cc801c6f36d3eee1f40a45ff(function(param1:_62ea006324db14444801a91e):MovieClip
         {
            param1._c1c6f51c729d7ec8f2fc094e();
            return param1.smallFish;
         });
      }
      
      public function _a9035bf37ccbd39391b64ca2() : void
      {
         this._cc801c6f36d3eee1f40a45ff(function(param1:_62ea006324db14444801a91e):MovieClip
         {
            param1._a9035bf37ccbd39391b64ca2();
            return param1.mediumFish;
         });
      }
      
      public function _248d6629ebc8a5fe402a66ef() : void
      {
         this._cc801c6f36d3eee1f40a45ff(function(param1:_62ea006324db14444801a91e):MovieClip
         {
            param1._248d6629ebc8a5fe402a66ef();
            return param1.largeFish;
         });
      }
      
      public function _e08045943d07dd6daf7211a9() : void
      {
         this._cc801c6f36d3eee1f40a45ff(function(param1:_62ea006324db14444801a91e):MovieClip
         {
            param1._e08045943d07dd6daf7211a9();
            return param1.fiveStarFish;
         });
      }
      
      private function _cc801c6f36d3eee1f40a45ff(param1:Function) : void
      {
         this._085a3f5253424374814a4d76();
         var _loc2_:_62ea006324db14444801a91e = new _62ea006324db14444801a91e();
         if(graphic != null)
         {
            _loc2_.x = graphic.x;
            _loc2_.y = graphic.y;
         }
         this._fishCatchEmoticons = _loc2_;
         this._ef03a21a5c8fa335d04a05f8 = param1(_loc2_);
         _bd60f9ad6ef4aaf28041ce8f.charMessagesLayer.addChild(_loc2_);
         _loc2_.addEventListener(Event.ENTER_FRAME,this._9543c03cb127b2bfa81fb0dd);
      }
      
      private function _9543c03cb127b2bfa81fb0dd(param1:Event) : void
      {
         var _loc2_:MovieClip = this._ef03a21a5c8fa335d04a05f8;
         if(_loc2_ == null || _loc2_.currentFrame >= _loc2_.totalFrames)
         {
            this._085a3f5253424374814a4d76();
         }
      }
      
      private function _085a3f5253424374814a4d76() : void
      {
         var _loc1_:_62ea006324db14444801a91e = this._fishCatchEmoticons;
         this._fishCatchEmoticons = null;
         this._ef03a21a5c8fa335d04a05f8 = null;
         if(_loc1_ == null)
         {
            return;
         }
         _loc1_.removeEventListener(Event.ENTER_FRAME,this._9543c03cb127b2bfa81fb0dd);
         if(_loc1_.parent != null)
         {
            _loc1_.parent.removeChild(_loc1_);
         }
      }
      
      public function _7602f920df162c61c7fdbb02() : void
      {
         this.destroyed = true;
         TweenCube.to(graphic,0x32799F7F ^ -345271593 ^ 0x314F39C3 ^ -396544918,{(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၰအႡၣၮၯႌၟჵမ","ႎႍာဂ၁ဈၘჿძნ჎၆ႝჶွၟ")):graphic.y},{(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掣捅挣掘捷掱挖揊捺揖揦掍捔掠捚捊揍捼揩挜掚捿掯揸掿揪掹揝","掝捹捐揂掐掂揃挂掀揃捝揔揥捿挒掯")):this.destroy});
      }
   }
}

