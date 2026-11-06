package com.ax3.fishao.locations.base
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3._e8ea037991976507721e4dea;
   import com.ax3.display.dialog.IBaseDialog;
   import com.ax3.events._02fbe4cbe9e83f1b8c711799;
   import com.ax3.events._720429110fd3cfc01812b5a0;
   import com.ax3.fishao.Config;
   import com.ax3.fishao._67282af25befe9778e5c8dd1;
   import com.ax3.fishao._a1e0e2bf54cc08cc6a7d5b7c;
   import com.ax3.fishao._dfa25706e58a240c1e33e5c6;
   import com.ax3.fishao.control.managers._3a8a2602dcf9bf49b62e62af;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.debug._9b189a790efd59581443eb40;
   import com.ax3.fishao.display._8a5b0c698d40931e860c0aeb;
   import com.ax3.fishao.display.dialogs._141a5f7d84a4cfae1680515b;
   import com.ax3.fishao.display.dialogs._301b6b096d193294bbd60d6d;
   import com.ax3.fishao.display.dialogs._6691abcab801c2433d32324a;
   import com.ax3.fishao.display.dialogs._86d667cb399288f9f148889d;
   import com.ax3.fishao.display.panels._345abaae6c23ec00331192f6;
   import com.ax3.fishao.display.panels._b1c568080240cc3772c55d90;
   import com.ax3.fishao.display.panels._f6f12dbbfbe7f740316e0e9f;
   import com.ax3.fishao.entries._810c4ade948afb64e9c7ee25;
   import com.ax3.fishao.events._178a822f6f1028b33439b0d5;
   import com.ax3.fishao.events._4986c362bed569a2ffb299b4;
   import com.ax3.fishao.events._d5eb1450a3d5966d0528acfe;
   import com.ax3.fishao.locations.*;
   import com.ax3.fishao.locations.base.daycycle._269c2cba4bf717aa1c0db1fa;
   import com.ax3.fishao.locations.base.daycycle._c5e7216c18d78efd33e7d176;
   import com.ax3.fishao.locations.chars._2fcef105b08d78e8c46cbf27;
   import com.ax3.fishao.locations.chars._412bba20db41500babcd2a85;
   import com.ax3.fishao.locations.chars._600d447c132e71fe3abc23ea;
   import com.ax3.fishao.locations.chars._709a8761c08236d1b5935ace;
   import com.ax3.fishao.locations.chars.commands._16c375dcd3d66ff8ae819841;
   import com.ax3.fishao.locations.decorationMarket._08482ab86896c1348bb9eecb;
   import com.ax3.fishao.locations.entries._08c120b706560fce9302bcab;
   import com.ax3.fishao.locations.entries._c9513c48978d5034cc9ff2f4;
   import com.ax3.fishao.locations.items._f53c51098527c84835f32b98;
   import com.ax3.fishao.locations.npc.base._ba120ae720a391732e866217;
   import com.ax3.fishao.locations.objects._60ca73acc6a9648cf0a76e6f;
   import com.ax3.fishao.locations.objects.boat._40c40768738c862c74ddd128;
   import com.ax3.fishao.locations.privateHouse._b7721b56782b7cbf756127e2;
   import com.ax3.fishao.locations.privateHouse._c24229eda44b942058106fae;
   import com.ax3.fishao.locations.sublocation._5496d2d072c6e7a69d5dcae0;
   import com.ax3.fishao.locations.sublocation._a5e6911f85306c220b8b5d78;
   import com.ax3.fishao.locations.weather._da93b7e4b1cf62dcb698e0bd;
   import com.ax3.fishao.managers._de89e27ae8b90e70822b4fad;
   import com.ax3.fishao.model._020eb172ea5f58203a09fdb5;
   import com.ax3.fishao.model._c47e82e5d235217beb5f9566;
   import com.ax3.fishao.model.character.CharViewConfig;
   import com.ax3.fishao.model.info._9f0379c95e97da0c1ff2a833;
   import com.ax3.fishao.model.missions._6c4d7e638317cabf44146578;
   import com.ax3.fishao.tutorial._0c6054b5aa20a9fd2b92f9c1;
   import com.ax3.fishao.tutorial.views.dialogs.caught._bc882fd414165030feaf8199;
   import com.ax3.fishao.tutorial.views.gui._b6040eb47ec5aa7940afcc56;
   import com.ax3.fishao.utils._745ca4cad2f6acc1f3084ea1;
   import com.ax3.fishao.utils._9c52777792d76fde110d23c0;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import com.ax3.fishao.utils._f337de671f427b6684b5acc4;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs._0737efdbd5337ba3fbc64b2e;
   import com.ax3.fishao.view.dialogs._095f74ed3dbeaa01adf720f9;
   import com.ax3.fishao.view.dialogs._16e26a611afe5208717ab607;
   import com.ax3.fishao.view.dialogs._1c5bb71733a87b9f41a9aeb5;
   import com.ax3.fishao.view.dialogs._4fc3571d6b736c387c8f6b79;
   import com.ax3.fishao.view.dialogs._ea1daef357f548b98f9d67c5;
   import com.ax3.fishao.view.dialogs.base.controllers.implementations.countdown._ddb31413e3f8701e7e98beaf;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces._6b63fd0a4028eb279b227831;
   import com.ax3.fishao.view.dialogs.base.views.implementations.countdown._706b9e8a05fa6a971551d21d;
   import com.ax3.fishao.view.dialogs.caught._4afcffb379abb67c2a3266dc;
   import com.ax3.fishao.view.dialogs.holidays.model._3c51decd20a57adafebafc70;
   import com.ax3.fishao.view.dialogs.holidays.model.base._000a8ac60f8176f68ddb5f87;
   import com.ax3.fishao.view.dialogs.holidays.model.base._563cabc253cc273ff4b017b3;
   import com.ax3.fishao.view.dialogs.holidays.model.base._79faae52d0fcb082083a102d;
   import com.ax3.fishao.view.dialogs.holidays.model.christmas._398e0919975e4cb37bc68285;
   import com.ax3.fishao.view.dialogs.holidays.model.halloween._4f48dd375cfd8fe59cb2be02;
   import com.ax3.fishao.view.dialogs.maintenance._45231761937416c3f2d3a259;
   import com.ax3.fishao.view.dialogs.missions._4b5a19ada8c53700a7227781;
   import com.ax3.fishao.view.dialogs.moneyTree._1f5409035b3a19ed72675c07;
   import com.ax3.fishao.view.dialogs.string._85b2141a2303f6545d411d7a;
   import com.ax3.fishao.view.dialogs.tournaments._d458d315ffa87d6d148e359b;
   import com.ax3.fishao.watercraft._a00a2200c99ccb365fe1b90e;
   import com.ax3.geom._a5c3dbdfbeb709a5bf92d27c;
   import com.ax3.jss.model._7b223416c1a294d60a664647;
   import com.ax3.jss.requests.server._5e1bab759fcaea6d1f84faa7;
   import com.ax3.managers._55043b34818a7b88d28e92ef;
   import com.ax3.net._f11f4587bdf083a8dd45aa84;
   import com.ax3.net._f5d3c19b4de5df055d1bc952;
   import com.ax3.utils.TimeConverter;
   import com.ax3.utils._0ce7a4d99e17666ff0e19ce6;
   import com.ax3.utils._cbd58f52130bcef0d9dc895a;
   import com.ax3.utils._eda3a13d8352e18b187cba02;
   import com.ax3.utils.emptyVector;
   import com.ax3.utils.math.limit;
   import com.ax3.utils.removeAllChildren;
   import com.ax3.utils.removeFromParent;
   import com.ax3.utils.timer._33dd41a12065671be9311587;
   import com.ax3.utils.timer._34a2ba6ad978d976b8b0f5a4;
   import com.ax3.utils.timer._69eec7d2f73604da25ccda04;
   import com.ax3.utils.timer._92d7656ddc3c3da810e99c74;
   import com.inkora.tween.TweenCube;
   import com.junkbyte.console.Cc;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.MouseEvent;
   import flash.events.SecurityErrorEvent;
   import flash.events.TimerEvent;
   import flash.filters.BitmapFilterQuality;
   import flash.filters.GlowFilter;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.net.URLRequest;
   import flash.text.TextField;
   import flash.ui.Keyboard;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   import flash.utils.getTimer;
   import flash.utils.setTimeout;
   import flashx.textLayout.formats.TextAlign;
   import protocol.api.base.ResponseWithData;
   import protocol.api.boat.enter.ResponseBoatEnter;
   import protocol.api.boat.move.ResponseBoatMove;
   import protocol.api.boat.release.ResponseBoatRelease;
   import protocol.api.npc.talk.ResponseNpcTalk;
   import protocol.cr.debugging.GetFishBlockAtLakesReq;
   import protocol.sr.DamianActionResp;
   import protocol.sr.EnterRaftResp;
   import protocol.sr.EnterSublocationSuccessResp;
   import protocol.sr.IglooListResp;
   import protocol.sr.LeaveSublocationResp;
   import protocol.sr.UpdateResp;
   import protocol.sr.debugging.FishBlocksAtLakesDataResp;
   
   public class _67f8febc099eaa05c48aa41e extends _095f74ed3dbeaa01adf720f9 implements IBaseDialog, _69eec7d2f73604da25ccda04
   {
      
      public static const CLOSED_CAUGHT_DIALOG:String = _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("်ჽ၁ိჾ၊ၙၐယထჇၾၳခဏရဎ်჋ၕვႹჯိၤၡြဖၜၬ၆Ⴚჵ႘ကသၜဇჸဗჾျჾ၃","Ⴟ္჆ဩဉႝူ჋ဌၠႌၠ၊ႌၢწ");
      
      public static const END_EXP_TWEEN:String = _95da7f1147c669197db81295._8f4866de82b7339154180ecb("励勂勤勑剳劢勊刦剩副剜劼勼删剂剈力刖剌勃劶勂刘刯劗剓勠勨剛劐","則剉勉剒勬刍剆勠劒勺剷剢剙勯勛功");
      
      private static const _f7cdcf1b6ec2629b8133218d:Point = new Point(0x20331471 ^ -1722824235 ^ 0x7F193A06 ^ -966399292,0x42D03D46 ^ 0x4420794B ^ 0x7B2BFFD1 ^ 0x7DDBBA88);
      
      private static const _b65bd877c5a54b0b5afcdeba:Point = new Point(0x0825D795 ^ -1160075643 ^ -1456286022 ^ 0x1BCDA9FC,-55546315 ^ -1926157897 ^ -1567005449 ^ -753392031);
      
      private static const _a5c956375a03799d620408b6:Point = new Point(-592968802 ^ -1348410316 ^ -1074188605 ^ -856568073,0x2C10A43D ^ -1013550877 ^ -1612542282 ^ 0x70645B36);
      
      private static const _df94e30eb1892f6de3cee1e1:Point = new Point(0x4C0D17E6 ^ 0x30983FC6 ^ -161828065 ^ -1966105045,-571483625 ^ 0x7CAB419F ^ -1830272971 ^ 0x33ACD839);
      
      private static const _86273012e2f97048df6aa38d:Point = new Point(0x640AAABE ^ -1737166218 ^ 0x76224388 ^ -1973678020,0x17F787CD ^ -1845584962 ^ -901494360 ^ 0x4C4D5485);
      
      var _temp_13:* = new Point(0x78B6537E ^ -163135222 ^ -603780280 ^ 0x52F39E34,-192425979 ^ -206660871 ^ -1864605486 ^ -1745540534);
      var _temp_12:* = new Point(-794444642 ^ 0x331AA821 ^ 0x3CAF761E ^ -552571047,0x713A0D3D ^ 0x5C8E7EE3 ^ -857105712 ^ -513938020);
      var _temp_11:* = new Point(-1321522855 ^ -705704373 ^ -617574303 ^ -1075547946,0x12B8E927 ^ 0x06C9FA68 ^ -2115069261 ^ -1784706830);
      var _temp_10:* = new Point(-345114064 ^ 0x15EA42C2 ^ -1531128924 ^ 0x5A3B6F72,0x3710AC4C ^ 0x374B71B0 ^ 0x6650EF83 ^ 0x660B3087);
      var _temp_9:* = new Point(-1669362272 ^ 0x690F8861 ^ -1597274839 ^ 0x55BB8926,0x164663E8 ^ -910629478 ^ 0x200D8E3B ^ -848995);
      var _temp_8:* = new Point(-126460802 ^ 0x48EE5311 ^ -32487292 ^ 0x4E884478,-1722172728 ^ -1955110883 ^ 0x1D81E06E ^ 0x0FAF3C6D);
      var _temp_7:* = new Point(0x375B8FCB ^ 0x7366FF22 ^ -1809350200 ^ -803540979,0x44F1F345 ^ -787686470 ^ 0x0FF5627D ^ -1710731680);
      var _temp_6:* = new Point(-4879542 ^ 0x37F9B664 ^ 0x705F3328 ^ -1206710772,-901040882 ^ -836315004 ^ -121533649 ^ -55808036);
      var _temp_5:* = new Point(-1808017710 ^ 0x3174B604 ^ 0x6098C0F8 ^ -975724363,0x1EC40223 ^ -1669943342 ^ 0x79A560FC ^ -82326063);
      var _temp_4:* = new Point(-815062688 ^ -611480063 ^ 0x2322BB42 ^ 0x37C41039,0x5F07B01D ^ -1288955420 ^ 0x54D7DA45 ^ -1191414787);
      var _temp_3:* = new Point(0x72B31064 ^ -1111735851 ^ -2036089065 ^ 0x49ACEBC2,-435705000 ^ -1671823344 ^ 0x6C8AD35B ^ 0x16D77DE9);
      var _temp_2:* = §§findproperty(Point);
      var _temp_1:* = -1189495522 ^ -290705013 ^ -686968636 ^ -2135409583;
      
      private static const _8facf294cd8d9f214761d93f:Array = [_temp_13,_temp_12,_temp_11,_temp_10,_temp_9,_temp_8,_temp_7,_temp_6,_temp_5,_temp_4,_temp_3,new Point(_temp_1,_temp_1),new Point(0x13FD926A ^ 0x3F0D98E8 ^ -1091958997 ^ -1843788798,0x386F06A1 ^ -862415734 ^ -1958357106 ^ 0x7FB247F8)];
      
      var _temp_27:* = new Point(0x5C073B8E ^ -1442061767 ^ 0x703F9D5A ^ -2043460635,-787871736 ^ -1669229413 ^ -1781528499 ^ -665086592);
      var _temp_26:* = new Point(0x677CAB23 ^ 0x091421DE ^ 0x080A0644 ^ 0x66628141,0x2460DB5F ^ -654040435 ^ -2050210381 ^ 0x78A8B897);
      var _temp_25:* = new Point(0x3BB53243 ^ 0x377EBA20 ^ -2129276148 ^ -1914807094,0x1C1C498E ^ 0x5A95266B ^ 0x2E19A54B ^ 0x6890CBDC);
      var _temp_24:* = new Point(-835971521 ^ -2048661133 ^ 0x57EDC822 ^ 0x1C2233B6,-1134609190 ^ -1635639478 ^ -1495415148 ^ -2080315766);
      var _temp_23:* = new Point(-2116546405 ^ -1652348510 ^ -1754962052 ^ -1958848629,0x4BE804A7 ^ 0x188ECBAC ^ -235136859 ^ -1566911714);
      var _temp_22:* = new Point(-1419987992 ^ 0x5E80D573 ^ -1635582518 ^ 0x6B5E98C2,-2020465830 ^ 0x490814D4 ^ 0x6DF32F45 ^ -1553391725);
      var _temp_21:* = new Point(-470097567 ^ 0x49BA7AB0 ^ 0x4F7806DA ^ -449274841,-383080096 ^ 0x213C6E9B ^ 0x19511AC0 ^ -783820615);
      var _temp_20:* = new Point(-1197180485 ^ 0x716E30E5 ^ -1259672193 ^ 0x7D20A152,-1765500677 ^ -1748966011 ^ 0x2BEB04C6 ^ 0x2AEF7F1C);
      var _temp_19:* = new Point(0x61C11D70 ^ -143441200 ^ 0x3CF672DB ^ -1438372476,-2034536022 ^ 0x1DE362B4 ^ -673294602 ^ 0x4C8644C4);
      var _temp_18:* = new Point(0x41F595BB ^ -1103488328 ^ -1151373954 ^ 0x4490E43D,-632417896 ^ -2051127851 ^ 0x26E88815 ^ 0x7918D814);
      var _temp_17:* = new Point(0x0491A6E2 ^ -943310436 ^ 0x6632D8CB ^ -1520090593,-1071719175 ^ -482820436 ^ -1216916385 ^ -1806618530);
      var _temp_16:* = §§findproperty(Point);
      var _temp_15:* = 0x661803F4 ^ 0x50126B1E ^ 0x30812368 ^ 0x068B4B82;
      
      private static const _271e25a1154071c80aa4c4f2:Array = [_temp_27,_temp_26,_temp_25,_temp_24,_temp_23,_temp_22,_temp_21,_temp_20,_temp_19,_temp_18,_temp_17,new Point(_temp_15,_temp_15),new Point(-1264184223 ^ 0x0AEEFF37 ^ -1713443115 ^ 0x27960C28,-1798518350 ^ -1483679634 ^ -442556037 ^ -691850650)];
      
      private static const _bdf6a61486dbdd813e7ddb64:int = -1512881238 ^ -852659213 ^ -864365149 ^ -1534794296;
      
      private static const _4f49ffe204945c5f9d89628d:int = -2032966238 ^ -983625486 ^ 0x2C300557 ^ 0x6FBC7063;
      
      public static const PRIVATE_HOUSE_HEIGHT_WITH_WALL:int = -1510623991 ^ -1622510480 ^ 0x7C4274C4 ^ 0x46FDB69D;
      
      public static const PRIVATE_HOUSE_GARDEN_HEIGHT:int = 0x55204C1A ^ -1906205108 ^ 0x361CD38C ^ -312671494;
      
      public static const PRIVATE_HOUSE_HEIGHT_WITHOUT_WALL:int = -996091515 ^ -1071728806 ^ -512269627 ^ -439808446;
      
      public static const PRIVATE_HOUSE_WALL_HEIGHT:int = PRIVATE_HOUSE_HEIGHT_WITH_WALL - PRIVATE_HOUSE_HEIGHT_WITHOUT_WALL;
      
      public static const PRIVATE_HOUSE_CENTER_DOOR_X_MIN:int = -1187249611 ^ -849792190 ^ 0x4FD177B1 ^ 0x3BB44636;
      
      public static var DEBUG_LAYER:Sprite = new Sprite();
      
      public static var isFishMarketOpen:Boolean = false;
      
      private static const _537da328fa2ab7e66872e8ac:Array = [-1259134854 ^ 0x198F62A9 ^ 0x6AC0D996 ^ -943940849,0x7FB2EE1C ^ 0x6F992D33 ^ -895269456 ^ -628586796,0x5F026BA4 ^ 0x20C82008 ^ 0x436E0383 ^ 0x3CA44863,-2008064512 ^ 0x66A042BE ^ 0xEA4D4B ^ -301641288,-1189418040 ^ -623488023 ^ -1948630474 ^ -401147303,0x049B370E ^ -523819853 ^ -1783564571 ^ 0x71ECE517,-2036162682 ^ 0x48618AFC ^ -1727432997 ^ 0x57CA63F1,0x199C7EA0 ^ 0x25117FAA ^ 0x2BA5BF56 ^ 0x1728BE0D,0x394ADBF0 ^ 0x112E1151 ^ 0x7E22D28E ^ 0x5646187D,-1389127138 ^ -1876448328 ^ -299353373 ^ -751039622,0x78CF2BCC ^ 0x49C095AD ^ -449611781 ^ -734213670,-1102262235 ^ -1982665113 ^ 0x191BCC23 ^ 0x2E85F24C,0x3157ED36 ^ 0x5712C8D7 ^ 0x15E5F8B3 ^ 0x73A0DD48,-1260027556 ^ 0x53268715 ^ 0x6921691E ^ -1897762992,-102522231 ^ -1822155084 ^ -357888555 ^ -2144554525,-1208867225 ^ 0x1E5E5446 ^ -544773784 ^ 0x762B1B57,0x3E478E41 ^ 0x640B8DF6 ^ -1086130934 ^ -452004211,0x32B33F42 ^ 0x6A7C591C ^ 0x1A58B7BD ^ 0x4297D1A2,-700680660 ^ 0x752D6B40 ^ 0x38BA3C85 ^ -1683283541
      ,-976894249 ^ -1738809025 ^ 0x4A123931 ^ 0x178C1E8A,-471954329 ^ 0x25F1E0 ^ -1393599909 ^ 0x4F142788,0x0BC13585 ^ -1326408099 ^ -1573623503 ^ 0x1905C2BC,-1111851891 ^ 0x5DDF35DC ^ -245172468 ^ 0x1107BE0B,0x3C3D8E15 ^ -1384114610 ^ 0x33032E38 ^ -1564559820,-1084748389 ^ 0x24A7D5B8 ^ 0x10336D99 ^ -1949518366,-2046114728 ^ 0x4B7E2CE1 ^ 0x0B12C11B ^ -966383109,0x23CE4D1C ^ 0x35713E5E ^ 0x6BE215A8 ^ 0x7D5D66B0,-990691371 ^ -1890208378 ^ 0x5E694E66 ^ 0x15CFC46E];
      
      public static const SCREEN_PADDING:int = 0x1CD03891 ^ -63537120 ^ -1175684521 ^ 0x590AC2F8;
      
      private static var _53796007e6edab33e8daa6a9:int = -1027981521 ^ -1367361949 ^ -2044050269 ^ -353382929;
      
      private static const _f5e96da9fcc4dda8f7ee4483:int = -1181382950 ^ -375734639 ^ 0x38E65966 ^ 0x68E9612C;
      
      public static var _d_charPositionLayer:Sprite = new Sprite();
      
      public static var NEW_MOVEMENT:int = -819071033 ^ -1166904085 ^ 0x5869FAA0 ^ 0x2D36798C;
      
      protected var _tutorialHelpers:_0c6054b5aa20a9fd2b92f9c1;
      
      protected var _locationLoadComplete:Boolean;
      
      private var _ae4bf7afed19a2bed09701ab:_345abaae6c23ec00331192f6;
      
      private var _e8d6af1ebb84f0dc72899def:_b1c568080240cc3772c55d90;
      
      private var _7fe05aca52f25fef392392be:_f6f12dbbfbe7f740316e0e9f;
      
      public var locationModel:_4039c287ddb4ef46ab65ab0e;
      
      protected var _loadingIndicator:_f11f4587bdf083a8dd45aa84;
      
      private var _f9c1c162ec64547485d5db05:_f5d3c19b4de5df055d1bc952;
      
      protected var _locationLayersBase:_bd60f9ad6ef4aaf28041ce8f;
      
      protected var _obstacleMap:BitmapData;
      
      protected var _lakeObstacleMap:BitmapData;
      
      private var _2e0987edad2b52ab48d9bac5:BitmapData;
      
      private var _59886d6bb7361b773844cab0:BitmapData;
      
      protected var _charList:Dictionary;
      
      protected var _gui:_8a5b0c698d40931e860c0aeb;
      
      protected var _playerChar:_c9513c48978d5034cc9ff2f4;
      
      private const _854b17d14ef6e6c29c404152:int = 500;
      
      private var _d9b253c6d5056dbdbbd0406c:int = 0;
      
      protected var _scrollRect:Rectangle;
      
      private var _b360e884780ae3fb0cc651e1:_e8ea037991976507721e4dea;
      
      private var _3ea0c6fc77cfb46fb34cc2cb:int = 0;
      
      private var _7f49f91fc4c82d7a524ae994:Boolean = false;
      
      protected var _animatedCharacterIsLoaded:Boolean = false;
      
      private var _4f263e9127f99fb7aefd6ff7:Timer = new Timer(-1750696919 ^ 0x45158323 ^ 0x0744A245 ^ -705208665);
      
      private var _8e02ec2dee8088bfa6093d4e:int = 0;
      
      private var _ea5858ecb893162d3e9ee3a6:uint;
      
      private var _8936c2523e5e9c8d1ed9b18d:_a5e6911f85306c220b8b5d78;
      
      private var _4c082e570fc86b639e8f162b:_a5e6911f85306c220b8b5d78;
      
      protected var _playerMakeAnyMove:Boolean = false;
      
      private var _d650f495d3a32dff2d26ade4:int;
      
      private var _1af79f36673c5b8f1dd7376f:_ddb31413e3f8701e7e98beaf;
      
      private var _73e7023a09870facacc2ed79:_33dd41a12065671be9311587;
      
      private var _ad5c1f193d58ea5c5c443dfc:Array;
      
      private var _de3b4ba3fb31ba1b44244716:Array = [];
      
      protected var _programmedCharMoveTarget:Point;
      
      protected var _programmedCharMoveTargetNPC:_ba120ae720a391732e866217;
      
      private var _4d4f409df8c680101da035af:int;
      
      private var _d09fb02794aa524ffc3a03f0:Boolean;
      
      private var _176488275d0126f7d3b68d77:Boolean;
      
      private var _427defea9bfa858db1cb9777:Boolean = false;
      
      private var _1e8bb3fdea106107fa2df410:Boolean = false;
      
      protected var _waitForViewLoadUsernames:Array = [];
      
      private var _70282fdd6927855eeb8ba3f7:Vector.<_eb33c79ced81d8f5ac0ea91d>;
      
      private var _8cee8fcbcec66b9e75cc1132:Boolean;
      
      private var _69f980d7632e6cfafe20c104:_ddb31413e3f8701e7e98beaf;
      
      protected var _needToShowMissionCompletedDialog:Boolean = false;
      
      private var _5e20b00e511d30d9547674e4:Boolean = false;
      
      private var _5241dcc27353a41316aa8190:Boolean = false;
      
      private var _87aaf9f61e3ac479602368b8:Boolean = false;
      
      private var _19d5ac9c472f59f06c780944:int;
      
      private var _4b659134a1368e7ca1d657f3:int;
      
      private var _72cdc7a9d73e942fa68f9973:_33dd41a12065671be9311587;
      
      private var _caab76bfbff3e37e7a65d68f:_33dd41a12065671be9311587;
      
      private var _e09d3d2a480f9118b62e2881:Boolean;
      
      private var _d93b13e859f4326c59c4ef29:Function;
      
      private var _95fb839ff774a29d493e0355:int = 0;
      
      public var declineEntrence:Boolean;
      
      protected var isNeedCenteredGui:Boolean = true;
      
      private var _5df63807d1a2b6e2bd30b059:_4afcffb379abb67c2a3266dc;
      
      public var fishdexDialog:_16e26a611afe5208717ab607;
      
      public var breederDialog:_1c5bb71733a87b9f41a9aeb5;
      
      public var moneyTreeDialog:_1f5409035b3a19ed72675c07;
      
      private var _217cc4d6aabe27a77e0346d6:Boolean;
      
      private const _6a1ab234df5b401d2bd2da30:int = 3000;
      
      private var _2ec9a25820f745b3ec49d8d9:int;
      
      private var _e561320989930338667d28b5:_eda3a13d8352e18b187cba02 = new _eda3a13d8352e18b187cba02(0x5217E6DE ^ -1077295020 ^ -1670650248 ^ 0x71B5C8F2,0x6E80BE59 ^ 0x07D3326F ^ -1828851079 ^ -72450486);
      
      private var _db1035359b9eb64e9773b136:_eda3a13d8352e18b187cba02 = new _eda3a13d8352e18b187cba02(0x1CE9AE13 ^ -172870259 ^ -1729299034 ^ 0x71B76638,-519503934 ^ -1786661144 ^ 0x28A2C164 ^ 0x5C2B8850);
      
      private var _7880c59592be13e2600e79d7:Boolean = false;
      
      private const _8978e348135625a4ae964cbc:int = 15000;
      
      private var _054821dd7486d52127e9a158:int = 0;
      
      private var _bc4e191e37a8a1318e48f56e:int = 0;
      
      private var _ad267c4dc1e3037e1ed25300:int = 600;
      
      private var _7359e4f3d26467fcb524b023:Boolean;
      
      protected var _locationItems:_f53c51098527c84835f32b98;
      
      private var _c1412e6d2ea38dc7d44b4a85:Number;
      
      private var _a35586942f3ef9c2fd80b181:_269c2cba4bf717aa1c0db1fa;
      
      private var _5b717b09b0c6109b2d33310c:_3c51decd20a57adafebafc70;
      
      private var _01cf1a1d1dab83e00a988531:_000a8ac60f8176f68ddb5f87;
      
      public function _67f8febc099eaa05c48aa41e(param1:_4039c287ddb4ef46ab65ab0e)
      {
         super();
         this._c1412e6d2ea38dc7d44b4a85 = 0x1D4162AE ^ 0x04A1A300 ^ 0x6EF509AC ^ 0x7715C802;
         this._charList = new Dictionary();
         this._d650f495d3a32dff2d26ade4 = _53796007e6edab33e8daa6a9++;
         if(getTimer() - this._95fb839ff774a29d493e0355 < (-510914238 ^ -1414184264 ^ 0x7B43CDF0 ^ 0x317A9DE2))
         {
            GameSwf._6b2ea987f29b60cd755db2f5(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ჿ჻႖Ⴠ၄ၗუ჎၏Ⴝ႓႓ၷ჌Ⴤ჎ႇၐပဢხႵၔ၏ჶၦ჏ა႐ၘ႞ၮჇ၂სၕ","ხၑဏဠვ၍လၳႵဆჱႺဳ္ဦჇ"));
         }
         this._95fb839ff774a29d493e0355 = getTimer();
         tabChildren = false;
         if(Config.SYNC_DEBUG)
         {
            _d_charPositionLayer.name = _95da7f1147c669197db81295._8f4866de82b7339154180ecb("力券勁刲募刦勬刻劖勯刬刏剝刷則剝剕券削刭劈创刮劜務势剒剳刘剮剿剈勈剳刾剈劮剝助剓劺助劋刈劬劼劁劐","勋划劃剩剕劆勩勜勲刷刀劁剻勍勩勐");
            _d_charPositionLayer.visible = true;
            _d_charPositionLayer.mouseEnabled = false;
            _d_charPositionLayer.mouseChildren = false;
         }
         this.locationModel = param1;
         param1.dialog = this;
         param1.floatInWaterManager.hitTestBoats = this.hitTestBoats;
         _02fbe4cbe9e83f1b8c711799.addEventListener(this,app.performanceManager,_de89e27ae8b90e70822b4fad.WEATHER_OFF,this._dfa02cfa899528a5aa0cc290);
         if(GameSwf.instance.managerTutorial.isTutorialCommonComplete)
         {
            this._gui = new _8a5b0c698d40931e860c0aeb(this);
         }
         else
         {
            this._gui = new _b6040eb47ec5aa7940afcc56(this);
         }
         addChild(this._gui);
         this._a35586942f3ef9c2fd80b181 = new _269c2cba4bf717aa1c0db1fa();
         this._a35586942f3ef9c2fd80b181.state = _c5e7216c18d78efd33e7d176.EDCS_DAY;
         this._a35586942f3ef9c2fd80b181.isEnabled = param1.dayCycleEnabled;
         _92d7656ddc3c3da810e99c74.getInstance()._57ad3faeff9ca92cbf9fe447(_34a2ba6ad978d976b8b0f5a4.TIMER_1S)._475178699397df7592a9026e(this._2e784541720799b6e0e202d4);
         this._b360e884780ae3fb0cc651e1 = GameSwf.instance.animatedCharacter;
         Cc.addSlashCommand(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挬揝揔揹捒揭掴挛探揼掔挧揅揲","挆揔掶挻捇挪挹掊捳掾捅捭推捡揨掞"),this._3fb28f6394e1fa316cb4f6aa);
         Cc.addSlashCommand(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揩捼捑排挧捋掑揓掕捝揹揯揿挷捷挠捤揣挖挤掇挏挪揚捙揄","挸捎挥掫掻揍掓捷控揆掙挐捁挄捴振"),this._fa7a45eae45e1665b5694768);
         Cc.addSlashCommand(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掷揋指挓挈掾掀挨捼掋捩掹捆揽探掅","挋挫挸揘推揨捡捿掃捉揂挤揇挴挽捪"),this._9b9434267a14bd5f99ad4b2a);
         Cc.addSlashCommand(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劃劷剑勄刯劃剄勻勵剏剟勃勻勱劧刟剹勖勯刪刄勆勿制剷劜","剻前創刷剗刏劉刕勹劳刍募刧刽劍初"),this._62033f602cbf1a29cf680613);
         Cc.addSlashCommand(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揊挼掋挭挸挍揦揅揪掣掿掭捾捻揖捻","揰挗揨挬揀捡揋掀掘捠捅捓挻捛掗揢"),this._c6855de3cfca8e01004f3c2a);
         Cc.addSlashCommand(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剴劇劳剘勿劳刖勬刅勊劫刟勓剧刃剕勽剑","刄劦刋割劦刡劇勌勤勈勉勏剹勾剠勴"),this._40bb169b742e19baaff91868);
         Cc.addSlashCommand(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勌劺刣剧刨劑劊勀勻勆劙劺勎勇势劗制刯務刷勤勲剔刲刖勏删劆勍刳勊勒勊创","分創劳勱勨刏勊剓勶剒剣刃力剭勢勦"),_050167682414b5fede4b657c);
         if(!_9f0379c95e97da0c1ff2a833._17cfc701aba420494fc10653())
         {
            Cc.addSlashCommand(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剛剫剬割剑刏勆勨刚勏勁刅勑刑勄勍劂剖勔劄勰勄刂刱剗勑勯刺剛勦割券剄剫割到勋動刢勆","剈励助剺剋刨勠劦勍刺勾剅剙剽刃劫"),this.loadObstacleMaps,_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掄捠揻措掽揍持揢掶挟揥描掤捤捯揗捙挖捿挞挙揳挻揲採揵揻揪捑挼掱挦掘掺揿捯掜挤揯掙捐掤捋揩挊揘损捆掺掚揘挴挹掋捙捼捝揭挗掩捭掹揓掔掣揉挻揕掘掦掹挫捺掻挰捍挮捣捠挧","捑捤挻揵捺揠揠捄捂掩捏描捱揱挂捶"));
            Cc.addSlashCommand(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捼指捆捂掗捋掯掜揙挽捄掊揚捙挆揘掴揘挙挚描挺捯捍挨捱揩捴捊揶挹捡揬掟捛掳揲揫挹捍授捹","捖掼捶捧捂挺援持描掆揾掿揺揮探掏"),this.obstacleMapsAlpha,_95da7f1147c669197db81295._8f4866de82b7339154180ecb("刉刑劢劓刲副劁勇刏勹刧勵勺刅刓刍勠利刺劻剛勃刟劰加劵劰劐劼勅刼剐劕刮勺劍刜刯勊動剓剐刃助剷副勗剝刊剛剔刞剤勐勉劾削勢剻刴剆募剬剹勡創劸劥劸劷剿剦刳劧劉剬勃剶剒劫勮劙剐剱勡劄剠刾劾劽剛剤初剻劦刴勾剃勪勒初刢划劧刔刈剭勱则剓刳勮劬剠势刯刨刪刈剛勡劖剫務勸劒剟剙加剑勄勌努前","勥勶刽剁剺刻刲刌券刻剾列勹勘効刐"));
            Cc.addSlashCommand(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ႩღჸႩႻႡၪ်႑ၯჭ჎ဇႃဠႼ၈ွნဘ႘နဗ჈","၇၈ၜႹႻ႑ၶႁ်၌ჁწႽၱႄဖ"),this.moveCase);
            Cc.addSlashCommand(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挎捹揪探挎捉揕挿捍捥挾挳捔揊揭掹捳挤捻揀捃揲挎挖接捻捠掕揿捂换換","揧揮揤掇挗挊掿挔挐提捈按挔据掭捪"),this.inspect);
            Cc.addSlashCommand(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ီၦჹအၻ၀იძკႂၬႈႾဤჽჭრၒၱ။၍჆ဋၐჃჿ","჉ဓဋႸ၁သჩၨჶႠၬၨოထဥဩ"),this.moveCase2);
            Cc.addSlashCommand(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掱挅援挀挙捪捹排揟损掅挤揌掁捣掟捪排揑揤挟捆挏掭挼捗掉捆掽掶","挀挢掤掽揔挽揀掅措掰排揉揧挽挤捈"),this.setPosition);
         }
         this.energy = 0x3F61B91E ^ 0x7C29E510 ^ -698633020 ^ -1793857339;
         this.energyRestoreLeftTime = -1667659441 ^ -1499198801 ^ 0x769F7624 ^ 0x4CA2F5C4;
         this._gui.levelIndicator.userExp = app.user.experience;
         this._gui.levelIndicator.nextExpLim = app.user.nextExpLimit;
         this._gui.mainMenu.communicationIcon.amount = app.user.unreadPMNumber;
         this._tutorialHelpers = GameSwf.instance.managerTutorial.tutorialHelpers;
         this._5b717b09b0c6109b2d33310c = GameSwf.instance.managerHolidays;
         this._locationLoadComplete = false;
         this._locationItems = new _f53c51098527c84835f32b98(this);
         this._01cf1a1d1dab83e00a988531 = new _000a8ac60f8176f68ddb5f87();
      }
      
      public static function _1c3659e23ef175c26ea94bb5(param1:_a5c3dbdfbeb709a5bf92d27c, param2:_a5c3dbdfbeb709a5bf92d27c) : Boolean
      {
         return param1.x == param2.x && param1.y == param2.y && _3ad151c153feb2bdefbdd30c(param1.rotation,param2.rotation);
      }
      
      public static function _3ad151c153feb2bdefbdd30c(param1:Number, param2:int) : Boolean
      {
         var _loc3_:int = param1 / ((-2032231536 ^ 0x78A00A94 ^ -935825807 ^ 0x3646FE1D) / (0x3DAF5CCD ^ -1560234915 ^ -1481923300 ^ 0x39044D84));
         var _loc4_:int = param2 / ((0x02C505F9 ^ 0x09B8821F ^ -491650833 ^ -372275615) / (-1694673272 ^ -332972432 ^ 0x5DC4D03B ^ 0x2B1EB8CB));
         return _loc3_ == _loc4_;
      }
      
      private static function _223c1d285f004463bf2ec217() : void
      {
         GameSwf.instance._8984fb4df5f3f18dbab82d9b(_01cf9a78594a0bb30b57b0c3.EBT_LUCKY_POTION,true);
      }
      
      public static function _cbcd22bd22fff61f26ccffc3() : void
      {
         GameSwf.instance._8984fb4df5f3f18dbab82d9b(_01cf9a78594a0bb30b57b0c3.EBT_MAGIC_WATCH,true);
      }
      
      public static function _2c41887d937c875b98e390fb() : void
      {
         GameSwf.instance._8984fb4df5f3f18dbab82d9b(_01cf9a78594a0bb30b57b0c3.EBT_RADAR,true);
      }
      
      public static function _599e5625ce06531ebffc5d1e() : void
      {
         GameSwf.instance._8984fb4df5f3f18dbab82d9b(_01cf9a78594a0bb30b57b0c3.EBT_EXP,true);
      }
      
      public static function _fd4c114651eb8adb9dd15005() : void
      {
         GameSwf.instance._8984fb4df5f3f18dbab82d9b(_01cf9a78594a0bb30b57b0c3.EBT_SHINY_POTION,true);
      }
      
      private static function _7baf9c238827d7ebb98d106d() : void
      {
         GameSwf.instance._8984fb4df5f3f18dbab82d9b(_01cf9a78594a0bb30b57b0c3.EBT_POWER_BOOSTER,true);
      }
      
      private static function _050167682414b5fede4b657c(param1:int) : void
      {
         var _loc2_:int = 0x1CBF35BE ^ -698894372 ^ 0x10770591 ^ 0x0BAB86F9;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (-338610314 ^ 0x2DD19C4F ^ 0x07B62E91 ^ 0x108284A0))
            {
               case 0:
                  _d_charPositionLayer.visible = param1 != (0x7122B418 ^ -1720101625 ^ -690876109 ^ 0x3E89F02C);
                  return;
               case 1:
                  return;
               case 2:
                  if(!Config.SYNC_DEBUG)
                  {
                     _loc2_ = 0x1213DA19 ^ -1519648309 ^ 0x60087677 ^ 0x0643ACAC;
                  }
                  else
                  {
                     _loc2_ = 0x67F862A8 ^ 0x3520072C ^ 0x1C4F8F47 ^ -1616647221;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private static function _53519801a5c4cece28291d36(param1:Object) : void
      {
         if(GameSwf.instance.managerTutorial.isAnyTutorialInProgress)
         {
            return;
         }
         if(param1 == null)
         {
            param1 = {};
         }
         var _loc2_:_4fc3571d6b736c387c8f6b79 = app.dialogFactory._79aeef961ca529a1492e9eaa();
         param1.level = app.user.level;
         _loc2_.setData(param1);
         _loc2_.show();
      }
      
      public function set needUpdateTutorialHelper(param1:Boolean) : void
      {
         this._7359e4f3d26467fcb524b023 = param1;
      }
      
      public function get caughtDialog() : _4afcffb379abb67c2a3266dc
      {
         return this._5df63807d1a2b6e2bd30b059;
      }
      
      public function set caughtDialog(param1:_4afcffb379abb67c2a3266dc) : void
      {
         this._5df63807d1a2b6e2bd30b059 = param1;
      }
      
      protected function get dynamicGraphicsProgress() : Number
      {
         return 0x51D4962A ^ 0x5F3685C5 ^ 0x6B0E12A4 ^ 0x65EC014A;
      }
      
      public function get player() : _c9513c48978d5034cc9ff2f4
      {
         return this._playerChar;
      }
      
      public function get scrollrect() : Rectangle
      {
         return this._scrollRect;
      }
      
      public function set fishcoins(param1:int) : void
      {
         var _loc2_:int = 0x3F688278 ^ 0x17D1C699 ^ 0x1DC35643 ^ -566507020;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x14E03A44 ^ -1240528548 ^ 0x0F125443 ^ 0x46BCBC0D))
            {
               case 0:
                  if(this._gui == null)
                  {
                     _loc2_ = -1212504170 ^ -1753896426 ^ 0x76D52A37 ^ -1118044957;
                  }
                  else
                  {
                     _loc2_ = -1864699275 ^ 0x40740EB5 ^ 0x42104F53 ^ 0x79FF68C4;
                  }
                  break;
               case 1:
                  this._gui.fishcoinsIndicator.setFishCoins = param1;
                  return;
               case 2:
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function get locationLayersBase() : _bd60f9ad6ef4aaf28041ce8f
      {
         return this._locationLayersBase;
      }
      
      public function set fishbucks(param1:int) : void
      {
         var _loc2_:int = 0x70E14032 ^ -1800547080 ^ 0x3275CE3A ^ 0x4C14C338;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x197788B2 ^ 0x3938E3C8 ^ -1592641345 ^ 0x1B70CA0D))
            {
               case 0:
                  if(this._gui == null)
                  {
                     _loc2_ = -616852622 ^ -1630740546 ^ 0x539698B5 ^ -1941156429;
                  }
                  else
                  {
                     _loc2_ = 0x6652D306 ^ -361584539 ^ 0x40633D60 ^ 0x566EDFCA;
                  }
                  break;
               case 1:
                  this._gui.fishbucksIndicator.setFishBucks = param1;
                  return;
               case 2:
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function set energy(param1:int) : void
      {
         var _loc2_:int = -2046384702 ^ 0x05A1A36F ^ -1941374646 ^ -1570720390;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (-424911883 ^ 0x197DE936 ^ -386107565 ^ -1163751668))
            {
               case 0:
                  this._gui.energyIndicator.label.text = param1.toString();
                  _loc2_ = 0x45E308FA ^ -709365195 ^ 0x271611EE ^ 0x1ACDA1BF;
                  break;
               case 1:
                  app.user.energy.value = param1;
                  if(this._gui != null)
                  {
                     _loc2_ = 0x0921E168 ^ 0x7538C595 ^ -142837127 ^ 0x26EA1418;
                  }
                  else
                  {
                     _loc2_ = -2052608619 ^ 0x6C29EF9B ^ -234956611 ^ -1241526227;
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
      
      public function set energyRestoreLeftTime(param1:int) : void
      {
         this._8e02ec2dee8088bfa6093d4e = param1;
         this._9741dcd47f51b5e718ca1768();
      }
      
      public function set level(param1:int) : void
      {
         this._gui.levelIndicator.setLevel(param1);
      }
      
      public function _7bb43154089445b88b02842d(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:int = 0x6BE15C46 ^ 0x586E6EF2 ^ 0x2D23B4E0 ^ -1617604435;
         loop0:
         while(true)
         {
            switch(_loc3_ ^ (-1736791944 ^ 0x2099CA6E ^ -799091053 ^ -377200004))
            {
               case 0:
                  if(this._87aaf9f61e3ac479602368b8)
                  {
                     _loc3_ = 0x797785BA ^ -449713250 ^ -149394565 ^ -362294361;
                  }
                  else
                  {
                     _loc3_ = -658129256 ^ -650927509 ^ -997891479 ^ 0x444AA861;
                  }
                  break;
               case 1:
                  this._87aaf9f61e3ac479602368b8 = false;
                  this.level = this._4b659134a1368e7ca1d657f3;
                  _loc3_ = -1815435247 ^ 0x10D3D633 ^ 0x6E68A8C7 ^ 0x6C48001E;
                  break;
               case 2:
                  this._gui.levelIndicator.setValue(param1,app.user.prevExpLimit,app.user.nextExpLimit,param2);
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      protected function get locationFullWidth() : Number
      {
         return this._locationLayersBase != null ? this._locationLayersBase.fullWidth : -281079587 ^ -352217374 ^ 0x0E0B693F ^ 0x0A35EF00;
      }
      
      protected function get locationFullHeight() : Number
      {
         return this._locationLayersBase != null ? this._locationLayersBase.fullHeight : 0x3874564F ^ -1298988288 ^ -1841289678 ^ 0x18A7737D;
      }
      
      private function get _73acd7e3d4cfe06c4dd74ef7() : Boolean
      {
         return this is _c24229eda44b942058106fae || this is _08482ab86896c1348bb9eecb;
      }
      
      public function get raftRectangle() : Rectangle
      {
         return this._locationLayersBase.raftRectangle;
      }
      
      public function get raft() : _a00a2200c99ccb365fe1b90e
      {
         return this._locationLayersBase.raft;
      }
      
      public function get gui() : _8a5b0c698d40931e860c0aeb
      {
         return this._gui;
      }
      
      public function get dailyQuestManWidget() : _f6f12dbbfbe7f740316e0e9f
      {
         return this._7fe05aca52f25fef392392be;
      }
      
      public function _e45563bad3bc0a6e80958b6a() : Boolean
      {
         var _loc1_:Boolean = true;
         if(this._playerChar == null || this._playerChar.boat != null || this._playerChar.moveStrategy is _600d447c132e71fe3abc23ea || this._playerChar.isMovingToRaft || this._playerChar.moveStrategy is _709a8761c08236d1b5935ace || !this._playerChar._b5660deb0c277f3554a43b66())
         {
            _loc1_ = false;
         }
         return _loc1_;
      }
      
      public function isActive() : Boolean
      {
         return this._8cee8fcbcec66b9e75cc1132;
      }
      
      public function get locationLoadComplete() : Boolean
      {
         return this._locationLoadComplete;
      }
      
      public function _37d251080bf5452c4699dab9() : void
      {
         this._bf971d1bb8050ac33759de89();
      }
      
      public function _4c7c73154f90937ccf427164() : void
      {
         this._7359e4f3d26467fcb524b023 = true;
         this._a1192a516a204df021885986();
      }
      
      public function _b723bc06d3f1e5904f08fae8() : void
      {
         this._7359e4f3d26467fcb524b023 = GameSwf.instance.managerTutorial.isAnyTutorialInProgress;
         this._a1192a516a204df021885986();
      }
      
      override public function onShowStart() : void
      {
         super.onShowStart();
         GameSwf.instance.managerTutorial._a48e6016b46dab72868aebd1();
      }
      
      override public function onShowComplete() : void
      {
         super.onShowComplete();
         GameSwf.instance.managerTutorial._2664fc44433abf9626ce63fa();
         GameSwf.instance.managerAnnouncements._13ab1346478fd6c3c7bfa7fc();
      }
      
      protected function _7371a9ccf8daa02c1ef3521c(param1:_4986c362bed569a2ffb299b4) : void
      {
         this._0d63b9c68914abac77f5fe5c(_810c4ade948afb64e9c7ee25(param1.data));
      }
      
      protected function _d69b1ee81887e04ca1584d73(param1:_ba120ae720a391732e866217) : void
      {
         var _loc2_:int = 0x76762FA2 ^ -622592408 ^ 0x7B7A96A6 ^ -1010220474;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (-1445683041 ^ -1404715140 ^ 0x69DD3BDE ^ 0x786A2117))
            {
               case 0:
                  if(this._playerChar == null)
                  {
                     _loc2_ = 0x534E7369 ^ -198518410 ^ 0x2699C7A9 ^ -1780782946;
                  }
                  else
                  {
                     _loc2_ = -1769292463 ^ 0x0AF08FC6 ^ 0x259E8E7D ^ -1379747391;
                  }
                  break;
               case 1:
                  this._playerChar._9022b325f6002b7537ebef62(param1);
                  param1._e4a9539bc08e42b3d1467d8a(this._playerChar);
                  this._1e8bb3fdea106107fa2df410 = true;
                  return;
               case 2:
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function _a7dc0bd2fc0ec007d77f6abf(param1:_d5eb1450a3d5966d0528acfe) : void
      {
         var _loc2_:String = param1.data;
         if(this._b360e884780ae3fb0cc651e1.isLoaded)
         {
            GameSwf.charsManager._87e1e0ccde8111cbbc2c65af(_loc2_,this.updateCharView,_loc2_);
         }
         else if(this._waitForViewLoadUsernames.indexOf(_loc2_) == (0x22B57EFD ^ 0x3231AF8A ^ -507680692 ^ 0x0EC646C4))
         {
            this._waitForViewLoadUsernames.push(_loc2_);
         }
      }
      
      private function _3a9f3f2cbb8ffb53b97f9210() : void
      {
         var _loc1_:_08c120b706560fce9302bcab = null;
         if(this._locationLayersBase != null && this._locationLayersBase.raft != null && this._locationLayersBase.raft.charOnBoard != null)
         {
            for each(_loc1_ in this._locationLayersBase.raft.charOnBoard)
            {
               _loc1_._1617464a9f06d40877921ddc(new _16c375dcd3d66ff8ae819841(_loc1_));
               _loc1_._ea52ddaca1a080cc2518c8da();
            }
         }
         if(this._playerChar != null && this._playerChar.onRaft)
         {
            this._playerChar._6cafef5908dd0ab8c7a3e877();
            this._playerChar._6227fd5da1ce67d0b36a4f90();
            this._playerChar._ea52ddaca1a080cc2518c8da();
         }
      }
      
      private function _49e6c12844f605c2b7200f06(param1:EnterRaftResp) : void
      {
         var _loc2_:int = -1351245139 ^ 0x4EE9C0A9 ^ -1889699922 ^ 0x3294ADA4;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x48D07BFD ^ -1061545961 ^ 0x53B4C068 ^ -2020926580))
            {
               case 0:
                  if(param1.login == app.user.username)
                  {
                     _loc2_ = -1647799993 ^ -1858709704 ^ 0x3032A4C6 ^ 0x6099DAB5;
                  }
                  else
                  {
                     _loc2_ = 0x6D1710D4 ^ -1977184561 ^ -1000421975 ^ 0x7F3AE3BD;
                  }
                  break;
               case 1:
                  return;
               case 2:
                  this._gui._b95c50dd0c652423b4b1846b(param1.timeToStartSec,param1.fullTimeSec,_706b9e8a05fa6a971551d21d.ECT_RAFT_WAITING);
                  _loc2_ = 0x02567714 ^ 0x79987599 ^ 0x1775A3A2 ^ 0x30EE1920;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function _33a44bfb5cccebdd819e32c7(param1:TimerEvent) : void
      {
         --this._8e02ec2dee8088bfa6093d4e;
         this._9741dcd47f51b5e718ca1768();
      }
      
      private function _3c6ee18248268900e7cbfa67(param1:Event) : void
      {
         _02fbe4cbe9e83f1b8c711799.removeEventListener(this,this._b360e884780ae3fb0cc651e1,Event.COMPLETE,this._3c6ee18248268900e7cbfa67);
         this._animatedCharacterIsLoaded = true;
         this.create();
      }
      
      private function _7f2e0f40249ce6e0c17b1ea8(param1:_720429110fd3cfc01812b5a0) : void
      {
         this.fishcoins = int(param1.newValue);
      }
      
      private function _9bb12e0d2c599c0be9aaa19e(param1:_720429110fd3cfc01812b5a0) : void
      {
         this.fishbucks = int(param1.newValue);
      }
      
      private function _e8b84071d83d229165347da7(param1:_720429110fd3cfc01812b5a0) : void
      {
         this._4b659134a1368e7ca1d657f3 = int(param1.newValue);
         this._87aaf9f61e3ac479602368b8 = true;
         this._5e20b00e511d30d9547674e4 = true;
      }
      
      private function _66696899c075bd0b97315c7d(param1:_720429110fd3cfc01812b5a0) : void
      {
         this._5241dcc27353a41316aa8190 = true;
         this._19d5ac9c472f59f06c780944 = int(param1.newValue);
      }
      
      private function _13f2fb4c0a00143c187eda0a(param1:_720429110fd3cfc01812b5a0) : void
      {
         this._5241dcc27353a41316aa8190 = true;
         this._19d5ac9c472f59f06c780944 = app.user.experience;
      }
      
      private function _fc3bac2b6c8cddae8e8fe4fd(param1:_720429110fd3cfc01812b5a0) : void
      {
         this._5241dcc27353a41316aa8190 = true;
         this._19d5ac9c472f59f06c780944 = app.user.experience;
      }
      
      private function _99d7604e8f6aea29c1c9a161(param1:_178a822f6f1028b33439b0d5 = null) : void
      {
         this._obstacleMap = this._locationLayersBase._698bb584b5b0ca8d2e60ce08();
         this._02caa9fde1142e74a23815e9();
         this._069cb4077b999ad0e9d2e86e();
      }
      
      private function _12deb8291cebac17a9349ad9(param1:_178a822f6f1028b33439b0d5 = null) : void
      {
         this._lakeObstacleMap = this._locationLayersBase.lakeObstacleMap;
         this._02caa9fde1142e74a23815e9();
         this._069cb4077b999ad0e9d2e86e();
      }
      
      protected function onLocationLayersParsingComplete(param1:Event) : void
      {
         var event:Event = param1;
         if(this._locationLoadComplete)
         {
            return;
         }
         Debug.log(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勞勊劃刖労刘勭勚刞勁剚劄募刀劕剪剶劶剸力刺剅劻勰勱勴勏刃割劸募功剏劝劔剸刴勎初勥剼別剆刲劾劰励劖剸劌刻劯刉割劒勯剡刾刅勹勌劼刺勥勁剈劭刘剹劳","刄刟剈勥刢加劔勮剙勁勇刉剞勞労劫"),true);
         try
         {
            _02fbe4cbe9e83f1b8c711799.removeEventListener(this,this._locationLayersBase,Event.COMPLETE,this.onLocationLayersParsingComplete);
            this._locationLayersBase.weather = this.locationModel.weather;
            this._a35586942f3ef9c2fd80b181._63bc7136da541eadeb605e55();
            addChildAt(this._locationLayersBase,-68314883 ^ 0x0C4643FA ^ -355883724 ^ 0x1D627E32);
            if(Config.DEBUG_DRAW_LOCATION)
            {
               DEBUG_LAYER.name = _95da7f1147c669197db81295._8f4866de82b7339154180ecb("刘剙删勭勽别刎劢剢剋勬剌刹刾勯剖剹勦刷勰効刕劮勏刷剈刏劏刹勻勷剀剥劻勐到刧办刣劔剮刷刐前利动","剻刾劾剄剪勶勼刵刟剟剓初勑勇刨剔");
               if(Config.SYNC_DEBUG)
               {
                  DEBUG_LAYER.addChild(_d_charPositionLayer);
               }
               addChild(DEBUG_LAYER);
            }
            this._95223275024345738660ad36();
            this._c65c24a0f5b02ad6f600c5db();
            this.gui._e7e9991913759be9d51d4c5f(GameSwf.guiState);
         }
         catch(e:Error)
         {
            Debug.log(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挣挣揖掌揗捸揱捝捪捘掠掾揀掟挤揲捨揆揜揑挾掩接持揎挟捸指揹挶掫挪挿捾掠捥挭揟捅捁挎掇揦插揺捰掍挴揝掽揉揢掄挛揉捾掋掊挝捊掘掁挪掊挎揃揍挓掖挫捵揱掌挌挩挳捝捣捜揽挑揱","挌提掩挋揶探排揺捕揲换挠挨掄掵捝"));
            Cc.error(e.getStackTrace());
            GameSwf._6b2ea987f29b60cd755db2f5(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捄挍捲挣掃捀揩揯挓挴換挓捥掳揂掵掠推挮接挌掫揀挅","揔掿掽挵捼揲揦捠挍指掷揿揉捷揽掄"));
         }
         Debug.log(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揚挦掰挃揮揃捧授掙揽挍揯捭捓掶揗揭揨捰揙掜捪掇掊揢捞掳探掆掉捪挳掚推挬捲捔捾捧挳揝挐捸捩挖揔捬挶掝捇掬捋捑掿挡揭捻揿推揖揗掗挨捞揊掍挙捎挤捯","掑捈挕捣挀挀挮挋捹掕掓揠掤揪捆挮"));
         if(Debug.AUTO_SELECT_PRIVATE_HOUSE && !(this is _c24229eda44b942058106fae))
         {
            setTimeout(function():void
            {
               GameSwf.instance._0bcd23177a136eba1c7dbe4f(app.user.username);
            },-246740695 ^ -855250331 ^ 0x7FA812B8 ^ 0x43E6F21C);
         }
         if(Debug.AUTO_OPEN_DIALOG)
         {
            Debug.AUTO_OPEN_DIALOG = false;
            GameSwf.instance.managerFurnitureFactory.getInfo();
         }
         this._locationLoadComplete = true;
         Debug.logEnd(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掹挛挥揜掗挟挽掘挑挱挨捠掦掅掰掞捝掏掷挋掽捭据捃揻挌挱掫探换掼捃挞掋挣捵揀揩揪揲揊揎挾揲挚接揹捴指掎捦挣掌挙捇捙捙捩挙揸掭捀援挖掾掗揕掃挵掎","探推揫揎掲捠捕捾揈掆挒掕捾捞捯揳"));
         this._d8e51dc6786d5e7b51d22f01();
      }
      
      private function _964e26b76ce8efe028f6e2ee(param1:ResponseBoatMove) : void
      {
         var _loc2_:_40c40768738c862c74ddd128 = this._locationLayersBase._eff2210177460a6b2f06ef20(param1.boatId);
         if(_loc2_ == null)
         {
            return;
         }
         var _loc3_:_08c120b706560fce9302bcab = this._0d82238986438e23b653c2b8(_loc2_.lastFieldCharUsername);
         var _loc4_:Boolean = _loc3_ != null;
         var _loc5_:Boolean = _loc3_.locationUser.username != app.user.username;
         if(_loc4_ && _loc5_)
         {
            _loc3_._a05663d58d744a2fe1d85d7b(param1.x,param1.y,param1.rotation);
         }
      }
      
      private function _5d8d89eb033e1b19dda8cbd7() : void
      {
         if(!this._8cee8fcbcec66b9e75cc1132 || this._gui == null || this._gui.levelIndicator == null || !this._5e20b00e511d30d9547674e4)
         {
            return;
         }
         this._5e20b00e511d30d9547674e4 = false;
         _53519801a5c4cece28291d36(app.user.newLevelData);
      }
      
      private function _dfa02cfa899528a5aa0cc290(param1:Event) : void
      {
         this._locationLayersBase.weather = _da93b7e4b1cf62dcb698e0bd.SUNNY;
      }
      
      private function _724f575dfd77053760dfe3c8(param1:Event = null) : void
      {
         this.moneyTreeDialog = null;
         this._9a62ebd0db0249ee0917d4c7();
      }
      
      protected function _fc86f5b236d37b4635944a87(param1:ResponseNpcTalk) : void
      {
         if(param1.name == _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挻捝揰捗捆捈掐捱揵揘挨揿掔掜揄挈掚揗挖掐","换挵採挰揊揳捇捝挧捒揓援挥按捧揯") && (param1.message == _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၟიႡთၚჱრဍ႓ჷႭတၦၩၧႚლ်၄Ⴙ၅ၡႋჹၘဿႰჾယ႕უჺဌკქႈၽဏဧჺဦႋ","ႍუ႒სხ၎လლဎႩှႏယყაჾ") || param1.message == _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ႄဉစွၺၫဲ႓რႲႾ၌စၗ႓ၡိၹဴၘჯဳნၞၣႝჶႠ၅Ⴙၒူၚჰთႉ","ါႠႡჭဧၵქႰႻေငႏလ၂ဧႰ")) && this.locationModel.locationConfig == _24fc30cfc3c855ea21a231e8.SUBLOCATION_6_SIBIRI)
         {
            this._locationLayersBase._b1ece124f95a8581ffc8606e(true);
         }
      }
      
      private function _f6ddf9764ea83e3afcad3432(param1:_4986c362bed569a2ffb299b4) : void
      {
         var _loc2_:Object = null;
         var _loc3_:int = -1370581027 ^ 0x70E640E6 ^ -954989085 ^ -431805145;
         var _loc4_:Array = param1.data as Array;
         if(_loc4_.length > (0x1A99B8FD ^ -871167879 ^ -173875918 ^ 0x23286DB6))
         {
            _loc3_ = _f53c51098527c84835f32b98.parse(_loc4_[0x4EB699AD ^ -1966424125 ^ -490684128 ^ 0x26BCE74E]).resourceType;
            this._locationItems._069744e4f3ede920db09103e(_loc3_);
         }
         for each(_loc2_ in _loc4_)
         {
            this._d889edf75abb4c06a7560452(_loc2_);
         }
      }
      
      private function _153d63fcac60d53acac75bac(param1:_4986c362bed569a2ffb299b4) : void
      {
         this._d889edf75abb4c06a7560452(param1.data);
      }
      
      private function _4ca94c42702c397e9a70f6cf(param1:_4986c362bed569a2ffb299b4) : void
      {
         this._331b3b3569f81ea28d9c6be9(param1.data);
      }
      
      protected function _d889edf75abb4c06a7560452(param1:Object) : void
      {
         this._locationItems._7fbc98e1b8595130c1753487(param1);
      }
      
      protected function _331b3b3569f81ea28d9c6be9(param1:Object) : void
      {
         this._locationItems._e2e39474948d8ced20ea12dd(param1);
      }
      
      private function moveCase() : void
      {
         this._playerChar.setPosition(0x3EE515E5 ^ -1224101429 ^ -1167725239 ^ 0x33894F1B,-748101931 ^ -1514271553 ^ 0x7525B33D ^ 0x03F3646B,-1932628667 ^ 0x19903C31 ^ -1902073569 ^ -469694583);
         this._playerChar.onMouseClick(-1113865824 ^ -896632099 ^ 0x1A0EBE0B ^ 0x6D1B0D3B,-84762730 ^ 0x61BCD132 ^ 0x5BB7E350 ^ -1057380137);
      }
      
      private function inspect() : void
      {
         this._playerChar._89619ce3363ecc3ce96c8aba();
      }
      
      private function moveCase2() : void
      {
         this._playerChar.onMouseClick(-1187580962 ^ 0x4BE26452 ^ 0x61112008 ^ -1815757935,-192576513 ^ -48109146 ^ 0x393CC8EF ^ 0x3098A6BB);
      }
      
      private function setPosition(param1:int, param2:int) : void
      {
         this._playerChar.setPosition(param1,param2);
      }
      
      private function removeAllShells() : void
      {
         this._locationLayersBase.removeAllShells();
      }
      
      private function reorder() : void
      {
         this._locationLayersBase.reorder();
      }
      
      private function freezeLake(param1:int) : void
      {
         var _loc2_:int = -305113127 ^ 0x2130EC51 ^ -1779950895 ^ 0x3AE8738C;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x68BDEA5B ^ 0x5D5086E0 ^ 0x536FA587 ^ 0x05621BE9))
            {
               case 0:
                  if(param1 == (0x7C2C760C ^ -1512663679 ^ 0x72AED9BC ^ -1420543440))
                  {
                     _loc2_ = -2075423672 ^ -967375693 ^ -1777482939 ^ -1208903319;
                  }
                  else
                  {
                     _loc2_ = -1421294303 ^ 0x4232E3AE ^ -319027509 ^ 0x6666F292;
                  }
                  break;
               case 1:
                  return;
               case 2:
                  this._locationLayersBase.frozenLake._1963d0a948fa760e5dca0769();
                  _loc2_ = 0x6D0BCED2 ^ -300271337 ^ -276716063 ^ 0x0F7080F0;
                  break;
               case 3:
                  this._locationLayersBase.frozenLake._3d761c07ae6e66955a4a38f5();
                  _loc2_ = 0x0218770C ^ 0x284E2597 ^ 0x2A23B7B1 ^ 0x639537FE;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function forceMove(param1:int, param2:int) : void
      {
         this._playerChar._d920697e2d07908f09509e8e(param1,param2);
      }
      
      private function _43908ed30d4f1bb69ad87af4(param1:ResponseBoatEnter) : void
      {
         var _loc2_:_08c120b706560fce9302bcab = this._0d82238986438e23b653c2b8(param1.login);
         if(_loc2_ != null)
         {
            this.moveToBoat(_loc2_,param1.boatId);
         }
      }
      
      private function _60e6d52634e93dd41012a977(param1:ResponseBoatRelease) : void
      {
         var _loc2_:_40c40768738c862c74ddd128 = this._locationLayersBase._eff2210177460a6b2f06ef20(param1.boatId);
         if(_loc2_ != null)
         {
            if(_loc2_.fieldChar is _c9513c48978d5034cc9ff2f4)
            {
               app.user.atTheBoat.value = false;
            }
            _loc2_._5b62d523e0155dff19c699fb();
         }
      }
      
      protected function _0d82238986438e23b653c2b8(param1:String) : _08c120b706560fce9302bcab
      {
         var _loc2_:_08c120b706560fce9302bcab = null;
         if(this._charList != null && param1 in this._charList)
         {
            _loc2_ = this._charList[param1];
         }
         return _loc2_;
      }
      
      private function _abfa6bd3804ff5a2c204a14f(param1:_4986c362bed569a2ffb299b4) : void
      {
         _02fbe4cbe9e83f1b8c711799.removeEventListener(this,this.locationModel,_4986c362bed569a2ffb299b4.UPDATE_MAINTENANCE_TIME,this._abfa6bd3804ff5a2c204a14f);
         this._de626e37b3d6fca8360b573b();
      }
      
      private function _79f02d413c7c681ecf3b2da6(param1:LeaveSublocationResp) : void
      {
         if(this.locationModel == null)
         {
            return;
         }
         if(param1.desc == _95da7f1147c669197db81295._8f4866de82b7339154180ecb("刍剘刢剡刱勣剽刴功勹剰劧勭刵劯劇删効刞刹劎剘劣刋","劂勶剔划勾刕剃剧刡劇則勑剒削勍勢") && this.locationModel.isSublocation)
         {
            _1214a9b742372ed027fb8081._9539c89c962dfaf34e69b2ae();
         }
      }
      
      private function _40bb169b742e19baaff91868() : void
      {
         this._locationLayersBase.weather = _da93b7e4b1cf62dcb698e0bd.SUNNY;
      }
      
      private function _c6855de3cfca8e01004f3c2a() : void
      {
         this._locationLayersBase.weather = _da93b7e4b1cf62dcb698e0bd.SNOW;
      }
      
      private function _62033f602cbf1a29cf680613() : void
      {
         this._locationLayersBase.weather = _da93b7e4b1cf62dcb698e0bd.SANDSTORM;
      }
      
      private function _9b9434267a14bd5f99ad4b2a() : void
      {
         this._locationLayersBase.weather = _da93b7e4b1cf62dcb698e0bd.RAIN;
      }
      
      private function _fa7a45eae45e1665b5694768() : void
      {
         this._locationLayersBase.weather = _da93b7e4b1cf62dcb698e0bd.HEAVY_RAIN;
      }
      
      private function _3fb28f6394e1fa316cb4f6aa() : void
      {
         this._locationLayersBase.weather = _da93b7e4b1cf62dcb698e0bd.FOG;
      }
      
      private function _1e24c77ca3acef4215a0a67a(param1:_720429110fd3cfc01812b5a0) : void
      {
         var _loc2_:int = -27961439 ^ -996513458 ^ 0x151A3D80 ^ -2125453379;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x6EEA9326 ^ 0x41F44AC7 ^ 0x3D4DD158 ^ -1126814615))
            {
               case 0:
                  this._locationLayersBase.weather = this.locationModel.weather;
                  return;
               case 1:
                  return;
               case 2:
                  if(this._locationLayersBase == null)
                  {
                     _loc2_ = 0x78B0AE55 ^ -1546762917 ^ -771593916 ^ -1476811109;
                  }
                  else
                  {
                     _loc2_ = 0x2029F5FB ^ -1837873710 ^ -1568240781 ^ -1101127798;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function _17a63998f6557418ae0ce195(param1:_4986c362bed569a2ffb299b4) : void
      {
         var _loc2_:_810c4ade948afb64e9c7ee25 = _810c4ade948afb64e9c7ee25(param1.data);
         if(_loc2_ == null)
         {
            return;
         }
         var _loc3_:String = _loc2_.username;
         this._94d93044b810c5e3568f4b9e(_loc3_);
      }
      
      private function _de626e37b3d6fca8360b573b() : void
      {
         var _loc1_:_45231761937416c3f2d3a259 = GameSwf.instance.managerMaintanence;
         if(_loc1_.maintenanceTime > (-2053875462 ^ 0x70C3B3EE ^ 0x4B0D765E ^ -1101357750))
         {
            this._gui._55d4ee171c9212725ca72d00(_loc1_.maintenanceIn);
         }
      }
      
      private function _9741dcd47f51b5e718ca1768() : void
      {
         var _loc1_:int = -2070424304 ^ -649649504 ^ -1512014732 ^ -1155608582;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (0x2F76FD25 ^ 0x76BA1063 ^ 0x382EEC62 ^ 0x22CC451D))
            {
               case 0:
                  _loc1_ = -712127996 ^ 0x14BB221F ^ 0x58110401 ^ -636901343;
                  break;
               case 1:
                  this._gui.energyIndicator.moreInText = null;
                  if(this._4f263e9127f99fb7aefd6ff7.running)
                  {
                     _loc1_ = -2020219226 ^ -1115098975 ^ -1957979827 ^ -226964624;
                  }
                  else
                  {
                     _loc1_ = -49788444 ^ -1187269343 ^ 0x44CD0D26 ^ 0x43D0B5D8;
                  }
                  break;
               case 2:
                  return;
               case 3:
                  this._4f263e9127f99fb7aefd6ff7.stop();
                  _loc1_ = 0x66B32098 ^ 0x0C46D82F ^ 0x44192BED ^ 0x6DC29761;
                  break;
               case 4:
                  this._gui.energyIndicator.moreInText = _c2ad9d37d7be0097d6d2e977.get(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劻刕励勑刢劀努勉剸剢刓勬剘勰剱剪勑勺勹勡","勷刚剿勰勜制功勯劤剙刍劀刦刣剄剿")).replace(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("刷勍勏剃勻剋务别勜劔勲勚剳勖劻剹剄刣勸刉","割劅刕刼勌劊勖劧勶剚勇剤劧勚剼剟"),TimeConverter.toTime(this._8e02ec2dee8088bfa6093d4e * (0x0DC8BEA1 ^ 0x3717055A ^ -101857404 ^ -1020100713),TimeConverter.MINUTE_SECOND_TYPE));
                  if(!this._4f263e9127f99fb7aefd6ff7.running)
                  {
                     _loc1_ = -1904825903 ^ -787950125 ^ -1368839751 ^ -1304882812;
                  }
                  else
                  {
                     _loc1_ = 0x455E697C ^ -1547274168 ^ 0x3F85EE91 ^ -1707885668;
                  }
                  break;
               case 5:
                  return;
               case 6:
                  this._4f263e9127f99fb7aefd6ff7.start();
                  _loc1_ = 0x2E3BC066 ^ -986046694 ^ -1532773766 ^ 0x0C8C213F;
                  break;
               case 7:
                  if(this._gui == null)
                  {
                     _loc1_ = 0x53F7FC7C ^ -325084442 ^ 0x160C2B43 ^ -364246555;
                  }
                  else
                  {
                     _loc1_ = -1966934842 ^ -280437915 ^ -1426550687 ^ -1940063245;
                  }
                  break;
               case 8:
                  if(this._8e02ec2dee8088bfa6093d4e > (0x60FC28F3 ^ -466162104 ^ -1974233025 ^ 0x0E995E84))
                  {
                     _loc1_ = -813923982 ^ 0x77C5DDCA ^ 0x20D06BD9 ^ -616074404;
                  }
                  else
                  {
                     _loc1_ = -172276237 ^ 0x2D0FDDB6 ^ 0x2AAF0255 ^ -1321869784;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function _eef3872961a8db87919c40fa(param1:Object) : void
      {
         if(this._72cdc7a9d73e942fa68f9973 == null)
         {
            this._72cdc7a9d73e942fa68f9973 = new _33dd41a12065671be9311587();
         }
         else
         {
            this._72cdc7a9d73e942fa68f9973.destroy();
         }
         var _loc2_:int = int(param1);
         var _loc3_:Boolean = _loc2_ >= (-688788625 ^ 0x2B5D15BF ^ 0x7B860346 ^ -2044002922);
         _67f8febc099eaa05c48aa41e.isFishMarketOpen = _loc3_;
         this._locationLayersBase._8da2a70b254394476be6a342(_loc3_);
         this._72cdc7a9d73e942fa68f9973._bc1d2c0c359bffe4ef99cfee(Math.abs(_loc2_),new _0ce7a4d99e17666ff0e19ce6(_loc3_ ? this._53c47e6c7e5db1f8812ed343 : this._fca932ddc3d4528c4cf16495));
      }
      
      protected function onUpdateResp(param1:UpdateResp) : void
      {
         var response:UpdateResp = param1;
         var needOpen:Boolean = false;
         var needToLeave:Boolean = false;
         var decorMarketTime:Object = null;
         var decorMarketChangeSec:int = 0x1EAF9848 ^ 0x5135F751 ^ 0x656CFCED ^ 0x2AF693F4;
         var mission:Object = null;
         var users:Object = null;
         var username:String = null;
         var userData:Object = null;
         var fieldChar:_08c120b706560fce9302bcab = null;
         var viewConfig:String = null;
         var charViewConfig:CharViewConfig = null;
         var userLevel:int = 0x537AC277 ^ -453457180 ^ 0x1721C190 ^ -1599878909;
         var dialog:_301b6b096d193294bbd60d6d = null;
         var raft:Object = null;
         var fishObject:Object = null;
         var fishInfo:_c47e82e5d235217beb5f9566 = null;
         var experiance:int = -158382283 ^ -924274747 ^ -1017287232 ^ -46496464;
         var isRecord:Boolean = false;
         var isNew:Boolean = false;
         var state:Object = null;
         var respNeedTime:Object = null;
         var s:String = null;
         var data:Object = null;
         var respBoughtTime:Object = null;
         try
         {
            this.locationModel._74c869ae3d29b2df7f677f8a(response);
            this.locationModel.wasLoadedFirstResp = true;
            this._de626e37b3d6fca8360b573b();
            if(response.hasDataProperty(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("Ⴟံ႕ჳ၈ჲႭეႧჹဘჺ႘ၟၐဣဝၛႤၘ႐ဢ჆႞჌კႂလႽႥდშဢჭၖၜჵეჹჳဗ၇","းၜဒေၑ့ოႷႝႋဥႌႆ၍ဦგ")))
            {
               needOpen = Boolean(response.getJsonData(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("励劔劒剹剟刐判劊勔剐劤刵剞剈勓劊制劭剰勨勱勌剔刳剖勐劜剙勩勍剌勻剌剬劳剘劽刑剃判勎勩","剄剙劥剖勴動刑刕勸势剖勳勛勌刪刎")));
               if(needOpen)
               {
                  this._df415363e25dab7c49b70f79();
               }
               else
               {
                  this._b0283d04bfdf80156c4365be();
               }
            }
            if(response.hasDataProperty(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("刱勽勭勓勭删劎剚助剟勿刚刵剨刌勛劆劋剫劮刬剘刊刑刖剃刹劜勗勐剒劭劻勬剞劂副剢刄刏","刿刴剀剉勭刖刘初刄劥刁剖剁刑勯劳")))
            {
               needToLeave = Boolean(response.getJsonData(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挀揨掎揲捫掩揺掊揞捗挭挔捇挍捼据捫揜揪掍掊挰揟掱据掊挬揱挀掣推捴挬挒捽挎挏损振揭","挏挔挤挜捬掤揅掦揥措掉挧掑捿挊揅")));
               if(needToLeave == true && GameSwf.currentLocationDialog.locationModel is _b7721b56782b7cbf756127e2)
               {
                  if(GameSwf.profileSwfDialog != null)
                  {
                     GameSwf.profileSwfDialog.close();
                     GameSwf.profileSwfDialog = null;
                  }
                  GameSwf.instance._e4c0a8256604a3984faf9862(_24fc30cfc3c855ea21a231e8.LOCATION_2_RIO.id);
                  return;
               }
            }
            this._4e4a57771508bbf6cd5ada4e(response);
            this._b244782c13159db4298c1d56(response);
            if(response.hasDataProperty(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挑挆掖掇挴挷捀挪掠描捰捳挮挆挹掸掍捃揣揋掼捲捬掜掌掱揪挘掺掝捼捂捑揵掇掳推掳挍捲掍掺揯捃揓捬捽挈","揕捅捲揋挴捘揖捻挴掳捝揤揶捓捴捷")))
            {
               decorMarketTime = response.getJsonData(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("კၕႄနမၝქစႫႸၸႛၱေშႍဨ၀ၼႷႤსၪထჅთဘႈჟყ္჎Ⴚၷုီၲၜ၊ႴႮၿႬဌ၃დ့კ","ံ့၆ტႦႍ჌ၷ၂ჅყႢၡဋၧဗ"));
               if(this._caab76bfbff3e37e7a65d68f == null)
               {
                  this._caab76bfbff3e37e7a65d68f = new _33dd41a12065671be9311587();
               }
               else
               {
                  this._caab76bfbff3e37e7a65d68f.destroy();
               }
               decorMarketChangeSec = int(decorMarketTime);
               if(decorMarketChangeSec >= (-2097192619 ^ -315591658 ^ -1724725670 ^ -151137511))
               {
                  this._locationLayersBase._2ab9e1ce7d6a25a5ee856c72(false);
                  this._caab76bfbff3e37e7a65d68f._bc1d2c0c359bffe4ef99cfee(Math.abs(decorMarketChangeSec),new _0ce7a4d99e17666ff0e19ce6(this._94cb52e01f4eaa79d2dcc699));
               }
               else
               {
                  this._locationLayersBase._2ab9e1ce7d6a25a5ee856c72(true);
                  this._caab76bfbff3e37e7a65d68f._bc1d2c0c359bffe4ef99cfee(Math.abs(decorMarketChangeSec),new _0ce7a4d99e17666ff0e19ce6(this._6b61b392d089b7ecd3e92373));
               }
            }
         }
         catch(e:Error)
         {
            Cc.log(response);
            Cc.error(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剟勌別劮勇剮剥労制劥刲刎刃刂剃剗剛勓勘剷劐剅刅剧删剭剭剧刊剐勇務募助剆刽劍剁勛刦勒剜列剱勢勏剆劙勖剴剖刘劒勅刳刋剈劲前劚劻劺刚刟募劵劇劖勜勄刜剶劀劾劔勂刊刞","劵勰劜勝剹劵剿剩制刉勐剒剑劓劋加"),e);
            Cc.error(e.getStackTrace());
            GameSwf._6b2ea987f29b60cd755db2f5(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("换掦掺掎揷揺挾揃捰揅捷挭掁挤捥掁揌挺挴挎掔捋挽揧捨揠捒捃","捚捩捳捧挟捄揗捔捔掳揋捐捐揙捆捾"));
         }
         try
         {
            if(response.hasDataProperty(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ဥၲၬႣၷ၊ၻၩႼც၄ဵჃစ၆Ⴖဠေაႉၶၖးყၴၩြၐဍტ၄Ⴖဩႉၭ၏ဍღ","ေႄ၆჈჉ၳუဌၓဉၑၺိဘფဃ")))
            {
               mission = response.getJsonData(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捐援挿挐挹掕揿挗挎捝揣掣掏挛掤揃揖揸揄挂挥掋捚掙揚揜掳接揆掟挭揤捷挳捠掲挣掲","揧掴掀掙掖掳掔挋捝挐提损揱捥揋捣"));
               app.user.completedMissionData.push(mission);
               Cc.log(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("႒ჰႵ႒ტဣမဆာဏ်ႤდပႎჰჄရဝဎႋၦဠႻၹტჟ႞၀Ⴒზკ၁გႠ၅့ႚၼქူეႴჄဲၦၶဝၻႄစၑჃၧႎစშႌ","၄ႰჵჍႣთၫစဟ჆ჷေႷჅႶႆ") + app.user.inTalkWithNPC);
               Cc.log(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挂掓揱挖揯揣挮握捒掲掺挅捭揌捕捹揯揶捓挗挴挴掼挍掶揝挅揚掾掚掬掺捡挰掍揰捲掸捊掻振掘挛挆揆掹挶捐捽捾挎掺揪揭掐挒捓揝揙捊捓掯握捗捑掹挴捙捏掓","捄捊揼掛挃掌捻挼挮按揿掴挥掯捛捃") + app.user.inTalkWithNPC.value);
               Cc.log(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("Ⴀၳ၂Ⴉ჈ၬი႗ၳႶყႏၬჷႣჹတჳၕငიႸჁႣჷუႽႹၟჍჵႝေဤႜღჽဒ္ၥცყဣဿკွჶႹ၁၆ჲ။ၯ၌ၮဝဖဒჁၻဎၚၸႬ","შႽ၎ႂ჌ႮჄႧၬႮ႔Ⴑၬიႅၘ") + app.user.inFishingProcess);
               Cc.log(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၶႦႳရွယႠိဦကခဢ၇ၸဤႳშႚჶ၎ယၫჴჲმဂႭၯჶჽၸწქ႑၅ဓ၇ჺရაႭဍစၳჀჭႁငიჿႚၳჾဣჯႺႿဏႁ၀პၙ၂ე჋၉ၹსၶၳ჏ဦိ႕ၲီ","ဌႶოၫါႀဢმ၆Ⴢႆဝဪဖ၂ဗ") + app.user.inFishingProcess.value);
               Cc.log(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၨနႹဟუႽဗးჷთၒကყჱႣႈ႔႟္ယჃიႛႸღၑသზსဈნ႖ဘჸ႟ჳဉဪ၇Ⴈ","၉ვဪ။Ⴭ႒Ⴘဵႉ၏ဨႋၦ႕ჅႢ") + this._5df63807d1a2b6e2bd30b059);
               Cc.log(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ပဵჼၺၭႫ჏၎ဲၜႸ၏ေႰႾဨတကၦဪდၠဗႸსီႣ჉ၩဇႠသါဒၦდၷჺဒႻ","ႍဩၐ႘႗ၨ၂ဏဣვႱ့ႆပႫႷ") + this.breederDialog);
               Cc.log(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၽၬႍါၜၕဖდၺဓႺၲၩႼဌၺဵွထ჏ာჅႵႩဋჰဗჷႣბႉႮထၪჲ၄ၔဗဉၒဋႲၧႱ჻჈၅၍კယၐჾ჉ქၤ၂჈ჵლძၿၼၿႅႝၩႸငႱႉ","၊ჰၥၫဨჟႡႦ။ხჲ႑ညჽရ၇") + GameSwf.instance.tradeDialog);
               if(Boolean(app.user.inTalkWithNPC.value || app.user.inFishingProcess.value || this._5df63807d1a2b6e2bd30b059 != null || this.moneyTreeDialog != null || this.breederDialog != null || GameSwf.instance.tradeDialog != null) || Boolean(response.hasDataProperty(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၟြჄႣဵႽႲდဉၦႜႇီთရ၎Ⴜ႓ႌჁသွႭႭ၄Ⴎ့မႭယ","ၹ္ეႢႎ၈၍ჭ္၀იၩხႝဇႺ"))) || this.gui == null)
               {
                  this._needToShowMissionCompletedDialog = true;
               }
               else
               {
                  this._needToShowMissionCompletedDialog = true;
                  this._9a62ebd0db0249ee0917d4c7();
               }
            }
         }
         catch(e:Error)
         {
            Cc.log(response);
            Cc.error(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("刿刽剀勿劚剃勏勅则刴剝劏刢分剒剭剔刐劌剜募勔剏加剽刣刅判劄剌刈劑券剫刚勶剮势刭剡劭剦刱刔到勄勦勰劚刾劣劏剈勈劑勍刨勧剾勼刄剟劦势刐剮勨列勭剶刳别勭勏剋剸勝割","剌勾劕刭剌刞剦則刑剕劓則劌勨勄刡"),e);
            Cc.error(e.getStackTrace());
            GameSwf._6b2ea987f29b60cd755db2f5(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劑勤劫刾劻初势分勑劈刳勸劾剡勵刁剂劧劯办刮分勖勗勑别剑剔","券勽剸功刔务剪剹勅劭制剫劶势労勦"));
         }
         try
         {
            if(response.hasDataProperty(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၶ႙ၒဝဴၣၸႧးြჂတကၵႧჾჄဴႄჷჇუႠჍრၐာჴჄၫ","၃იუჍၞလၪჵჽသဲზယကၕၑ")))
            {
               users = response.getJsonData(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勂剾勦别勣券勒勉削勹剧劻则刐刺勓剬劌利勚务劕刘勺勭勆刱劽効劊","劜剖剣勓劑剦勫剕劦剚刟勻刵剄刬劭"));
               for(username in users)
               {
                  if(username in this._charList)
                  {
                     userData = null;
                     if(users.hasOwnProperty(username))
                     {
                        userData = users[username];
                     }
                     fieldChar = null;
                     if(this._charList.hasOwnProperty(username))
                     {
                        fieldChar = this._charList[username];
                     }
                     if(userData.hasOwnProperty(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掀挙捾捣揎揊揅掌挔捻揼挸掙挡挄揂捹捫","挞掽揝捿掋揄挷掫挂揖接挝捘捯捏掙")))
                     {
                        if(userData.state == _95da7f1147c669197db81295._8f4866de82b7339154180ecb("刨劯勾剾勡劄剶劓勻刊刷刿剡勖剞刼划剏刼刃功剡剿剪劬劀刞剔","劫刡勭劐刺制劒剺励効刈勸剸劎刳勰"))
                        {
                           this._9a62ebd0db0249ee0917d4c7();
                        }
                        fieldChar._ce8c2233b28d0fc4b7d33c95(userData.state,userData);
                        if(fieldChar is _c9513c48978d5034cc9ff2f4)
                        {
                           fieldChar._89619ce3363ecc3ce96c8aba();
                        }
                     }
                     else if(userData.hasOwnProperty(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挑捑揖揼揭捤挷挬挾挐掿掎捿捄掘捁","捩捦捐挎挣挲揎掑掩捤揷挞捊揼掙掉")))
                     {
                        viewConfig = userData[_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掚揸挈掿揎掮掩揩揙挆挹按探揭掮挭","捞挅损捽揬挠捉挤捕捗換挌掻揹掴挱")];
                        charViewConfig = CharViewConfig.fromObject(viewConfig);
                        this.locationModel._400615e47876a0c274786f37(username,charViewConfig);
                        fieldChar._8606e2a8d94f637089fc8480(charViewConfig.shoes.type);
                        GameSwf.charsManager._e217a6b8420965af3346bfa2(Vector.<String>([username]));
                     }
                     else if(userData.hasOwnProperty(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("Ⴖჸၐၢ႞စ႙ၘဤႯჼ႕჻Ⴕၔဆတჶၝჯ့Ⴡ႓၊ၮၷეჟ႔ၺ႞ტႏၬၢၺ","Ⴏှჿၶှ၄ၔႧဠဂჸၚ႑ဪဦစ")))
                     {
                        this._eef3872961a8db87919c40fa(userData[_95da7f1147c669197db81295._8f4866de82b7339154180ecb("刎刏剭劄剺刊剹剙刬勂剜剺劬加剹劐劮劈剣剮剘劁刋刣剈刺剰刣勘剈勇劊勖劻剱刘","勐劒剁剳勉剙劶刟劂剽剆劶劜则初刣")]);
                     }
                     if(userData.hasOwnProperty(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ညၭჺႥႮႂြრၙၪႱႠჰჲ်ၮၭဃ","Ⴂდ၄ჟ၉჎ၘ၊၉ၿသႮႪჯၳ႔")))
                     {
                        userLevel = int(userData[_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ကဓထဋနႀဝကလრႤ။ႂჀၧბႥႁ","Ⴀၔး჊Ⴛ၍ဉღိ၇ဴၼၳႬ၅ေ")]);
                        GameSwf.charsManager._318207ea15bdbeed0dcf08b4(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ႯჰპႲၵკႦ႟၉ႉဏဏႼ႓ღၩႤႁ","ရဈၖဝ႖ၝ၀့ၭူႬჃႺწႱအ"),userLevel,username);
                        fieldChar.level = userLevel;
                        if(username == app.user.username)
                        {
                           app.user.newLevelData = {};
                           if(userData.hasOwnProperty(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劀刐劭别刉动劘剧初剑劖剌劵剄勷勂劲制劅刍劰勿勋刿勈勈剒剟剖創勻劃","勼剎則劍勪勗募劳勗勋剂刼刖剽勄剭")))
                           {
                              app.user.newLevelData.newLocations = String(userData[_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揰揯掆捷捌揭捵掽掓揉揰捺挕挊损挹捸捣揙挭揧捄掇捥指挙掤捵挻掌揫揯","挩掷挶捪捯挖捽挥捉捆揓挠捰挌掃掳")]);
                           }
                           if(userData.hasOwnProperty(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၘၠჷჲჍသცၥ၉ႭဇၤჶံၤჃၭႺსშჁღၾ჉ၑၕၠჩ","ၘႆႉၶၚႛညႽၔგၺႏႎႷႯ၆")))
                           {
                              app.user.newLevelData.newClothes = String(userData[_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剜剌剬前刾刱劃勂刮勗劘勹刖刕勾勁刍刾劍劫勆創劤剋刁刊刻勢","剾剒劼利剟勸刪剐勉勃剉劽劆列剩刓")]);
                           }
                           if(userData.hasOwnProperty(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ုဂხჼႽထဤႩკၵႲႷყႰႮႏၵმၕဵ","ၒဟეშ္ၯၓၐႺ჏ၼဩၓဘიၞ")))
                           {
                              app.user.newLevelData.energy = String(userData[_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挌捴挜換挡挺揳揥捤捙捳捈挼捹捰挞揂揜揔掿","掻捴挳挟掫挎揅挴掃掕捭挬揞捔掂捐")]);
                           }
                           if(userData.hasOwnProperty(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၭံီဆႩၠႆႃ၅႔၃ၴႮჅႷႮ၀ၹႥႎძအ","ჳၫჃჽჿၥဖခჽၕြမႶ၆ဝဦ")))
                           {
                              app.user.newLevelData.trading = String(userData[_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ႊჼြၗ၎ၮ႐ဤႝႯၺၤ႟ႦჍဦც၌ၑၟၳၪ","ႆმသၲყထႰ჎ံဤ჉ჍဘႏႼ႟")]);
                           }
                           app.user.level = userLevel;
                           app.user.experience = int(userData[_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捕掎掸控挛捗捱揺挊掩掍揆掰挱挦挝挓揰揽捓捡掴掟捩援捉捑掝","捠揤揖捲挠揶损捄揋揔捵掣捀掊揲挟")]);
                           app.user.prevExpLimit = int(userData[_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掣捰揾挖挂揶捞捞捘捚捓掙捪捵揣捦掾挥揁捝揞捗掰揱揔揰揺掍揌揳捜揥","挈揌捋掵掽挟挐捣捿掾捤挂掙持按揗")]);
                           app.user.nextExpLimit = int(userData[_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勚刱務劑剎剖剏剺判劄剶勦刕劷剓动劈劕勾劥勓勑劊剼剢勖勹劐創勹勝劏","勏勛勥剛刨刳刦刜剫勞剟剦劼剭劒劃")]);
                           this._4d0a4743bd6399b976a3e47f();
                           if(userData.hasOwnProperty(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ဃထ჊ႤဳჶჅႌဣწႋၱဪႸ၏ၺ၄ၒშႊჁၚဌႬမყძე၀ၶ၍ုსჾၲ််ယျ჊Ⴡფჟ႟","Ⴐ၄Ⴚႂႍ၁ვဏဉၐိဏၠ္ြႄ")) || userData.hasOwnProperty(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捕掼揸捵掀掊挪掄捂挂揞揋揢捱掜揜控换捯捕挺掅捇挿捫持捰挹挩掷捄揘捫掜","挏挗揾掔掩授捵捀揋捶挻捭捑捊掊挞")))
                           {
                              this._5241dcc27353a41316aa8190 = true;
                              this._87aaf9f61e3ac479602368b8 = true;
                              this._5e20b00e511d30d9547674e4 = true;
                              this._bf971d1bb8050ac33759de89();
                           }
                        }
                     }
                     if(userData.hasOwnProperty(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("刀勋劜剤劄刹勈勂励剅創办劃勷劜勺劰勬勶剆刢刨劁勆励剂剼勽劭剏刪剜","劅别刪刪劊办剥劐劲剣剽勦刵勯劌勃") && userData.hasOwnProperty(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劵勫刻勥刌勄劬刂利劯剙剬刔勲判剉劀剸剬労勰务制判刋动勴剰勲割刼刚","勻刦劢剐利刅勍刄劜劇劾劋剘勁剻刍"))))
                     {
                        GameSwf.charsManager._318207ea15bdbeed0dcf08b4(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掱挅插挟援掊揇捊捉捧捖握掜揧捞按按挣掦掉掇揱掗捛揮掀捜捺掙揲捉掛","捸揽揀挹挹捻捦捳掐挵损揕揍捜捳揆"),int(userData[_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挛掗揤揆捲揍挝插捦援提捓掑捂授捀揆揲捳挖捦挜捒接挐捄揷挋揆揷揜捱","掓掝揇揇捿揿換捲捩捑挡掱捶捦掖捎")]),username);
                        GameSwf.charsManager._318207ea15bdbeed0dcf08b4(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揪挤控捕挹揬掱掏挸捄挪换挽捗揙掷挽掗揨捰挄揟捀揿挓振接揽挺挿排揕","捖掐揭掗掚捔捍握挖捴揭挡掯掜提援"),int(userData[_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掆掆挽挆捁捉捌捼揵掌挩揜掋挡揥挾掂持捜捳挙揤捝掽推揋掘揰掄揁挘掹","掉揮揉揇挴捠提挢挛換挾掴捖挅挝掕")]),username);
                        if(username == app.user.username)
                        {
                           app.user.prevExpLimit = int(userData[_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捤揕掌掅揂挂掕揕捦挄掤挳挞掚揾掽揚掰揓揨捑掲挵揃掰掯挘挅掂挻掌捻","掵掶掁捡掗捜挥掔捘换挎掖捺捷掴探")]);
                           app.user.nextExpLimit = int(userData[_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("კჲႫဓ့Ⴭၡၽ၁ႀဈဿွဳႼ၁ლၧၬႅႛႩფ჏ტჂ။ာ၍ၖဿဳ","ჍძაჰဤလႃႳჹၧဢჵဿႋဳဌ")]);
                        }
                     }
                     if(userData.hasOwnProperty(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("刧勁劇劧刘刾劼刜剐劯刷剚勅刕勹刹剦勩判劚刺勽刐勼劬則勉勆","劲剔勧勿功劫勃刖剎劰勚剰勉剿剈剆")))
                     {
                        GameSwf.charsManager._318207ea15bdbeed0dcf08b4(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("၇ႅဆქၷ၁၌၊ၔ႖ဲაႮၣဖၢჀႣ჋႕ၾဃါჺဆჸႭჳ","ႀჀဳიႎကႺႅჩၛ၅ၕၲႊၬၴ"),int(userData[_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掚揣掂捄挟揎掁掁挢掑捍挌挜捈揲挷捑接捻揃掜揜揇据掬掚掚掶","挅接措捀掦推排振揟掓捞捠挗揕掝揻")]),username);
                        if(username == app.user.username)
                        {
                           app.user.experience = int(userData[_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剬劇刈勄劧加勛劵劣剋劚刈務刞劖剀剘切剕勳刽刳刌劥劁劗剟劾","刚剧劶刨剶劀劚剦力勴刏刅刕勹劝勗")]);
                        }
                     }
                     if(userData.hasOwnProperty(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ဣဵႿჯႢၢჶჼံဂაႷმ჌ႬၻၟႋႽთღၪ","ၚဲႤၦၵးၒလၺ၂ႝჩဳႢჀၫ")))
                     {
                        if(username == app.user.username)
                        {
                           GameSwf.settings._6974673aaa5bc0a2bee790ce(userData);
                        }
                     }
                     if(userData.hasOwnProperty(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("刻勉刂刹刾勛勢勚劧勞则劰刊剼前勼刓劖勮刵剘劾剐勝","劀剂券刀刐切剻劢劣劒勄剥勗勸劃勞")))
                     {
                        dialog = new _301b6b096d193294bbd60d6d();
                        dialog.show();
                     }
                     if(userData.hasOwnProperty(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("჆စ჈ნလၖႻჸညპၘဗဤ႘ႎ჻ခღဓၮჺဥ","ဈს჌ႀჁးထყငဳႿაဗငხဧ")))
                     {
                        _810c4ade948afb64e9c7ee25(this.locationModel.locationUserByUsername[username]).fieldChar._5ab99f81dfbca109ba4c2502(String(userData[_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("၏ႌေჱმခჂႪ႘ဒ჆ၬႷုჽညႋႳၳၕჼဃ","ၓჀတ၍ငနႳႬႎ၊Ⴔဟძყႈႄ")]));
                     }
                     if(userData.hasOwnProperty(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ယჵရၲၟრეფႈႼჅညႯႍႊჩဨဨ္Ⴉ႟ဍၖႳ႕ჍႧှ။႘႑ဆ့ၦႩ႞","၁္ၓ့჉ჺჃႮၳာၨႏ჻ၮႊბ")))
                     {
                        if(username == app.user.username && !app.user.isGuest)
                        {
                           if(int(userData[_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("振捯揊挔揌挼捀捁接揙捐挅挗振挋掉挺掎掶捑捃掑挠挺捎挘揗揜掹揆掙挸指掸捻捊","捿挿捄掠挵捍挭挿捼揽掵揽揊捠挃挷")]) == (-1990380764 ^ 0x4F288FFD ^ -1872413315 ^ 0x561081A4))
                           {
                              _f6f12dbbfbe7f740316e0e9f.dailyQuestsModel.prizeIsCollect = false;
                              this._7fe05aca52f25fef392392be.enable();
                           }
                           else
                           {
                              _f6f12dbbfbe7f740316e0e9f.dailyQuestsModel.prizeIsCollect = true;
                              this._7fe05aca52f25fef392392be.disable();
                           }
                        }
                     }
                  }
               }
            }
         }
         catch(e:Error)
         {
            Cc.log(response);
            Cc.error(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ႺႸოဴဌ႗ႿရှჃႁၢჩၸეလႜၹၤჿၣ჉ဤჶტႏჀၭჸဌ႙႑ၖკყცდၜ၂ႄჁ႟ჯ჌းႵၯႨ႖Ⴐူၕၠ႞ၨႸჟၶၭპႦၬၓးီ၂რေႳႰကၣტ၅ၠ၄းၒ","လအဵღႭဓၓဧႧჭၳ။၈ၒღშ"),e);
            Cc.error(e.getStackTrace());
            GameSwf._6b2ea987f29b60cd755db2f5(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勱刈勆劐労加劊刣劮劄功劵划剐剿劳动剱剩劣刯勥務刱効勠刮勶","刪勸剒剤列刁剦刯刐力劜初刨刞到劉"));
         }
         try
         {
            if(response.hasDataProperty(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捌持揞捿掽挣換掓捧捄挣揂捪掋掿捾","揑掟捷揞挀捐挠揙揣捆挭挚揱捱捘挹")))
            {
               raft = response.getJsonData(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ႈ႐იႵ။ႵჶဎႺჶქქၙ႔პၼ","ဧၻჀၓဆჍႸჽႌჾၑ၉႖ၼဒၿ"));
               if(raft.hasOwnProperty(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捹掞揀掐指揺损掸挖捿揇挼捏揠揚挛捁捺","推掶揳授揜捺掄指捁捾捉掟掂捝揲掾")))
               {
                  switch(raft.state)
                  {
                     case _a00a2200c99ccb365fe1b90e.SAILED:
                        §§push(-1002722499 ^ -2100738886 ^ 0x045BE9DE ^ 0x42A90659);
                        break;
                     case _a00a2200c99ccb365fe1b90e.BACK:
                        §§push(0x544A6309 ^ -1078906567 ^ -491521653 ^ 0x0948ABBA);
                        break;
                     default:
                        §§push(-1001344987 ^ 0x6A47F0CE ^ -1309258184 ^ 0x1FE10ED1);
                  }
                  switch(§§pop())
                  {
                     case 0:
                        this._locationLayersBase.raft.sail(raft.totalTime,raft.hasOwnProperty(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("授挝捺掹掫挎掸提捵挻挴挹推按掄挶掚捿掟挰揍挶捣揟","捻推揰揥揸持掿捜捒捎挻捘揲挴揫揃")) ? int(raft.timeLeft) : 0x41F70F6E ^ 0x4577D0D2 ^ -952935574 ^ -1011645226);
                        break;
                     case 1:
                        this._locationLayersBase.raft._57d98d9b9f08492135c64c8d(raft.totalTime,raft.hasOwnProperty(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ႺၣၼႽသႾှွွၱႝႱზჀၭჱဦკ်႑၏ტရ၊","ჱၜညၜႶႳရစႮၑွတၾဎဣ჈")) ? int(raft.timeLeft) : 0x1F392364 ^ -207529975 ^ -688800983 ^ 0x3A69C044);
                        this._3a9f3f2cbb8ffb53b97f9210();
                        break;
                     default:
                        this._locationLayersBase.raft.state = raft.state;
                  }
               }
            }
            if(response.hasDataProperty(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揻挭授挕揶掻掗掰捖按挆挊援挩挖挧揨掏挩掵捸措排掹","挶採挋探揌挒捦揙揢捳掕挼揣揳揾捑")))
            {
               this._ba95075eaca30ea342228c58(response.getJsonData(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ჷီႹႭဎ၁წყြჩიလဵ჻ႧკႅჁ჌Ⴃံღဈႋ","ႅႼၩဇ႞ჸნသႚႅဥრၵရသဓ")));
            }
            if(response.hasDataProperty(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("刐刊劏劫劤劭勜力刎勡副刧剈勑剑刅剈勉刡勆剪勯剅劉划勾劃刟剖勤","刘劌剮刔剹刢刴劃勺务剪劶划別則劗")))
            {
               fishObject = response.getJsonData(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挨掠掗揷揦捈挘掂掓掤挚捒捪捋捰捶捘挕挵揽掓揬掼捇换掻掉捓挵揑","掃捎揣捄揬捊揔挗捉捰提掃捖挊掅捁"));
               if(fishObject != null)
               {
                  fishInfo = new _c47e82e5d235217beb5f9566();
                  fishInfo.deserialize(fishObject);
                  if(GameSwf.instance.managerTutorial.isAnyTutorialInProgress)
                  {
                     this.caughtDialog = new _bc882fd414165030feaf8199();
                  }
                  else
                  {
                     this.caughtDialog = new _4afcffb379abb67c2a3266dc();
                  }
                  experiance = response.getIntData(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揂掔挭挋捧揝揫掭掂捰挹捀揘掠推捥揅接揅捆捙揾掄挬捞掲揚援","掾捺揉挱挈挌捻掗挦挳捇捊揲挪捩捩"));
                  isRecord = response.getIntData(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剛劑剏劒刪剆劚勧勈劂剟労勱勱劾劆劒剜刳剞列劉剛前刬劾","勇勳剸剛努効勭勯刏剏劷励勰劃副創")) == (0x7091D3C0 ^ -1713879029 ^ -130570784 ^ 0x117E3E2A);
                  isNew = response.getIntData(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ქ჏ၻၟႳဟ၌ၷჇၜჼစဖႭဇႂင၌ါხ","ၽႵ၊ဃၿသှႅဳჁზოၯჱႜၝ")) == (-891210241 ^ 0x2B6A7AE4 ^ -761604715 ^ 0x33119A8F);
                  this.caughtDialog._b3a35344555fb4adad8a8342(fishInfo,experiance,isRecord,isNew);
                  this.caughtDialog.addEventListener(CLOSED_CAUGHT_DIALOG,this._bf971d1bb8050ac33759de89);
                  this._5df63807d1a2b6e2bd30b059 = this.caughtDialog;
               }
            }
            if(response.hasDataProperty(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挱揖揹捚挢掦捩揓挄捑挋挑掚揢","掵揟挱捃揷掁挥掘捅揀挜捕捽揔捉挘")) && this._locationLayersBase.frozenLake != null)
            {
               state = response.getJsonData(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("創剨剮勱勫劚則刦剹劆刜勦劄刔","剏初刜勺副剪劽勝剸劭劮劎努劂劢勸"));
               switch(state.state)
               {
                  case _60ca73acc6a9648cf0a76e6f.ICE:
                     §§push(0x504FC87F ^ -933827187 ^ -218704905 ^ 0x6AEFF605);
                     break;
                  case _60ca73acc6a9648cf0a76e6f.WATER:
                     §§push(0x0E4F09F5 ^ -1993890958 ^ -1034398325 ^ 0x4530FF0D);
                     break;
                  case _60ca73acc6a9648cf0a76e6f.FREEZING:
                     §§push(-855524341 ^ 0x6C0D97DC ^ 0x34A559F7 ^ -1784057310);
                     break;
                  case _60ca73acc6a9648cf0a76e6f.MELTING:
                     §§push(-127751786 ^ -1761571587 ^ -766950166 ^ -1121230462);
                     break;
                  default:
                     §§push(-43074963 ^ -2101386346 ^ 0x4215BD0F ^ 0x3DC464F0);
               }
               switch(§§pop())
               {
                  case 0:
                     this._locationLayersBase.frozenLake._cb990101fc1243fd154418cf();
                     break;
                  case 1:
                     this._locationLayersBase.frozenLake._14152fa7dbf62a4518031306();
                     break;
                  case 2:
                     this._locationLayersBase.frozenLake._1963d0a948fa760e5dca0769();
                     break;
                  case 3:
                     this._locationLayersBase.frozenLake._3d761c07ae6e66955a4a38f5();
               }
            }
            if(response.hasDataProperty(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勐刄勆剅剻劷勏劑刼劆剈勫勳則劕刻勾勪剠刲勉劾励剖劋刑勑削劆劵剶刄刭劘剹刎勺刑劒刯劅剐劏刞勒勇","刊劀劲利別則勇剣劚勠刞劽勼剕劺剹")))
            {
               respNeedTime = response.getJsonData(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("၁ႶშიჺၶჟႅၩာၣႹႅၾႯႈှၲႆညႾႽ႓၃ႀဒႦჳცႍၵႾၥှ႐ႾႧျიႱჷ၌ၨႀၧၳ","ာႲ႕჏ႜჼဳဆჴ႞ွၵჴၼႆႴ"));
               for(s in respNeedTime)
               {
                  data = respNeedTime[s];
                  this._de3b4ba3fb31ba1b44244716[respNeedTime[s][_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("႙ტ႓ၙ჏Ⴧ၀ၳႚႏၿ჈჈Ⴂႛა၃Ⴢဨხ჈჻ၮ႗ႜဒ","჻ႋႚႄ။თဗႂდါဥဓ႞ဲဉმ")]] = !(data.hasOwnProperty(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("动刖剩勀分刂勲剼勲劢刞勢剖刘剦剐别刭劅勓勪劸刣劯剦剣","前劈劷剭勩劉刭剡刑剨剩劻劉剩刲刖")) && data.hasOwnProperty(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ႃკခႌႃჱသႴၚႍ၄Ⴇჺဌၵဵქ၈ၙၧူိၾჿၧႜဠႺთၓ","ဆႋဵႽၜငဘဂ႘ჶိဠဋჹ჉ဣ")) && data[_95da7f1147c669197db81295._8f4866de82b7339154180ecb("别劏劝刂剷勇勹剽劆剓剣刼劫刳刾刅勳剸勤剉剅勜勳動勳劕刬剼剉勿","勮刈加剂劾刬劃務勇制刡劣剡务勎剱")] >= _f5e96da9fcc4dda8f7ee4483);
               }
            }
            if(response.hasDataProperty(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("თႫဩႃတცး၃၄ၺူ႞ქჱဌჍဣဍ၃Ⴂ႞ၴႷრႧြჟၹ","ဓၲဧႮႌဤဓၵხွဍၣဎჳႊႫ")))
            {
               respBoughtTime = response.getJsonData(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("刄劓剬刋剎劇勾刮劦刡剐列剤劾勵劰刽分劎刺剰剓剅刘刵劖刳到","勀刞劔刎剫削利効剸勝剋劙勇删功刃"));
               if(Boolean(respBoughtTime[_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("၇ღႮჍဋၵႇჼၤႌၚႩဠკჀႹ","ၟႚႺႡႣရဖၼ჏Ⴋၓჶტၺჹၟ")] != null) && Boolean(respBoughtTime[_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劦刈办剔勦刪勳劋勽剩剛勾勄劵剼勬剪副制劸剛勧券勮劥剌力加刷劢","劍刞刹刦制助勈刱勋劔刀刿勾削勓劦")]) && respBoughtTime[_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劖勄勜別勚劜利剠剓剧勛勩刷劤剃劇刱勚割劋勠剴剓刓剮勥劝勇勆劁","刓勞刲列勢剒劕刺勎刚利副劤刂勆功")] >= _f5e96da9fcc4dda8f7ee4483)
               {
                  this._de3b4ba3fb31ba1b44244716[respBoughtTime[_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挴挎掓揇掓捎揨挈掄挧揿掣授掇揣揇","捩描提挿揉挱掇授挥掛掝握捬掚掳捦")]] = false;
               }
            }
            this._90b5be3578aaabbf3c2fad77(response,_01cf9a78594a0bb30b57b0c3.EBT_EXP);
            this._90b5be3578aaabbf3c2fad77(response,_01cf9a78594a0bb30b57b0c3.EBT_RADAR);
            this._90b5be3578aaabbf3c2fad77(response,_01cf9a78594a0bb30b57b0c3.EBT_MAGIC_WATCH);
            this._90b5be3578aaabbf3c2fad77(response,_01cf9a78594a0bb30b57b0c3.EBT_LUCKY_POTION);
            this._90b5be3578aaabbf3c2fad77(response,_01cf9a78594a0bb30b57b0c3.EBT_SHINY_POTION);
            this._90b5be3578aaabbf3c2fad77(response,_01cf9a78594a0bb30b57b0c3.EBT_POWER_BOOSTER);
         }
         catch(e:Error)
         {
            Cc.log(response);
            Cc.error(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剄势剰剙劧劎劶判办勱劚刪剞刬力劓刼剺剕创劽剢刎勨勍剕刑剂勽勋劵刋勴劉劗刹劼劲劐剭别勐剅勄削勏剮勁剼剏劢勣剶判劤劚勸劲劝剀劙劣剻刭剀刔劕剷刁剛刐勮劎刿勃剀剤刅","勆勰勲剀剤刂刌刜劕刅剗勫劧劃勯効"),e);
            Cc.error(e.getStackTrace());
            GameSwf._6b2ea987f29b60cd755db2f5(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勷勽力劒劌刧勢刭力刮削勗刈剌務劍剡勭剟務勠勈劏劂剉劢剖刚","到劅勍効剅刞勓剓勱劲刹刺剌勇劂列"));
         }
         try
         {
            if((this._8936c2523e5e9c8d1ed9b18d != null || this._4c082e570fc86b639e8f162b != null) && this._playerChar != null && response.isEnterSublocationResponse())
            {
               if(this._4c082e570fc86b639e8f162b != null)
               {
                  this._programmedCharMoveTarget = _271e25a1154071c80aa4c4f2[this._4c082e570fc86b639e8f162b.id - 1];
                  this._4c082e570fc86b639e8f162b = null;
               }
               if(this._8936c2523e5e9c8d1ed9b18d != null)
               {
                  this._programmedCharMoveTarget = _271e25a1154071c80aa4c4f2[this._8936c2523e5e9c8d1ed9b18d.id - 1];
               }
               this._playerChar.programmedMove = true;
               if(this._programmedCharMoveTarget != null)
               {
                  this._playerChar.onMouseClick(this._programmedCharMoveTarget.x,this._programmedCharMoveTarget.y);
               }
            }
            if(this._e09d3d2a480f9118b62e2881 == false && !this.locationModel.isSublocation && response.hasDataProperty(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("制勴勅券努剠勗剺勈勝劋剬劣劃刅削勰刈刍劄剜勀剤券勰剏剚剝","刈剝勵剬刱別刾剱勳刌勍勡办劫努勋")))
            {
               this._0b905154637e928500b2f706(response);
            }
         }
         catch(e:Error)
         {
            Cc.log(response);
            Cc.error(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ဨႢဓံჱဝဓၕခႆჾ၈ဂဓငႈၦ႖ဍ၅ႈႮဧၑဉႺၚႸႳფႸႨၠ၆ჄႳနჱ၆ၦ჊ၠၞထ၌ၕ၅Ⴓჰါၫკ႒ჹႊჳფဲ၏ႱႤဓဟၭ့ၛ჊Ⴞၖႌါဓ႓ၳႎထၼჽ","႕ႆမက၊ၡၝ၅ၒငႳဒსუဂႺ"),e);
            Cc.error(e.getStackTrace());
            GameSwf._6b2ea987f29b60cd755db2f5(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("列刴勉劓刱剷勄务勶劃剳刕判劧勥勷刜务剸劣刵剝剥剐刯勦剉劌","勅勝勻刚剺剣勴剽剒剓剦勬則剋刓剴"));
         }
      }
      
      protected function _4d0a4743bd6399b976a3e47f() : void
      {
      }
      
      private function _b244782c13159db4298c1d56(param1:UpdateResp) : void
      {
         if(!param1.hasDataProperty(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("၉ံႰရႻ၀႓ၰჃშတ჏ါၘႽცႬၫჵဉ","ၨႹႾဋၑၞံးႼႽဓჵჟၛოვ")))
         {
            return;
         }
         var _loc2_:Object = param1.getJsonData(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捌据揶指挄揧捯捠捾掾掤指揲捘掲指揋揆挩掸","挈挂提揆揦揾掠接捷揅援採揶捶挄掌"));
         this.energy = _loc2_.energy;
         this.energyRestoreLeftTime = _loc2_.incLeftSec;
      }
      
      private function _4e4a57771508bbf6cd5ada4e(param1:UpdateResp) : void
      {
         var _loc2_:Object = null;
         if(app.user.level < (0x302A91F8 ^ -1576659368 ^ -11686398 ^ 0x6D6129A1))
         {
            _67f8febc099eaa05c48aa41e.isFishMarketOpen = false;
            this._locationLayersBase._8da2a70b254394476be6a342(false);
         }
         else if(param1.hasDataProperty(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掖掬掀掖挣揗挏掁掵掃捬掾掤揍揩挍揀掖揋挱掹掔捺挞揆揈揜揌挢捑挬捸挶捖换掹","援挰挎捀挪挄捔捕捃揌挏揀捶捇挳捷")))
         {
            _loc2_ = param1.getJsonData(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勱勈勆剡劊勎劌剞剠劒剥劂勰勗勿勁勠剙利剖勑勝利劀励制別刖刪刣勐勆剟剠剌刎","别剝刕剉劃刘勪勔務刄勖勹勶刷勘势"));
            this._eef3872961a8db87919c40fa(_loc2_);
         }
      }
      
      protected function _0b905154637e928500b2f706(param1:_5e1bab759fcaea6d1f84faa7) : void
      {
         this._382676b04b2c0983e96eb2da();
      }
      
      public function _2818e8e11814ef0ec6a953cc() : void
      {
         this._382676b04b2c0983e96eb2da();
      }
      
      protected function _382676b04b2c0983e96eb2da() : void
      {
         var _loc1_:int = 0x45BED699 ^ 0x54EFD2E7 ^ 0x3850714E ^ 0x621DB961;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (0x7D0E7E16 ^ -558555810 ^ 0x46ABC5 ^ -387906344))
            {
               case 0:
                  this._95223275024345738660ad36();
                  return;
               case 1:
                  addChild(DEBUG_LAYER);
                  _loc1_ = 0x5CA0129C ^ 0x1DF74DC3 ^ -1938294456 ^ -2042860990;
                  break;
               case 2:
                  DEBUG_LAYER.addChild(_d_charPositionLayer);
                  _loc1_ = 0x0C8F3A9A ^ 0x40B89FB6 ^ 0x19492875 ^ 0x1E62410D;
                  break;
               case 3:
                  DEBUG_LAYER.name = _95da7f1147c669197db81295._8f4866de82b7339154180ecb("劆剨刷劥剶勸剳劇刦勲劦劸勠勲剘動劥勌勀剮勱券剢勤勀刖劅办劰劎劂剛刲刍則刧剣办勠剳剅劈勒努劀剫","勒刯劸劰前刐勴勶劏勒劰劶剬勞刟劋");
                  if(Config.SYNC_DEBUG)
                  {
                     _loc1_ = 0x3F7EDB12 ^ 0x6CDF6ACC ^ 0x63158C8A ^ 0x7BA8F103;
                  }
                  else
                  {
                     _loc1_ = 0x11D9A25D ^ 0x0CE02D40 ^ -1515283282 ^ -208936985;
                  }
                  break;
               case 4:
                  this._e09d3d2a480f9118b62e2881 = true;
                  addChildAt(this._locationLayersBase,-787534871 ^ 0x20E5FE5A ^ -400099689 ^ 0x19CC2325);
                  if(Config.DEBUG_DRAW_LOCATION)
                  {
                     _loc1_ = 0x43D84CC2 ^ 0x0E4BA401 ^ -1315532579 ^ -1223052216;
                  }
                  else
                  {
                     _loc1_ = -1606821223 ^ -1762476376 ^ 0x62BE31DC ^ 0x1F6999B8;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function _ba95075eaca30ea342228c58(param1:Object) : void
      {
         var _loc2_:String = null;
         var _loc3_:* = undefined;
         var _loc4_:int = -1947104940 ^ 0x4C02E080 ^ 0x1EF1A16B ^ -654128961;
         var _loc5_:int = 0x574EF248 ^ -710219823 ^ -1113903019 ^ 0x3F7F25CC;
         var _loc6_:String = null;
         Cc.logch(this,_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ဘံႂႏဴႊ჏၂ჇၽနჀႼႋဪွჳႛშႉဿႸအჁႾჅဧပုႫზრჩဢჇ၍ჰ႓ჹ၆ၽဍჍႼႂჁၺၡၮၰၞဳ၅ၣႄქႴბဓၱქၕ၈၃აၬც႒ဃဣჅ႐ႜჭჰ်ტဘ჻ၵ","Ⴃဳၬ႙Ⴁႂ၌၄ზႀ်ၿႂ႗ႍၑ") + param1);
         for(_loc2_ in param1)
         {
            if(param1.hasOwnProperty(_loc2_))
            {
               _loc3_ = param1[_loc2_];
               if(_loc3_ is Number || _loc3_ is int)
               {
                  _loc4_ = _loc3_;
                  _loc5_ = _loc3_;
               }
               else
               {
                  _loc4_ = int(_loc3_.leftSec);
                  _loc5_ = int(_loc3_.totalSec);
               }
               if(this._bdeda5463343d5eeaaecd24f(_loc2_))
               {
                  var _loc9_:String = _loc2_;
                  switch(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ႄჁွსၘႱ჈႐჏ლဆ჎ၥ၊ဿႝჇၲႯ჉ည႞ၐဝၴဣტၭ","ႅ၁ဧၣ႐ဪၿိ္႗Ⴛ၏႑ႎဈၲ") === _loc9_ ? 0x16C69798 ^ -1936461031 ^ 0x09A2E888 ^ -1812493303 : (_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("按挤掌捨揠掍揌掑揟排捭捋捭揉捗掭掵排指挩捳揵","挟挂掌掩捱揎掏挓揙捛挚捿捂揚挗挋") === _loc9_ ? 0x78B2480C ^ -337752541 ^ 0x6FE27C8C ^ -57771358 : (_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捯揵挎挂挿挺挰揩捩挴捓挤揕掽捴揞","挳掇捖挩捻掑挏捵揚挤掻挩掄挲揠捖") === _loc9_ ? 0x014EBA9E ^ 0x0E4759E5 ^ 0x3CE726DC ^ 0x33EEC5A5 : (_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勖剉剛劔勊劏刲剒刟勲剠刯剈划到劽","劯刓刎勁刟勢勣勰剒劉剝割勸勗剽刜") === _loc9_ ? 0x587077CB ^ 0x27617705 ^ -176220966 ^ -1972497385 : (_95da7f1147c669197db81295._8f4866de82b7339154180ecb("刚勴刡劽劺削剋剔剽剔勏刽劕剅刖劖刉刀劔勴势劌刵勴刾判刋劲勫勁","勴勩劎刌剜剺募剖勧刕勯勥劢勂刄剟") === _loc9_ ? 0x012D507A ^ -1964000563 ^ 0x1330D6D8 ^ -1728955285 : 0x3BE852F8 ^ 0x7FDFC1D7 ^ 0x64975E87 ^ 0x20A0CDAD)))))
                  {
                     case 0:
                        _loc6_ = _706b9e8a05fa6a971551d21d.ECT_TROUT_FARM;
                        break;
                     case 1:
                        _loc6_ = _706b9e8a05fa6a971551d21d.ECT_PYRAMID;
                        break;
                     case 2:
                        _loc6_ = _706b9e8a05fa6a971551d21d.ECT_BOAT;
                        break;
                     case 3:
                        _loc6_ = _706b9e8a05fa6a971551d21d.ECT_RAFT_WAITING;
                        break;
                     case 4:
                        _loc6_ = _706b9e8a05fa6a971551d21d.ECT_RAFT_FISHING;
                        break;
                     default:
                        Debug.assert(false,_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ီმးၻ႗ხၚၵဏလဂ၁ႵၷႱဇჼმႈ႙ႿဖრၷႊမဈზဠၺၚႶ၁Ⴟၦჭ႖ဩၶႜႫ჈ეၘႃႛၨ჻ၶၼဒဳႿბဈႽ႒၎ၺჾჽမეၠေဩယဂჷၣ႟Ⴓၨႎူၨၔჿ၌Ⴜၖაဓ္ဪႦႥၡျဿ၃Ⴓგၩၯႊ့ွၣႉჭზგ၈Ⴎჸ႟ႀფဿႛၼლွဩႾဥူျჵღႴခၓႉညြჀႨႣုတႅბဒၸ၈၈ဓျႌ႑ၖၮჄႯႮၐ჎ჲါჩဥၒဏၶ","Ⴥၬၡ႘ွဠၯါႉႮႩာကဴ၂ၞ") + _loc2_);
                  }
                  this._gui._b95c50dd0c652423b4b1846b(_loc4_,_loc5_,_loc6_);
               }
            }
         }
      }
      
      private function _bdeda5463343d5eeaaecd24f(param1:String) : Boolean
      {
         var _loc2_:Boolean = false;
         if(param1 == Config.RAFT_TIMER_NAME)
         {
            _loc2_ = this._playerChar != null && this._playerChar.onRaft;
         }
         else if(param1 == Config.FISH_CAUGHT_TIMER_NAME || param1 == Config.FISH_DIDNT_CAUGHT_TIMER_NAME)
         {
            _loc2_ = Config.showFishingTimes;
         }
         else
         {
            _loc2_ = true;
         }
         return _loc2_;
      }
      
      override public function centerToRect(param1:int, param2:int, param3:int, param4:int) : void
      {
         var _loc5_:Number = NaN;
         this._485fa2a21d424a7e377e40ea(param3,param4);
         var _loc6_:Rectangle = new Rectangle(param1,param2,param3,param4);
         scrollRect = _loc6_;
         if(this._gui != null)
         {
            if(this.isNeedCenteredGui)
            {
               this._gui.centerToRect(param1,param2,param3,param4);
            }
            else
            {
               this.isNeedCenteredGui = true;
            }
         }
         if(this._locationLayersBase != null)
         {
            _9b189a790efd59581443eb40.change(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揑揱挠掗捍揚捹挊捺挕挴掝掫挙揘捒插捛挈揺揩捿损揢掝捞振掴挦捠挺挼","挪揠捖挵揔捣捀掛掷挮揜挌挹挵捦捤"),this._locationLayersBase.fullWidth + _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("სဉ၊჊ၯႾ႐ႥဃႤ","ჅၜၲჇဝထႷჃ၇ယჶႼၗဠ჊Ⴇ") + this._locationLayersBase.fullHeight);
         }
         if(stage)
         {
            _9b189a790efd59581443eb40.change(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剋刻剕刘勪勶利剼勱剋勐剄剡刯劏劏勽効","刲切刃刳剀刈划則刊劅劒刞勍剄募劙"),stage.stageWidth + _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("၀ၤ၃ၝეဨႨႃၾႢ","ჸჾჵჽႨღဵၲၐ၊ၟဟညუႤთ") + stage.stageHeight);
         }
         if(Boolean(this._loadingIndicator) && this._loadingIndicator._e4907aaeb95acdc5444b0b36())
         {
            if(this._playerChar != null && _loc6_ != null)
            {
               _loc6_.x = limit(this._playerChar.position.x - param3 / (0x486FB3D4 ^ -1489464956 ^ 0x32D3D1BD ^ -578489361),-599955917 ^ 0x4DC613E4 ^ 0x055F058E ^ -1801162663,int(this._locationLayersBase.fullWidth - param3));
               _loc6_.y = limit(this._playerChar.position.y - param4 / (-1365559668 ^ -1536545367 ^ -935156033 ^ -1028407912),-2106636686 ^ -628617482 ^ 0x5549BFA7 ^ 0x0DAEF723,int(this._locationLayersBase.fullHeight - param4));
               _loc6_.width = param3;
               _loc6_.height = param4;
               _loc6_ = this.inspectRectByLocationLayersSize(_loc6_);
               this._locationLayersBase.scrollRect = _loc6_;
               _08c120b706560fce9302bcab.mapOffset.x = -_loc6_.x;
               _08c120b706560fce9302bcab.mapOffset.y = -_loc6_.y;
            }
         }
         else
         {
            if(this._locationLayersBase != null)
            {
               if(this._73acd7e3d4cfe06c4dd74ef7 && param4 >= PRIVATE_HOUSE_HEIGHT_WITH_WALL)
               {
                  _loc5_ = PRIVATE_HOUSE_HEIGHT_WITHOUT_WALL;
               }
               else
               {
                  _loc5_ = this._locationLayersBase.fullHeight;
               }
               _loc6_.x = this._locationLayersBase.fullWidth / (-1974671293 ^ -1860870762 ^ 0x45E84B92 ^ 0x5EB1FE45) - param3 / (-1782384639 ^ -1233633237 ^ 0x12787C2B ^ 0x31C2C403);
               _loc6_.y = _loc5_ / (0x3AB7522E ^ 0x34B0BB5F ^ -18506582 ^ -253594151) - param4 / (-1019512130 ^ 0x6FF47BBC ^ -1789671003 ^ 0x399CC8A5);
               _loc6_.width = param3;
               _loc6_.height = param4;
               _loc6_ = this.inspectRectByLocationLayersSize(_loc6_);
               this._locationLayersBase.scrollRect = _loc6_;
            }
            this._scrollRect = _loc6_;
         }
         this.moveCameraToChar(0x48AB2366 ^ 0x2B2FB6E4 ^ -175182369 ^ -1777698724);
      }
      
      protected function inspectRectByLocationLayersSize(param1:Rectangle) : Rectangle
      {
         var _loc2_:Number = this._locationLayersBase.fullHeight;
         if(this._locationLayersBase.fullWidth <= scrollRect.width)
         {
            this._locationLayersBase.x = Math.round((scrollRect.width - this._locationLayersBase.fullWidth) / (0x4FBE687B ^ 0x4C8142B2 ^ 0x2716B039 ^ 0x24299AF2));
            param1.x = 0x5A377B64 ^ 0x3348FFF3 ^ 0x6830F21C ^ 0x014F768B;
            param1.width = this._locationLayersBase.fullWidth;
         }
         else
         {
            this._locationLayersBase.x = -2067730150 ^ -204388285 ^ -451859522 ^ -1845456153;
         }
         if(_loc2_ <= scrollRect.height)
         {
            this._locationLayersBase.y = Math.round((scrollRect.height - _loc2_) / (-339805633 ^ 0x243312A1 ^ 0x52344218 ^ -1648776572));
            param1.y = 0x3CFA7E7F ^ 0x3D0A693F ^ -1597283148 ^ -1589939212;
            param1.height = _loc2_;
         }
         else
         {
            this._locationLayersBase.y = -653790190 ^ 0x62C5A8B2 ^ -1685075046 ^ 0x204D973A;
         }
         return param1;
      }
      
      private function _485fa2a21d424a7e377e40ea(param1:int, param2:int) : void
      {
         if(this._locationLayersBase == null || this._locationLayersBase.parent == null)
         {
            return;
         }
         graphics.clear();
         graphics.beginFill(-1303450964 ^ -823669324 ^ -936407279 ^ -1266243575);
         var _temp_3:* = graphics;
         var _temp_2:* = 0x0EEE25AC ^ 0x02EB12AC ^ -108323446 ^ -175232374;
         _temp_3.drawRect(_temp_2,_temp_2,param1,param2);
         graphics.endFill();
      }
      
      override public function show() : void
      {
         Cc.log(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ဥၪတၯႧဲ္ჺ့ၜႻာႼၩ჏႟ုၙႀ၉ံჄဘယၾ჈Ⴊၼ၌ၘ၅၂ၙჁღ့","႒၄Ⴘჩၣ႕႘ြၶ၈ჀဏჟეၻႦ") + this.toString());
         try
         {
            app.dialogManager.showAt(_0737efdbd5337ba3fbc64b2e.GAME_FIELD_LAYER,this);
            this._dce4f436f52238b6bed74e5a();
            this._1b1d5a5397ac92a95c93b660();
         }
         catch(e:Error)
         {
            Cc.error(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("刃刯劼勫动刔制勷剗刂刟削勍剟剻刎刨劺刮勌劸勨勂募勺剓勹势刮劇勊勪刱删刈効刖剽劔勚劀删勤劝労动","刍删募勸刢判劜剿剥劏务剨剃副剤剮"),e);
            Cc.error(e.getStackTrace());
            GameSwf._6b2ea987f29b60cd755db2f5(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捂挎揁挼捡掖捰挒揱揍捙挌揢掞換捽揖揬捹揚揈捎揻掤","掚捾挱挮持掯挈掄挟揢捈掩挵捎換挒"));
         }
      }
      
      private function _abfd7d66bb0da08cad142911() : Number
      {
         var _loc1_:Number = 0x6CCF4881 ^ -1345402487 ^ 0x4C5690DC ^ -1890119212;
         if(this._f9c1c162ec64547485d5db05 != null)
         {
            if(this._f9c1c162ec64547485d5db05.isLoaded())
            {
               _loc1_ = 0x1B287669 ^ -273261452 ^ -907798592 ^ 0x3D7A3DDC;
            }
            else if(this._f9c1c162ec64547485d5db05.bytesTotal > (0x730C6A62 ^ 0x712C6A12 ^ 0x0306A3C2 ^ 0x0126A3B2))
            {
               _loc1_ = this._f9c1c162ec64547485d5db05.bytesLoaded / this._f9c1c162ec64547485d5db05.bytesTotal;
            }
         }
         var _loc2_:Number = 0x2775E063 ^ 0x5ACC4E59 ^ 0x3BDC6F43 ^ 0x4665C179;
         if(this._locationLayersBase != null)
         {
            _loc2_ = this._locationLayersBase.progress;
         }
         var _loc3_:Number = this._b360e884780ae3fb0cc651e1 ? this._b360e884780ae3fb0cc651e1.progress : 0x66E609D5 ^ -1088746387 ^ -921173246 ^ 0x10E506BA;
         var _loc4_:Number = this.dynamicGraphicsProgress;
         return _loc1_ * _433075a5d49397e40222eeae._9417d5d828724209ec5cfbb1("ႻဘၕႲဎၷჲოႭႇၪႄၦ჻တ္ာთႴဟမუ႖ၸ","ლ჉သჟ၏ၮဝဧႀ႙ჍၛႪစဎႢ") + _loc2_ * _95da7f1147c669197db81295._6371735dc9287bd2d9618c1e("刞劏刉剨刞劋刨剤剅劵勇勐刈刟勎劈切劀券劸労剰勺刜","势剳刽刃务勁劮剂剩剚劏勄剿勔刢勵") + _loc3_ * _433075a5d49397e40222eeae._9417d5d828724209ec5cfbb1("ဧკ။ႠဎွႭႁნၥსဂုႊဋၲპგထဩၿဍჱႏ","၉ခჅၥჼႺღႏဩၩႪၱ჋႐ხ၃") + _loc4_ * _433075a5d49397e40222eeae._9417d5d828724209ec5cfbb1("ၱၻႤპဲ႒ဣၧႱჀႮၕ၏႗႖ဍၑცკრၲსတီ","მတၦძကဌ႞ჵႱႭၾ၇ဢၼღ႔");
      }
      
      public function _1b1d5a5397ac92a95c93b660() : void
      {
         if(this._f9c1c162ec64547485d5db05 != null || this._217cc4d6aabe27a77e0346d6)
         {
            return;
         }
         this._f9c1c162ec64547485d5db05 = new _f5d3c19b4de5df055d1bc952(-658525457 ^ 0x5A7EA2EE ^ 0x05036B65 ^ -2017297564);
         this._217cc4d6aabe27a77e0346d6 = true;
         var _loc1_:URLRequest = new URLRequest(this.locationModel.locationConfig._0f83820a87caad2efac0bafa());
         _02fbe4cbe9e83f1b8c711799.addEventListener(this,this._f9c1c162ec64547485d5db05.contentLoaderInfo,Event.COMPLETE,this._3592e9d0ea73ddd76fed836f);
         _02fbe4cbe9e83f1b8c711799.addEventListener(this,this._f9c1c162ec64547485d5db05.contentLoaderInfo,IOErrorEvent.IO_ERROR,this.onIoError);
         _02fbe4cbe9e83f1b8c711799.addEventListener(this,this._f9c1c162ec64547485d5db05.contentLoaderInfo,SecurityErrorEvent.SECURITY_ERROR,this.onSecurityError);
         this._f9c1c162ec64547485d5db05.load(_loc1_);
      }
      
      private function onSecurityError(param1:SecurityErrorEvent) : void
      {
         this._8b2fe906bf6f5f8872831196();
         _f337de671f427b6684b5acc4._b414872dce2f2fc3b57c85ea(param1);
      }
      
      private function onIoError(param1:IOErrorEvent) : void
      {
         this._8b2fe906bf6f5f8872831196();
         _f337de671f427b6684b5acc4._42f3d638814d02afd5e2c0e9(param1);
      }
      
      protected function _3592e9d0ea73ddd76fed836f(param1:Event) : void
      {
         var event:Event = param1;
         try
         {
            this._8b2fe906bf6f5f8872831196();
            this._locationLayersBase = this._3536e00a076cf84463e9eaaa();
            this._locationItems.locationLayers = this._locationLayersBase;
            this._01cf1a1d1dab83e00a988531.locationLayers = this._locationLayersBase;
            this.loadObstacleMaps(this._c84119b0f327f749aebab436);
         }
         catch(e:Error)
         {
            Cc.error(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挫掲挌挮掔推持揂挷捐挗捍掯揟掷揍援揕捁捿捵揁揔揨掗捛捣換採捪揗挨採掟捍捆掽挴挛掐授掫按掭掛挿揞挝捫掯捞挐掣捑挾捙掟捫掼掴揗捖捜揦捫捈挩捣捅捪捠換捆挐掙挥捭揋掃挍揬捱揊捌揹捰捴挑","挘掶捊挭揓掻揤捘掩捩捠揚挙捗捎揼"),e);
            Cc.error(e.getStackTrace());
            GameSwf._6b2ea987f29b60cd755db2f5(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၮႶႇႜႺ჎ჿၐဦႎႤၫဆဤၔდဗႝ჊ၖဖႾჾჹ","၄ၚၞჾငჹც჌ါႻჺၐာဓ၇ၧ"));
         }
         this.locationModel._3592e9d0ea73ddd76fed836f();
      }
      
      protected function _3536e00a076cf84463e9eaaa() : _bd60f9ad6ef4aaf28041ce8f
      {
         var _loc1_:_bd60f9ad6ef4aaf28041ce8f = null;
         if(this.locationModel.isSublocation || this.locationModel.isTournament || this.locationModel is _b7721b56782b7cbf756127e2)
         {
            _loc1_ = _b4cef8d838b2ff6c7a909a6e._8f1693cd8a2a16fc0e136f32(this.locationModel.id);
         }
         else
         {
            _loc1_ = _b4cef8d838b2ff6c7a909a6e._3536e00a076cf84463e9eaaa(this.locationModel.id);
         }
         _loc1_.dayCycle = this._a35586942f3ef9c2fd80b181;
         return _loc1_;
      }
      
      private function _8b2fe906bf6f5f8872831196() : void
      {
         _02fbe4cbe9e83f1b8c711799.removeEventListener(this,this._f9c1c162ec64547485d5db05.contentLoaderInfo,Event.COMPLETE,this._3592e9d0ea73ddd76fed836f);
         _02fbe4cbe9e83f1b8c711799.removeEventListener(this,this._f9c1c162ec64547485d5db05.contentLoaderInfo,IOErrorEvent.IO_ERROR,this.onIoError);
         _02fbe4cbe9e83f1b8c711799.removeEventListener(this,this._f9c1c162ec64547485d5db05.contentLoaderInfo,SecurityErrorEvent.SECURITY_ERROR,this.onSecurityError);
      }
      
      private function loadObstacleMaps(param1:Function) : void
      {
         this._d93b13e859f4326c59c4ef29 = param1;
         _02fbe4cbe9e83f1b8c711799.addEventListener(this,this._locationLayersBase,_178a822f6f1028b33439b0d5.UPDATE_OBSTACLE_MAP,this._99d7604e8f6aea29c1c9a161);
         _02fbe4cbe9e83f1b8c711799.addEventListener(this,this._locationLayersBase,_178a822f6f1028b33439b0d5.UPDATE_LAKE_OBSTACLE_MAP,this._12deb8291cebac17a9349ad9);
         _02fbe4cbe9e83f1b8c711799.addEventListener(this,this._locationLayersBase,_178a822f6f1028b33439b0d5.UPDATE_SOUND_MAP,this._c5344f7b840dbe40e2e19676);
         this._locationLayersBase._9cfcda3bd875179340e11488(this.locationModel.locationConfig._b7f972bf02490f109a3d3ac5());
         this._locationLayersBase._3e3242382a87d19d8938f33c(this.locationModel.locationConfig._e32092f99261d403a00e629a());
         this._locationLayersBase._6d5465207fd2659f33dd930a(this.locationModel.locationConfig._47a8636818020d0a951d17db());
      }
      
      private function _c5344f7b840dbe40e2e19676(param1:_178a822f6f1028b33439b0d5 = null) : void
      {
         this._2e0987edad2b52ab48d9bac5 = this._locationLayersBase.soundMapBitmapData;
         this._069cb4077b999ad0e9d2e86e();
      }
      
      private function _069cb4077b999ad0e9d2e86e() : void
      {
         if(this._d93b13e859f4326c59c4ef29 == null || this._obstacleMap == null || this._lakeObstacleMap == null || this._2e0987edad2b52ab48d9bac5 == null)
         {
            return;
         }
         this._d93b13e859f4326c59c4ef29();
         this._d93b13e859f4326c59c4ef29 = null;
      }
      
      private function _c84119b0f327f749aebab436() : void
      {
         try
         {
            _02fbe4cbe9e83f1b8c711799.addEventListener(this,this._locationLayersBase,Event.COMPLETE,this.onLocationLayersParsingComplete);
            this._locationLayersBase._f11d1adba5da51ae728ca759(MovieClip(this._f9c1c162ec64547485d5db05.content),new Point(this._f9c1c162ec64547485d5db05.contentLoaderInfo.width,this._f9c1c162ec64547485d5db05.contentLoaderInfo.height),this._f9c1c162ec64547485d5db05.contentLoaderInfo.applicationDomain);
         }
         catch(e:Error)
         {
            Cc.error(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掦挽揀挾接挊捋捪揪捝揕推挽揋揢掋挨揃挣揾挸捺揘捹捦挦掹掂捨捣揥插掃掺掠揸揵掁挾挈捖揆捍揾掰掸掴揢捚捵揇挩挌捯掆揱挣捲掺捪揖挖掎掓描挽挅捵","捎捫挬捻捊捅捲挡捚揩掱揰掍掭援挑"),e);
            Cc.error(e.getStackTrace());
            GameSwf._6b2ea987f29b60cd755db2f5(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挝揘挸捛掿捬揠挕掁掆捭揽捪挬捵捡掷揅捸捗捤挩揫捠","挦掛挽捤捄捭捋揖掾挄揺揚揇揲揂掵"));
         }
      }
      
      private function _dce4f436f52238b6bed74e5a() : void
      {
         this._660799e0f434d28e99321254();
         var _loc1_:String = this.locationModel.absoluteId >= (0x1B1D9DAE ^ 0x27EFEF6C ^ 0x292CCC50 ^ 0x15DEBEF6) ? _141a5f7d84a4cfae1680515b.TYPE_BUBBLES : _141a5f7d84a4cfae1680515b.TYPE_TIPS;
         this._loadingIndicator = new _f11f4587bdf083a8dd45aa84(_loc1_);
         this._loadingIndicator.progressHandler = this._abfd7d66bb0da08cad142911;
         this._loadingIndicator.start();
         _745ca4cad2f6acc1f3084ea1._2b080f46e549b4b5a001764c(this._loadingIndicator);
      }
      
      protected function _660799e0f434d28e99321254(param1:Boolean = false) : void
      {
         var _loc2_:int = 0x242FE086 ^ 0x38BD95D9 ^ 0x388400B4 ^ 0x1DE97499;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (-191690555 ^ -1315111477 ^ -1437646891 ^ -692073556))
            {
               case 0:
                  return;
               case 1:
                  if(!this._loadingIndicator._e4907aaeb95acdc5444b0b36())
                  {
                     _loc2_ = -113339816 ^ -714889539 ^ 0x63394FFA ^ 0x769B7A6A;
                  }
                  else
                  {
                     _loc2_ = 0x69A36742 ^ -620351551 ^ 0x4CBA1210 ^ -941597721;
                  }
                  break;
               case 2:
                  return;
               case 3:
                  _745ca4cad2f6acc1f3084ea1._73bc65955b0f014b23436384(this._loadingIndicator);
                  this._loadingIndicator.stop();
                  this._loadingIndicator.destroy();
                  this._loadingIndicator = null;
                  return;
               case 4:
                  if(param1)
                  {
                     _loc2_ = -459929640 ^ 0x497A0E66 ^ -384299682 ^ 0x7D0B0596;
                  }
                  else
                  {
                     _loc2_ = -399077090 ^ -347205403 ^ 0x62AD6D34 ^ 0x582AEDBB;
                  }
                  break;
               case 5:
                  if(this._loadingIndicator == null)
                  {
                     _loc2_ = -1620665390 ^ 0x79FEF31D ^ 0x3FBD3A88 ^ -522562768;
                  }
                  else
                  {
                     _loc2_ = -606938430 ^ -1364725556 ^ 0x25D68CBB ^ 0x695CA7C6;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function obstacleMapsAlpha(param1:Number) : void
      {
         this._locationLayersBase._3fa89e92f28203fdc9e6d637(param1);
      }
      
      private function _69cd9a2924cdd5f03b27063b(param1:Number) : void
      {
         this._locationLayersBase._c17e0b4b08addbaa4786c0f4(param1);
      }
      
      private function moveToBoat(param1:_08c120b706560fce9302bcab, param2:int = 3) : void
      {
         var _loc3_:_40c40768738c862c74ddd128 = this._locationLayersBase._eff2210177460a6b2f06ef20(param2);
         param1._ea52ddaca1a080cc2518c8da();
         param1._a6ba5ade9f66ae64e73c340b();
         param1.moveToBoat(_loc3_);
      }
      
      public function _95223275024345738660ad36() : void
      {
         var _loc1_:Rectangle = this.scrollRect;
         if(_loc1_ == null)
         {
            return;
         }
         this.centerToRect(_loc1_.x,_loc1_.y,_loc1_.width,_loc1_.height);
      }
      
      private function _02caa9fde1142e74a23815e9() : void
      {
         var _loc1_:_08c120b706560fce9302bcab = null;
         var _loc2_:BitmapData = this._locationLayersBase._08c86fd02004f9e45fef2ca8();
         for each(_loc1_ in this._charList)
         {
            _loc1_._a9758614678827114f90d3aa(this._obstacleMap,this._lakeObstacleMap,this.locationFullWidth,this.locationFullHeight);
            _loc1_.boatObstacleMap = _loc2_;
            _loc1_.boats = this._locationLayersBase.boats;
         }
      }
      
      private function _c65c24a0f5b02ad6f600c5db() : void
      {
         var _loc1_:int = 0x67066270 ^ 0x244C69FC ^ -155895428 ^ -1923090913;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (0x0AB40369 ^ 0x14A14788 ^ -1752629334 ^ -1321369692))
            {
               case 0:
                  if(this._b360e884780ae3fb0cc651e1 == null)
                  {
                     _loc1_ = -1600964149 ^ -277745332 ^ 0x61516632 ^ 0x16136A59;
                  }
                  else
                  {
                     _loc1_ = 0x5330B354 ^ 0x6D271E50 ^ -1054459127 ^ -946777369;
                  }
                  break;
               case 1:
                  this._animatedCharacterIsLoaded = true;
                  this.create();
                  _loc1_ = 0x0B9B5352 ^ 0x3D07D6D0 ^ 0x232952D1 ^ 0x2D1513BE;
                  break;
               case 2:
                  this._a35586942f3ef9c2fd80b181._63bc7136da541eadeb605e55();
                  return;
               case 3:
                  setTimeout(this._c65c24a0f5b02ad6f600c5db,0x501D2FB3 ^ -1823295253 ^ 0x51A5186B ^ -1830121641);
                  return;
               case 4:
                  _02fbe4cbe9e83f1b8c711799.addEventListener(this,this._b360e884780ae3fb0cc651e1,Event.COMPLETE,this._3c6ee18248268900e7cbfa67,false,-1531953271 ^ -460284684 ^ -1820156028 ^ -744342277);
                  _loc1_ = -305752262 ^ -1196668413 ^ -854151124 ^ -1596151304;
                  break;
               case 5:
                  if(this._b360e884780ae3fb0cc651e1.isLoaded)
                  {
                     _loc1_ = -1684919281 ^ 0x627ECB51 ^ 0x7E3B8256 ^ -1082678810;
                  }
                  else
                  {
                     _loc1_ = -998878521 ^ -1591627897 ^ 0x4ADD91EA ^ 0x172AA841;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      protected function create() : void
      {
         var _loc1_:String = null;
         this._ac21ca7c692b5eefc26980e8();
         _02fbe4cbe9e83f1b8c711799.addEventListener(this,this._locationLayersBase,MouseEvent.CLICK,this.onClick);
         _02fbe4cbe9e83f1b8c711799.addEventListener(this,this._locationLayersBase,MouseEvent.MOUSE_MOVE,this._2f7021a59bd95754b393a0be);
         _02fbe4cbe9e83f1b8c711799.addEventListener(this,this._locationLayersBase,MouseEvent.DOUBLE_CLICK,this._40cfc46185c9c16faa96dbce);
         if(this._scrollRect != null)
         {
            this._scrollRect = this.inspectRectByLocationLayersSize(this._scrollRect);
            this._locationLayersBase.scrollRect = this._scrollRect;
         }
         TweenCube.to(this._gui,0x1BE97498 ^ -1649319377 ^ -714717220 ^ 0x533E516A,{(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ႊ၀პဪၻჯშცဩჯႜၮဦჱဧဦႭဟ","ဌჿႾရစჹႁ၅ႁႹႧჳჸၬ႗ဓ")):0x3BE5FC13 ^ 0x790FAC4E ^ 0x6603E8E6 ^ 0x24E9B8BA});
         this._scrollRect = null;
         if(this._waitForViewLoadUsernames != null && this._waitForViewLoadUsernames.length > (-1831190194 ^ 0x66704BBF ^ 0x59C1B3E4 ^ -1385449195))
         {
            for each(_loc1_ in this._waitForViewLoadUsernames)
            {
               GameSwf.charsManager._87e1e0ccde8111cbbc2c65af(_loc1_,this.updateCharView,_loc1_);
            }
            this._waitForViewLoadUsernames = [];
         }
         _02fbe4cbe9e83f1b8c711799.addEventListener(this,this.locationModel,_4986c362bed569a2ffb299b4.ENTER_TO_LOCATION,this._2a0f34975fb1d4e797ed0b1a);
         _02fbe4cbe9e83f1b8c711799.addEventListener(this,this.locationModel,_4986c362bed569a2ffb299b4.UPDATE_MAINTENANCE_TIME,this._abfa6bd3804ff5a2c204a14f);
         if(this._locationLayersBase)
         {
            this._3b294245f08760a0082cd317();
            this.locationModel._80557ec7c85c6def233bada4();
         }
         this._660799e0f434d28e99321254(true);
      }
      
      protected function _ac21ca7c692b5eefc26980e8() : void
      {
         var _loc1_:_08c120b706560fce9302bcab = null;
         for each(_loc1_ in this._charList)
         {
            this._2c3f217f52bd240efa532b5d(_loc1_);
         }
      }
      
      protected function _2c3f217f52bd240efa532b5d(param1:_08c120b706560fce9302bcab) : void
      {
         var _loc2_:int = -2059054998 ^ -1941260891 ^ -2017859674 ^ -1757492214;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x5AC830BB ^ -1665337321 ^ 0x5730BBDC ^ -1999848174))
            {
               case 0:
                  _ba120ae720a391732e866217(param1).onStartTalk = this._d69b1ee81887e04ca1584d73;
                  _loc2_ = -846744840 ^ -894899114 ^ 0x03A981A5 ^ 0x1D0E116B;
                  break;
               case 1:
                  param1._a9758614678827114f90d3aa(this._obstacleMap,this._lakeObstacleMap,this.locationFullWidth,this.locationFullHeight);
                  param1.boatObstacleMap = this._locationLayersBase._08c86fd02004f9e45fef2ca8();
                  param1.boats = this._locationLayersBase.boats;
                  param1._7df06d1da20fad3e50e8e3c1(this._locationLayersBase._d2821df50f261a80f9891c48());
                  param1._6e26cba323340280bd895ce7(this._locationLayersBase.fullWidth,this._locationLayersBase.fullHeight);
                  param1.locationLayers = this._locationLayersBase;
                  this._locationLayersBase._92d6baab4102395a7951d68b(param1.graphic);
                  if(param1 is _ba120ae720a391732e866217)
                  {
                     _loc2_ = 0x1CC1829D ^ 0x4AF339E0 ^ 0x76A44809 ^ 0x391E3D16;
                  }
                  else
                  {
                     _loc2_ = 0x7C037EF5 ^ 0x6706FF1D ^ 0x56606A42 ^ 0x54ED25CA;
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
      
      protected function _2a0f34975fb1d4e797ed0b1a(param1:_4986c362bed569a2ffb299b4) : void
      {
         _02fbe4cbe9e83f1b8c711799.removeEventListener(this,this.locationModel,_4986c362bed569a2ffb299b4.ENTER_TO_LOCATION,this._2a0f34975fb1d4e797ed0b1a);
         this._de626e37b3d6fca8360b573b();
         dispatchEvent(new Event(Event.COMPLETE));
         if(this.locationModel.isSublocation && this.locationModel.locationConfig == _24fc30cfc3c855ea21a231e8.SUBLOCATION_6_SIBIRI)
         {
            _dfa25706e58a240c1e33e5c6.locationExtension._297aa7138eb1e83a218418bf(this._e4a7ad87e37c9eb5f556fb40);
         }
         this._356cecc8c2cf0622ec2cfcaf();
         this._gui.mainMenu.communicationIcon.amount = app.user.unreadPMNumber;
      }
      
      private function _356cecc8c2cf0622ec2cfcaf() : void
      {
         if(this._ae4bf7afed19a2bed09701ab == null)
         {
            this._ae4bf7afed19a2bed09701ab = new _345abaae6c23ec00331192f6();
            this._gui.missionsUncleSamWidget = this._ae4bf7afed19a2bed09701ab;
            this._gui.addChild(this._ae4bf7afed19a2bed09701ab);
            this._a1192a516a204df021885986();
         }
         if(this._e8d6af1ebb84f0dc72899def == null && !app.user.isGuest)
         {
            this._e8d6af1ebb84f0dc72899def = new _b1c568080240cc3772c55d90();
            this._gui.collectionsGirlWidget = this._e8d6af1ebb84f0dc72899def;
            this._gui.addChild(this._e8d6af1ebb84f0dc72899def);
         }
         if(this._7fe05aca52f25fef392392be == null && !app.user.isGuest)
         {
            this._7fe05aca52f25fef392392be = new _f6f12dbbfbe7f740316e0e9f();
            this._gui.dailyQuestManWidget = this._7fe05aca52f25fef392392be;
            this._gui.addChild(this._7fe05aca52f25fef392392be);
         }
         this._gui._5b84a4a8edfb74028ae7b885();
      }
      
      private function _e4a7ad87e37c9eb5f556fb40(param1:IglooListResp) : void
      {
         if(!this._8cee8fcbcec66b9e75cc1132)
         {
            return;
         }
         var _loc2_:Array = JSON.parse(param1.list) as Array;
         if(_loc2_.length > (-678720652 ^ 0x1347401B ^ 0x2347A0B1 ^ -410293282))
         {
            _loc2_.sortOn(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("၆၂ဇၺြပჵၖ႒ၡ၀ဃဎၦ၉Ⴃႀၴგၝ","ბ჎႟ျ၊ႷႬიႈၮჂႠိს၎ჟ"),Array.DESCENDING | Array.NUMERIC);
            if(this._locationLayersBase.bestPlayer != null)
            {
               this._locationLayersBase._f0de33de12d7a75eff23d77c((_loc2_[0x33FED400 ^ -2075241292 ^ 0x4B8233AA ^ -63786210].login as String).toUpperCase(),_c2ad9d37d7be0097d6d2e977._a1824cf8cfedd1c4a5e49576(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捿掽挜揣揢揺挷揟挙挓挽掘挖挈揦掚揹捉","掳揾挲掻掺揨揺挦揼採掛排捯揃掵持") + _loc2_[0x188CED4E ^ -527905228 ^ 0x653E3DA3 ^ -1657135399].fishId),_c2ad9d37d7be0097d6d2e977._d6caeb4f7f3c13c311445662(_loc2_[0x4D21AC73 ^ -2013127412 ^ -1293446211 ^ 0x77C422C2].length));
            }
            if(this._locationLayersBase.topPlayerBoard != null)
            {
               this._ad5c1f193d58ea5c5c443dfc = _loc2_;
            }
         }
         else
         {
            TextField(this._locationLayersBase.bestPlayer.getChildByName(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挃揋捘掾捆挘掭挋掵揼掉挝揚捒揹揋捼掎掽捠挌揍捪挎捉揫措揅捶捞掷捫捳捬掂挗","挸掤掙捨揸插捇揽挱揅探挫揙描掎挡"))).text = "";
            TextField(this._locationLayersBase.bestPlayer.getChildByName(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("၀Ⴖპ჎ဟငၟჄၗ႙ზဌჯဝၨႆႴ၆႗ဂჅეၸႛၳ჏ဘ჏Ⴌဥႂဏ","္၉ၔ၇ူოႷႤႇၵၪ჋ႾၻჇ჋"))).text = "";
            TextField(this._locationLayersBase.bestPlayer.getChildByName(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掯挩揀捯掄揼掍揢探捓掇揘接捭挈掄揷捆挬挘挏揱掆掞措捐损揧挕挨损捒","挰掴捏揯掰挢揕描揲掼挕揅挤揄挊揇"))).text = "";
         }
         var _loc3_:MovieClip = this._locationLayersBase.topPlayerBoard;
         _loc3_.useHandCursor = true;
         _loc3_.alpha = -1848897060 ^ 0x27A4B860 ^ -3365098 ^ 0x49A40EAA;
         _loc3_.buttonMode = true;
         _loc3_.mouseEnabled = true;
         _loc3_.mouseChildren = false;
      }
      
      public function _34b455ae0a65861b5f58c288(param1:MouseEvent = null) : void
      {
         var _loc2_:_ea1daef357f548b98f9d67c5 = null;
         var _loc3_:_6691abcab801c2433d32324a = null;
         if(this._ad5c1f193d58ea5c5c443dfc != null && this._ad5c1f193d58ea5c5c443dfc.length > (0x6FD0AD04 ^ 0x3CDD872E ^ 0x21ACBC22 ^ 0x72A19608))
         {
            _loc2_ = app.dialogFactory._2511c152991503a9ab4becc3();
            _loc2_.setData(this._ad5c1f193d58ea5c5c443dfc);
            _loc2_.show();
         }
         else
         {
            _loc3_ = app.dialogFactory._5afc77ddaa6019528749a6fb();
            _loc3_.buttons = _6691abcab801c2433d32324a.OK_BUTTON | _6691abcab801c2433d32324a.CLOSE_BUTTON;
            _loc3_.closeOnOk = true;
            _loc3_._4b5d5535760fe8919ccfbd43(_c2ad9d37d7be0097d6d2e977.get(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捽接揖揌捘捺掐捡揮捱挩捦捔挸掵挃挐掙捽掅掣挞挡揱揆挢捑揮挺揝掁捴捺揽捸揄捙捤捙揸挄挼掃挄据揠捙掑","捪掿捤揟挄捘掻揩揵捫捀掠持授掜捪")),false);
            _loc3_.show();
         }
      }
      
      protected function _2f7021a59bd95754b393a0be(param1:MouseEvent) : void
      {
         _9b189a790efd59581443eb40.change(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挒捴掟揿揠揰捏掯掭捨揤挰掖挜捝挻揿掑挹捐","捣揷掂挦揅掣指捔捼捦挼掸揘挎挱挏"),new Point(mouseX + _08c120b706560fce9302bcab.mapOffset.x,mouseY + _08c120b706560fce9302bcab.mapOffset.y));
         if(this._playerChar == null)
         {
            return;
         }
         if(this._playerChar.circleSprite.parent == null)
         {
            this._locationLayersBase._455fd402ad4447162b4ccee3(this._playerChar.circleSprite);
         }
         var _loc2_:int = stage.mouseX;
         var _loc3_:int = stage.mouseY;
         if(this._locationLayersBase.scrollRect != null)
         {
            _loc2_ += this._locationLayersBase.scrollRect.x - this._locationLayersBase.x;
            _loc3_ += this._locationLayersBase.scrollRect.y - this._locationLayersBase.y;
         }
         if(this._playerChar.isRodVisible)
         {
            this._playerChar._b5f50eb5f03242465d43613f(_loc2_,_loc3_);
         }
      }
      
      public function updateWithType(param1:String) : void
      {
         var _loc2_:String = null;
         var _loc3_:_6691abcab801c2433d32324a = null;
         var _loc4_:_d458d315ffa87d6d148e359b = null;
         var _loc5_:Number = NaN;
         switch(param1)
         {
            case _6b63fd0a4028eb279b227831.ECU_TOURNAMENTS_TOURNAMENT_END:
               §§push(0x77518542 ^ -1515361379 ^ 0x4C3645C8 ^ -1630885097);
               break;
            case _6b63fd0a4028eb279b227831.ECU_HOLIDAY_UPDATE:
               §§push(-782522187 ^ -1922198890 ^ -1483144667 ^ -72402937);
               break;
            default:
               §§push(0x50E1B113 ^ -1461596629 ^ -905929209 ^ 0x3200E13D);
         }
         switch(§§pop())
         {
            case 0:
               if(GameSwf.instance.managerTournaments.endDataIsNotEnoughMembers)
               {
                  _loc2_ = _c2ad9d37d7be0097d6d2e977.template(_85b2141a2303f6545d411d7a.EST_DIALOG_TOURNAMENT_RESULT_CANCELED,{(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("削勔刵務勉劰刃劏刊劯刿到勲勚剞剰剻别刳募刵剋刱剳","劬刏刽刿剘募办剂創劯劣劜勆刟剃劥")):app.user.username});
                  _loc3_ = new _6691abcab801c2433d32324a();
                  _loc3_._4b5d5535760fe8919ccfbd43(_loc2_);
                  _loc3_.textAlign = TextAlign.CENTER;
                  _loc3_.buttons = _6691abcab801c2433d32324a.OK_BUTTON;
                  _loc3_.closeOnOk = true;
                  _loc3_.show();
                  _3a8a2602dcf9bf49b62e62af._f4f1a2408cf18e8e24ae195c(_3a8a2602dcf9bf49b62e62af.SFX_067_MUS_Tournament_lose);
               }
               else
               {
                  _loc4_ = app.dialogFactory._f40d5a1d413320cc71965eb3();
                  _loc4_.show();
               }
               break;
            case 1:
               _loc5_ = -165032774 ^ 0x5CB90C3D ^ 0x3F5F546B ^ -1781558034;
               this._9cb9e5bfabadfa216618150b(_loc5_);
               this._7b769100fef0d61a23007e41(_loc5_);
         }
      }
      
      public function update(param1:uint, param2:uint) : void
      {
         var _loc3_:_08c120b706560fce9302bcab = null;
         if(!this._8cee8fcbcec66b9e75cc1132 || !this._locationLoadComplete)
         {
            return;
         }
         ++this._bc4e191e37a8a1318e48f56e;
         if(this._bc4e191e37a8a1318e48f56e == this._ad267c4dc1e3037e1ed25300)
         {
            this._bc4e191e37a8a1318e48f56e = 0x6223A15A ^ 0x0E3B592D ^ -836737667 ^ -1573348086;
         }
         app.performanceManager._e3fb5e714447d30caf6f3e77(param1,param2);
         if(Config.SYNC_DEBUG)
         {
            this.drawSync();
         }
         var _loc4_:Number = param2 / _92d7656ddc3c3da810e99c74.frameTimeMs;
         var _loc5_:Number = -684773320 ^ -1660846998 ^ -957475838 ^ -1933551535;
         if(NEW_MOVEMENT == (0x5B917BAC ^ 0x424295FF ^ 0x0F550DD9 ^ 0x1686E38A))
         {
            _loc4_ = Math.min(_loc4_,0x0AE43725 ^ -1713679894 ^ 0x546BA404 ^ -950746424);
            this._db1035359b9eb64e9773b136.push(_loc4_);
            _loc5_ = this._db1035359b9eb64e9773b136.value;
         }
         else
         {
            if(NEW_MOVEMENT == (0x4C78FBBD ^ 0x57530DA6 ^ 0x63623A3F ^ 0x7849CC25))
            {
               _loc5_ = _loc4_;
            }
            if(NEW_MOVEMENT == (-970461220 ^ -2085004067 ^ -887183848 ^ -1904208613))
            {
               this._e561320989930338667d28b5.push(_loc4_);
               _loc5_ = this._e561320989930338667d28b5.value;
            }
            if(NEW_MOVEMENT == (0x3EEDC23A ^ -1425267267 ^ 0x2872AC0C ^ -1114420344))
            {
               _loc5_ = -350206981 ^ -2076402609 ^ -1768219191 ^ -108543364;
            }
            _loc5_ = Math.min(_loc5_,-1882519454 ^ 0x398633C7 ^ 0x5767A71D ^ -517301061);
         }
         _9b189a790efd59581443eb40.change(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剋剽刌刐劝劺剚剗勠劮劣刲劒劯勘勡刋勃到勥务刾刷劬","刱刻剕加刳刨动剣刈劉刣列剸刏勁劕"),_loc5_);
         for each(_loc3_ in this._charList)
         {
            _loc3_.update(param1,param2,_loc5_);
         }
         if(this._playerChar != null && stage != null)
         {
            this._660799e0f434d28e99321254();
         }
         this._e4cea8a1320d9934c03a35f6();
         this.moveCameraToChar(-1615505407 ^ 0x2B394CB4 ^ -1552284437 ^ 0x17F6105F);
         if(this._7359e4f3d26467fcb524b023 && this._tutorialHelpers != null)
         {
            this._tutorialHelpers.update();
         }
         this._locationLayersBase.update(param1,param2);
         if(this._playerChar != null && param1 - this._ea5858ecb893162d3e9ee3a6 > (0x3886443F ^ 0x2FE3585A ^ -1361558620 ^ -1178771653))
         {
            this._ea5858ecb893162d3e9ee3a6 = param1;
            this._33d7b0da19152dd151562237();
            this.inspectPlayersSurfaceType();
            if(!(this is _c24229eda44b942058106fae))
            {
               this.inspectPlayerPosition();
            }
         }
      }
      
      protected function _e4cea8a1320d9934c03a35f6() : void
      {
         var _loc1_:* = 0x5AB7A1F0 ^ 0x544AF791 ^ -186621917 ^ -98748862;
         var _loc2_:* = -2108727268 ^ -166553562 ^ 0x3977C06E ^ 0x4D2A3854;
         if(this._playerChar != null && stage != null && this._playerChar._b5660deb0c277f3554a43b66())
         {
            if(_0737efdbd5337ba3fbc64b2e._fae1314a2d88b6dd28080c37() == false)
            {
               _loc1_ = 0x17B5785B ^ 0x7999AA7C ^ -633419826 ^ -1273883159;
               _loc2_ = -1989758176 ^ 0x69A9E996 ^ -112398732 ^ 0x1983B4C2;
               if(_cbd58f52130bcef0d9dc895a._021886a61ca44aa046c75d7d(Keyboard.UP) || _cbd58f52130bcef0d9dc895a._021886a61ca44aa046c75d7d(Keyboard.W) && !this._gui.mainMenu.chatPanel.isShowed())
               {
                  _loc2_--;
               }
               if(_cbd58f52130bcef0d9dc895a._021886a61ca44aa046c75d7d(Keyboard.DOWN) || _cbd58f52130bcef0d9dc895a._021886a61ca44aa046c75d7d(Keyboard.S) && !this._gui.mainMenu.chatPanel.isShowed())
               {
                  _loc2_ += -921816392 ^ -112427760 ^ 0x2EDD460A ^ 0x1E9F09A3;
               }
               if(_cbd58f52130bcef0d9dc895a._021886a61ca44aa046c75d7d(Keyboard.RIGHT) || _cbd58f52130bcef0d9dc895a._021886a61ca44aa046c75d7d(Keyboard.D) && !this._gui.mainMenu.chatPanel.isShowed())
               {
                  _loc1_ += -760280374 ^ 0x5B790907 ^ -362515288 ^ 0x63B27764;
               }
               if(_cbd58f52130bcef0d9dc895a._021886a61ca44aa046c75d7d(Keyboard.LEFT) || _cbd58f52130bcef0d9dc895a._021886a61ca44aa046c75d7d(Keyboard.A) && !this._gui.mainMenu.chatPanel.isShowed())
               {
                  _loc1_--;
               }
               if(_loc1_ > (-1436654019 ^ 0x7FA99441 ^ 0x6FFA736F ^ -1173520109) && this._playerChar.position.x + _loc1_ >= this._locationLayersBase.fullWidth - SCREEN_PADDING)
               {
                  _loc1_ = 0x2CAAD4D7 ^ -194474559 ^ -64559735 ^ 0x24E4BC9F;
               }
               if(_loc1_ < (-1463775681 ^ 0x3CE913BC ^ 0x538233C7 ^ -945050044) && this._playerChar.position.x + _loc1_ <= SCREEN_PADDING)
               {
                  _loc1_ = 0x22D0E63D ^ -496669663 ^ 0x3DDA359F ^ -43008125;
               }
               if(_loc2_ > (-621925637 ^ 0x18CB0008 ^ 0x4482B345 ^ -2035836490) && this._playerChar.position.y + _loc2_ >= this._locationLayersBase.fullHeight)
               {
                  _loc2_ = 0x7B182C6D ^ -380424692 ^ -333673557 ^ 0x7E5789CA;
               }
               if(_loc2_ < (0x3465E687 ^ -431435381 ^ -846549301 ^ 0x1FA799C7) && this._playerChar.position.y + _loc2_ <= SCREEN_PADDING)
               {
                  _loc2_ = -810254320 ^ 0x60D3163E ^ -346701721 ^ 0x44325649;
               }
               if(!this._playerChar.programmedMove)
               {
                  this._playerChar._93eadffa54c4b1bfff0374ab(_loc1_,_loc2_);
               }
               if((_loc1_ != (0x2EC5600A ^ 0x3CD926B3 ^ 0x2544F191 ^ 0x3758B728) || _loc2_ != (-1189518457 ^ 0x35265528 ^ 0x312259DC ^ -1122144397)) && this._playerChar.state == _2fcef105b08d78e8c46cbf27.NORMAL)
               {
                  this._playerMakeAnyMove = true;
                  this._playerChar._c8602d88efc64575cdc92b85();
                  this._playerChar._6227fd5da1ce67d0b36a4f90();
                  if(this._d9b253c6d5056dbdbbd0406c == (-1753816278 ^ -1324306656 ^ 0x52DFF3F0 ^ 0x74B9BFFA))
                  {
                     this._d9b253c6d5056dbdbbd0406c = getTimer();
                  }
               }
            }
            else
            {
               var _temp_18:* = this._playerChar;
               var _temp_17:* = -120895438 ^ -837493047 ^ -2087973945 ^ -1252811460;
               _temp_18._93eadffa54c4b1bfff0374ab(_temp_17,_temp_17);
            }
         }
         else if(this._playerChar != null && this._playerChar.moveStrategy is _412bba20db41500babcd2a85)
         {
            var _temp_21:* = this._playerChar;
            var _temp_20:* = -72293700 ^ 0x189B0F4F ^ -252097648 ^ 0x13D2A663;
            _temp_21._93eadffa54c4b1bfff0374ab(_temp_20,_temp_20);
         }
         if(this._7f49f91fc4c82d7a524ae994 && getTimer() - this._054821dd7486d52127e9a158 > this._8978e348135625a4ae964cbc)
         {
            this._054821dd7486d52127e9a158 = getTimer();
            _dfa25706e58a240c1e33e5c6.fscModel._1998765dddbc24f25f64afbb(new GetFishBlockAtLakesReq());
         }
         if(this._playerChar != null)
         {
            _9b189a790efd59581443eb40.change(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掣揅措挴捭揪掭挃描捧捬捨振掽挎捕掎捤掀採","挪挳捽掊掻掉捷挖掱挡捓捑揉挧揘捳"),this._playerChar.position.x + _95da7f1147c669197db81295._8f4866de82b7339154180ecb("勖劯刍剡助劭勁刚勀劔初勳","刟剌劓勃劺勐剱勠勰助前别勂勼勗刔") + this._playerChar.position.y);
            _9b189a790efd59581443eb40.change(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၳဲსဿ၇ဵဃႪხၥိႢ႒შၪထၯ႑ၙქဂ္ဤႋ႗ფႃၶႩဦဎဓှၞ","၁လၒၞၧၬၜငႸၳ၁ဓဥ႔ყျ"),this._playerChar.graphic.x + _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掦挦掓捇捹挿挺揎捨掅挕掤","接捅描捪援捃挓掭捛揤挱掚揓捖挼捸") + this._playerChar.graphic.y);
         }
         if(this._playerChar != null && this._playerChar._0dc9cf5e352cb7f18341f664() == false && this._1e8bb3fdea106107fa2df410)
         {
            this._1e8bb3fdea106107fa2df410 = false;
         }
         if(this._playerChar != null && this._playerChar.moveStrategy is _709a8761c08236d1b5935ace && this._d9b253c6d5056dbdbbd0406c == (0x09102549 ^ 0x73EA6B8D ^ -47381642 ^ -2015933006))
         {
            this._d9b253c6d5056dbdbbd0406c = -722101729 ^ -802964164 ^ -1126228482 ^ -1207354660;
         }
         if(this._d9b253c6d5056dbdbbd0406c != (0x66ECDAC2 ^ -1445183443 ^ 0x0FA2746F ^ -1064112512) && getTimer() - this._d9b253c6d5056dbdbbd0406c > this._854b17d14ef6e6c29c404152)
         {
            this._d9b253c6d5056dbdbbd0406c = 0x18265715 ^ -1457632252 ^ -538338075 ^ 0x6ED187F4;
            this._1e8bb3fdea106107fa2df410 = false;
         }
      }
      
      private function drawSync() : void
      {
         removeAllChildren(_d_charPositionLayer);
         this.drawUsers();
         this._ba77b0a8141916e388d97be8();
      }
      
      private function drawUsers() : void
      {
         var _loc1_:_810c4ade948afb64e9c7ee25 = null;
         var _loc2_:Point = null;
         var _loc3_:Vector.<_810c4ade948afb64e9c7ee25> = this.locationModel._a71dddef56aa5c9ec7fa4a93();
         for each(_loc1_ in _loc3_)
         {
            _loc1_.positionPoint.x = _loc1_.position.x - _08c120b706560fce9302bcab.mapOffset.x;
            _loc1_.positionPoint.y = _loc1_.position.y - _08c120b706560fce9302bcab.mapOffset.y;
            _loc1_.positionPoint.rotation = (0x7A9A7B22 ^ 0x342F9F8B ^ -1445975690 ^ -412758857) + (_loc1_.position.rotation + (0x28FB118D ^ -1368005667 ^ -189816286 ^ 0x72215028));
            _d_charPositionLayer.addChild(_loc1_.positionPoint);
            if(_loc1_.fieldChar != null && _loc1_.fieldChar.boat != null)
            {
               _loc2_ = _loc1_.fieldChar.boat._985f48f37c102603628fed8f(int(_loc1_.position.x + _95da7f1147c669197db81295._6371735dc9287bd2d9618c1e("劮券勅刯劔剩刻勩刱勀剃剞剓剆劸剥刟劎励劥劧勦劧剪","勤別剟勤劾勢剅勆剶剻勯剽劺劮劧勌")),int(_loc1_.position.y + _39d7d82359bf8046fe8ef6c4._ed4a735c5a6981f99dda5b73("揅捣揂掬挧掛挰捼揀援挗揸掷捏揇捷挡捰捪持掷挻揑掑","捅挻挶挬捇捸捇揌揌揇捨捦掣掌捠捙")));
               _loc1_.boatTransPositionPoint.x = _loc2_.x - _08c120b706560fce9302bcab.mapOffset.x;
               _loc1_.boatTransPositionPoint.y = _loc2_.y - _08c120b706560fce9302bcab.mapOffset.y;
               _d_charPositionLayer.addChild(_loc1_.boatTransPositionPoint);
            }
         }
         _d_charPositionLayer.x = this._locationLayersBase.x;
         _d_charPositionLayer.y = this._locationLayersBase.y;
      }
      
      private function _ba77b0a8141916e388d97be8() : void
      {
         var _loc1_:* = undefined;
         var _loc2_:_40c40768738c862c74ddd128 = null;
         if(this._locationLayersBase == null || this._locationLayersBase.boatByIndex == null)
         {
            return;
         }
         for(_loc1_ in this._locationLayersBase.boatByIndex)
         {
            _loc2_ = this._locationLayersBase.boatByIndex[_loc1_];
            _loc2_.positionPoint.x = _loc2_.graphic.position.x - _08c120b706560fce9302bcab.mapOffset.x;
            _loc2_.positionPoint.y = _loc2_.graphic.position.y - _08c120b706560fce9302bcab.mapOffset.y;
            _loc2_.positionPoint.rotation = _loc2_.graphic.position.rotation * _39d7d82359bf8046fe8ef6c4._ed4a735c5a6981f99dda5b73("捑揋控捜揽揀挡捕揁掺揉掸揮挔捑挥捠揖掳掅换挬揝揻","掆揍捾掀揑捳捜揪挜挵挳揠揊挙挸捖");
            _loc2_.lastSendPositionPoint.x = _loc2_.lastSendPosition.x - _08c120b706560fce9302bcab.mapOffset.x;
            _loc2_.lastSendPositionPoint.y = _loc2_.lastSendPosition.y - _08c120b706560fce9302bcab.mapOffset.y;
            _d_charPositionLayer.addChild(_loc2_.positionPoint);
            _d_charPositionLayer.addChild(_loc2_.lastSendPositionPoint);
            _9b189a790efd59581443eb40.change(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ညညჩႌ။ႊ၊ၨ႖ၼ჉ႛ","ჄႋႮႍკჵၮၛႶၯကႻီჽჱွ") + _loc1_,_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掄揆援捉揸捰挏挒挙捅捧捶挷揋","挎挄掾揁挝排掖挡揨揉挊揼捹挣掼挸") + int(_loc2_.graphic.position.x) + _95da7f1147c669197db81295._8f4866de82b7339154180ecb("勃努劇劣剁劾刦勴剩勨勄勜券力券刯","剟刉劚刚剟剿剢剹剘势劽刺刢力剪剴") + int(_loc2_.graphic.position.y) + _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掿揤捵挦挢授揅捆掞捩揲揥掮挮揯掷","捄揉挃揩捩按提掣掛掹揧揖挝揂揚揣") + int(_loc2_.graphic.position.rotation) + _95da7f1147c669197db81295._8f4866de82b7339154180ecb("刿刣劷勀勋削勾剼剁刮","刪刕勄剱刡剝刵剼勉勣助勃勰剼劲刍"));
         }
      }
      
      private function _33d7b0da19152dd151562237() : void
      {
         var _loc1_:BitmapData = this._locationLayersBase.soundMapBitmapData;
         if(_loc1_ == null || this._playerChar == null)
         {
            return;
         }
         var _loc2_:uint = uint.MAX_VALUE;
         var _loc3_:Number = Math.min(this._playerChar.position.x,this._locationLayersBase.fullWidth);
         var _loc4_:Number = Math.min(this._playerChar.position.y,this._locationLayersBase.fullHeight);
         if(_loc3_ > (0x15B48744 ^ 0x7A513163 ^ -1004593673 ^ -1409635376) && _loc4_ > (-1287643501 ^ 0x5183BCC6 ^ 0xE7F320 ^ -500936331) && _loc3_ <= _loc1_.width && _loc4_ <= _loc1_.height)
         {
            _loc2_ = _loc1_.getPixel32(_loc3_ - 1,_loc4_ - 1);
         }
         this._playerChar.currentSurface = _8d59d661459118aa8e94ae34._4c7842d414250ba47287ac93(_loc2_);
      }
      
      private function inspectPlayersSurfaceType() : void
      {
         var _loc1_:_08c120b706560fce9302bcab = null;
         var _loc2_:BitmapData = null;
         var _loc3_:uint = uint(0x0A4C4BEF ^ 0x6E007F97 ^ 0x598E1191 ^ 0x3DC225E9);
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:_8d59d661459118aa8e94ae34 = null;
         for each(_loc1_ in this._charList)
         {
            if(_loc1_.graphic.visible)
            {
               _loc2_ = this._locationLayersBase.soundMapBitmapData;
               if(_loc2_ != null)
               {
                  _loc3_ = uint.MAX_VALUE;
                  _loc4_ = Math.min(_loc1_.position.x,this._locationLayersBase.fullWidth);
                  _loc5_ = Math.min(_loc1_.position.y,this._locationLayersBase.fullHeight);
                  if(_loc4_ > (-110677150 ^ 0x627C0B29 ^ -1025122923 ^ 0x59FEE5DE) && _loc5_ > (-1229105675 ^ 0x1B342EE3 ^ -1600718150 ^ 0x0D1F81AC) && _loc4_ <= _loc2_.width && _loc5_ <= _loc2_.height)
                  {
                     _loc3_ = _loc2_.getPixel32(_loc4_ - 1,_loc5_ - 1);
                  }
                  _loc6_ = _8d59d661459118aa8e94ae34._4c7842d414250ba47287ac93(_loc3_);
                  _loc1_.distanceToPlayer = Point.distance(this._playerChar.position,_loc1_.position);
                  _loc1_.currentSurface = _loc6_;
               }
            }
            if(_loc1_ is _ba120ae720a391732e866217 && _loc1_.position.x < (-503867618 ^ 0x59CE1CB3 ^ 0x66AE30B0 ^ -560481507))
            {
               this._94d93044b810c5e3568f4b9e(_loc1_.locationUser.username);
            }
         }
      }
      
      protected function _5d9322c5c09d1a59d4784fcf() : void
      {
      }
      
      protected function inspectPlayerPosition() : void
      {
         var _loc1_:Vector.<_810c4ade948afb64e9c7ee25> = null;
         var _loc2_:int = -520597022 ^ 0x6F7E46EF ^ -2079519503 ^ 0x0B8B1BFC;
         var _loc3_:_810c4ade948afb64e9c7ee25 = null;
         var _loc4_:_08c120b706560fce9302bcab = null;
         if(this._playerChar == null)
         {
            return;
         }
         var _loc5_:_55043b34818a7b88d28e92ef = this._locationLayersBase._202b1ebc4fc246c252082527(this._playerChar.graphic.x,this._playerChar.graphic.y,0x21AF9275 ^ 0x4C92EFE8 ^ -914352520 ^ -1531089951);
         if(_loc5_ != null)
         {
            _1214a9b742372ed027fb8081._30b634626953a208cf6466d0(_loc5_);
         }
         this._bc9a1105a156e998e40981b2();
         this._9324bcee8776ca834699e0fe();
         this._5d9322c5c09d1a59d4784fcf();
         this._5513f64fde1a68f3d5363425();
         if(this._70282fdd6927855eeb8ba3f7 != null && _3a8a2602dcf9bf49b62e62af.isEnabled(_3a8a2602dcf9bf49b62e62af.GROUP_AMBIENT_SFX))
         {
            this._e798edbef5a905a5127029d4();
         }
         if(this.locationModel != null && this.locationModel.npcList != null)
         {
            _loc1_ = this.locationModel.npcList;
            if(_loc1_ != null && _loc1_.length > (-1411192870 ^ -1094918939 ^ 0x02752D1B ^ 0x172B1624) && !this._playerChar._93db766860106b900c89ac3a() && !this._playerChar._1b373857a1a724ed904f4d98())
            {
               _loc2_ = 0x403C5C66 ^ 0x5D13A29F ^ -1695008254 ^ -2015902469;
               while(_loc2_ < _loc1_.length)
               {
                  _loc3_ = _loc1_[_loc2_];
                  if(_loc3_ != null)
                  {
                     _loc4_ = _loc3_.fieldChar;
                     if(_loc4_ != null)
                     {
                        _ba120ae720a391732e866217(_loc4_)._5272526dfaa41b97a460733d(this._playerChar.position);
                     }
                  }
                  _loc2_++;
               }
            }
         }
         this._feb72052ac8150e95cef4ce8();
         this._06a98109c207c2409c450b3a();
         this._0deaa0976feee5c20491660d();
         if(this._playerChar != null && this._playerChar.programmedMove)
         {
            if(this._programmedCharMoveTarget == null || this._programmedCharMoveTarget != null && Point.distance(this._playerChar.position,this._programmedCharMoveTarget) <= (0x7ED90C9B ^ 0x2444F53D ^ -1798076479 ^ -833716636))
            {
               this._dbf22fe5130730391ec889be();
            }
         }
      }
      
      protected function _dbf22fe5130730391ec889be() : void
      {
         var _loc1_:int = -662942839 ^ -781684744 ^ 0x6B5BA290 ^ -1850246345;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (0x6DEED54F ^ 0x248D73A3 ^ 0x189983DE ^ -1576871707))
            {
               case 0:
                  if(this._d09fb02794aa524ffc3a03f0)
                  {
                     _loc1_ = -1873620500 ^ -514700504 ^ 0x2AD48ED4 ^ -1473451579;
                  }
                  else
                  {
                     _loc1_ = 0x536C0A5A ^ -1331950573 ^ -699677303 ^ -968671725;
                  }
                  break;
               case 1:
                  this._playerChar.programmedMove = false;
                  this._programmedCharMoveTarget = null;
                  if(this._programmedCharMoveTargetNPC != null)
                  {
                     _loc1_ = 0x7B400481 ^ 0x4262268A ^ 0x545FABC0 ^ -1635421153;
                  }
                  else
                  {
                     _loc1_ = -621881414 ^ 0x3342EB87 ^ 0x658190AC ^ 0x7FD55146;
                  }
                  break;
               case 2:
                  this._d09fb02794aa524ffc3a03f0 = false;
                  this._playerChar._9ec5ae7ccbeebf37b003f58d(true);
                  GameSwf.instance._8baab790e59e91e8d64bc4d2(this._4d4f409df8c680101da035af,this.locationModel.id);
                  _loc1_ = -2049932939 ^ -1251114943 ^ 0x5C6B40A8 ^ -1624327089;
                  break;
               case 3:
                  this._programmedCharMoveTargetNPC.onClick();
                  this._programmedCharMoveTargetNPC = null;
                  _loc1_ = 0x64DFAAC5 ^ -309627710 ^ 0x199E7A0C ^ 0x633259D8;
                  break;
               case 4:
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function _5513f64fde1a68f3d5363425() : void
      {
         var _loc1_:Point = null;
         var _loc2_:_a5e6911f85306c220b8b5d78 = this._locationLayersBase._76e3d85dd243e353ed6e13fb(this._playerChar.position.x,this._playerChar.position.y);
         if(this.declineEntrence)
         {
            this._16bdb56d599c22bb9eebc6e3(new Point(this._playerChar.position.x,this._playerChar.position.y + _4f49ffe204945c5f9d89628d));
            this.declineEntrence = false;
         }
         else if(this.locationModel.isSublocation && !this._176488275d0126f7d3b68d77)
         {
            var _temp_3:* = §§findproperty(Point);
            var _temp_2:* = 0x55282DFE ^ -604099021 ^ 0x41C01153 ^ -820637026;
            _loc1_ = new Point(_temp_2,_temp_2);
            if(this.locationModel.id == (-1994470426 ^ -470835781 ^ 0x0488150C ^ 0x6E794357))
            {
               _loc1_.y = -1654783665 ^ -932592402 ^ -1713009096 ^ 0x332DB40B;
            }
            else if(this.locationModel.id == (-343411998 ^ -1913380599 ^ -1661478488 ^ -92009918))
            {
               _loc1_.y = -342054921 ^ -62973089 ^ -220140649 ^ 0x1ABCA807;
            }
            else if(this.locationModel.absoluteId == _24fc30cfc3c855ea21a231e8.SUBLOCATION_7_LOST_VALLEY.id)
            {
               _loc1_.x = 0x288F5543 ^ -1797707347 ^ 0x4733A300 ^ 0x049A2072;
            }
            else
            {
               _loc1_.y = -_bdf6a61486dbdd813e7ddb64;
            }
            this._176488275d0126f7d3b68d77 = true;
            this._8936c2523e5e9c8d1ed9b18d = _loc2_;
            this._16bdb56d599c22bb9eebc6e3(new Point(this._playerChar.position.x + _loc1_.x,this._playerChar.position.y + _loc1_.y));
         }
         else if(_1214a9b742372ed027fb8081._3b81f858520190d56d537e5a(_loc2_,this._8936c2523e5e9c8d1ed9b18d))
         {
            this._8936c2523e5e9c8d1ed9b18d = _loc2_;
            if(_loc2_ != null)
            {
               this._4c082e570fc86b639e8f162b = _loc2_;
            }
            if(this._8936c2523e5e9c8d1ed9b18d != null && this._playerMakeAnyMove)
            {
               this._8baab790e59e91e8d64bc4d2(this._8936c2523e5e9c8d1ed9b18d.id);
            }
            else if(this._8936c2523e5e9c8d1ed9b18d != null)
            {
               if(this._8936c2523e5e9c8d1ed9b18d.id == (-1863423448 ^ -81069105 ^ 0x1189C16F ^ 0x7A4D508C))
               {
                  if(this._charList.hasOwnProperty(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ცဒၿၞဵႋჵႳ့ედქုႭႎႰ","ၧဎ၎ဢဒქვဈ။ဎსႽၦ၅ၻှ")))
                  {
                     this._programmedCharMoveTarget = _df94e30eb1892f6de3cee1e1;
                  }
               }
               else if(this._8936c2523e5e9c8d1ed9b18d.id == (0x019A0341 ^ -69108692 ^ -457997650 ^ 0x1EC8FCEF))
               {
                  this._programmedCharMoveTarget = _86273012e2f97048df6aa38d;
               }
               else if(this._8936c2523e5e9c8d1ed9b18d.id == (-2015083572 ^ -1622243121 ^ -878694314 ^ -754255163))
               {
                  this._programmedCharMoveTarget = new Point(0x4DB787B2 ^ 0x3A7B12B3 ^ 0x134A2A1C ^ 0x6486B3E5,0x268E9D19 ^ 0x2853DEB0 ^ -1461656645 ^ -1505910452);
               }
               else
               {
                  this._programmedCharMoveTarget = _271e25a1154071c80aa4c4f2[this._8936c2523e5e9c8d1ed9b18d.id - 1];
               }
               this._16bdb56d599c22bb9eebc6e3(this._programmedCharMoveTarget);
            }
         }
      }
      
      private function _06a98109c207c2409c450b3a() : void
      {
         if(this._locationLayersBase == null || this._playerChar == null)
         {
            return;
         }
         var _loc1_:_55043b34818a7b88d28e92ef = this._locationLayersBase._45958c320bd5b6aee346e3fb(this._playerChar.graphic.x,this._playerChar.graphic.y,-1803855830 ^ 0x2A14EC82 ^ -1305365274 ^ 0x0C5E004A);
         if(_loc1_ != null)
         {
            this._5a583a56fefaf9aa3a7186be(_loc1_);
         }
      }
      
      private function _5a583a56fefaf9aa3a7186be(param1:_55043b34818a7b88d28e92ef) : void
      {
         _3a8a2602dcf9bf49b62e62af.play(_3a8a2602dcf9bf49b62e62af.SFX_060_UI_Fish_coin);
         var _loc2_:_7cc6184a6a6df90ac01c6c08 = _7cc6184a6a6df90ac01c6c08(param1.data);
         var _loc3_:_a5c3dbdfbeb709a5bf92d27c = new _a5c3dbdfbeb709a5bf92d27c(_loc2_.position.x,_loc2_.position.y);
         _dfa25706e58a240c1e33e5c6.locationExtension._d7d961e1d4a5147011f55ea8(_loc3_);
         this._locationLayersBase._657d465ecebbecc9c5a079a3(param1);
         if(this._locationLayersBase.bobsMinigameFishCoinsLength == (0x1F4A325F ^ 0x0F595BC8 ^ -152218212 ^ -419546101))
         {
            this._bb8b67d560c5a6f6b28879c9();
         }
      }
      
      private function _0deaa0976feee5c20491660d() : void
      {
         if(this._locationLayersBase == null || this._playerChar == null)
         {
            return;
         }
         var _loc1_:_55043b34818a7b88d28e92ef = this._locationLayersBase._68cdea0efa6f5d7587006336(this._playerChar.graphic.x,this._playerChar.graphic.y,0x25529288 ^ 0x9A65F8 ^ -1107571702 ^ -1741472898);
         if(_loc1_ != null)
         {
            this._033bfd9c940f465a931ad9f2(_loc1_);
         }
      }
      
      private function _9324bcee8776ca834699e0fe() : void
      {
         if(this._playerChar == null || this._playerChar.raft != null || this._playerChar.boat != null || this._playerChar.moveStrategy is _600d447c132e71fe3abc23ea || this._playerChar.isFreezed)
         {
            return;
         }
         var _loc1_:int = getTimer();
         if(this._playerChar._c499c42f6332219f0ae96de9())
         {
            if(_loc1_ - this._2ec9a25820f745b3ec49d8d9 > this._6a1ab234df5b401d2bd2da30)
            {
               this._2ec9a25820f745b3ec49d8d9 = _loc1_ + (0x2FDE6BD2 ^ -34195303 ^ -2109957944 ^ 0x5014CB86) * (0x2E49D72D ^ -1598109887 ^ -1507698748 ^ 0x28D54440);
               this._playerChar._af07cf345935b141205980c7();
            }
         }
         else
         {
            this._2ec9a25820f745b3ec49d8d9 = _loc1_;
         }
      }
      
      public function _e798edbef5a905a5127029d4(param1:Boolean = false) : void
      {
         var _loc2_:_eb33c79ced81d8f5ac0ea91d = null;
         if(this._playerChar == null)
         {
            return;
         }
         for each(_loc2_ in this._70282fdd6927855eeb8ba3f7)
         {
            _loc2_._cef954975145aca3fbaac5c0(this._playerChar.graphicPosition,param1);
         }
      }
      
      private function _feb72052ac8150e95cef4ce8() : void
      {
         var _loc1_:_08c120b706560fce9302bcab = null;
         var _loc2_:int = -1401076763 ^ 0x1A206617 ^ -1583349656 ^ 0x17FD259A;
         var _loc3_:_93801b1eb0ddeaa9f8a99f9f = null;
         if(this._locationLayersBase == null)
         {
            return;
         }
         if(this._locationLayersBase.wallButtonEnters.length > (-1609574403 ^ -454751847 ^ -1966007277 ^ -834944393))
         {
            _loc2_ = 0x6C06F4FB ^ -949520812 ^ -524226356 ^ 0x4BA17263;
            for each(_loc3_ in this._locationLayersBase.wallButtonEnters)
            {
               _loc3_.activatedBySomebody = false;
            }
            for each(_loc1_ in this._charList)
            {
               for each(_loc3_ in this._locationLayersBase.wallButtonEnters)
               {
                  if(_loc3_.hitTestPoint(_loc1_.position.x,_loc1_.position.y))
                  {
                     if(!_loc3_.activatedBySomebody)
                     {
                        _loc3_.activatedBySomebody = true;
                        _loc2_++;
                     }
                  }
               }
            }
            for each(_loc3_ in this._locationLayersBase.wallButtonEnters)
            {
               _loc3_.activated = _loc2_ == this._locationLayersBase.wallButtonEnters.length || _loc2_ > (-81476734 ^ 0x7FD9E23C ^ 0x2243B1B9 ^ -1497460730);
               _loc3_.update();
            }
            if(_loc2_ == this._locationLayersBase.wallButtonEnters.length || _loc2_ > (-1377288969 ^ -421816079 ^ -421166962 ^ -1378474871))
            {
               if(this._locationLayersBase.specialWall != null)
               {
                  this._locationLayersBase.specialWall.open();
               }
            }
            else if(this._locationLayersBase.specialWall != null)
            {
               if(this._locationLayersBase.specialWall.close())
               {
                  for each(_loc1_ in this._charList)
                  {
                     this._173d82b8b74a9ed17c378e50(_loc1_);
                  }
               }
               if(this.locationModel.id == (-399321423 ^ 0x30147696 ^ -1501759034 ^ 0x7E5A59E8))
               {
                  if(this._b24937139cc44ffe53f7fc23(this.player.position.x,this.player.position.y,this.player) && _loc2_ < this._locationLayersBase.wallButtonEnters.length && _loc2_ <= (-1290443127 ^ 0x55EBB976 ^ 0x357DC4AC ^ -746382510))
                  {
                     Cc.error(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("းၑၩဨႤ჏ဆ့უჩၒအဍჱႀ၂န၊ზႉႢၓჳმ၃်ၵ၀პჽ၏Ⴆၥၾံႃჾშ჻Ⴭჱჺႚရႚეၺ၇ၣႬၗ၅ႀჟ႘წၸჁ႗ყ႙႐၌ႆၒ၁၏ေႄၼၽႵ჉၅ၝჰၨ၏ၺႳႛႄဍဒရჹႷ၉","჻ဢၾႶმျ၌Ⴟ჌ႺၽႢၶკჱၚ") + app.user.username + _95da7f1147c669197db81295._8f4866de82b7339154180ecb("勇勧刘勥劒分剷劀剚别刺劬势剗勺劆剳勮刟劌劷剝剅剚剦劆剞力勭剡剀剘剅劗劓剞勠勯","削剀列切勆勊勓剿劒勥勍劬助刮刈勅") + _loc2_ + _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ႛၱငჂႠ႟ႍ၀၉ၢၰ၄ჷၜ႑၄ၧဿၮဆတႹ၈გဢဿჹႵოპႂ႓ცႲႥჹ၀ၽႼခႨႣးၡဣရကၙႮ၀ტ်ၒჽჿმႮჇ၂ჹ၆ႮჀ်ნ၊ၱ႖ဉႄႳစၻ၃","იလჱ჏ၑစၧုၷე႟ၐჷႄჅ၈") + this._locationLayersBase.specialWall + _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捯捹揻挈揧捶挍捖捰掕掊掘掳挹揈捨捔揽揘掖掮揜掃按掀捯掚捝排捧捥捓掘捜掳握挑捶挤掵捒揙捈捞捂挍揩捇挺挳挸捃揕捏掺掘挢挎挢揥提掙挂捇挳掯挔探损挸揺捐揁掓挥捩挹掙掣捻挍揱捾挟捛挽捓提捣挿挄挹掇挬挴挚","挈掑捘挣揑挹捄掭捐挗挾捱挫掽揭掰") + this._locationLayersBase.wallButtonEnters.length);
                     GameSwf._6b2ea987f29b60cd755db2f5(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挿挄捧揶挶揌描揱掖揅挼掿换掸揥揨揌捂接捷捔挻挄挋掍揶捻挓捥掖揜掰捏掕捒揫掂捉捪揈掵捒揚掇","挜捦掜揯揦揎挋掄捣捧挩揯挢揖挕控"));
                  }
               }
            }
         }
      }
      
      private function _6e89154aaa15ef7683897845(param1:_08c120b706560fce9302bcab) : void
      {
         var _loc2_:int = -2136859536 ^ -1971138042 ^ 0x465312DF ^ -1784044005;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (-1628795644 ^ 0x055ADC3C ^ -868670580 ^ -1907161082))
            {
               case 0:
                  if(!this._b24937139cc44ffe53f7fc23(param1.position.x,param1.position.y,param1))
                  {
                     _loc2_ = -2038944256 ^ 0x313CE8A0 ^ 0x73BC636F ^ 0x1D22DF7C;
                  }
                  else
                  {
                     _loc2_ = -415519565 ^ -151358930 ^ 0x7CC428C9 ^ -1260417820;
                  }
                  break;
               case 1:
                  return;
               case 2:
                  param1.position.x = _b65bd877c5a54b0b5afcdeba.x;
                  param1.position.y = _b65bd877c5a54b0b5afcdeba.y;
                  param1._6cafef5908dd0ab8c7a3e877();
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      protected function _173d82b8b74a9ed17c378e50(param1:_08c120b706560fce9302bcab) : void
      {
         var _loc2_:int = 0x3BB4125E ^ -1710921023 ^ -464726569 ^ -60464539;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x2B01F0D3 ^ -377314887 ^ 0x424FE4FA ^ 0x39547ABF))
            {
               case 0:
                  param1.position.x = _f7cdcf1b6ec2629b8133218d.x;
                  param1.position.y = _f7cdcf1b6ec2629b8133218d.y;
                  param1._6cafef5908dd0ab8c7a3e877();
                  return;
               case 1:
                  return;
               case 2:
                  if(!this._b24937139cc44ffe53f7fc23(param1.position.x,param1.position.y,param1))
                  {
                     _loc2_ = -2105434637 ^ -897558808 ^ -924099567 ^ 0x39725824;
                  }
                  else
                  {
                     _loc2_ = 0x78D37450 ^ 0x1A4A0540 ^ -672659163 ^ 0x0CE9B71A;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function removeShell(param1:_55043b34818a7b88d28e92ef) : void
      {
         this._locationLayersBase.removeShell(param1);
      }
      
      private function _bc9a1105a156e998e40981b2() : void
      {
         var _loc1_:_55043b34818a7b88d28e92ef = this._locationLayersBase._9ec0d0ddb6a21e008ac7809c(this._playerChar.graphic.x,this._playerChar.graphic.y,0x060EC3F4 ^ -532030783 ^ 0x407AB5F7 ^ -1505907514);
         if(_loc1_ == null || !this.locationModel.hasFishbox)
         {
            return;
         }
         var _loc2_:int = getTimer();
         if(this._c1412e6d2ea38dc7d44b4a85 == (0x4FFF6058 ^ 0x4C426073 ^ -1608786170 ^ -1549344979) || this._c1412e6d2ea38dc7d44b4a85 - _loc2_ > (-170883231 ^ 0x222936BA ^ 0x3F8D660A ^ -394994583))
         {
            _dfa25706e58a240c1e33e5c6.locationExtension._c56c77ab235d896dae852856(_67282af25befe9778e5c8dd1.FISHBOX.id,_a1e0e2bf54cc08cc6a7d5b7c.ER_FISHBOX);
            this._c1412e6d2ea38dc7d44b4a85 = _loc2_;
         }
      }
      
      private function _033bfd9c940f465a931ad9f2(param1:_55043b34818a7b88d28e92ef) : void
      {
         _3a8a2602dcf9bf49b62e62af.play(_3a8a2602dcf9bf49b62e62af.SFX_061_UI_Seashell_collect);
         var _loc2_:_90e1ac06a8e81403c4b24e0b = _90e1ac06a8e81403c4b24e0b(param1.data);
         var _loc3_:_a5c3dbdfbeb709a5bf92d27c = new _a5c3dbdfbeb709a5bf92d27c(_loc2_.position.x,_loc2_.position.y);
         _dfa25706e58a240c1e33e5c6.locationExtension._22fe78e089646fa26d02d454(_loc3_,this.locationModel.id);
         this._locationLayersBase._2c18518c5908ae6b6df3be2d(param1);
      }
      
      protected function _8baab790e59e91e8d64bc4d2(param1:int) : void
      {
         var _loc2_:String = null;
         var _loc3_:_ba120ae720a391732e866217 = null;
         var _loc4_:_86d667cb399288f9f148889d = null;
         if(this.locationModel.locationConfig == _24fc30cfc3c855ea21a231e8.LOCATION_8_SEAGULL_HARBOR)
         {
            _loc2_ = _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("႑ჯမီဃၪဇ၈ယჇႺဲქ၃ၚၑဣာ၍ႊၣထ","႗ၝဪჶ၉ჸၱၥႻဌဴၩჹၟၾၛ") + param1;
            if(this._charList.hasOwnProperty(_loc2_))
            {
               _loc3_ = this._charList[_loc2_];
               this._programmedCharMoveTarget = new Point(_loc3_.position.x - (0x4A343BA3 ^ -118070565 ^ 0x4334846A ^ -235479776),_loc3_.position.y + (0x02845954 ^ 0x62F2CBD7 ^ 0x5F690F80 ^ 0x3F1F9D0C));
               this._programmedCharMoveTargetNPC = _loc3_;
            }
            if(this._programmedCharMoveTarget != null && this._playerChar.moveStrategy is _600d447c132e71fe3abc23ea == false)
            {
               this._playerChar.programmedMove = true;
               this._playerChar.onMouseClick(this._programmedCharMoveTarget.x,this._programmedCharMoveTarget.y);
            }
         }
         else if(Boolean(param1 == (0x2D6798B9 ^ 0x10BACCA8 ^ -50897329 ^ -1054209441)) && Boolean(this._de3b4ba3fb31ba1b44244716[_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挄挕揊掜揔捺挮揭揿掹挤揗掗挻揞掜揽挰掟挑挔捻揤捋捆挥掭揅","換挨挓据授捳掀捠捿掌捌捎掗掕揇捪")]) || Boolean(param1 == (-1666569032 ^ -1737231861 ^ -497902946 ^ -427080663)) && Boolean(this._de3b4ba3fb31ba1b44244716[_95da7f1147c669197db81295._8f4866de82b7339154180ecb("初刘動劬剪劜剕剸剆剒剌勷勿別劦剦勩别到劰剪删","勚勃勼剀分劊勖剭前剉劄势勸剮劊剗")]))
         {
            if(this._charList.hasOwnProperty(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捿捰捲推揌揫揣掠捕挝掱挗挐捚捄援","捓捾掳揈挦捌捂掯挦掲揤据捉揢掉掺")))
            {
               this._programmedCharMoveTarget = _a5c956375a03799d620408b6;
               this._programmedCharMoveTargetNPC = this._charList[_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၚၭၠႴჵၻჵဲဖၙႍႃჅၓჇც","ဩမფႀႩႿၔၯ႒႒ဌၞသဆႴလ")];
            }
            if(this._charList.hasOwnProperty(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掜捅揄捕揑揳挘捝揱挑揓挭揩指持揣","掩揨揫捚掊揠掂挴挃捻挋挤掔捣掷捯")))
            {
               this._programmedCharMoveTarget = _df94e30eb1892f6de3cee1e1;
               this._programmedCharMoveTargetNPC = this._charList[_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揭揦揾接掑据掩揠捑捴捦挕挬挡捤揧","捅揀掷捾捥挽授挂掋掺捬捦揽掓挙捂")];
            }
            this._16bdb56d599c22bb9eebc6e3(this._programmedCharMoveTarget);
         }
         else if(param1 == (-1077553796 ^ 0x152A508D ^ 0x6D5D19F8 ^ -944595675))
         {
            this._16bdb56d599c22bb9eebc6e3(new Point(0x5A2D5C69 ^ -1750706838 ^ 0x4D3E6244 ^ -2135596997,-1628249255 ^ 0x4EAC4183 ^ -519163178 ^ 0x315090D0));
            GameSwf.instance._0bcd23177a136eba1c7dbe4f(app.user.username);
         }
         else if(param1 == (0x31A64743 ^ 0x0C4BEE3E ^ -403863938 ^ -637522285))
         {
            this._16bdb56d599c22bb9eebc6e3(this._programmedCharMoveTarget);
            _loc4_ = app.dialogFactory._14fc4a71c40dcd70df2a53ac();
            _loc4_.show();
         }
         else if(param1 != (0x6F8F0058 ^ -1052202707 ^ -1828076868 ^ -1036938186))
         {
            this._d09fb02794aa524ffc3a03f0 = true;
            this._4d4f409df8c680101da035af = param1;
            this._16bdb56d599c22bb9eebc6e3(_8facf294cd8d9f214761d93f[param1 - 1]);
         }
         else
         {
            if(this._playerChar != null)
            {
               this._playerChar._9ec5ae7ccbeebf37b003f58d(true);
            }
            GameSwf.instance._8baab790e59e91e8d64bc4d2(param1,this.locationModel.id);
         }
      }
      
      protected function _16bdb56d599c22bb9eebc6e3(param1:Point) : void
      {
         var _loc2_:int = 0x513E0566 ^ -1900124134 ^ 0x6C59570E ^ 0x500FACB4;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x23E7BBD8 ^ 0x01C5B56D ^ 0x6B0854B3 ^ -1426273086))
            {
               case 0:
                  this._programmedCharMoveTarget = param1;
                  this._playerChar.programmedMove = true;
                  this._playerChar.onMouseClick(this._programmedCharMoveTarget.x,this._programmedCharMoveTarget.y);
                  return;
               case 1:
                  return;
               case 2:
                  if(param1 == null)
                  {
                     _loc2_ = -1229929240 ^ 0x5DBA16C0 ^ 0x03BCF01F ^ 0x0B60B4F2;
                  }
                  else
                  {
                     _loc2_ = -383129688 ^ -1168528867 ^ -708406874 ^ 0x65604AD7;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function moveCameraToChar(param1:Number) : void
      {
         var _loc2_:Rectangle = null;
         var _loc3_:int = -1006129876 ^ 0x7C796C00 ^ -306187947 ^ 0x55C13079;
         var _loc4_:int = 0x3424A95F ^ -1350732801 ^ -1356461480 ^ 0x347FD0F8;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Rectangle = null;
         if(this._locationLayersBase != null)
         {
            _loc2_ = this._locationLayersBase.scrollRect;
         }
         if(this._playerChar != null && _loc2_ != null)
         {
            _loc3_ = scrollRect.width / (-1551147431 ^ -1160761052 ^ 0x3D2DB12A ^ 0x2476DE55);
            _loc4_ = scrollRect.height / (0x6FD7CD4D ^ -1414316875 ^ 0x3D88834D ^ -101944649);
            _loc5_ = 0x63025B1E ^ -517717480 ^ 0x29514E30 ^ -1418242250;
            if(this._playerChar.graphic.x > _loc3_ && this._playerChar.graphic.x < this._locationLayersBase.fullWidth - _loc3_)
            {
               _loc5_ = this._playerChar.graphic.x - (_loc2_.x + _loc3_);
            }
            else if(_loc2_.x > (0x6718F22E ^ 0x160FE117 ^ -290209930 ^ -1616597937) && _loc2_.x + _loc2_.width < this._locationLayersBase.fullWidth)
            {
               _loc5_ = this._playerChar.graphic.x - (_loc2_.x + _loc3_);
            }
            _loc6_ = -406754999 ^ -1457970701 ^ -1375121051 ^ -523167265;
            if(this._playerChar.graphic.y > _loc4_ && this._playerChar.graphic.y < this._locationLayersBase.fullHeight - _loc4_)
            {
               _loc6_ = this._playerChar.graphic.y - (_loc2_.y + _loc4_);
            }
            else if(_loc2_.y > (0x7981B2C6 ^ 0x7376B862 ^ -1520321528 ^ -1349077332) && _loc2_.y + _loc2_.height < this._locationLayersBase.fullHeight)
            {
               _loc6_ = this._playerChar.graphic.y - (_loc2_.y + _loc4_);
            }
            if(_loc5_ * _loc5_ + _loc6_ * _loc6_ > (0x4FC982A6 ^ 0x480D2517 ^ -1713504662 ^ -1642506193) * (-1231692659 ^ 0x72ADA539 ^ 0x6A2F7065 ^ -1374222299))
            {
               if(this._playerChar != null && _loc2_ != null)
               {
                  _loc2_.x = Math.round(limit(this._playerChar.graphic.x - _loc3_,-655269938 ^ -1772196120 ^ 0x623F3512 ^ 0x2C900434,this._locationLayersBase.fullWidth - scrollRect.width));
                  _loc2_.y = Math.round(limit(this._playerChar.graphic.y - _loc4_,-1940500551 ^ -1875409398 ^ -1827985629 ^ -1888817520,this._locationLayersBase.fullHeight - scrollRect.height));
                  _loc2_.width = scrollRect.width;
                  _loc2_.height = scrollRect.height;
                  _loc2_ = this.inspectRectByLocationLayersSize(_loc2_);
                  this._locationLayersBase.scrollRect = _loc2_;
                  _08c120b706560fce9302bcab.mapOffset.x = _loc2_.x;
                  _08c120b706560fce9302bcab.mapOffset.y = _loc2_.y;
               }
            }
            else
            {
               _loc5_ = int(_loc5_ * (_433075a5d49397e40222eeae._9417d5d828724209ec5cfbb1("၌ဒႽჾၔჂჁဩჷႈၯჱႂქ်ჳဂႬၘၑჇၝჀဓ","ဥ႑ဇს႟၀Ⴃၾ႑ႈჃဖႸဎ჻Ⴏ") * param1));
               _loc6_ = int(_loc6_ * (_95da7f1147c669197db81295._6371735dc9287bd2d9618c1e("剢剫剖刱分剖力劢勃剪剽勅剭劄勖劅剄剔力勒剿剡刧剠","削勄副删勵刼剚勒刍动劣剜勅划创刖") * param1));
               if(_loc5_ != (-928949552 ^ -294073109 ^ -1485149192 ^ -2119959101) || _loc6_ != (0x1AE2EAD3 ^ -435286230 ^ 0x35E26D3D ^ -921794364))
               {
                  _loc2_.x += _loc5_;
                  _loc2_.y += _loc6_;
                  _loc2_.x = Math.round(limit(_loc2_.x,-1214595203 ^ -1345902424 ^ 0x605C2CF4 ^ 0x7801BB21,this._locationLayersBase.fullWidth - scrollRect.width));
                  _loc2_.y = Math.round(limit(_loc2_.y,-1532950092 ^ -1245792619 ^ -1696393721 ^ -1946375898,this._locationLayersBase.fullHeight - scrollRect.height));
                  _loc2_ = this.inspectRectByLocationLayersSize(_loc2_);
                  this._locationLayersBase.scrollRect = _loc2_;
                  _08c120b706560fce9302bcab.mapOffset.x = _loc2_.x;
                  _08c120b706560fce9302bcab.mapOffset.y = _loc2_.y;
               }
            }
         }
         if(this._locationLayersBase != null && this._locationLayersBase.scrollRect != null)
         {
            _loc7_ = this._locationLayersBase.scrollRect;
            _08c120b706560fce9302bcab.mapOffset.x = _loc7_.x;
            _08c120b706560fce9302bcab.mapOffset.y = _loc7_.y;
         }
      }
      
      protected function onClick(param1:MouseEvent) : void
      {
         if(this._playerChar == null || this._playerChar.programmedMove || this._playerChar.moveStrategy is _709a8761c08236d1b5935ace)
         {
            return;
         }
         var _loc2_:int = stage.mouseX - this._locationLayersBase.x;
         var _loc3_:int = stage.mouseY - this._locationLayersBase.y;
         if(this._locationLayersBase.topPlayerBoard != null && this._locationLayersBase.topPlayerBoard.hitTestPoint(stage.mouseX,stage.mouseY))
         {
            this._34b455ae0a65861b5f58c288();
         }
         else if(this._playerChar != null)
         {
            if(this._locationLayersBase.scrollRect != null)
            {
               _loc2_ += this._locationLayersBase.scrollRect.x;
               _loc3_ += this._locationLayersBase.scrollRect.y;
            }
            if(_loc2_ > this._locationLayersBase.fullWidth - SCREEN_PADDING)
            {
               _loc2_ = this._locationLayersBase.fullWidth - SCREEN_PADDING;
            }
            else if(_loc2_ < SCREEN_PADDING)
            {
               _loc2_ = SCREEN_PADDING;
            }
            this._playerChar.onMouseClick(_loc2_,_loc3_);
            this._1e8bb3fdea106107fa2df410 = true;
            this._d9b253c6d5056dbdbbd0406c = -1888959363 ^ 0x5267A796 ^ -1024435004 ^ 0x1FFF3F2F;
            this._playerMakeAnyMove = true;
         }
      }
      
      protected function _40cfc46185c9c16faa96dbce(param1:MouseEvent) : void
      {
      }
      
      override public function activate() : void
      {
         Cc.log(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剗剥剋劜劒刊劓刱勚劃剡剆劤勧勦劓勶劍判剅劺剠剳刼剀勇勵刌剻劾","則劸割勼剪刁劙剬創券剰刺剔剺劉剔") + this.toString());
         super.activate();
         try
         {
            _02fbe4cbe9e83f1b8c711799.addEventListener(this,GameSwf.charsManager,_d5eb1450a3d5966d0528acfe.UPDATE_CHAR_VIEW,this._a7dc0bd2fc0ec007d77f6abf);
            _02fbe4cbe9e83f1b8c711799.addEventListener(this,this.locationModel,_4986c362bed569a2ffb299b4.ADD_NEW_CHAR,this._7371a9ccf8daa02c1ef3521c);
            _02fbe4cbe9e83f1b8c711799.addEventListener(this,this.locationModel,_4986c362bed569a2ffb299b4.REMOVE_CHAR,this._17a63998f6557418ae0ce195);
            _02fbe4cbe9e83f1b8c711799.addEventListener(this,this.locationModel,_4986c362bed569a2ffb299b4.START_BOBS_MINIGAME,this._dd381d5dc7470dfac9ff5dd2);
            _02fbe4cbe9e83f1b8c711799.addEventListener(this,this.locationModel,_4986c362bed569a2ffb299b4.STOP_BOBS_MINIGAME,this._2bce46c297a8d83805f364a7);
            _02fbe4cbe9e83f1b8c711799.addEventListener(this,this.locationModel,_4986c362bed569a2ffb299b4.START_STEVE_MINIGAME,this._65e3d3d946ddf5e80cb4bf23);
            _02fbe4cbe9e83f1b8c711799.addEventListener(this,this.locationModel,_4986c362bed569a2ffb299b4.PUT_CHAR_TO_BOAT,this._3e5731a9b4a461191a6526d8);
            _02fbe4cbe9e83f1b8c711799.addEventListener(this,this.locationModel.weatherVariable,_720429110fd3cfc01812b5a0.CHANGE,this._1e24c77ca3acef4215a0a67a);
            _02fbe4cbe9e83f1b8c711799.addEventListener(this,this.locationModel,_4986c362bed569a2ffb299b4.LOAD_LOCATION_ITEMS,this._f6ddf9764ea83e3afcad3432);
            _02fbe4cbe9e83f1b8c711799.addEventListener(this,this.locationModel,_4986c362bed569a2ffb299b4.ADD_LOCATION_ITEM,this._153d63fcac60d53acac75bac);
            _02fbe4cbe9e83f1b8c711799.addEventListener(this,this.locationModel,_4986c362bed569a2ffb299b4.REMOVE_LOCATION_ITEM,this._4ca94c42702c397e9a70f6cf);
            _02fbe4cbe9e83f1b8c711799.addEventListener(this,this.locationModel,_4986c362bed569a2ffb299b4.ADD_FISHBOX,this._c48c1ae5d23d549b34aa3a33);
            _02fbe4cbe9e83f1b8c711799.addEventListener(this,this.locationModel,_4986c362bed569a2ffb299b4.REMOVE_FISHBOX,this._a39dca60d12687e374b88c53);
            _02fbe4cbe9e83f1b8c711799.addEventListener(this,this.locationModel,_4986c362bed569a2ffb299b4.DESTROY_FISHBOX,this._87b859317d2509510f2b3eba);
            _02fbe4cbe9e83f1b8c711799.addEventListener(this,this.locationModel,_4986c362bed569a2ffb299b4.UPDATE_SHELLS,this._42a6abd3286b2aab69e970d4);
            _02fbe4cbe9e83f1b8c711799.addEventListener(this,this.locationModel,_4986c362bed569a2ffb299b4.REMOVE_SHELL,this._338f57b50cc695db9bdc44b0);
            _02fbe4cbe9e83f1b8c711799.addEventListener(this,this.locationModel,_4986c362bed569a2ffb299b4.ADD_SHELL,this._7ad190fbf2d60501f2003495);
            _02fbe4cbe9e83f1b8c711799.addEventListener(this,this.locationModel,_4986c362bed569a2ffb299b4.ADD_DAILY_QUEST_FISHBONES,this._ec92874fbed80f580020c3ea);
         }
         catch(e:Error)
         {
            Cc.error(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勍别勒初划剄勭勂劲劦剅勚剦副勴劘剼劷劁勳剜劰剽剳分刅刲劊刐制刮刾刌副刐刞剠剤勝力勈励勉剴勾劅","刁勪初剁劲劅勔劷勑刪剸劋勍剁勑効"),e);
            Cc.error(e.getStackTrace());
            GameSwf._6b2ea987f29b60cd755db2f5(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捓捞据捹挀捩掤捠掌掓揫捯捐持挫揩捞挤挂挵掴捝挙捚","揔挀振捡挠捙揄挍挾挖掦提挸控揯揪"));
         }
         try
         {
            this._1ee49808a6a89f0d1448c34b();
         }
         catch(e:Error)
         {
            Cc.error(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揭掻挾捘捈挘捛捷掬控挗揙捫挔揑掦授揬捊挣掕掋揃挐換挣揾掸援捁揇掐捳掚挽挆挘挡掹揗掹掉挋捈掗揿捡援掴換挋掞挎捠","挲揍揔振描挔揄揓捡掣揪捰揯捿挧挕"),e);
            Cc.error(e.getStackTrace());
            GameSwf._6b2ea987f29b60cd755db2f5(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၰၳ၍აဨဒ჻ၸჀၔႈဦႥႸၫ჈Ⴌဠ႘ႃჾ႔Ⴜ჌","၍၃႔ცႈ႔ႪტထၺႼတရႯႢყ"));
         }
      }
      
      protected function _3b294245f08760a0082cd317() : void
      {
         var _loc1_:int = -546631030 ^ 0x0FB3CAB5 ^ -1015680895 ^ -675585468;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (-73869794 ^ -833605745 ^ 0x428BD8AD ^ -1286247476))
            {
               case 0:
                  if(this._e8d6af1ebb84f0dc72899def != null)
                  {
                     _loc1_ = -1565913551 ^ 0x34DF8FC0 ^ -1715784885 ^ -874973117;
                  }
                  else
                  {
                     _loc1_ = -1751438427 ^ 0x36286815 ^ 0x076D2F29 ^ 0x62C8266E;
                  }
                  break;
               case 1:
                  if(_f6f12dbbfbe7f740316e0e9f.dailyQuestsModel.prizeIsCollect)
                  {
                     _loc1_ = 0x429DB490 ^ 0x178E7FB9 ^ 0x68469E8C ^ -113041581;
                  }
                  else
                  {
                     _loc1_ = 0x57E2BE17 ^ -1553728914 ^ 0x7CB948E8 ^ 0x4C2E4662;
                  }
                  break;
               case 2:
                  this._playerChar.activate();
                  _loc1_ = -1092674537 ^ -244668850 ^ -1474825068 ^ 0x23B4043D;
                  break;
               case 3:
                  this._7fe05aca52f25fef392392be.enable();
                  _loc1_ = -221822953 ^ 0x06077D59 ^ 0x770013B3 ^ 0x47D66405;
                  break;
               case 4:
                  this._playerChar._6227fd5da1ce67d0b36a4f90();
                  _loc1_ = 0x3ADF8837 ^ -721293153 ^ 0x56545BD6 ^ 0x7D9C698B;
                  break;
               case 5:
                  _02fbe4cbe9e83f1b8c711799.addEventListener(this,this._4f263e9127f99fb7aefd6ff7,TimerEvent.TIMER,this._33a44bfb5cccebdd819e32c7);
                  this._9741dcd47f51b5e718ca1768();
                  _dfa25706e58a240c1e33e5c6.fscModel._93c85485e20e2accb736dfc6(UpdateResp,this.onUpdateResp);
                  _dfa25706e58a240c1e33e5c6.fscModel._93c85485e20e2accb736dfc6(EnterSublocationSuccessResp,this._97fd7c70b7ef7c4e5c6c8bef);
                  _dfa25706e58a240c1e33e5c6.fscModel._93c85485e20e2accb736dfc6(EnterRaftResp,this._49e6c12844f605c2b7200f06);
                  _dfa25706e58a240c1e33e5c6.fscModel._93c85485e20e2accb736dfc6(LeaveSublocationResp,this._79f02d413c7c681ecf3b2da6);
                  _dfa25706e58a240c1e33e5c6.fscModel._93c85485e20e2accb736dfc6(ResponseBoatEnter,this._43908ed30d4f1bb69ad87af4);
                  _dfa25706e58a240c1e33e5c6.fscModel._93c85485e20e2accb736dfc6(ResponseBoatMove,this._964e26b76ce8efe028f6e2ee);
                  _dfa25706e58a240c1e33e5c6.fscModel._93c85485e20e2accb736dfc6(ResponseBoatRelease,this._60e6d52634e93dd41012a977);
                  _dfa25706e58a240c1e33e5c6.fscModel._93c85485e20e2accb736dfc6(DamianActionResp,this._284e54d12e3511abe03d2109);
                  _dfa25706e58a240c1e33e5c6.fscModel._93c85485e20e2accb736dfc6(ResponseNpcTalk,this._fc86f5b236d37b4635944a87);
                  app.user._c2cb288bf8bd6f749d06eb93(this._7f2e0f40249ce6e0c17b1ea8);
                  app.user._b4cae3abe96a2089ccbc80fc(this._9bb12e0d2c599c0be9aaa19e);
                  app.user._f1f7d7e8bb164ad4b97c63c5(this._e8b84071d83d229165347da7);
                  app.user._e878cd7d34520b4378b34fd4(this._66696899c075bd0b97315c7d);
                  app.user._b3e056cb7e4f2dd0ed40dbfc(this._fc3bac2b6c8cddae8e8fe4fd);
                  app.user._d5dbaa88e5fe97f0640d5566(this._13f2fb4c0a00143c187eda0a);
                  this.fishcoins = app.user.fishcoins;
                  this.fishbucks = app.user.fishbucks;
                  this.level = app.user.level;
                  this._7bb43154089445b88b02842d(app.user.experience,true);
                  this._locationLayersBase.activate();
                  _92d7656ddc3c3da810e99c74.getInstance()._57ad3faeff9ca92cbf9fe447(_34a2ba6ad978d976b8b0f5a4.ENTER_FRAME).add(this);
                  if(this._playerChar != null)
                  {
                     _loc1_ = -1709617995 ^ -902331032 ^ 0x79735640 ^ -313797265;
                  }
                  else
                  {
                     _loc1_ = -93921795 ^ 0x599E1935 ^ 0x74E07A78 ^ 0x130EF440;
                  }
                  break;
               case 6:
                  this._7fe05aca52f25fef392392be.disable();
                  _loc1_ = -358590236 ^ -2128066081 ^ 0x702A509F ^ -541848740;
                  break;
               case 7:
                  if(this._7fe05aca52f25fef392392be != null)
                  {
                     _loc1_ = 0x57BA1BCB ^ -399828759 ^ 0x5D01F173 ^ 0x2686B8A0;
                  }
                  else
                  {
                     _loc1_ = 0x6A4C292F ^ 0x70BF2EB0 ^ -979767232 ^ 0x1B7CBD27;
                  }
                  break;
               case 8:
                  _3a8a2602dcf9bf49b62e62af._11639b88cd148a430651d627(this.locationModel.absoluteId);
                  _3a8a2602dcf9bf49b62e62af._928d8ef94957d397f6c2888a(this.locationModel.absoluteId);
                  this._gui.activate();
                  this._a13e546963952b7eb0245537();
                  this.locationModel.floatInWaterManager.boats = this._locationLayersBase.boats;
                  return;
               case 9:
                  this._e8d6af1ebb84f0dc72899def.enable();
                  _loc1_ = 0x0D252037 ^ -1393008302 ^ -2102592600 ^ -412618694;
                  break;
               case 10:
                  Cc.log(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掉捣掫挕掹挏捄挴挦挜捐插提掔揄挱揧揧揞捷捀揳揨挛挱揎捐捣捌挮挲掞捜揔挂挕掗揍揟掤揵挼捜握捺捎","挅挩挟掉按捫挒掇捒插捣捇揓揌挰捨") + this.toString());
                  this._8cee8fcbcec66b9e75cc1132 = true;
                  Config.WATER_ANIMATION_EFFECT = true;
                  this._7880c59592be13e2600e79d7 = false;
                  this._playerMakeAnyMove = false;
                  if(this._playerChar != null)
                  {
                     _loc1_ = -1799197852 ^ -1662522985 ^ 0x52496930 ^ -1636130505;
                  }
                  else
                  {
                     _loc1_ = 0x568AB52A ^ 0x2A7C7ED3 ^ -53658359 ^ 0x442DBC05;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function _97fd7c70b7ef7c4e5c6c8bef(param1:EnterSublocationSuccessResp) : void
      {
         var response:EnterSublocationSuccessResp = param1;
         var energyData:Object = null;
         var sublocationModel:_5496d2d072c6e7a69d5dcae0 = this.locationModel as _5496d2d072c6e7a69d5dcae0;
         sublocationModel._ff7e8af48da5cd0dc61f3b71(response);
         if(response.hasDataProperty(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捂捋挰捍挷捋掷揑挴挹揢挧揶捋掐掩挻揎挜揲","掻掻掛揻挧揊揂揎捙捓捼掗挭挜挺捗")))
         {
            try
            {
               energyData = response.getJsonData(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၘჸဥႹဈဓ၏ရჁჯრတႡმჾၹჯၦၸႵ","လႊჺ၌ႅႝ႑გဳတၦၥၱႪზဓ"));
               this.energy = energyData.energy;
               this.energyRestoreLeftTime = energyData.incLeftSec;
               this.locationModel.wasLoadedFirstResp = true;
            }
            catch(e:Error)
            {
               Cc.error(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劚劏劃勾刟刉勗勠刜劻刌剻努勍划勐则勢剸勍効勝劫勀刾刂刹刄剚勬刦勹劭劢刬剎则刊刷剼劳剾勗剂制別劏劶加勆判副刅劢勺勔勄刔劽剟创剈剑刯勶勌刢刪劽剟刾劃剼券剢劼剃勠勼励","到勘别剫剘劍刺劮加剮劒刦刀劧则刿"));
               Cc.error(e.toString());
               Cc.error(e.getStackTrace());
            }
         }
         if(response.hasDataProperty(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揂揎挄捪挩揶捍挚掱挻挼捫挤捒揷掰挽掔掭揭挠推捦揹","捐捍揵掁揉挥掵揸援捨掱捄捙揜捋挃")))
         {
            this._ba95075eaca30ea342228c58(response.getJsonData(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揿揽挙捃挼捛揇捍挲揙挅措掟挴挊捚捴掔挎掎捭掽捀掌","捜捖揷揃挅掎揤挅捑挡掆挼挮挬捥捔")));
         }
         this._90b5be3578aaabbf3c2fad77(response,_01cf9a78594a0bb30b57b0c3.EBT_MAGIC_WATCH);
         this._90b5be3578aaabbf3c2fad77(response,_01cf9a78594a0bb30b57b0c3.EBT_LUCKY_POTION);
         this._90b5be3578aaabbf3c2fad77(response,_01cf9a78594a0bb30b57b0c3.EBT_SHINY_POTION);
         this._90b5be3578aaabbf3c2fad77(response,_01cf9a78594a0bb30b57b0c3.EBT_EXP);
         this._90b5be3578aaabbf3c2fad77(response,_01cf9a78594a0bb30b57b0c3.EBT_RADAR);
         this._90b5be3578aaabbf3c2fad77(response,_01cf9a78594a0bb30b57b0c3.EBT_POWER_BOOSTER);
         try
         {
            this._0b905154637e928500b2f706(response);
         }
         catch(e:Error)
         {
            Cc.error(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挮掉挊挊捻掻捶挲挷揧捷挍捂挴挂捒捗捭掬掉捯揻掾揎掌揵挏挋揕挛掜掞捶捶掴揁掃捋掍捃揫措揠掛挝捰挳捷捲揰掍挭捣捋揊捂描揯捣挒挑挴挖揣揭损挊捇接挬挺挷採掲捠挹揙损捻揚揗捾掫据指掑掵挅捕挺捝揶掬援掆挅捄揀揵掳探揩掇掌掎掭挌掕捠掸","揗掩掻掷捹掾揢挛捪捀掭挪捛挿捬揑"));
            Cc.error(e.toString());
            Cc.error(e.getStackTrace());
         }
      }
      
      private function _90b5be3578aaabbf3c2fad77(param1:ResponseWithData, param2:String) : void
      {
         var _loc3_:Object = _1214a9b742372ed027fb8081.tryGetBoosterData(param1,param2);
         if(_loc3_ == null)
         {
            _1214a9b742372ed027fb8081._fd0a4d45949f9db30b86f81a(param1,param2);
            return;
         }
         app.user._be073f824a93cbbb7ebe9cd5(param2,true);
         var _loc4_:int = Debug.assertProperty(_loc3_,_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ႾၴႩႶၗჄჺဉ၉ႜႱႚဦႠူၘ","ၵႇၖჂდဩჩႥဥ၆ၻုჲသ၈Ⴎ"));
         var _loc5_:int = Debug.assertProperty(_loc3_,_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("႗ဩჰაၙႧဪၴ႔ၤီႇဤႆ႑႙ုႄၹ့ဒၑႸႥငငဝპႺက","჏ှ႘ၴმဒ჈ႇႃႁႆცჾဵႎဣ"));
         switch(_loc4_)
         {
            case _67282af25befe9778e5c8dd1.ID_SHINY_POTION_1:
               §§push(0x435B6D21 ^ 0x62F4AD8E ^ -213432859 ^ -756513462);
               break;
            case _67282af25befe9778e5c8dd1.ID_SHINY_POTION_2:
               §§push(0x6D6E07D2 ^ 0x56B65F1A ^ 0x72F3D815 ^ 0x492B80DC);
               break;
            case _67282af25befe9778e5c8dd1.ID_EXP_BOOSTER_X2:
               §§push(0x66DEB26C ^ 0x472BF06E ^ -1070493406 ^ -507194590);
               break;
            case _67282af25befe9778e5c8dd1.ID_EXP_BOOSTER_X4:
               §§push(0x466FC223 ^ -1181320252 ^ 0x3F021286 ^ -1057248414);
               break;
            case _67282af25befe9778e5c8dd1.ID_MAGIC_WATCH:
               §§push(0x55FA46A4 ^ -646224912 ^ -1044386352 ^ 0x4D3EC880);
               break;
            case _67282af25befe9778e5c8dd1.ID_LUCK_POTION_2:
               §§push(-1193559692 ^ 0x3EC89B53 ^ -1035867840 ^ 0x4452CB62);
               break;
            case _67282af25befe9778e5c8dd1.ID_LUCK_POTION_1:
               §§push(-1685876905 ^ 0x977C0F ^ -293020155 ^ 0x759C2D5B);
               break;
            case _67282af25befe9778e5c8dd1.ID_GREEN_FISH_RADAR:
               §§push(-250916629 ^ -1715647313 ^ -181658390 ^ -1650851671);
               break;
            case _67282af25befe9778e5c8dd1.ID_WHITE_FISH_RADAR:
               §§push(0x6693A05C ^ 0x0DB7D902 ^ 0x02724553 ^ 0x69563C05);
               break;
            case _67282af25befe9778e5c8dd1.ID_BLUE_FISH_RADAR:
               §§push(-119564671 ^ 0x74568E0A ^ -575134365 ^ 0x51313DE1);
               break;
            case _67282af25befe9778e5c8dd1.ID_POWER_BOOSTER_1:
               §§push(0x11BF5438 ^ 0x38D424DE ^ 0x6E4E0C2C ^ 0x47257CC0);
               break;
            case _67282af25befe9778e5c8dd1.ID_POWER_BOOSTER_2:
               §§push(0x1AAAAA74 ^ -1357564734 ^ 0x05164974 ^ -1331046455);
               break;
            default:
               §§push(0x18940B1C ^ 0x67B68494 ^ -365524453 ^ -1793849953);
         }
         switch(§§pop())
         {
            case 0:
            case 1:
               app.user.currentShinyPotionTimeMark = new _020eb172ea5f58203a09fdb5(_loc5_ * (0x22E7E1E7 ^ 0x41EBAB0A ^ 0x2BEADC91 ^ 0x48E69594),getTimer());
               app.user.shinyPotionAlarm = new _33dd41a12065671be9311587();
               app.user.shinyPotionAlarm._bc1d2c0c359bffe4ef99cfee(_loc5_,new _0ce7a4d99e17666ff0e19ce6(_fd4c114651eb8adb9dd15005));
               this._gui._c70bc4af1327211e682e4c1d(_67282af25befe9778e5c8dd1.SHINY_POTION.id,_loc4_,_loc5_);
               break;
            case 2:
            case 3:
               app.user.currentExpBoosterTimeMark = new _020eb172ea5f58203a09fdb5(_loc5_ * (0x1043E96E ^ -982031882 ^ -925511663 ^ 0x1DE15B61),getTimer());
               app.user.expBoosterAlarm = new _33dd41a12065671be9311587();
               app.user.expBoosterAlarm._bc1d2c0c359bffe4ef99cfee(_loc5_,new _0ce7a4d99e17666ff0e19ce6(_599e5625ce06531ebffc5d1e));
               this._gui._c70bc4af1327211e682e4c1d(_67282af25befe9778e5c8dd1.EXP_BOOSTER.id,_loc4_,_loc5_);
               break;
            case 4:
               app.user.currentMagicWatchTimeMark = new _020eb172ea5f58203a09fdb5(_loc5_ * (0x56BF7834 ^ 0x3393CD3B ^ 0x1CBB489F ^ 0x7997FE78),getTimer());
               app.user.magicWatchAlarm = new _33dd41a12065671be9311587();
               app.user.magicWatchAlarm._bc1d2c0c359bffe4ef99cfee(_loc5_,new _0ce7a4d99e17666ff0e19ce6(_cbcd22bd22fff61f26ccffc3));
               this._gui._c70bc4af1327211e682e4c1d(_67282af25befe9778e5c8dd1.MAGIC_WATCH.id,_67282af25befe9778e5c8dd1.ID_MAGIC_WATCH,_loc5_);
               break;
            case 5:
            case 6:
               app.user.currentLuckPotionTimeMark = new _020eb172ea5f58203a09fdb5(_loc5_ * (0x7D044DE3 ^ 0x4B905F74 ^ -1842463850 ^ -1531303191),getTimer());
               app.user.luckPotionAlarm = new _33dd41a12065671be9311587();
               app.user.luckPotionAlarm._bc1d2c0c359bffe4ef99cfee(_loc5_,new _0ce7a4d99e17666ff0e19ce6(_223c1d285f004463bf2ec217));
               this._gui._c70bc4af1327211e682e4c1d(_67282af25befe9778e5c8dd1.LUCK_POTION.id,_loc4_,_loc5_);
               break;
            case 7:
            case 8:
            case 9:
               switch(_loc4_)
               {
                  case _67282af25befe9778e5c8dd1.ID_GREEN_FISH_RADAR:
                     §§push(0x515BA49D ^ -1962650127 ^ 0x4327D2CB ^ -1720179801);
                     break;
                  case _67282af25befe9778e5c8dd1.ID_WHITE_FISH_RADAR:
                     §§push(-1442596738 ^ -991385481 ^ -480719054 ^ -1917591750);
                     break;
                  case _67282af25befe9778e5c8dd1.ID_BLUE_FISH_RADAR:
                     §§push(-326164242 ^ 0x11E41DAD ^ -621162692 ^ 0x2792F27D);
                     break;
                  default:
                     §§push(-1102953620 ^ -244537433 ^ -1528686499 ^ -338887531);
               }
               switch(§§pop())
               {
                  case 0:
                     GameSwf.radarType = -117559752 ^ -1655467465 ^ -455873619 ^ -2122426461;
                     break;
                  case 1:
                     GameSwf.radarType = 0x070B724B ^ -568484725 ^ 0x012B9196 ^ -667058348;
                     break;
                  case 2:
                     GameSwf.radarType = -935367671 ^ -1406888103 ^ 0x5C5A90F6 ^ 0x38416BA5;
               }
               app.user.currentFishRadarTimeMark = new _020eb172ea5f58203a09fdb5(_loc5_ * (0x0403A7DD ^ 0x297A99DC ^ 0x1F05A70E ^ 0x327C9AE7),getTimer());
               if(getTimer() >= app.user.isInfluencedOfFishRadar)
               {
                  if(app.user.fishRadarAlarm != null)
                  {
                     app.user.fishRadarAlarm.destroy();
                  }
                  app.user.fishRadarAlarm = new _33dd41a12065671be9311587();
                  app.user.fishRadarAlarm._bc1d2c0c359bffe4ef99cfee(_loc5_,new _0ce7a4d99e17666ff0e19ce6(_2c41887d937c875b98e390fb));
                  _dfa25706e58a240c1e33e5c6.fscModel._1998765dddbc24f25f64afbb(new GetFishBlockAtLakesReq());
                  this._gui._c70bc4af1327211e682e4c1d(_67282af25befe9778e5c8dd1.FISH_RADAR.id,_loc4_,_loc5_);
               }
               break;
            case 10:
            case 11:
               app.user.currentPowerBoosterTimeMark = new _020eb172ea5f58203a09fdb5(_loc5_ * (0x1442DFE5 ^ -1300178679 ^ -937498197 ^ 0x6EDCECAF),getTimer());
               app.user.powerBoosterAlarm = new _33dd41a12065671be9311587();
               app.user.powerBoosterAlarm._bc1d2c0c359bffe4ef99cfee(_loc5_,new _0ce7a4d99e17666ff0e19ce6(_7baf9c238827d7ebb98d106d));
               this._gui._c70bc4af1327211e682e4c1d(_67282af25befe9778e5c8dd1.POWER_BOOSTER.id,_loc4_,_loc5_);
               break;
            default:
               Debug.assert(false);
         }
         GameSwf.instance.managerBoosters._6fd42490e1002e153440a4f3(_loc4_);
      }
      
      private function _a13e546963952b7eb0245537() : void
      {
         var _loc1_:_eb33c79ced81d8f5ac0ea91d = null;
         var _loc2_:Vector.<_eb33c79ced81d8f5ac0ea91d> = this._151c44613ce836f6c26d6d36();
         if(_loc2_ == null)
         {
            return;
         }
         this._70282fdd6927855eeb8ba3f7 = _loc2_;
         for each(_loc1_ in this._70282fdd6927855eeb8ba3f7)
         {
            _loc1_.reset();
         }
      }
      
      protected function _151c44613ce836f6c26d6d36() : Vector.<_eb33c79ced81d8f5ac0ea91d>
      {
         var _loc1_:_eb33c79ced81d8f5ac0ea91d = null;
         var _loc2_:Vector.<_eb33c79ced81d8f5ac0ea91d> = null;
         var _loc3_:Vector.<_eb33c79ced81d8f5ac0ea91d> = this.locationModel.locationConfig.pointSounds;
         if(_loc3_ != null)
         {
            _loc2_ = new Vector.<_eb33c79ced81d8f5ac0ea91d>(-1121924648 ^ -899098700 ^ -2033151100 ^ -241660440);
            for each(_loc1_ in _loc3_)
            {
               _loc2_.push(_loc1_);
            }
         }
         return _loc2_;
      }
      
      private function _284e54d12e3511abe03d2109(param1:DamianActionResp) : void
      {
         var _loc2_:Sprite = null;
         var _loc3_:GlowFilter = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         if(param1.blocks.length == (0x2E3CEF6F ^ 0x281F7D36 ^ -1038200773 ^ -1002585502))
         {
            return;
         }
         var _loc6_:Array = [];
         var _loc7_:Array = JSON.parse(param1.blocks)[0x247FC396 ^ 0x0D76B829 ^ 0x1AFAC7F0 ^ 0x33F3BC4E];
         var _loc8_:int = 0x0E2C933B ^ -1001717280 ^ 0x66472941 ^ -1407140966;
         while(_loc8_ < _loc7_.length)
         {
            if(_537da328fa2ab7e66872e8ac.indexOf(_loc7_[_loc8_]) != (-2005884783 ^ -903397601 ^ -667080 ^ 0x425DB249))
            {
               _loc6_.push(_loc7_[_loc8_]);
            }
            _loc8_++;
         }
         var _loc9_:int = int(_loc6_[int(Math.random() * _loc6_.length)]);
         var _loc10_:DisplayObject = this._locationLayersBase._d2821df50f261a80f9891c48();
         if(_loc10_ == null)
         {
            _loc10_ = this._locationLayersBase._d2821df50f261a80f9891c48();
         }
         var _loc11_:DisplayObject = MovieClip(_loc10_).getChildByName(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掐掌挋掺掩揽掎掁揱揂揵援捞捫揽掜揟捤捘挘捞接","揋挺措揌掳揻揔捩揟掰挗揠掓揌捴捏") + (_loc9_ + (0x3BB23416 ^ -288780374 ^ 0x2A300959 ^ -11816220)));
         if(_loc11_ != null)
         {
            _loc2_ = new Sprite();
            _loc2_.x = _loc10_.x + _loc11_.x;
            _loc2_.y = _loc10_.x + _loc11_.y;
            _loc3_ = new GlowFilter();
            _loc3_.color = -1900073146 ^ 0x7D03D016 ^ 0x28A19665 ^ -605907254;
            _loc3_.alpha = -1447231903 ^ -1749858152 ^ 0x2BFFF5CD ^ 0x15F04335;
            _loc3_.blurX = -1224241027 ^ -1599433703 ^ -1870896243 ^ -2016319504;
            _loc3_.blurY = 0x58AF4688 ^ 0x7B64553E ^ 0x32E0E21E ^ 0x112BF1B1;
            _loc3_.quality = BitmapFilterQuality.MEDIUM;
            _loc2_.graphics.beginFill(0x0D69B69E ^ 0x1EC17A4C ^ -1800720057 ^ -2013527446);
            var _temp_2:* = _loc2_.graphics;
            var _temp_1:* = 0x604680A2 ^ 0x309A628D ^ -715114678 ^ -2051222171;
            _temp_2.drawRect(_temp_1,_temp_1,-949703195 ^ -1374139178 ^ 0x6D0D9AB5 ^ 0x04717B4E,0x2F259D6C ^ 0x6A229127 ^ 0x6ED4EDE4 ^ 0x2BD3E167);
            _loc2_.graphics.endFill();
            _loc2_.filters = [_loc3_];
            _loc2_.name = _95da7f1147c669197db81295._8f4866de82b7339154180ecb("剟勹刞劀勤刻劓勄勴剕副勊劢勤勩力剤勰勌分勮刈劒劺劊剱創剼勜剮","劘刱刦刾剻剠削刵劾勨初劗刅劅勴剽");
            TweenCube.to(_loc2_,-1618696471 ^ 0x3E6DC20D ^ 0x5609EEE4 ^ -136279551,{(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၿာဦၒၜ၄ႩჇ჊ႉၶႅჽ჈ႏႅႫჳ","ၕဦၪჹ၌ၠပნჅ၆ၰၝჷၱၨჴ")):0x133310DC ^ -2111857900 ^ -806224203 ^ 0x5EDD757D},{
               (_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("မၐႼႹႷဍြၙჯွဲငႵႯႾႰ","ဢးჺ၉ဿ၉ွჃၞၧ၂ဥၺၭჯႄ")):true,
               (_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勲勄勧勜券劽剬势剂刬剅劘剮刀剴勡","勓勲刴刟初勆刄劶刏剦制剒刊刡剷刺")):-415685049 ^ 0x258C986F ^ -1465457719 ^ 0x6A135DFF,
               (_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掝挫掳掽挢挬揧捺掼揤挷挓掮挴揔捹挮揱捐挃揷揟揷捤揢掩揺按","掭掴揕捚揵捇挔掯挠掩损捸挜捷控捊")):_1214a9b742372ed027fb8081._f78b21e6e9a9626c91ccfdbd,
               (_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掠掞捜採掗控捥捂挍振挜揯挘捏挾揶揰挓掑掭揿掑挍掑挢揕挓揚挙捓捑挱掱挒掚挷掜挕揫捼","掻掜捆揄挆挷捈挟揪掑捬揶捦挗捍捎")):[_loc2_]
            });
            _loc10_.parent.addChildAt(_loc2_,_loc10_.parent.getChildIndex(_loc10_));
            _loc4_ = _loc2_.x + _loc2_.width * _95da7f1147c669197db81295._6371735dc9287bd2d9618c1e("勎刞勿刋剕劼勄勷劸助刘刼判剢勡劯切刲勮分刨剎劆刓","刅助务剡切劔剘刿刑勩刯勍勿刹加剥");
            _loc5_ = _loc2_.y + _loc2_.height * _39d7d82359bf8046fe8ef6c4._ed4a735c5a6981f99dda5b73("挧揷捷掞揠掻揶持捕揨掟挕揅揝掅控揵揁揜揗揞掟挡挈","揅挮挻捐挜挜捿捆掃挞掐握掿揫揹捖");
            setTimeout(this._ac5b802e75d6635d1db85bf6,0x34394066 ^ -655545422 ^ 0x1C142A04 ^ -255835592,_loc4_,_loc5_);
         }
      }
      
      private function _ac5b802e75d6635d1db85bf6(param1:Number, param2:Number) : void
      {
         this._playerChar._ca0c9d4131fba504301d569e();
         Cc.log(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("Ⴒဓႏဧၬျ၏မႰၱၒუ၇ჸႬၕနჿူၹၚၹႧြႼსნၫ","ႅဦჭၯႹၦ။ူဂჟჰვၽႣၥံ") + this._playerChar.position + _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捬排揨捖掄握揶掆掙捉掹挷揁挌揜挌","挔挓挤捣捊揗挬揬挷振挧捓揔挂捉掎") + param1 + _95da7f1147c669197db81295._8f4866de82b7339154180ecb("勨劊务勎剟劏勪剶勂刣剤判","功刔剧勨刘動勊劼勊削剿剢劃劑剁劮") + param2);
         this._playerChar._d920697e2d07908f09509e8e(param1,param2);
      }
      
      private function _a1192a516a204df021885986() : void
      {
         var _loc1_:int = 0x0540976C ^ 0x6C62E88B ^ -1698797789 ^ 0x6D599906;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (-2020795420 ^ -1418876234 ^ 0x21621031 ^ -1824055134))
            {
               case 0:
                  this._ae4bf7afed19a2bed09701ab.visible = GameSwf.instance.managerTutorial.isTutorialCommonComplete;
                  _loc1_ = 0x537F40CB ^ -2049924119 ^ 0x42BC336F ^ 0x0AD65188;
                  break;
               case 1:
                  this._gui._5b84a4a8edfb74028ae7b885();
                  _loc1_ = 0x0FAF98FD ^ -539022378 ^ -1929340878 ^ -1011504422;
                  break;
               case 2:
                  return;
               case 3:
                  if(this._ae4bf7afed19a2bed09701ab != null)
                  {
                     _loc1_ = 0x3FFB9150 ^ -1492548815 ^ 0x6AF7AAD2 ^ 0x6CC03972;
                  }
                  else
                  {
                     _loc1_ = -799539517 ^ -856596873 ^ 0x46E5D37B ^ -997789174;
                  }
                  break;
               case 4:
                  if(this._gui != null)
                  {
                     _loc1_ = 0x51602F37 ^ 0x478E29CE ^ -1754467817 ^ 0x1F47752E;
                  }
                  else
                  {
                     _loc1_ = 0x1494A9C0 ^ -2137238478 ^ 0x5DA67746 ^ 0x576B0B77;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      override public function deactivate() : void
      {
         super.deactivate();
         if(this._gui != null)
         {
            this._gui._b95cd9b8dc3e72f3ad0156f2();
         }
         Cc.log(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掘揙挪挱掋揃掵掙掾捋揆插损挈挞描掤揔揞揹掄捙捧掟揘揃揧捷接换捁掲揆揋掚掘掗持挾掲掍揃捳挤揽挽掸探","挩挍掔挜控揤掞掜掖挗掯挣挄挿挺指") + this.toString());
         _02fbe4cbe9e83f1b8c711799.removeEventListener(this,GameSwf.charsManager,_d5eb1450a3d5966d0528acfe.UPDATE_CHAR_VIEW,this._a7dc0bd2fc0ec007d77f6abf);
         _02fbe4cbe9e83f1b8c711799.removeEventListener(this,this.locationModel,_4986c362bed569a2ffb299b4.ADD_NEW_CHAR,this._7371a9ccf8daa02c1ef3521c);
         _02fbe4cbe9e83f1b8c711799.removeEventListener(this,this.locationModel,_4986c362bed569a2ffb299b4.REMOVE_CHAR,this._17a63998f6557418ae0ce195);
         if(this.locationModel != null && this.locationModel.weatherVariable != null)
         {
            _02fbe4cbe9e83f1b8c711799.removeEventListener(this,this.locationModel.weatherVariable,_720429110fd3cfc01812b5a0.CHANGE,this._1e24c77ca3acef4215a0a67a);
         }
         _02fbe4cbe9e83f1b8c711799.removeEventListener(this,this.locationModel,_4986c362bed569a2ffb299b4.UPDATE_SHELLS,this._42a6abd3286b2aab69e970d4);
         _02fbe4cbe9e83f1b8c711799.removeEventListener(this,this.locationModel,_4986c362bed569a2ffb299b4.REMOVE_SHELL,this._338f57b50cc695db9bdc44b0);
         _02fbe4cbe9e83f1b8c711799.removeEventListener(this,this.locationModel,_4986c362bed569a2ffb299b4.ADD_SHELL,this._7ad190fbf2d60501f2003495);
         _02fbe4cbe9e83f1b8c711799.removeEventListener(this,this.locationModel,_4986c362bed569a2ffb299b4.LOAD_LOCATION_ITEMS,this._f6ddf9764ea83e3afcad3432);
         _02fbe4cbe9e83f1b8c711799.removeEventListener(this,this.locationModel,_4986c362bed569a2ffb299b4.ADD_LOCATION_ITEM,this._153d63fcac60d53acac75bac);
         _02fbe4cbe9e83f1b8c711799.removeEventListener(this,this.locationModel,_4986c362bed569a2ffb299b4.REMOVE_LOCATION_ITEM,this._4ca94c42702c397e9a70f6cf);
         _02fbe4cbe9e83f1b8c711799.removeEventListener(this,this.locationModel,_4986c362bed569a2ffb299b4.START_BOBS_MINIGAME,this._dd381d5dc7470dfac9ff5dd2);
         _02fbe4cbe9e83f1b8c711799.removeEventListener(this,this.locationModel,_4986c362bed569a2ffb299b4.STOP_BOBS_MINIGAME,this._2bce46c297a8d83805f364a7);
         _02fbe4cbe9e83f1b8c711799.removeEventListener(this,this.locationModel,_4986c362bed569a2ffb299b4.START_STEVE_MINIGAME,this._65e3d3d946ddf5e80cb4bf23);
         _02fbe4cbe9e83f1b8c711799.removeEventListener(this,this.locationModel,_4986c362bed569a2ffb299b4.PUT_CHAR_TO_BOAT,this._3e5731a9b4a461191a6526d8);
         _02fbe4cbe9e83f1b8c711799.removeEventListener(this,this.locationModel,_4986c362bed569a2ffb299b4.ADD_FISHBOX,this._c48c1ae5d23d549b34aa3a33);
         _02fbe4cbe9e83f1b8c711799.removeEventListener(this,this.locationModel,_4986c362bed569a2ffb299b4.DESTROY_FISHBOX,this._87b859317d2509510f2b3eba);
         _02fbe4cbe9e83f1b8c711799.removeEventListener(this,this.locationModel,_4986c362bed569a2ffb299b4.REMOVE_FISHBOX,this._a39dca60d12687e374b88c53);
         _02fbe4cbe9e83f1b8c711799.removeEventListener(this,this.locationModel,_4986c362bed569a2ffb299b4.ADD_DAILY_QUEST_FISHBONES,this._ec92874fbed80f580020c3ea);
         this._21f79e657e6f6aa6d2206aaa();
      }
      
      private function _21f79e657e6f6aa6d2206aaa() : void
      {
         var _loc1_:_40c40768738c862c74ddd128 = null;
         var _loc2_:_08c120b706560fce9302bcab = null;
         this._8cee8fcbcec66b9e75cc1132 = false;
         this._92d58f6e66189c2411d2ad35();
         this._d94ca554db50b9b26c45054c();
         if(this._4f263e9127f99fb7aefd6ff7 != null)
         {
            _02fbe4cbe9e83f1b8c711799.removeEventListener(this,this._4f263e9127f99fb7aefd6ff7,TimerEvent.TIMER,this._33a44bfb5cccebdd819e32c7);
            this._4f263e9127f99fb7aefd6ff7.stop();
         }
         _9c52777792d76fde110d23c0._7cebb4021a29bbad2ca1dcdf(this._6843b209a157239d872fccdf);
         if(this._locationLayersBase != null && this._locationLayersBase.boats != null)
         {
            for each(_loc1_ in this._locationLayersBase.boats)
            {
               _loc1_._5b62d523e0155dff19c699fb();
            }
         }
         if(this.locationModel != null)
         {
            this.locationModel.deactivate();
         }
         if(this._gui != null)
         {
            this._gui.deactivate();
         }
         if(this._charList != null)
         {
            for each(_loc2_ in this._charList)
            {
               _loc2_.destroy();
            }
         }
         if(this._playerChar != null)
         {
            this._playerChar.deactivate();
         }
         this._charList = new Dictionary();
         if(this._playerChar != null)
         {
            this._playerChar.destroy();
            this._playerChar = null;
         }
         if(this._locationLayersBase != null)
         {
            this._locationLayersBase.removeAllShells();
            this._locationLayersBase._c5c2b6297dcacfce7f576e43();
            this._locationLayersBase._7abdee135350d72b294fa8a6();
            this._locationLayersBase.deactivate();
         }
         _92d7656ddc3c3da810e99c74.getInstance()._57ad3faeff9ca92cbf9fe447(_34a2ba6ad978d976b8b0f5a4.ENTER_FRAME).remove(this);
         _3a8a2602dcf9bf49b62e62af._aba208bba94ae1f5a01b1aeb();
         if(this.locationModel != null)
         {
            _3a8a2602dcf9bf49b62e62af._b84a0a46b9f06948656ec000(this.locationModel.id);
         }
         _3a8a2602dcf9bf49b62e62af._8b33debefada217571cd2f44();
      }
      
      private function _d94ca554db50b9b26c45054c() : void
      {
         var _loc1_:int = 0x31422892 ^ -2134349859 ^ -1523824481 ^ -1394443914;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (-1356680044 ^ -532122056 ^ 0x67537045 ^ -1870803889))
            {
               case 0:
                  if(app.user == null)
                  {
                     _loc1_ = 0x59C3FE5C ^ -157587992 ^ -84322524 ^ -303713740;
                  }
                  else
                  {
                     _loc1_ = 0x7DFBD7F5 ^ 0x785AACCC ^ 0x63C2A4B0 ^ -567828178;
                  }
                  break;
               case 1:
                  app.user.atTheBoat.value = false;
                  app.user.inFishingProcess.value = false;
                  app.user._c9d56ed8e8557c55b8235f4f(this._7f2e0f40249ce6e0c17b1ea8);
                  app.user._8577097c0ec141ab849ff3ae(this._9bb12e0d2c599c0be9aaa19e);
                  app.user._d448bc64b43862324feeb1d4(this._e8b84071d83d229165347da7);
                  app.user._0fd5ec095253ad2d29429e30(this._66696899c075bd0b97315c7d);
                  app.user._3e4a0d3c206eefe6c739e65a(this._fc3bac2b6c8cddae8e8fe4fd);
                  app.user._ec74ef05e5b74692d5263b01(this._13f2fb4c0a00143c187eda0a);
                  return;
               case 2:
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function _6843b209a157239d872fccdf() : void
      {
         var _loc1_:_7b223416c1a294d60a664647 = _dfa25706e58a240c1e33e5c6.fscModel;
         _loc1_._66976e92ca4860923b30ee2a(UpdateResp,this.onUpdateResp);
         _loc1_._66976e92ca4860923b30ee2a(EnterSublocationSuccessResp,this._97fd7c70b7ef7c4e5c6c8bef);
         _loc1_._66976e92ca4860923b30ee2a(EnterRaftResp,this._49e6c12844f605c2b7200f06);
         _loc1_._66976e92ca4860923b30ee2a(ResponseBoatEnter,this._43908ed30d4f1bb69ad87af4);
         _loc1_._66976e92ca4860923b30ee2a(ResponseBoatMove,this._964e26b76ce8efe028f6e2ee);
         _loc1_._66976e92ca4860923b30ee2a(ResponseBoatRelease,this._60e6d52634e93dd41012a977);
         _loc1_._66976e92ca4860923b30ee2a(DamianActionResp,this._284e54d12e3511abe03d2109);
         _loc1_._66976e92ca4860923b30ee2a(ResponseNpcTalk,this._fc86f5b236d37b4635944a87);
      }
      
      private function _92d58f6e66189c2411d2ad35() : void
      {
         var _loc1_:_eb33c79ced81d8f5ac0ea91d = null;
         if(this._70282fdd6927855eeb8ba3f7 == null)
         {
            return;
         }
         for each(_loc1_ in this._70282fdd6927855eeb8ba3f7)
         {
            _loc1_.stop();
         }
      }
      
      private function _94d93044b810c5e3568f4b9e(param1:String) : void
      {
         var _loc2_:_08c120b706560fce9302bcab = null;
         var _loc3_:_810c4ade948afb64e9c7ee25 = this.locationModel._9aa9d817a9effb1ee3c32474(param1);
         if(_loc3_ == null)
         {
            return;
         }
         this._locationLayersBase.removeChar(_loc3_.fieldChar.graphic);
         if(this._charList.hasOwnProperty(param1))
         {
            if(this._charList[param1] is _08c120b706560fce9302bcab)
            {
               _loc2_ = this._charList[param1] as _08c120b706560fce9302bcab;
               _loc2_._7602f920df162c61c7fdbb02();
            }
            this._charList[param1] = null;
            delete this._charList[param1];
         }
         if(_loc3_.fieldChar is _ba120ae720a391732e866217)
         {
            _ba120ae720a391732e866217(_loc3_.fieldChar).onStartTalk = null;
            this.locationModel._4986d1515b19090817f733bb(param1);
         }
         if(this._locationLayersBase.raft != null)
         {
            this._locationLayersBase.raft.removeChar(_loc3_.fieldChar);
         }
      }
      
      private function _1ee49808a6a89f0d1448c34b() : void
      {
         var _loc1_:_810c4ade948afb64e9c7ee25 = null;
         var _loc2_:Vector.<_810c4ade948afb64e9c7ee25> = this.locationModel._a71dddef56aa5c9ec7fa4a93();
         for each(_loc1_ in _loc2_)
         {
            this._0d63b9c68914abac77f5fe5c(_loc1_);
         }
      }
      
      protected function _0d63b9c68914abac77f5fe5c(param1:_810c4ade948afb64e9c7ee25) : void
      {
         var _loc2_:_40c40768738c862c74ddd128 = null;
         var _temp_2:* = param1.fieldChar;
         var _temp_1:* = -477585755 ^ -817843576 ^ -1178749975 ^ -1787453500;
         _temp_2.update(_temp_1,_temp_1,0x3DDC0409 ^ 0x0CBF9862 ^ -163639058 ^ -950236028);
         if(param1.username == app.user.username)
         {
            this._playerChar = _c9513c48978d5034cc9ff2f4(param1.fieldChar);
            this._playerChar.activate();
            this._playerChar.bitePanelContainer = this._gui;
            this._playerChar.graphic.name = _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ႧႴႠჁ၂ၣဈၦရၴၻცჸဏၳპდ჆ဦရჶსმ၅႞ဥეჵ","ဏၸეႤၛဣၵထჍ္ၭဳჇထ႖Ⴃ");
            if(app.char.isFreeze)
            {
               this._playerChar._1963d0a948fa760e5dca0769();
            }
            this._playerChar._11af0ae1dc88e5244bdef63d();
            if(GameSwf.instance.needSetPositionAfterExitVirtualLocation)
            {
               GameSwf.instance._d884928dd68180fa7fdbb4e7();
            }
         }
         else
         {
            _loc2_ = this._locationLayersBase._e46d3c66d0ce5b50a0501670(param1.username);
            if(_loc2_ != null)
            {
               this.putCharToBoat(_loc2_.index,param1.username);
            }
         }
         this._92d6baab4102395a7951d68b(param1.fieldChar,param1.username);
      }
      
      private function _8e085bba0dc390b5ee4fe51f(param1:_810c4ade948afb64e9c7ee25) : void
      {
         var _loc2_:_40c40768738c862c74ddd128 = null;
         var _loc3_:Vector.<_40c40768738c862c74ddd128> = this._locationLayersBase.boats;
         if(emptyVector(_loc3_))
         {
            return;
         }
         for each(_loc2_ in _loc3_)
         {
            if(_loc2_.lastFieldCharUsername == param1.username)
            {
               Cc.log(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劅刣劍剁判劦割创剴勺勼劵勻劂刳加剬劗刚剛勫劬動勴勂劶刞剎刻刻勖勸刀剓勄判剗劏勡判勐刄劺劒剤划加勩劏刘刂剟勷劼刦勒劳勂劼务剉劧刮刬","劂刳刌勻劘加刯剒勤剓劊勁剑刢办劏") + param1.username + _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("မ႖ၭ၌Ⴂၽလၶြၷၥဓჳၩ჆ჵ႕჉ဲႈჀဢ၎ၾპႥညႣ","ဲჁဪ႓ာႧაၿျႆဲၶ჌ႝუ၇") + _loc2_.index);
               this.putCharToBoat(_loc2_.index,param1.username);
            }
         }
      }
      
      protected function _92d6baab4102395a7951d68b(param1:_08c120b706560fce9302bcab, param2:String) : void
      {
         if(this._charList.hasOwnProperty(param2) && this._charList[param2] != null)
         {
            this._locationLayersBase.removeChar(this._charList[param2].graphic);
            if(this._charList[param2] is _08c120b706560fce9302bcab)
            {
               (this._charList[param2] as _08c120b706560fce9302bcab).destroy();
            }
         }
         param1.boatObstacleMap = this._locationLayersBase._08c86fd02004f9e45fef2ca8();
         param1.boats = this._locationLayersBase.boats;
         param1._a9758614678827114f90d3aa(this._obstacleMap,this._lakeObstacleMap,this.locationFullWidth,this.locationFullHeight);
         param1._7df06d1da20fad3e50e8e3c1(this._locationLayersBase._d2821df50f261a80f9891c48());
         param1._6e26cba323340280bd895ce7(this._locationLayersBase.fullWidth,this._locationLayersBase.fullHeight);
         param1.locationLayers = this._locationLayersBase;
         this._locationLayersBase._92d6baab4102395a7951d68b(param1.graphic,!GameSwf.instance.needSetPositionAfterExitVirtualLocation);
         if(param1 is _ba120ae720a391732e866217)
         {
            _ba120ae720a391732e866217(param1).onStartTalk = this._d69b1ee81887e04ca1584d73;
            if(param2 == _95da7f1147c669197db81295._8f4866de82b7339154180ecb("刮刺初刜刡刄勣刄刱助劬剽刅劦别勮勅劸劯劏","劑剮努分剨剷刺劆募勿到剀勷删劜劝") && this._locationLayersBase.raft != null)
            {
               this._locationLayersBase.raft._92d6baab4102395a7951d68b(param1);
            }
         }
         if(param2 == null)
         {
            Cc.error(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勚刾剣刭勴刪剽刘刻剬剒刞刽剬劵勿勹劬勓刡剹勌勶勧励剽利勣劂刈削劌劾划切勀劔刨","勀剾劅剅劒剼勽剹勉刯勢剝力劫剧别"));
         }
         this._charList[param2] = param1;
         if(this._playerChar != null)
         {
            param1.distanceToPlayer = Point.distance(this._playerChar.position,param1.position);
         }
         this._8e085bba0dc390b5ee4fe51f(param1.locationUser);
         param1._f414a29a585bcef1dea39cdd();
         this._173d82b8b74a9ed17c378e50(param1);
      }
      
      protected function updateCharView(param1:String, param2:CharViewConfig) : void
      {
         var _loc3_:_810c4ade948afb64e9c7ee25 = this.locationModel._9aa9d817a9effb1ee3c32474(param1);
         if(_loc3_ == null)
         {
            return;
         }
         _loc3_._c9aef71caac01218bc064356(param2);
      }
      
      public function _3b066905b0f5817cc1c91273() : void
      {
         var _loc1_:int = -953727902 ^ 0x7EF0AF2C ^ -769134809 ^ -1423712454;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (0x4F581BD1 ^ 0x3C99EAE3 ^ -1041077133 ^ 0x72E04613))
            {
               case 0:
                  return;
               case 1:
                  if(this._playerChar == null)
                  {
                     _loc1_ = 0x6B126AC8 ^ -523832690 ^ -946223286 ^ -1935768482;
                  }
                  else
                  {
                     _loc1_ = 0x3067869E ^ 0x0679F075 ^ 0x56E4E947 ^ -1607908100;
                  }
                  break;
               case 2:
                  this._playerChar._ca0c9d4131fba504301d569e();
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      override public function destroy() : void
      {
         var _loc1_:int = 0x5C492561 ^ 0x6721B777 ^ 0x4B47421A ^ -1873862253;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (-1375333407 ^ 0x400FB3E5 ^ 0x41111BF9 ^ 0x4F784A69))
            {
               case 0:
                  if(app.user.magicWatchAlarm != null)
                  {
                     _loc1_ = 0x07ED9EC1 ^ 0x062D9C7F ^ -1677564603 ^ 0x7DA29672;
                  }
                  else
                  {
                     _loc1_ = 0x718CAE60 ^ 0x1BB99CE7 ^ 0x1C87D9D0 ^ -1764615464;
                  }
                  break;
               case 1:
                  this._69f980d7632e6cfafe20c104.destroy();
                  this._69f980d7632e6cfafe20c104 = null;
                  _loc1_ = -2040615057 ^ 0x01C97EE5 ^ -1665315169 ^ -79008097;
                  break;
               case 2:
                  if(this._72cdc7a9d73e942fa68f9973 != null)
                  {
                     _loc1_ = 0x1BDC563E ^ -1650326699 ^ -5584608 ^ -1716228659;
                  }
                  else
                  {
                     _loc1_ = -1511008351 ^ -158957798 ^ -745982863 ^ 0x60806D4A;
                  }
                  break;
               case 3:
                  if(this._a35586942f3ef9c2fd80b181 != null)
                  {
                     _loc1_ = -1201413612 ^ -844845733 ^ -1065944203 ^ 0x55D145B9;
                  }
                  else
                  {
                     _loc1_ = -1873959438 ^ 0x4F09E627 ^ 0x2AA740EB ^ 0x1583F2A7;
                  }
                  break;
               case 4:
                  this._obstacleMap.dispose();
                  this._obstacleMap = null;
                  _loc1_ = 0x5017F430 ^ 0x0530125D ^ 0x4E706030 ^ -80250923;
                  break;
               case 5:
                  this._8b2fe906bf6f5f8872831196();
                  _loc1_ = -273356238 ^ 0x3F540EB7 ^ -668362754 ^ -391544084;
                  break;
               case 6:
                  this._locationLayersBase.destroy();
                  this._locationLayersBase = null;
                  _loc1_ = 0x26C95836 ^ 0x2CE85ECA ^ -583173973 ^ 0x377C8FCA;
                  break;
               case 7:
                  _02fbe4cbe9e83f1b8c711799.removeEventListener(this,app.performanceManager,_de89e27ae8b90e70822b4fad.WEATHER_OFF,this._dfa02cfa899528a5aa0cc290);
                  if(this._locationLayersBase != null)
                  {
                     _loc1_ = -1777571997 ^ 0x4C223312 ^ 0x5F766EDB ^ 0x6538CB38;
                  }
                  else
                  {
                     _loc1_ = 0x47136492 ^ 0x66516799 ^ 0x09046071 ^ -936996121;
                  }
                  break;
               case 8:
                  this._caab76bfbff3e37e7a65d68f.destroy();
                  this._caab76bfbff3e37e7a65d68f = null;
                  _loc1_ = 0x6A510D6B ^ 0x2E596BFF ^ 0x29EE8E41 ^ -1920591549;
                  break;
               case 9:
                  this.locationModel.destroy();
                  this.locationModel = null;
                  this._f9c1c162ec64547485d5db05._fa617604776c92449ea4a8e0();
                  this._f9c1c162ec64547485d5db05.unloadAndStop(true);
                  this._f9c1c162ec64547485d5db05.destroy();
                  this._f9c1c162ec64547485d5db05 = null;
                  if(this._obstacleMap != null)
                  {
                     _loc1_ = 0x392F7561 ^ 0x3F48F3B3 ^ 0x2606BD5E ^ -1073624548;
                  }
                  else
                  {
                     _loc1_ = 0x4B5D60D9 ^ 0x0DA34548 ^ 0x2625E812 ^ -2135213045;
                  }
                  break;
               case 10:
                  if(this._caab76bfbff3e37e7a65d68f != null)
                  {
                     _loc1_ = 0x27483406 ^ -1189806663 ^ 0x1E9236D9 ^ 0x60AE0EFA;
                  }
                  else
                  {
                     _loc1_ = -1880841737 ^ 0x12A87852 ^ 0x38EEB701 ^ 0x45C29F32;
                  }
                  break;
               case 11:
                  this.deactivate();
                  _02fbe4cbe9e83f1b8c711799.removeEventListener(this,this._locationLayersBase,_178a822f6f1028b33439b0d5.UPDATE_OBSTACLE_MAP,this._99d7604e8f6aea29c1c9a161);
                  _02fbe4cbe9e83f1b8c711799.removeEventListener(this,this._locationLayersBase,_178a822f6f1028b33439b0d5.UPDATE_LAKE_OBSTACLE_MAP,this._12deb8291cebac17a9349ad9);
                  _02fbe4cbe9e83f1b8c711799.removeEventListener(this,this._locationLayersBase,MouseEvent.CLICK,this.onClick);
                  _02fbe4cbe9e83f1b8c711799.removeEventListener(this,this._locationLayersBase,MouseEvent.MOUSE_MOVE,this._2f7021a59bd95754b393a0be);
                  _02fbe4cbe9e83f1b8c711799.removeEventListener(this,this._locationLayersBase,MouseEvent.DOUBLE_CLICK,this._40cfc46185c9c16faa96dbce);
                  if(this._f9c1c162ec64547485d5db05 != null)
                  {
                     _loc1_ = -48535657 ^ -1992756239 ^ 0x693D8308 ^ -42014977;
                  }
                  else
                  {
                     _loc1_ = -947045922 ^ 0x5A304FD8 ^ 0x2A12B132 ^ 0x57CF36A3;
                  }
                  break;
               case 12:
                  app.user.shinyPotionAlarm.destroy();
                  _loc1_ = 0x62E34A28 ^ -200043953 ^ -96708394 ^ -1934855936;
                  break;
               case 13:
                  if(Config.SYNC_DEBUG)
                  {
                     _loc1_ = 0x08825C4D ^ -1039478570 ^ -1909355509 ^ -1529220832;
                  }
                  else
                  {
                     _loc1_ = -1920315519 ^ 0x35CD9D2C ^ 0x1F415699 ^ 0x476675A7;
                  }
                  break;
               case 14:
                  if(this._59886d6bb7361b773844cab0 != null)
                  {
                     _loc1_ = -1458147385 ^ 0x0F117AAA ^ -844691173 ^ -1950290492;
                  }
                  else
                  {
                     _loc1_ = 0x5AE41AEC ^ -800817888 ^ -2080192126 ^ -289251392;
                  }
                  break;
               case 15:
                  if(this._2e0987edad2b52ab48d9bac5 != null)
                  {
                     _loc1_ = 0x321CF9CC ^ 0x19847730 ^ -880062471 ^ 0x733087;
                  }
                  else
                  {
                     _loc1_ = 0x32666208 ^ -1912686533 ^ -1891630000 ^ -793235463;
                  }
                  break;
               case 16:
                  if(app.user.expBoosterAlarm != null)
                  {
                     _loc1_ = -1772643612 ^ 0x2D454B41 ^ 0x27E95966 ^ 0x7C9B7946;
                  }
                  else
                  {
                     _loc1_ = -1597588177 ^ 0x39253A09 ^ 0x3DB7D3FF ^ 0x4434A56C;
                  }
                  break;
               case 17:
                  app.user.expBoosterAlarm.destroy();
                  _loc1_ = -800445101 ^ -433606841 ^ 0x684740B3 ^ -1102433518;
                  break;
               case 18:
                  this._72cdc7a9d73e942fa68f9973.destroy();
                  this._72cdc7a9d73e942fa68f9973 = null;
                  _loc1_ = -287140475 ^ -1279780927 ^ -1439295347 ^ 0x170C6B49;
                  break;
               case 19:
                  removeFromParent(DEBUG_LAYER,this);
                  this._charList = null;
                  removeFromParent(this._gui);
                  this._gui.destroy();
                  this._gui = null;
                  this._playerChar = null;
                  this._d9b253c6d5056dbdbbd0406c = -1131333992 ^ -692556977 ^ -1133549704 ^ -700040529;
                  this._scrollRect = null;
                  this._b360e884780ae3fb0cc651e1 = null;
                  this._4f263e9127f99fb7aefd6ff7 = null;
                  this._8936c2523e5e9c8d1ed9b18d = null;
                  this._waitForViewLoadUsernames = null;
                  if(this._69f980d7632e6cfafe20c104 != null)
                  {
                     _loc1_ = -1082774368 ^ -556168474 ^ -1065880579 ^ 0x41B8A42E;
                  }
                  else
                  {
                     _loc1_ = -511753847 ^ 0x6489821D ^ -1255157576 ^ -793124186;
                  }
                  break;
               case 20:
                  removeAllChildren(this);
                  if(this._73e7023a09870facacc2ed79 != null)
                  {
                     _loc1_ = 0x136C1CB5 ^ 0x5A6C3399 ^ 0x2158F860 ^ -2009585977;
                  }
                  else
                  {
                     _loc1_ = -878112929 ^ 0x57F92405 ^ -1911329016 ^ -232540699;
                  }
                  break;
               case 21:
                  app.user.luckPotionAlarm.destroy();
                  _loc1_ = 0x4787DDDA ^ 0x72D343AB ^ 0x73433124 ^ -1502126399;
                  break;
               case 22:
                  this._2e0987edad2b52ab48d9bac5.dispose();
                  this._2e0987edad2b52ab48d9bac5 = null;
                  _loc1_ = 0x6685911E ^ -1517987004 ^ -2140532361 ^ -1559614793;
                  break;
               case 23:
                  this._a35586942f3ef9c2fd80b181._90eac9ca552fe54c2ca0299f();
                  this._a35586942f3ef9c2fd80b181 = null;
                  _loc1_ = -863434839 ^ 0x2BCA460A ^ -863026999 ^ -877858573;
                  break;
               case 24:
                  app.user.fishRadarAlarm.destroy();
                  _loc1_ = -61893161 ^ -1729973750 ^ -2065275987 ^ 0x2BB5F4;
                  break;
               case 25:
                  this._7fe05aca52f25fef392392be.destroy();
                  this._7fe05aca52f25fef392392be = null;
                  _loc1_ = 0x1857162B ^ -695013953 ^ 0x4AA24B14 ^ 0x64074107;
                  break;
               case 26:
                  if(this._7fe05aca52f25fef392392be != null)
                  {
                     _loc1_ = 0x1B640B27 ^ -759949898 ^ 0x18781908 ^ 0x31C8F614;
                  }
                  else
                  {
                     _loc1_ = 0x0937136E ^ -850897931 ^ 0x06D2329B ^ 0x22CD8387;
                  }
                  break;
               case 27:
                  if(app.user.fishRadarAlarm != null)
                  {
                     _loc1_ = 0x140D2416 ^ -1748725483 ^ -398175544 ^ -1947396537;
                  }
                  else
                  {
                     _loc1_ = -1652837721 ^ -1284927436 ^ 0x24EDC26F ^ -358674056;
                  }
                  break;
               case 28:
                  if(this._lakeObstacleMap != null)
                  {
                     _loc1_ = -2103048620 ^ -1839122190 ^ -744322709 ^ 0x23054679;
                  }
                  else
                  {
                     _loc1_ = 0x2501E7F3 ^ 0x33B04E76 ^ 0x61222124 ^ -1745651398;
                  }
                  break;
               case 29:
                  app.user.magicWatchAlarm.destroy();
                  _loc1_ = -2030474822 ^ 0x196184CD ^ -360540309 ^ -1787130989;
                  break;
               case 30:
                  if(this._1af79f36673c5b8f1dd7376f != null)
                  {
                     _loc1_ = -1236166169 ^ -676137678 ^ 0x419F60D0 ^ -1071841869;
                  }
                  else
                  {
                     _loc1_ = 0x6EBDB7EB ^ 0x17E7F830 ^ -1272910251 ^ 0x2D1A5010;
                  }
                  break;
               case 31:
                  this._73e7023a09870facacc2ed79.destroy();
                  this._73e7023a09870facacc2ed79 = null;
                  _loc1_ = -65419074 ^ -1212959079 ^ -698508387 ^ 0x7D97140D;
                  break;
               case 32:
                  this._lakeObstacleMap.dispose();
                  this._lakeObstacleMap = null;
                  _loc1_ = 0x30AC7EEB ^ -205850685 ^ -1498605351 ^ -2049220502;
                  break;
               case 33:
                  if(app.user.shinyPotionAlarm != null)
                  {
                     _loc1_ = -624349119 ^ -392163606 ^ 0x24BBDDFE ^ -156101939;
                  }
                  else
                  {
                     _loc1_ = -1722200588 ^ -427186068 ^ 0x127FBACD ^ -1915769116;
                  }
                  break;
               case 34:
                  this._1af79f36673c5b8f1dd7376f.destroy();
                  this._1af79f36673c5b8f1dd7376f = null;
                  _loc1_ = -965974526 ^ 0x15D02C6C ^ -1481860348 ^ -1804590860;
                  break;
               case 35:
                  this._ad5c1f193d58ea5c5c443dfc = null;
                  this._de3b4ba3fb31ba1b44244716 = null;
                  this._programmedCharMoveTarget = null;
                  this._programmedCharMoveTargetNPC = null;
                  this._waitForViewLoadUsernames = null;
                  this._70282fdd6927855eeb8ba3f7 = null;
                  if(app.user.luckPotionAlarm != null)
                  {
                     _loc1_ = 0x225AFB93 ^ -166388559 ^ -1340074550 ^ -2079390871;
                  }
                  else
                  {
                     _loc1_ = -1482383456 ^ 0x09B7096C ^ -485634447 ^ -1384208087;
                  }
                  break;
               case 36:
                  removeAllChildren(_d_charPositionLayer);
                  _loc1_ = -173179199 ^ 0x1B7F79C1 ^ -313329692 ^ -471858825;
                  break;
               case 37:
                  _92d7656ddc3c3da810e99c74.getInstance()._57ad3faeff9ca92cbf9fe447(_34a2ba6ad978d976b8b0f5a4.TIMER_1S)._95b5d5379ad5d337e4cae733(this._2e784541720799b6e0e202d4);
                  Cc.removeEqualSlashCommand(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ႾპႢႎၫႳမႏჇეჰჲ၂ႈ","ၙၬၘსာဥြဎგအႡგၽႍဩ჈"),this._3fb28f6394e1fa316cb4f6aa);
                  Cc.removeEqualSlashCommand(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勊劾刞勸勶刞勗割劏劆勣刴勶剔劊刣劅刄劂劶剌刧剨刎劶剿","創刬剪刘劰刦勽劆勀刎剎劾剳勝劑劥"),this._fa7a45eae45e1665b5694768);
                  Cc.removeEqualSlashCommand(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("判劑劻勮剒劔勶勇剶剿剗劙制勘剮剅","劕勯剤刍刋努勁劔勸剷劇动劔加刬刳"),this._9b9434267a14bd5f99ad4b2a);
                  Cc.removeEqualSlashCommand(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ჺႁႺႜჰဩ჻ပႪ჉ၪၲၿ့ႚႉ္ၲူმဌ჉჉ၕႰႃ","႔ၪၑბၜႌႻႎრႀဣႥ჉჌ြူ"),this._62033f602cbf1a29cf680613);
                  Cc.removeEqualSlashCommand(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勰劧勢別剑劀剔劉劇刵勋勮剛勦剥勾","劏则刚劒勳办剢勥勮利勨勿刑劯剜刳"),this._c6855de3cfca8e01004f3c2a);
                  Cc.removeEqualSlashCommand(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ဝდႧႆႅအჯၷ႑့Ⴍငၛა႕၅Ⴌზ","ၢႍႺႀှ၀ၡႄჰႂ႟ჾაဟၴთ"),this._40bb169b742e19baaff91868);
                  Cc.removeEqualSlashCommand(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剈剥勊剛劰剐勹劶创割劒剈勆加勭勴劢刦判劅剛剛劀割刵劰務勄剹刐剆初勳劾劖劚初劤労劌","到刱劻剛刦勩劘勂制加力刻剻刪勿剮"),this.loadObstacleMaps);
                  Cc.removeEqualSlashCommand(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၒჰနူၹშၣ၁ပုႺძოဒဪბႫ႑ႿၣႱဢႛႛჟၹဤჃငၰၚ၂ჲჽဂႲၶႯ၍႗Ⴒ჊","ႶတႎၝဒဇႛႰჱၔჄၿနვ჎კ"),this.obstacleMapsAlpha);
                  Cc.removeEqualSlashCommand(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ႷႢცဟႦဦႚცန჎ဃოქဉသၾ္ၱဎჷဎ႔ၧ၊ုყჄၼვჱნၗၖၯკ႔","႒ႏახრႋ၆ჍႱၖჴႳ႙မွဏ"),this._69cd9a2924cdd5f03b27063b);
                  Cc.removeEqualSlashCommand(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("Ⴅဵထ჉နၴჽ၀წဗႳဖၔ႖ၹმႭჿရၤ၍ႹყၸၘფႼწႨခႃၚၡვ","ဤၛ၂ၲၭႄႾႡဠဍူဘჄၗჹ႞"),_050167682414b5fede4b657c);
                  Cc.removeEqualSlashCommand(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("据揅掹掛揆揘挥捗挔挾捘捯揪挌捲捺挾损挱挭挤排揜挙捕揠","揍挊掸揕揼揕挙握捽接掦捨挨掖捨掅"),this.forceMove);
                  Cc.removeEqualSlashCommand(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劎劯剥勼勹刡勅勋勓勃刭剦劵刣刌剿創劒剅刡勌劊剺剎刊勜初劬","剗刯勇剷勨剓勃助劕勭創券剫劌勆勼"),this.freezeLake);
                  Cc.removeEqualSlashCommand(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捝揗揚揹揢揝捏掷揷掉掞挄挪掌捃捊挔挻掯捏掖掼","掭捨指揷挙掭揙揥掚捫捩揹挢捤揩掺"),this.reorder);
                  Cc.removeEqualSlashCommand(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ჱღႥჇႯပჹဦႶၮႤႽ၍ိၹႄ၄၊ၷყၯტႩჍႣႜႥფ႑ဈၲს၌၍ၼკ႞კ","ၼი၌ကႽဟဟႄგჄ႖჈჈၄უင"),this.removeAllShells);
                  _02fbe4cbe9e83f1b8c711799._87b72cd49d8fc861c4443e4d(this);
                  app.memoryController._b22c74d262493008365da319();
                  this._660799e0f434d28e99321254();
                  return;
               case 38:
                  this._59886d6bb7361b773844cab0.dispose();
                  this._59886d6bb7361b773844cab0 = null;
                  _loc1_ = 0x4B025079 ^ -1671330145 ^ -2080848203 ^ -1258561059;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      override public function close() : void
      {
         var _loc1_:int = -551779677 ^ -1658212001 ^ -1575697462 ^ 0x266259AC;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (-544572731 ^ 0x4EC2977E ^ -695280938 ^ -2121949450))
            {
               case 0:
                  this.destroy();
                  return;
               case 1:
                  if(parent != null)
                  {
                     _loc1_ = -1692702429 ^ 0x60AD026A ^ -1855319014 ^ -1398810934;
                  }
                  else
                  {
                     _loc1_ = 0x6D43817A ^ 0x55AF326D ^ -960724431 ^ 0x381398BD;
                  }
                  break;
               case 2:
                  parent.removeChild(this);
                  _loc1_ = 0x51E01CEB ^ 0x6A521447 ^ 0x3FD3ED9C ^ -1037939541;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function get landingMap() : BitmapData
      {
         var _loc1_:int = 0x7B79154D ^ 0x1D04B015 ^ 0x46095960 ^ -1217860198;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (-1612383340 ^ -1035381298 ^ -859314755 ^ 0x06765A41))
            {
               case 0:
                  if(this._locationLayersBase.landingMap != null)
                  {
                     _loc1_ = 0x71C14F25 ^ 0x1E14FA80 ^ -127793077 ^ 0xABAC4A;
                  }
                  else
                  {
                     _loc1_ = -1167400622 ^ -538850987 ^ 0x59A74805 ^ -1422888537;
                  }
                  break;
               case 1:
                  return this._59886d6bb7361b773844cab0;
               case 2:
                  this._59886d6bb7361b773844cab0 = new BitmapData(this._locationLayersBase.landingMap.width,this._locationLayersBase.landingMap.height,true,-296043119 ^ 0x297C8F75 ^ -71205371 ^ 0x3CE74CE1);
                  this._59886d6bb7361b773844cab0.draw(this._locationLayersBase.landingMap);
                  this._locationLayersBase.landingMap.alpha = _39d7d82359bf8046fe8ef6c4._ed4a735c5a6981f99dda5b73("捄挔挽揚掜挵掃挧挟挈捕捻掾掟掊掘揎掟控描捡揈捔揈","捚掏揩揼掶掖掺提揨捇揮掷揤挊挀揮");
                  _bd60f9ad6ef4aaf28041ce8f.DEBUG_SPRITE.addChild(this._locationLayersBase.landingMap);
                  _loc1_ = 0x742F42CC ^ 0x4C8E2703 ^ -1213010312 ^ 0x180F9A10;
                  break;
               case 3:
                  var _temp_3:* = this;
                  var _temp_2:* = §§findproperty(BitmapData);
                  var _temp_1:* = 0x41450382 ^ -1345550418 ^ -498327348 ^ 0x0CC5A4E1;
                  _temp_3._59886d6bb7361b773844cab0 = new BitmapData(_temp_1,_temp_1);
                  _loc1_ = -1427925606 ^ 0x0950DDC7 ^ 0x6DADB257 ^ 0x5902EBAD;
                  break;
               case 4:
                  if(this._59886d6bb7361b773844cab0 == null)
                  {
                     _loc1_ = -471684914 ^ 0x3D9EEC0C ^ -989341641 ^ -1939370669;
                  }
                  else
                  {
                     _loc1_ = 0x209DC7C3 ^ -685994967 ^ 0x4A15C146 ^ 0x2A889B0B;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function _23c3b6f92a3e3c08391f2110(param1:Function, ... rest) : void
      {
         var callback:Function = param1;
         var args:Array = rest;
         try
         {
            this.locationModel._23c3b6f92a3e3c08391f2110();
            this._21f79e657e6f6aa6d2206aaa();
            visible = false;
         }
         catch(e:Error)
         {
            Cc.error(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劌刵勂剺劥劻劣勰剶劊剪刽勺削刎劒勒刈剐剿删刳剠剜勁劐剒刵動刕剅労勏券刑勼勤勇剕勜刎副劗劗劺則刍剭劯劇","勡剤剤剥初勻勮剓勍动勸刟刖利勂勿"),e);
            Cc.error(e.getStackTrace());
            GameSwf._6b2ea987f29b60cd755db2f5(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ჺს၆ၟၕၷჿႀဖႾၠဥႇႺဝჁჃქႥ၆ၓႸၥჶ","ဥჴჩယჂၮၣႲလေჸႿဘ႓၀ြ"));
         }
         if(callback != null)
         {
            callback.apply(this,args);
         }
         if(this._playerChar != null)
         {
            this._playerChar._942a8f57ef8b0bf7eb977e7c();
         }
      }
      
      public function _cbd9890092484ccef108425b() : void
      {
         var _loc1_:int = -1105529218 ^ -1065894514 ^ 0x28BAE4B0 ^ 0x68BE8466;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (-2120373168 ^ -852279956 ^ -684483782 ^ -1510727392))
            {
               case 0:
                  if(this.locationModel == null)
                  {
                     _loc1_ = 0x6F0AB57A ^ -204008958 ^ -1819911810 ^ 0x3132D523;
                  }
                  else
                  {
                     _loc1_ = 0x4093223A ^ 0x3769201D ^ -1813484137 ^ -629455721;
                  }
                  break;
               case 1:
                  visible = true;
                  this.locationModel._cbd9890092484ccef108425b();
                  if(this._locationLayersBase)
                  {
                     _loc1_ = -1277432615 ^ -1750566795 ^ -2045358235 ^ -1676873493;
                  }
                  else
                  {
                     _loc1_ = 0x4172374E ^ 0x7E26EB25 ^ 0x03CEC1D5 ^ 0x02F3369A;
                  }
                  break;
               case 2:
                  this._dce4f436f52238b6bed74e5a();
                  _loc1_ = 0x2993A898 ^ 0x431094E5 ^ 0x1B2CE913 ^ 0x4FC6FE4D;
                  break;
               case 3:
                  return;
               case 4:
                  this._3b294245f08760a0082cd317();
                  _loc1_ = 0x70DE9A9A ^ -733495448 ^ 0x11F3C869 ^ -1962686792;
                  break;
               case 5:
                  visible = true;
                  _02fbe4cbe9e83f1b8c711799.addEventListener(this,this.locationModel,_4986c362bed569a2ffb299b4.ENTER_TO_LOCATION,this._2a0f34975fb1d4e797ed0b1a);
                  _02fbe4cbe9e83f1b8c711799.addEventListener(this,this.locationModel,_4986c362bed569a2ffb299b4.UPDATE_MAINTENANCE_TIME,this._abfa6bd3804ff5a2c204a14f);
                  this.locationModel._80557ec7c85c6def233bada4();
                  this.gui._e7e9991913759be9d51d4c5f(GameSwf.guiState);
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      override public function toString() : String
      {
         return _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捑振揵排挧捭掁捈挧捡揲掼採挩捅揉揳揧揈握掳揰挹揺揯掰捏挐按揭掣揅探掩掃插掍掠挸捕掘掓捿挂按掑援揤捪掌挻掻揂捌揇揧捶挴揩捴","掶揙捴挑捀挝揌挞掓挘掱採掄挗捴捅") + this._d650f495d3a32dff2d26ade4 + _95da7f1147c669197db81295._8f4866de82b7339154180ecb("列勢劮刪劯労劺刺判勐剙勆剉剩剱劲劦刟募刕勶剓募勽勎勏劖勲剭勱刂加勁勳剣势剻刦刭勔","勭剾勋劘剝刈劽劇劳劍力剡刭剌刣刭") + this._3ea0c6fc77cfb46fb34cc2cb + _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ჴႫႅჅၺၔၨყၿမ","ၾႪၠႛჍზၢჴဠჲယဍႩၾ၈ხ");
      }
      
      override public function addEventListener(param1:String, param2:Function, param3:Boolean = false, param4:int = 0, param5:Boolean = false) : void
      {
         ++this._3ea0c6fc77cfb46fb34cc2cb;
         super.addEventListener(param1,param2,param3,param4,param5);
      }
      
      override public function removeEventListener(param1:String, param2:Function, param3:Boolean = false) : void
      {
         --this._3ea0c6fc77cfb46fb34cc2cb;
         super.removeEventListener(param1,param2,param3);
      }
      
      private function _42a6abd3286b2aab69e970d4(param1:_4986c362bed569a2ffb299b4) : void
      {
         var _loc2_:Point = null;
         for each(_loc2_ in this.locationModel.shells)
         {
            this._locationLayersBase.addShell(_loc2_);
         }
      }
      
      private function _338f57b50cc695db9bdc44b0(param1:_4986c362bed569a2ffb299b4) : void
      {
         var _loc2_:Point = param1.data;
         var _loc3_:_55043b34818a7b88d28e92ef = this._locationLayersBase._202b1ebc4fc246c252082527(_loc2_.x,_loc2_.y,0x0A1B2232 ^ -2141916660 ^ 0x75ABE4B8 ^ -1821566);
         if(_loc3_ != null)
         {
            this.removeShell(_loc3_);
         }
      }
      
      private function _7ad190fbf2d60501f2003495(param1:_4986c362bed569a2ffb299b4) : void
      {
         if(this._locationLayersBase == null)
         {
            return;
         }
         var _loc2_:Point = param1.data;
         this._locationLayersBase.addShell(_loc2_);
      }
      
      private function _c48c1ae5d23d549b34aa3a33(param1:_4986c362bed569a2ffb299b4) : void
      {
         var _loc2_:Point = param1.data;
         this._locationLayersBase.addFishbox(_loc2_);
      }
      
      private function _a39dca60d12687e374b88c53(param1:_4986c362bed569a2ffb299b4) : void
      {
         var _loc2_:Point = param1.data;
         var _loc3_:_55043b34818a7b88d28e92ef = this._locationLayersBase._9ec0d0ddb6a21e008ac7809c(_loc2_.x,_loc2_.y,-992618161 ^ -1469491464 ^ 0x0966BD58 ^ 0x65DA32EB);
         if(_loc3_ != null)
         {
            this._locationLayersBase.removeFishbox(_loc3_);
         }
      }
      
      private function _87b859317d2509510f2b3eba(param1:_4986c362bed569a2ffb299b4) : void
      {
         var _loc2_:Point = param1.data;
         var _loc3_:_55043b34818a7b88d28e92ef = this._locationLayersBase._9ec0d0ddb6a21e008ac7809c(_loc2_.x,_loc2_.y,0x2A03287E ^ 0x6BFD5758 ^ 0x7FFC8997 ^ 0x3E02F6B5);
         if(_loc3_ != null)
         {
            this._locationLayersBase.destroyFishbox(_loc3_);
         }
      }
      
      private function _65e3d3d946ddf5e80cb4bf23(param1:_4986c362bed569a2ffb299b4) : void
      {
         var _loc2_:Object = param1.data;
         _loc2_.timeLeftSec = 0x3171259E ^ -1547896891 ^ 0x243E2541 ^ -1225525406;
         this._1af79f36673c5b8f1dd7376f = this._gui._b95c50dd0c652423b4b1846b(_loc2_.timeLeftSec,_loc2_.timeLeftSec,_706b9e8a05fa6a971551d21d.ECT_MINIGAME_STEVE);
         if(this._locationLayersBase.keyRoad != null)
         {
            this._locationLayersBase.keyRoad.open();
            _02fbe4cbe9e83f1b8c711799.addEventListener(this,this._1af79f36673c5b8f1dd7376f,Event.REMOVED_FROM_STAGE,this._0564e06ab15d85380c3a0dbd,false,0x650E5382 ^ 0x0CDFEB74 ^ 0x2412BE4F ^ 0x4DC306B9,true);
         }
      }
      
      private function _0564e06ab15d85380c3a0dbd(param1:Event) : void
      {
         var _loc2_:_08c120b706560fce9302bcab = null;
         _02fbe4cbe9e83f1b8c711799.removeEventListener(this,this._1af79f36673c5b8f1dd7376f,Event.REMOVED_FROM_STAGE,this._0564e06ab15d85380c3a0dbd);
         if(this._locationLayersBase.keyRoad == null || this._locationLayersBase.keyRoad.close())
         {
            return;
         }
         for each(_loc2_ in this._charList)
         {
            this._6e89154aaa15ef7683897845(_loc2_);
         }
      }
      
      private function _dd381d5dc7470dfac9ff5dd2(param1:_4986c362bed569a2ffb299b4) : void
      {
         var _loc2_:Object = null;
         var _loc3_:Object = param1.data;
         var _loc4_:Object = _loc3_.getPositions();
         for each(_loc2_ in _loc4_)
         {
            this._locationLayersBase._5afbfdf792004d80fb00b861(new Point(_loc2_.x,_loc2_.y));
         }
         this._gui._b95c50dd0c652423b4b1846b(_loc3_.timeLeftSec,_loc3_.timeLeftSec,_706b9e8a05fa6a971551d21d.ECT_MINIGAME_BOB);
         this._73e7023a09870facacc2ed79 = new _33dd41a12065671be9311587();
         this._73e7023a09870facacc2ed79._bc1d2c0c359bffe4ef99cfee(_loc3_.timeLeftSec,new _0ce7a4d99e17666ff0e19ce6(this._bb8b67d560c5a6f6b28879c9));
      }
      
      private function _2bce46c297a8d83805f364a7(param1:_4986c362bed569a2ffb299b4) : void
      {
         this._bb8b67d560c5a6f6b28879c9();
      }
      
      private function _ec92874fbed80f580020c3ea(param1:_4986c362bed569a2ffb299b4) : void
      {
         var _loc2_:Object = null;
         var _loc3_:Object = param1.data;
         for each(_loc2_ in _loc3_)
         {
            this._locationLayersBase._2437fa057e87547fc3e09012(new Point(_loc2_.x,_loc2_.y));
         }
      }
      
      private function _3e5731a9b4a461191a6526d8(param1:_4986c362bed569a2ffb299b4) : void
      {
         var _loc2_:int = parseInt(param1.data.boatId);
         var _loc3_:String = param1.data.username;
         var _loc4_:_a5c3dbdfbeb709a5bf92d27c = param1.data.boatPosition;
         this.putCharToBoat(_loc2_,_loc3_,_loc4_);
      }
      
      private function putCharToBoat(param1:int, param2:String, param3:_a5c3dbdfbeb709a5bf92d27c = null) : void
      {
         Cc.logch(this,_95da7f1147c669197db81295._8f4866de82b7339154180ecb("刨劉刷勌勺劔劧劊勇剏则刜刖刕刉剁刼动刿刎劽劣刣剀剭劜剻刳剦刑勨劣刳刄劷刳刏効剢勒勡勑剔剭勚刄劚勻勩劚剻初劭刐劯劍刟募","劊勯别劧勽務劚刿劋則剸勿劬劻勿劵") + param1 + _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ဘၕ၄ႢႾძၵၵზဟဆဇိႩ჎ოၜေႜဉလတႼႮქჹဖဩ჏ჽსၸ","ტံႵ႒ႴაႰშფၡ၇ၬၶၪ჌ჸ") + param2 + _95da7f1147c669197db81295._8f4866de82b7339154180ecb("剼劆剕勁勦剀勘刃刌務剐劀剰剘剶刜刿剪劊劮刘刚劫刾剬剿勅劢劁劋刾剜刏刃勶剑劘勸劽劊","劢勀副剃券則刽勀劥劓剦剉勃別剼刧") + param3 + _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၾႳႫ႞ჄလჇႵၚ႙","Ⴡჾ၄ႥအსႊპႦჀ჈Ⴆွဣკ჋"));
         var _loc4_:_40c40768738c862c74ddd128 = this._locationLayersBase._eff2210177460a6b2f06ef20(param1);
         if(param3 != null)
         {
            _loc4_._85417e54da3f83740bb9bbfa(param3);
         }
         var _loc5_:_08c120b706560fce9302bcab = this._0d82238986438e23b653c2b8(param2);
         if(_loc5_ != null)
         {
            Cc.logch(this,_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捋捰挿揄揘握掱揄掛掵揍揄揉捍挑掩揋捅揯捖挺掔掛捙揁捼掹揩掬挭揷揻捾捏推捦挳捣掶揩捀揈揥挰授挤捄捧捗挪掤挽揷捯挔掜掴捴捪捓捿捞挫捀","掀掝揂揚插捵援揻捥捣掝掘挪掺捎掖") + _loc5_.locationUser.username + _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၩဧႾၣძၜၓ჎ဂၲ","ხგႲႠဩႝတႵဝႡჹၺႹတႶၵ"));
            _loc5_._c546eb84adc3ff027f8b512a(_loc4_);
         }
      }
      
      private function _bb8b67d560c5a6f6b28879c9() : void
      {
         var _loc1_:int = 0x72279946 ^ 0x55DF1A66 ^ 0x189C78CF ^ 0x5E26AE14;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (-1944220903 ^ -2031799059 ^ -966645341 ^ -1378303057))
            {
               case 0:
                  this._gui._7da8f3c12244070df2c23152(_706b9e8a05fa6a971551d21d.ECT_MINIGAME_BOB);
                  _loc1_ = 0x21AC46E3 ^ -1611885900 ^ -1784315526 ^ 0x4AA700D7;
                  break;
               case 1:
                  return;
               case 2:
                  if(this._73e7023a09870facacc2ed79 != null)
                  {
                     _loc1_ = 0x66DF19F7 ^ 0x4304FFE3 ^ 0x3B96CBCC ^ 0x7F0F7824;
                  }
                  else
                  {
                     _loc1_ = 0x667BC819 ^ -993137213 ^ 0x19C0B5C1 ^ -634075678;
                  }
                  break;
               case 3:
                  this._locationLayersBase._63ecae1a1945233fa8f786fa();
                  if(this._gui._b66d5fe309c22d89cc02cda6(_706b9e8a05fa6a971551d21d.ECT_MINIGAME_BOB) != null)
                  {
                     _loc1_ = 0x68C4E09F ^ 0x74C8E7 ^ -1222951792 ^ -1092009712;
                  }
                  else
                  {
                     _loc1_ = -1609974528 ^ -889202848 ^ 0x4CA788F9 ^ 0x4713B763;
                  }
                  break;
               case 4:
                  this._73e7023a09870facacc2ed79.destroy();
                  _loc1_ = -712535031 ^ -72148795 ^ 0x2A4B0CEC ^ 0x653DD5D9;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function _b24937139cc44ffe53f7fc23(param1:Number, param2:Number, param3:_08c120b706560fce9302bcab = null) : Boolean
      {
         var _loc4_:Boolean = false;
         if(!(param3 is _c9513c48978d5034cc9ff2f4))
         {
            return _loc4_;
         }
         if(this._locationLayersBase == null)
         {
            return _loc4_;
         }
         if(Boolean(this._locationLayersBase.specialWall && this._locationLayersBase.specialWall.hitTest(param1,param2) || this._locationLayersBase.keyRoad != null && param3 == this._playerChar && this._locationLayersBase.keyRoad.hitTest(param1,param2) || this._locationLayersBase.landingWall && this._locationLayersBase.landingWall.hitTest(param1,param2,param3) || this._locationLayersBase.frozenLake && this._locationLayersBase.frozenLake.hitTest(param1,param2) || this.locationModel.id == (-330231603 ^ 0x093549F5 ^ -608392102 ^ 0x3ED8F561) && this._locationLayersBase.isFishMarketOpen() == false && _bd60f9ad6ef4aaf28041ce8f._1b96ba36534091c4808a485e(param1,param2,param3) || this.locationModel.id == (-1139778062 ^ 0x0A6F1BC7 ^ -1141434996 ^ 0x0D8853B8) && this._locationLayersBase.isDecorationMarketOpen == false && _bd60f9ad6ef4aaf28041ce8f._07d8e39a0b3eef19bd9d3a65(param1,param2) && this.locationModel.isSublocation == false) || Boolean(this.locationModel.id == (-910991256 ^ 0x5B25F4B2 ^ 0x625AB943 ^ -255054437) && this
         ._427defea9bfa858db1cb9777 == false && _bd60f9ad6ef4aaf28041ce8f._93afd659d7c17fa3b23471d6(param1,param2)) || this._01cf1a1d1dab83e00a988531._585a1fdc57cc7d02db6cabf5(param1,param2))
         {
            _loc4_ = true;
         }
         return _loc4_;
      }
      
      public function _7c0f8e1e99739d07d394663c(param1:Number, param2:Number) : Boolean
      {
         return false;
      }
      
      public function _05e9bcfb5be4f623caf15f1d() : void
      {
         this.moneyTreeDialog = app.dialogFactory._33d93d9edb01f19d3e675537();
         this.moneyTreeDialog._9715613ad59405c1fc90b0aa(this._724f575dfd77053760dfe3c8);
         this.moneyTreeDialog.show();
      }
      
      public function _9a62ebd0db0249ee0917d4c7() : void
      {
         var _loc1_:_4b5a19ada8c53700a7227781 = null;
         if(this._needToShowMissionCompletedDialog && app.user.completedMissionData.length > (0x0E33CDC3 ^ -2128590546 ^ 0x64BA62C8 ^ -341187035))
         {
            _loc1_ = app.dialogFactory._55d7d150d991c4bb35c4f104();
            _loc1_._9c6b10d69a8856063192b0c5(new _6c4d7e638317cabf44146578(app.user.completedMissionData.pop()));
            _loc1_.show();
            app.user.hasSeenNewMissions = false;
            this.gui.missionsUncleSamWidget.notifierEnabled = true;
            this._needToShowMissionCompletedDialog = app.user.completedMissionData.length > (0x18865C52 ^ 0x755A1FE8 ^ 0x58854B58 ^ 0x355908E2);
         }
      }
      
      private function _bf971d1bb8050ac33759de89(param1:Event = null) : void
      {
         if(this.caughtDialog == null)
         {
            return;
         }
         if(param1 != null)
         {
            _4afcffb379abb67c2a3266dc(param1.target).removeEventListener(CLOSED_CAUGHT_DIALOG,this._bf971d1bb8050ac33759de89);
         }
         if(this._8cee8fcbcec66b9e75cc1132)
         {
            if(this._5241dcc27353a41316aa8190)
            {
               this._5241dcc27353a41316aa8190 = false;
               app.user._ec74454b6e430d88fcceb42e();
               if(this._gui != null && this._gui.levelIndicator != null)
               {
                  this._5d8d89eb033e1b19dda8cbd7();
               }
               this._7bb43154089445b88b02842d(this._19d5ac9c472f59f06c780944,false);
            }
            if(this._needToShowMissionCompletedDialog)
            {
               this._9a62ebd0db0249ee0917d4c7();
            }
         }
         this.caughtDialog = null;
      }
      
      private function _2e784541720799b6e0e202d4(param1:uint, param2:uint) : void
      {
         if(Boolean(app.user.needToShowDailyQuestsComplete) && app.user.inFishingProcess.value == false && this._7fe05aca52f25fef392392be != null)
         {
            app.user.needToShowDailyQuestsComplete = false;
            this._7fe05aca52f25fef392392be.onMouseClick();
         }
      }
      
      private function _53c47e6c7e5db1f8812ed343() : void
      {
         var _loc1_:int = 0x7055CE75 ^ 0x7B84B544 ^ -307506715 ^ -1764811497;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (-168227775 ^ -1836361087 ^ -1236822392 ^ -1585416309))
            {
               case 0:
                  if(this._locationLayersBase == null)
                  {
                     _loc1_ = 0x2CF3F9B7 ^ 0x5D7AB9FE ^ -1354069443 ^ -1367966282;
                  }
                  else
                  {
                     _loc1_ = 0x1275F38D ^ -956926808 ^ -1902548008 ^ 0x2AAF5B3C;
                  }
                  break;
               case 1:
                  return;
               case 2:
                  _67f8febc099eaa05c48aa41e.isFishMarketOpen = false;
                  this._locationLayersBase._8da2a70b254394476be6a342(false);
                  this._72cdc7a9d73e942fa68f9973.destroy();
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function _fca932ddc3d4528c4cf16495() : void
      {
         var _loc1_:int = 0x13983269 ^ -42792424 ^ 0x2DF76100 ^ 0x4CEB911E;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (0x4C5381CE ^ -9892791 ^ 0x0A0EDDEE ^ 0x36C39806))
            {
               case 0:
                  if(this._locationLayersBase == null)
                  {
                     _loc1_ = -1517521461 ^ -236122928 ^ 0x38F73201 ^ -480148620;
                  }
                  else
                  {
                     _loc1_ = 0x4D5308D9 ^ -13350331 ^ -261198378 ^ -838932697;
                  }
                  break;
               case 1:
                  return;
               case 2:
                  _67f8febc099eaa05c48aa41e.isFishMarketOpen = true;
                  this._locationLayersBase._8da2a70b254394476be6a342(true);
                  this._72cdc7a9d73e942fa68f9973.destroy();
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function _94cb52e01f4eaa79d2dcc699() : void
      {
         var _loc1_:int = -157424879 ^ -454277006 ^ -1577900653 ^ 0x6796E215;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (0x204B0400 ^ 0x1DC5C14C ^ -1981687861 ^ 0x607B7E62))
            {
               case 0:
                  if(this._locationLayersBase == null)
                  {
                     _loc1_ = 0x402CB8DB ^ -1275645752 ^ 0x6A15AE66 ^ 0x4DDA4A92;
                  }
                  else
                  {
                     _loc1_ = 0x598F5113 ^ 0x7EB20D23 ^ 0x4EF7BFAE ^ -1109487750;
                  }
                  break;
               case 1:
                  this._locationLayersBase._2ab9e1ce7d6a25a5ee856c72(true);
                  this._caab76bfbff3e37e7a65d68f.destroy();
                  return;
               case 2:
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function _6b61b392d089b7ecd3e92373() : void
      {
         var _loc1_:int = 0x36DAE855 ^ 0x09B01BB3 ^ 0x1A8F350A ^ 0x06A27288;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (-1495123830 ^ 0x5DAF9141 ^ 0x0DCB002E ^ -708764287))
            {
               case 0:
                  if(this._locationLayersBase == null)
                  {
                     _loc1_ = 0x5239EC7C ^ -202904693 ^ 0x752D9237 ^ -139189851;
                  }
                  else
                  {
                     _loc1_ = 0x65FBD37F ^ -911101567 ^ 0x2FBB0237 ^ -1598630737;
                  }
                  break;
               case 1:
                  return;
               case 2:
                  this._locationLayersBase._2ab9e1ce7d6a25a5ee856c72(false);
                  this._caab76bfbff3e37e7a65d68f.destroy();
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function _2b083dd5e9245358d284a01f() : void
      {
         this._locationLayersBase._2b083dd5e9245358d284a01f();
      }
      
      public function _1c159b38b0afc6bd2e36e87c(param1:FishBlocksAtLakesDataResp, param2:uint) : void
      {
         var _loc3_:int = 0x353E0E66 ^ -1593549978 ^ -1127974504 ^ -1253296384;
         loop0:
         while(true)
         {
            switch(_loc3_ ^ (-473394993 ^ -2044432220 ^ 0x1D2B3391 ^ -445265824))
            {
               case 0:
                  this._locationLayersBase._1c159b38b0afc6bd2e36e87c(param1,param2,[param2 + (-137025616 ^ -1928309193 ^ 0x4A086D8A ^ 0x30CD1C0C),param2 + (0x3DCE825C ^ 0x0775B040 ^ -1336520530 ^ -1964154192)]);
                  return;
               case 1:
                  return;
               case 2:
                  if(this._locationLayersBase == null)
                  {
                     _loc3_ = -1933514590 ^ 0x0FE202C6 ^ -261841685 ^ -285971180;
                  }
                  else
                  {
                     _loc3_ = 0x7CCBCFAE ^ -903990215 ^ 0x0B3EE68B ^ 0x20590686;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function hitTestBoats(param1:Number, param2:Number, param3:Bitmap = null) : Boolean
      {
         var _loc4_:Point = null;
         var _loc5_:_40c40768738c862c74ddd128 = null;
         var _loc6_:Number = NaN;
         var _loc7_:Boolean = false;
         if(this._locationLayersBase.boats.length == (0x25D09FAA ^ 0x646BF817 ^ -388038743 ^ -1452959724))
         {
            return _loc7_;
         }
         var _loc8_:Point = new Point(param1,param2);
         if(param3 != null)
         {
            var _temp_2:* = §§findproperty(Point);
            var _temp_1:* = -1257217886 ^ 0x1E287F11 ^ -1657130486 ^ 0x36022DB9;
            _loc4_ = new Point(_temp_1,_temp_1);
            _loc4_.x = param1 - param3.width / (0x74C39F27 ^ 0x61DB0FF9 ^ 0x5F77A7A2 ^ 0x4A6F377E);
            _loc4_.y = param2 - param3.height / (-849939547 ^ -833318241 ^ 0x336275C1 ^ 0x306014F9);
         }
         for each(_loc5_ in this._locationLayersBase.boats)
         {
            _loc6_ = (_loc5_.graphic.x - param1) * (_loc5_.graphic.x - param1) + (_loc5_.graphic.y - param2) * (_loc5_.graphic.y - param2);
            if(_loc6_ < (-761504135 ^ -336516439 ^ 0x31B7A0EF ^ 0x08DB8BAF))
            {
               _loc7_ = param3 == null ? _loc5_.hitTestPoint(_loc8_) : _loc5_.hitTest(param3.bitmapData,_loc4_);
               if(_loc7_)
               {
                  break;
               }
            }
         }
         return _loc7_;
      }
      
      public function stopFishing() : void
      {
         var _loc1_:int = -600222908 ^ 0x13DB6630 ^ -1393288194 ^ 0x188CA4EC;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (-1534897239 ^ -1072895758 ^ 0x67C00EE7 ^ 0x78D53FD8))
            {
               case 0:
                  return;
               case 1:
                  this._playerChar.reelIn();
                  return;
               case 2:
                  if(this._playerChar == null)
                  {
                     _loc1_ = 0x206F6414 ^ -2007467910 ^ -279542915 ^ 0x3CFB1577;
                  }
                  else
                  {
                     _loc1_ = -732914386 ^ 0x63391A6B ^ 0x6EE00852 ^ -1575811726;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function _df415363e25dab7c49b70f79() : void
      {
         if(this._427defea9bfa858db1cb9777 || this.locationModel.id != (0x0C9014C9 ^ 0x60E86FED ^ -886272039 ^ -1487604481))
         {
            return;
         }
         this._427defea9bfa858db1cb9777 = true;
         this._locationLayersBase._c3c3fd4ed9f1ce80f3e08210();
      }
      
      public function _b0283d04bfdf80156c4365be() : void
      {
         if(!this._427defea9bfa858db1cb9777 || this.locationModel.id != (-1163624286 ^ 0x64151545 ^ 0x237477CE ^ -37363157))
         {
            return;
         }
         this._427defea9bfa858db1cb9777 = false;
         this._locationLayersBase._2ad4d4984befd68039b4b0f8();
      }
      
      public function _959161d5b571a8be972f46ad() : void
      {
         this._7f49f91fc4c82d7a524ae994 = true;
      }
      
      public function _d884928dd68180fa7fdbb4e7(param1:int) : void
      {
         GameSwf.instance.needSetPositionAfterExitVirtualLocation = false;
      }
      
      public function _6ec6a06f2a972fcc64c284b2(param1:_810c4ade948afb64e9c7ee25) : Boolean
      {
         return param1.fieldChar.graphic.x > this.locationLayersBase.scrollRect.x && param1.fieldChar.graphic.y > this.locationLayersBase.scrollRect.y && param1.fieldChar.graphic.x < this.locationLayersBase.scrollRect.x + this.locationLayersBase.scrollRect.width && param1.fieldChar.graphic.y < this.locationLayersBase.scrollRect.y + this.locationLayersBase.scrollRect.height;
      }
      
      private function _d8e51dc6786d5e7b51d22f01() : void
      {
         this._622c992af75d3cf7759ca6d6();
         this._059eb24983da3d2e46ed078e();
         this._9cb9e5bfabadfa216618150b();
         this._7b769100fef0d61a23007e41();
      }
      
      private function _059eb24983da3d2e46ed078e() : void
      {
         var _loc1_:_4f48dd375cfd8fe59cb2be02 = this._5b717b09b0c6109b2d33310c._97ff7d2f681e8eebad63961e(_563cabc253cc273ff4b017b3.EHT_HALLOWEEN) as _4f48dd375cfd8fe59cb2be02;
         this._01cf1a1d1dab83e00a988531._9bf3030354cbcbeb64662f7d(_loc1_.pumpkinHeads,this.locationModel.absoluteId);
      }
      
      private function _7b769100fef0d61a23007e41(param1:Number = 0) : void
      {
         var _loc2_:_4f48dd375cfd8fe59cb2be02 = this._5b717b09b0c6109b2d33310c._97ff7d2f681e8eebad63961e(_563cabc253cc273ff4b017b3.EHT_HALLOWEEN) as _4f48dd375cfd8fe59cb2be02;
         this._01cf1a1d1dab83e00a988531._68f6ac41ebd2c947a9e19a82(_79faae52d0fcb082083a102d.EHIT_PUMPKIN_HEAD,_loc2_.isActive,param1);
      }
      
      private function _622c992af75d3cf7759ca6d6() : void
      {
         var _loc1_:_398e0919975e4cb37bc68285 = this._5b717b09b0c6109b2d33310c._97ff7d2f681e8eebad63961e(_563cabc253cc273ff4b017b3.EHT_CHRISTMAS) as _398e0919975e4cb37bc68285;
         this._01cf1a1d1dab83e00a988531._9bf3030354cbcbeb64662f7d(_loc1_.balloons,this.locationModel.absoluteId);
      }
      
      private function _9cb9e5bfabadfa216618150b(param1:Number = 0) : void
      {
         var _loc2_:_398e0919975e4cb37bc68285 = this._5b717b09b0c6109b2d33310c._97ff7d2f681e8eebad63961e(_563cabc253cc273ff4b017b3.EHT_CHRISTMAS) as _398e0919975e4cb37bc68285;
         this._01cf1a1d1dab83e00a988531._68f6ac41ebd2c947a9e19a82(_79faae52d0fcb082083a102d.EHIT_SANTA_BALLOON,_loc2_.isActive,param1);
      }
   }
}

