package com.ax3.fishao.locations.base
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import assets.common.DebugLakeCell;
   import assets.common.FishingZone;
   import com.ax3.events._02fbe4cbe9e83f1b8c711799;
   import com.ax3.fishao.Config;
   import com.ax3.fishao.debug._9b189a790efd59581443eb40;
   import com.ax3.fishao.events._178a822f6f1028b33439b0d5;
   import com.ax3.fishao.locations.*;
   import com.ax3.fishao.locations.base.daycycle._269c2cba4bf717aa1c0db1fa;
   import com.ax3.fishao.locations.chars._85c463930cec98e06d72d6a3;
   import com.ax3.fishao.locations.entries._08c120b706560fce9302bcab;
   import com.ax3.fishao.locations.items.view._b24d698d62126854674d50a8;
   import com.ax3.fishao.locations.objects._16d81cd3752ec17476350b1a;
   import com.ax3.fishao.locations.objects._296ee54b441acfe4f3a01508;
   import com.ax3.fishao.locations.objects._60ca73acc6a9648cf0a76e6f;
   import com.ax3.fishao.locations.objects._9764d11560b9366107f04187;
   import com.ax3.fishao.locations.objects._9ab09ce89d8862a65811bed2;
   import com.ax3.fishao.locations.objects._a0122b99577546c514d5fb28;
   import com.ax3.fishao.locations.objects._b7bea0b482b17e66dd570fc5;
   import com.ax3.fishao.locations.objects._d06e8ada26b7326913cdb9c9;
   import com.ax3.fishao.locations.objects.boat._40c40768738c862c74ddd128;
   import com.ax3.fishao.locations.sublocation._a5e6911f85306c220b8b5d78;
   import com.ax3.fishao.locations.tournaments._12463b7a4f31956d48b752ee;
   import com.ax3.fishao.locations.water._28a5e9d5363b929d00daf15f;
   import com.ax3.fishao.locations.water._c626ec0ea9923b808c6349cc;
   import com.ax3.fishao.locations.weather._da93b7e4b1cf62dcb698e0bd;
   import com.ax3.fishao.utils._9c52777792d76fde110d23c0;
   import com.ax3.fishao.view.dialogs.holidays.views._51ba0158a860b043fa168db6;
   import com.ax3.fishao.view.dialogs.tournaments.models._2a31502166ae419b5332a782;
   import com.ax3.fishao.watercraft._a00a2200c99ccb365fe1b90e;
   import com.ax3.geom._a5c3dbdfbeb709a5bf92d27c;
   import com.ax3.managers._55043b34818a7b88d28e92ef;
   import com.ax3.managers._eb2dccb1856b952dc47c053a;
   import com.ax3.net._f5d3c19b4de5df055d1bc952;
   import com.ax3.utils.ColorMatrix;
   import com.ax3.utils.DisplayObjectUtil;
   import com.ax3.utils._5f5fc3a6dc1e8f79994a4a9b;
   import com.ax3.utils._8dbac3cb2bae16fc4e0e0f27;
   import com.ax3.utils.display.disableMouse;
   import com.ax3.utils.empty;
   import com.ax3.utils.emptyVector;
   import com.ax3.utils.removeAllChildren;
   import com.ax3.utils.removeAllChildrenRecursive;
   import com.ax3.utils.removeFromParent;
   import com.ax3.utils.timer._34a2ba6ad978d976b8b0f5a4;
   import com.ax3.utils.timer._69eec7d2f73604da25ccda04;
   import com.ax3.utils.timer._92d7656ddc3c3da810e99c74;
   import com.inkora.tween.TweenCube;
   import com.junkbyte.console.Cc;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.InteractiveObject;
   import flash.display.MovieClip;
   import flash.display.Shape;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.filters.ColorMatrixFilter;
   import flash.filters.GlowFilter;
   import flash.geom.ColorTransform;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   import flash.net.URLRequest;
   import flash.system.ApplicationDomain;
   import flash.system.System;
   import flash.text.TextField;
   import flash.utils.Dictionary;
   import flash.utils.getTimer;
   import protocol.sr.debugging.FishBlocksAtLakesDataResp;
   
   public class _bd60f9ad6ef4aaf28041ce8f extends Sprite implements _69eec7d2f73604da25ccda04
   {
      
      internal static var _0a7f35e7b4f831fcb900592b:int;
      
      public static var charMessagesLayer:Sprite = new Sprite();
      
      public static var DEBUG_SPRITE:Sprite = new Sprite();
      
      private static const _a8cd7e2998f94b76ddd36b0d:BitmapData = _2ae697a31ef3b734beea4a2d();
      
      private const _49cd2343ec942db09f3cb722:int = 10;
      
      private var _9f093b8b185337e28d5404ab:MovieClip;
      
      protected var _bottomLayer:DisplayObjectContainer;
      
      private var _9538484d27ba215be40aadcb:_28a5e9d5363b929d00daf15f;
      
      private var _2b0896c6d0a530499ca65cf8:DisplayObjectContainer;
      
      public var _bottom2Layer:DisplayObjectContainer;
      
      public var mainLayer:Sprite;
      
      public var floatingGuiLayer:Sprite;
      
      protected var _topLayer:DisplayObjectContainer;
      
      private var _c5ac49f492d09d052de9acd4:_04be5e604d9554b1e12ed3f1;
      
      private var _2595a9d9b1bfa3376e72cb8b:DisplayObjectContainer;
      
      private var _19e5a63f04ab067b6a1fae5d:Sprite;
      
      private var _ddef0d049d3de3d08bd19a3a:_c626ec0ea9923b808c6349cc;
      
      protected var _layerSpecial:DisplayObjectContainer;
      
      public var _zSorter:_37c8f922bd2e41b13259d481;
      
      private var _34d6de36a0510fa2ea937b04:Point;
      
      private var _2cfa40737447e7273389a616:DisplayObjectContainer;
      
      private var _73198cea26e250f553300b17:Vector.<_69eec7d2f73604da25ccda04> = new Vector.<_69eec7d2f73604da25ccda04>();
      
      private var _6195cb3b41c1a624e4aefb41:Vector.<_69eec7d2f73604da25ccda04> = new Vector.<_69eec7d2f73604da25ccda04>();
      
      protected var _visibilityManager:_9d566fbc8faadcbcc57f15fe;
      
      protected var _obstacleMapBitmapData:BitmapData;
      
      private var _0275cb7be397e6b98706c6c3:BitmapData;
      
      public var soundMapBitmapData:BitmapData;
      
      private var _fce6d02e4e607c9fb4208dec:DisplayObjectContainer;
      
      private var _88db867279e5a25411de40aa:Vector.<DisplayObject>;
      
      private var _7662020ef88e5dd76f67739a:uint;
      
      private var _ddc03b79d89c9c6960c201b9:uint;
      
      private var _1b070ccfd9aba61d0966e17d:int;
      
      protected var _applicationDomain:ApplicationDomain;
      
      private var _fb5e6481710930750b82d357:Dictionary = new Dictionary();
      
      private var _1212b384e0d9409aee0efe8a:_a00a2200c99ccb365fe1b90e;
      
      protected var _sublocationEnters:Vector.<_a5e6911f85306c220b8b5d78> = new Vector.<_a5e6911f85306c220b8b5d78>(0x4F40DE26 ^ -1127521792 ^ 0x40076FDC ^ -1282616326);
      
      public var wallButtonEnters:Vector.<_93801b1eb0ddeaa9f8a99f9f> = new Vector.<_93801b1eb0ddeaa9f8a99f9f>(-2006421128 ^ -1213841266 ^ 0x7F8F00B1 ^ 0x40413147);
      
      private var _c636a9008b287c77b787592d:MovieClip;
      
      private var _7f4c4d3ce6b374ffe3041cc3:_9764d11560b9366107f04187;
      
      public var boatByIndex:Dictionary = new Dictionary();
      
      private var _39d73d3afcbca5aad3b0c0e4:Vector.<BitmapData>;
      
      private var _e5cf3083d48dfd0c91722de9:_eb2dccb1856b952dc47c053a;
      
      private var _2612954270c443e009a41713:BitmapData;
      
      private var _f37b0339d029ff74ae76a13d:_eb2dccb1856b952dc47c053a;
      
      private var _7d3eb7775a3eeff80eacae0f:Vector.<_7cc6184a6a6df90ac01c6c08> = new Vector.<_7cc6184a6a6df90ac01c6c08>();
      
      private var _0e7dea17c02b26492e44e974:_eb2dccb1856b952dc47c053a;
      
      private var _f8991787ca249bf0354f1d4a:_eb2dccb1856b952dc47c053a;
      
      public var bestPlayer:MovieClip;
      
      public var topPlayerBoard:MovieClip;
      
      private var _663add367e295c4e401e355a:_abbbb5592f09d3723539995b;
      
      private var _c6149c23ac0b7ae831123747:Array;
      
      private var _bb9e557c6ae085296248ef18:MovieClip;
      
      private var _9ff0cfc80c91df8a1178a691:MovieClip;
      
      public var specialWall:_b7bea0b482b17e66dd570fc5;
      
      public var landingWall:_9ab09ce89d8862a65811bed2;
      
      public var keyRoad:_16d81cd3752ec17476350b1a;
      
      public var frozenLake:_60ca73acc6a9648cf0a76e6f;
      
      public var boats:Vector.<_40c40768738c862c74ddd128> = new Vector.<_40c40768738c862c74ddd128>();
      
      public var tournamentWalls:_12463b7a4f31956d48b752ee;
      
      public var tournamentFinish:_a5e6911f85306c220b8b5d78;
      
      private var _2fb88311b89050d1f183f3bb:_f5d3c19b4de5df055d1bc952;
      
      private var _e8d1aa0c19a7a3446ada0870:Bitmap;
      
      private var _5bbc65ca60a8e8c3a6c58c13:_f5d3c19b4de5df055d1bc952;
      
      private var _60ce786b92a924c287dac885:Bitmap;
      
      private var _3bfeeeec4d93a48347bf91fa:_f5d3c19b4de5df055d1bc952;
      
      private var _d999a3358ad3b1440b6f4613:Bitmap;
      
      private var _e614a759f50203320a3a7f68:Number = 0;
      
      private var _ccf75e1f4569a1197facf1d1:Number = 0;
      
      private var _506ffa81b31dab5143a16c4b:Vector.<_e82930b870cc8514498fa9d2> = new Vector.<_e82930b870cc8514498fa9d2>();
      
      private var _030f8741df827db9c10a0653:Vector.<_90e1ac06a8e81403c4b24e0b> = new Vector.<_90e1ac06a8e81403c4b24e0b>();
      
      private var _6b0a1871221a7637dc588649:MovieClip;
      
      private var _7a80f5dcfbb903a5f0bfd7c6:MovieClip;
      
      public var friendHouseDoor:MovieClip;
      
      private var _7add36b068237b4c94c1510a:Boolean = false;
      
      private var _3d05188fed68153be18319b9:Boolean = false;
      
      private var _0cf75d1fdc622ed9bab69af0:Boolean = true;
      
      private var _e87a7f4f1d3814d3f06cc5c7:_269c2cba4bf717aa1c0db1fa;
      
      public var startLineCounter:MovieClip;
      
      public function _bd60f9ad6ef4aaf28041ce8f()
      {
         super();
         this._c5ac49f492d09d052de9acd4 = new _04be5e604d9554b1e12ed3f1();
         this._c5ac49f492d09d052de9acd4.weatherType = _da93b7e4b1cf62dcb698e0bd.SUNNY;
         this._9538484d27ba215be40aadcb = new _28a5e9d5363b929d00daf15f();
         this._9538484d27ba215be40aadcb.mouseEnabled = false;
         _92d7656ddc3c3da810e99c74.getInstance()._57ad3faeff9ca92cbf9fe447(_34a2ba6ad978d976b8b0f5a4.TIMER_200).add(this._9538484d27ba215be40aadcb);
         this._ddef0d049d3de3d08bd19a3a = new _c626ec0ea9923b808c6349cc();
         this._topLayer = new Sprite();
         this._topLayer.mouseEnabled = false;
         this._topLayer.mouseChildren = false;
         this._2b0896c6d0a530499ca65cf8 = new Sprite();
         this._layerSpecial = new Sprite();
         this._layerSpecial = new Sprite();
         this.mainLayer = new Sprite();
         this.floatingGuiLayer = new Sprite();
         this._bottomLayer = new Sprite();
         this._bottom2Layer = new Sprite();
         this._2595a9d9b1bfa3376e72cb8b = new Sprite();
         this._2595a9d9b1bfa3376e72cb8b.alpha = -1388144407 ^ -837239360 ^ 0x4DF24DAC ^ 0x2EA86885;
         this._zSorter = new _37c8f922bd2e41b13259d481(this.mainLayer);
         this._visibilityManager = new _9d566fbc8faadcbcc57f15fe(DEBUG_SPRITE);
         this._bottomLayer.name = _8ca229732b0e4cee4c2a4242.ELT_BOTTOM;
         this._bottom2Layer.name = _8ca229732b0e4cee4c2a4242.ELT_BOTTOM_2;
         this.mainLayer.name = _8ca229732b0e4cee4c2a4242.ELT_MAIN;
         this._2595a9d9b1bfa3376e72cb8b.name = _8ca229732b0e4cee4c2a4242.ELT_ADVERTISING;
         this.floatingGuiLayer.name = _8ca229732b0e4cee4c2a4242.ELT_FLOAT_GUI;
         this._topLayer.name = _8ca229732b0e4cee4c2a4242.ELT_TOP;
         this._2b0896c6d0a530499ca65cf8.name = _8ca229732b0e4cee4c2a4242.ELT_RADAR;
         this._layerSpecial.name = _8ca229732b0e4cee4c2a4242.ELT_SPECIAL;
         charMessagesLayer.name = _8ca229732b0e4cee4c2a4242.ELT_MESSAGES_CHAR;
         this._c5ac49f492d09d052de9acd4.name = _8ca229732b0e4cee4c2a4242.ELT_WEATHER;
         this._9538484d27ba215be40aadcb.name = _8ca229732b0e4cee4c2a4242.ELT_EFFECTS_WATER;
         DEBUG_SPRITE.name = _8ca229732b0e4cee4c2a4242.ELT_DEBUG;
         this._65ab545691c2cc4b8a5276f4();
         DEBUG_SPRITE.mouseEnabled = false;
         Cc.addSlashCommand(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捴挾挎掝捒捜掫掣掦揦捼捝捾捲捳捽捇捥捙揧捫挿捵挻换揰捭揧挡挋揅揶揱捏揺揜掣挩","捄揹掭挄掕挨挕捽挘掞捶揓掋捯揊掹"),this.generateNpcPath);
         Cc.addSlashCommand(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挜握掋揪捼揗捣掾捨捺掑挨掷揤捛挀揋掊捫捿捩挩捅捠挝挪掓捓捒挾揆掹揢捙掁捜捺掘掍挢揬捰揥捀插掄","掜排据掸揑掊捩揎挐揅振捗揇採掭掂"),this.highLightIsoObjects);
         Cc.addSlashCommand(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("损捪揚捚挘掠揤揸挆捤捅捙掘掄挟捸掌挶挋挓揮挆挈捖捩挏捸捍挷捈挑掝持揓掄捁掝挄捍揳掕掎挎掏持掯","揦捵挩掺捦挆揆掼挂掶揩挽挈掯挰揫"),this._b6022d405fbc9878375e36d7);
      }
      
      protected static function _a59e9ad02d49ff892e329e08(param1:DisplayObject, param2:DisplayObjectContainer) : void
      {
         var _loc3_:Point = null;
         if(param1.parent != null)
         {
            _loc3_ = new Point(param1.x,param1.y);
            _loc3_ = param1.parent.localToGlobal(_loc3_);
            _loc3_ = param2.globalToLocal(_loc3_);
            param1.x = _loc3_.x;
            param1.y = _loc3_.y;
         }
         param2.addChild(param1);
      }
      
      private static function _06c8e1061029a15354dfe842(param1:DisplayObjectContainer) : void
      {
         var _loc2_:int = 0x13168C16 ^ 0x203886D1 ^ 0x40C12CAD ^ -2031067487;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x49D1FF5E ^ -1997230050 ^ 0x4F20234A ^ 0x7B1A14C0))
            {
               case 0:
                  param1.parent.removeChild(param1);
                  _loc2_ = 0x4ABBCE51 ^ 0x0452BC49 ^ 0x7AE44637 ^ -1055765273;
                  break;
               case 1:
                  if(param1.numChildren == (-807439538 ^ 0x55CBCE16 ^ 0x154E88A4 ^ -1889913348))
                  {
                     _loc2_ = 0x1DBFDD1F ^ -254907190 ^ 0x79A1D1CC ^ 0x61CF18D3;
                  }
                  else
                  {
                     _loc2_ = -219307381 ^ 0x067F8947 ^ 0x0DE5DB08 ^ 0x0C68880C;
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
      
      private static function _787f7f18916a208de3a31378(param1:DisplayObject) : void
      {
         var _loc2_:Boolean = ColorMatrix.isColorTransformNotEmpty(param1.transform.colorTransform);
         if(_loc2_)
         {
            param1.transform.colorTransform = new ColorTransform();
         }
         if(param1.filters != null && param1.filters.length > (0x2B3D3B8B ^ 0x10C51084 ^ 0x0638FF85 ^ 0x3DC0D48A))
         {
            param1.filters = null;
         }
      }
      
      private static function _8f5c70f6d54344ad64571642(param1:BitmapData) : BitmapData
      {
         var _loc2_:BitmapData = param1;
         var _temp_2:* = §§findproperty(Rectangle);
         var _temp_1:* = 0x1D0761B0 ^ -2010107768 ^ 0x37FF857B ^ -1563896765;
         var _loc3_:Rectangle = new Rectangle(_temp_1,_temp_1,param1.width,param1.height);
         _loc2_.threshold(param1,_loc3_,new Point(),_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勘刨劄刲勉力刐劽刢勧刴劂","勴刯勪刾剒刑勰剓勞勍劳勾務劦剥勲"),-2023359016 ^ 0x2635C3FD ^ -1011457437 ^ 0x62E65C46,_433075a5d49397e40222eeae._9417d5d828724209ec5cfbb1("ဩႰႚჾငဋမႾံჹါაႎჱ၇ု႒ႄဏဪჲႅၮဿ","ၤსဓပႱ၄Ⴚჶဟႄჯრვၞჿთ"));
         _loc2_.threshold(param1,_loc3_,new Point(),_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掶掀掗捤捨挂揼掂挣据挊探","援挲挲掎捤握排掰捽捺掎揧掕揙挘揳"),_95da7f1147c669197db81295._6371735dc9287bd2d9618c1e("到勝刔剂剴勯剭刳劻刢勲剮劀刡刊刵劮劻勄劢剙勖创劲","勵勽剀剱劫勣勄劆劀刳勏劬助労劰剠"),0x31F806D7 ^ 0x36A547F6 ^ 0x3C9FE7C5 ^ 0x3BC259E4);
         return _loc2_;
      }
      
      public static function _1b96ba36534091c4808a485e(param1:int, param2:int, param3:_08c120b706560fce9302bcab) : Boolean
      {
         var _loc4_:Boolean = param1 > (0x39910041 ^ 0x69EDB328 ^ -882528657 ^ -1692852720) && param2 > (0x150B8C62 ^ -1041554123 ^ -1306911409 ^ 0x66FAB24A) && param1 < (0x6E4FDCFE ^ -1278005193 ^ 0x24F645CD ^ -110450178) + (0x2B267AC0 ^ -1895248823 ^ 0x6E3F4016 ^ -904792695) && param2 < (-50189907 ^ 0x053DAE67 ^ 0x762F862B ^ -1911553736) + (-1152019610 ^ 0x21EFA40A ^ -1130556294 ^ 0x26272544);
         var _loc5_:_a5c3dbdfbeb709a5bf92d27c = param3.position;
         return _loc4_ && !(_loc5_.x > (0x5FFC92E6 ^ -1531282360 ^ 0x513D22CA ^ -1434726542) && _loc5_.y > (-1641452377 ^ 0x0F9BDEF1 ^ 0x78263BC4 ^ -376139840) && _loc5_.x < (-1905733393 ^ -1931711359 ^ 0x0883F31D ^ 0x0A374F89) + (0x46708031 ^ -1764128591 ^ 0x114E6FCD ^ -1041800101) && _loc5_.y < (-1521253326 ^ 0x393AA9C6 ^ -593102962 ^ 0x40CCDAA3) + (-479883092 ^ -914606862 ^ -1423084247 ^ -2127243483));
      }
      
      public static function _07d8e39a0b3eef19bd9d3a65(param1:int, param2:int) : Boolean
      {
         var _loc3_:Rectangle = new Rectangle(0x7FD58C91 ^ -470530253 ^ 0x075161D0 ^ -1687115115,-662782519 ^ 0x20EEF33B ^ 0x3CEBFDA8 ^ -998525006,0x640FC13B ^ -2027761473 ^ -1292187873 ^ 0x51D7D6E3,0x6110AF6B ^ -2066047477 ^ 0x086600DA ^ -307482166);
         return param1 > _loc3_.x && param2 > _loc3_.y && param1 < _loc3_.width + _loc3_.x && param2 < _loc3_.height + _loc3_.y;
      }
      
      public static function _93afd659d7c17fa3b23471d6(param1:int, param2:int) : Boolean
      {
         return param1 > (0x512494FA ^ -353894773 ^ -1238084016 ^ 0x0DF730F6) && param2 > (-359002832 ^ -431789328 ^ 0x45C07634 ^ 0x491910F0) && param1 < (-1659426418 ^ -221609137 ^ -1644773673 ^ -232056639) + (0x7145FE84 ^ -574019899 ^ -626913935 ^ 0x762ED576) && param2 < (-1091320836 ^ 0x0A38A011 ^ -796362585 ^ 0x64431A4E) + (-54225334 ^ -1465804858 ^ -1189478659 ^ -310575237);
      }
      
      private static function _2ae697a31ef3b734beea4a2d() : BitmapData
      {
         var _loc1_:Shape = new Shape();
         var _loc2_:Sprite = new Sprite();
         var _loc3_:BitmapData = new BitmapData(0x79145675 ^ -1304056011 ^ 0x6ADACB5A ^ -1584713006,0x7B8AA400 ^ -664179468 ^ -383512975 ^ 0x4AC7C64D,true,-1930189359 ^ -1563082152 ^ 0x7AA82498 ^ 0x548EC311);
         _loc1_.graphics.beginFill(0x0BD3A381 ^ -374794248 ^ -1990663299 ^ 0x6BDD2E4F);
         var _temp_2:* = _loc1_.graphics;
         var _temp_1:* = 0x1DE91CB8 ^ 0x5A744C80 ^ 0x3A07B8E3 ^ 0x7D9AE8BF;
         _temp_2.drawCircle(_temp_1,_temp_1,_temp_1);
         _loc1_.graphics.endFill();
         _loc2_.addChild(_loc1_);
         _loc3_.draw(_loc2_);
         return _loc3_;
      }
      
      public function set dayCycle(param1:_269c2cba4bf717aa1c0db1fa) : void
      {
         this._e87a7f4f1d3814d3f06cc5c7 = param1;
      }
      
      public function get locationFullSize() : Point
      {
         return this._34d6de36a0510fa2ea937b04;
      }
      
      protected function _de46adb1ce4f5035d00b79ca() : void
      {
      }
      
      private function _418e909f4cc748ec1e81dd0b(param1:Array, param2:uint) : void
      {
         var _loc3_:Object = null;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         this.mainLayer.graphics.beginFill(param2,_39d7d82359bf8046fe8ef6c4._ed4a735c5a6981f99dda5b73("揼掠掑掵捸揶挑挸掦挒掴揋揽掕挭捏捆揉揙挰排挾挊捤","捙揳捣捒揝挢掤捚挛揾挌挙挮掲揦掎"));
         for each(_loc3_ in param1)
         {
            _loc4_ = Number(_loc3_[_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၙႢႷჀလႻხႸဋဉ","ဃလჯွၭႅာၚၯ၁ႈပၲძႦႦ")]);
            _loc5_ = Number(_loc3_[_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捲捼挆挏捂捡揇掦捚揫","揆挨掰挞揭掯採挹挺捳掿挐捿挥掤掁")]);
            _loc6_ = Number(_loc3_[_95da7f1147c669197db81295._8f4866de82b7339154180ecb("刊勞勃劢刘勇勍勠剘勰剣加切剤勀剞刎劮","勽前劌剧刜勀刔勄勜剜劦勊劕割勝劗")]);
            _loc7_ = Number(_loc3_[_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捖揄揔掙挧挑揘损挸捕捶掀挹挫挻挴揤掲排捋","掏捆掂捿挀挊挰捞捪揩揉捇掾捪掤揮")]);
            this.mainLayer.graphics.drawRect(_loc4_,_loc5_,_loc6_,_loc7_);
         }
         this.mainLayer.graphics.endFill();
      }
      
      private function _65ab545691c2cc4b8a5276f4() : void
      {
         super.addChild(this._bottomLayer);
         super.addChild(this._9538484d27ba215be40aadcb);
         super.addChild(this._2b0896c6d0a530499ca65cf8);
         super.addChild(this._layerSpecial);
         super.addChild(this._bottom2Layer);
         super.addChild(this.mainLayer);
         super.addChild(this._2595a9d9b1bfa3376e72cb8b);
         super.addChild(this.floatingGuiLayer);
         super.addChild(this._topLayer);
         removeAllChildren(charMessagesLayer);
         super.addChild(charMessagesLayer);
         super.addChild(this._c5ac49f492d09d052de9acd4);
         super.addChild(DEBUG_SPRITE);
      }
      
      private function generateNpcPath() : void
      {
         var _loc1_:int = 0x27915807 ^ 0x4C014A46 ^ -84782145 ^ -1855831554;
         var _loc2_:DisplayObjectContainer = null;
         var _loc3_:int = -1105262595 ^ 0x7DFBCF48 ^ 0x2344E19E ^ -526374613;
         var _loc4_:DisplayObject = null;
         var _loc5_:Object = {};
         if(this._fce6d02e4e607c9fb4208dec != null)
         {
            _loc1_ = -1648342247 ^ -1388137003 ^ -1026643092 ^ -229878368;
            while(_loc1_ < this._fce6d02e4e607c9fb4208dec.numChildren)
            {
               _loc2_ = DisplayObjectContainer(this._fce6d02e4e607c9fb4208dec.getChildAt(_loc1_));
               _loc5_[_loc2_.name] = [];
               _loc3_ = -1919616502 ^ 0x3D1CC861 ^ 0x2C8D38BD ^ -1677391146;
               while(_loc3_ < _loc2_.numChildren)
               {
                  _loc4_ = _loc2_.getChildAt(_loc3_);
                  _loc5_[_loc2_.name].push({
                     (_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勭刬刟勴勞剹割办勖刱","剜勁勛刾刁勚剩剘剶劘刑劷勻刷刎剶")):int(_loc4_.x),
                     (_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ႩႵႏၨၠၳ၉၊ရ჏","ၮၽ၇ၔၾေ၀ၼ႕჻ჁဿႢზჱ႐")):int(_loc4_.y),
                     (_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("Ⴐუჟვၦ႖႔ဗဳၿၽკ჉჋Ⴥლ၏၌","ုჰ႔჈ြထთဨჰ၇რံჹှညံ")):int(_loc4_.width),
                     (_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("၃ႈ႙ၯဟ၇ႀႃსႉჁၣဪႽၓၯႺჱၐဗ","႔ဲႏႌმ႑ႫႝႻူჂႎၞၒၢိ")):int(_loc4_.height)
                  });
                  _loc3_++;
               }
               _loc1_++;
            }
         }
         var _loc6_:String = JSON.stringify(_loc5_);
         Cc.log(_loc6_);
         System.setClipboard(_loc6_);
      }
      
      private function highLightIsoObjects() : void
      {
         var _loc1_:DisplayObject = null;
         var _loc2_:Vector.<DisplayObject> = this._zSorter.getAll();
         var _loc3_:GlowFilter = new GlowFilter(-1649973760 ^ 0x7081BE3E ^ -1910801385 ^ 0x633D5B29);
         for each(_loc1_ in _loc2_)
         {
            _loc1_.filters = _8dbac3cb2bae16fc4e0e0f27._1607865cf784b327c5943d2a(_loc1_.filters,_loc3_);
         }
      }
      
      private function _b6022d405fbc9878375e36d7() : void
      {
         var _loc1_:DisplayObject = null;
         var _loc2_:uint = uint(this._topLayer.numChildren);
         var _loc3_:GlowFilter = new GlowFilter(0x79D738E6 ^ 0x6225AC10 ^ -1194523320 ^ -1556124095);
         var _loc4_:int = 0x68A76B32 ^ -278681329 ^ -1450118310 ^ 0x2E543167;
         while(_loc4_ < _loc2_)
         {
            _loc1_ = this._topLayer.getChildAt(_loc4_);
            _loc1_.filters = _8dbac3cb2bae16fc4e0e0f27._1607865cf784b327c5943d2a(_loc1_.filters,_loc3_);
            _loc4_++;
         }
      }
      
      public function _f11d1adba5da51ae728ca759(param1:MovieClip, param2:Point, param3:ApplicationDomain) : void
      {
         this._c6149c23ac0b7ae831123747 = [];
         this._9f093b8b185337e28d5404ab = param1;
         this._34d6de36a0510fa2ea937b04 = param2;
         this._applicationDomain = param3;
         DisplayObjectUtil.alignCoordinatesToInt(this._9f093b8b185337e28d5404ab);
         this._bottomLayer.addChild(this._9f093b8b185337e28d5404ab);
         var _loc4_:MovieClip = MovieClip(this._9f093b8b185337e28d5404ab.getChildByName(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剢刐剟剌刟勡勐剪剟劲勃刃劄刲劰刉制劥删勽剔劜剅削刾劝勰切勮删","剋利勺劌勦剨刕勲刐刟勫刘刭势劆剣")));
         if(_loc4_ != null)
         {
            if(_loc4_.getChildByName(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揭挿揘捒换挢掔掛挷挥挍挟揀掤挖掘掠捪掤挭捂捞挽插","挈挠捅挚掕挜捇挮揧挠掤挺揳捙捃捹")))
            {
               this._d84a92a14f48c27e12c48323(_loc4_.getChildByName(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၿხဣ႞ု႐ဉ၍ၣတ၂ၞဘဏသယသၘၑ႙Ⴢყႎ့","ჸဌႉლჟၱ჆း၉ჟ჉ႄၔၻ႖ဢ")));
            }
            _loc4_.visible = false;
            _loc4_.parent.removeChild(_loc4_);
            _loc4_ = null;
         }
         this._d34fe83d2160327320718844();
         this._df01d33d7a1dc8902d0849a9(this._9f093b8b185337e28d5404ab);
      }
      
      private function _d34fe83d2160327320718844() : void
      {
         this._39d73d3afcbca5aad3b0c0e4 = new Vector.<BitmapData>();
         var _loc1_:MovieClip = new gViewShells();
         var _loc2_:int = _loc1_.totalFrames;
         var _loc3_:int = 0x0AE84158 ^ -232662351 ^ 0x57A0527F ^ -1352021610;
         while(_loc3_ < _loc2_)
         {
            _loc1_.gotoAndStop(_loc3_);
            this._39d73d3afcbca5aad3b0c0e4.push(_5f5fc3a6dc1e8f79994a4a9b.clone(_loc1_));
            _loc3_++;
         }
         this._e5cf3083d48dfd0c91722de9 = new _eb2dccb1856b952dc47c053a(-712487323 ^ 0x53FB7BFF ^ -1696695509 ^ 0x1CAD4E27,0x1E165A4C ^ 0x77BFA935 ^ -1028722404 ^ -1425603853);
      }
      
      private function _0a5bccd0d6a6357ea6f9d9ca(param1:Array, param2:DisplayObject, param3:Object = null) : void
      {
         this._e87a7f4f1d3814d3f06cc5c7._81dcdd9695843825ebcd94c9(param1,param2,param3);
      }
      
      protected function _8b1877110d8870eb13b911cf(param1:DisplayObjectContainer, param2:Boolean, param3:Boolean = true) : void
      {
         var _loc4_:DisplayObject = null;
         var _loc5_:Number = param1.numChildren;
         var _loc6_:Array = _9c52777792d76fde110d23c0._c08b9d50de93ee9df95de516(param1);
         _787f7f18916a208de3a31378(param1);
         while(param1.numChildren > (-607145733 ^ 0x1689B0E9 ^ -301342852 ^ 0x234FDF6E))
         {
            _loc4_ = param1.getChildAt(0x364E13B0 ^ 0x0DE45BBD ^ -731854150 ^ -271940937);
            if(param2)
            {
               this._0a5bccd0d6a6357ea6f9d9ca(_loc6_,_loc4_);
               this._0a5bccd0d6a6357ea6f9d9ca(_9c52777792d76fde110d23c0._c08b9d50de93ee9df95de516(_loc4_),_loc4_);
               this._e87a7f4f1d3814d3f06cc5c7._cd00d97cac65b4dc892b5324(_loc4_);
            }
            _787f7f18916a208de3a31378(_loc4_);
            if(_loc4_ is InteractiveObject)
            {
               InteractiveObject(_loc4_).mouseEnabled = false;
            }
            _a59e9ad02d49ff892e329e08(_loc4_,this.mainLayer);
            this._zSorter._e212a4ed5e2246a1788a7970(_loc4_);
            if(param3)
            {
               this._visibilityManager._cd00d97cac65b4dc892b5324(_loc4_);
            }
         }
      }
      
      protected function _abdb9c3ca02e372006aa2a24(param1:DisplayObject) : void
      {
         _a59e9ad02d49ff892e329e08(param1,this._2595a9d9b1bfa3376e72cb8b);
         disableMouse(param1);
         param1.cacheAsBitmap = true;
         this._visibilityManager._cd00d97cac65b4dc892b5324(param1);
      }
      
      private function _df01d33d7a1dc8902d0849a9(param1:DisplayObjectContainer) : void
      {
         this._88db867279e5a25411de40aa = new Vector.<DisplayObject>();
         this._e58ba948a41fdded563972d3(param1);
         this._7662020ef88e5dd76f67739a = this._88db867279e5a25411de40aa.length;
         this._ddc03b79d89c9c6960c201b9 = this._7662020ef88e5dd76f67739a;
         this._1b070ccfd9aba61d0966e17d = 0x6332CEEA ^ 0x63F23CCA ^ -33258474 ^ -20679114;
         _02fbe4cbe9e83f1b8c711799.addEventListener(this,this,Event.ENTER_FRAME,this._a084d5568f4db4406831b448);
      }
      
      protected function _e58ba948a41fdded563972d3(param1:DisplayObjectContainer) : void
      {
         var _loc2_:Number = param1.numChildren;
         var _loc3_:int = -2121842624 ^ -881625946 ^ -564537360 ^ -1800543466;
         while(_loc3_ < _loc2_)
         {
            this._88db867279e5a25411de40aa.push(param1.getChildAt(_loc3_));
            _loc3_++;
         }
      }
      
      private function _a084d5568f4db4406831b448(param1:Event) : void
      {
         var startTimetampMS:int = -1490387914 ^ -1379441391 ^ -211711915 ^ -108228238;
         var event:Event = param1;
         var child:DisplayObject = null;
         var updateList:Vector.<_69eec7d2f73604da25ccda04> = null;
         var displayObjectList:Vector.<DisplayObject> = null;
         var offsetX:int = 0x604A1F3F ^ -402663656 ^ 0x1D98AFBB ^ -1708300388;
         var offsetY:int = -858822783 ^ 0x273A5E03 ^ -1671136204 ^ 0x779145B6;
         var dayOfNightObject:DisplayObject = null;
         var displayObject:DisplayObject = null;
         ++this._1b070ccfd9aba61d0966e17d;
         startTimetampMS = getTimer();
         while(getTimer() - startTimetampMS < this._49cd2343ec942db09f3cb722)
         {
            if(this._663add367e295c4e401e355a == null || this._663add367e295c4e401e355a.isComplete())
            {
               if(this._88db867279e5a25411de40aa.length > (0x6F4BA7C9 ^ -1969682422 ^ -749112125 ^ 0x368BDB00))
               {
                  child = this._88db867279e5a25411de40aa.shift();
                  try
                  {
                     this._d84a92a14f48c27e12c48323(child);
                  }
                  catch(e:Error)
                  {
                     Cc.error(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ဃ၍လဴၸႸဃဇငၕიႠဩ჋႓ံႂႁၫႣၩခၩဥვიႧႁဎჲယူၮ჻၍ဃဃႡ၎ნჃဖჟၶႱႬႻၭါၱၬ჻ထႴတၝ","ၶၿၐქႨჸჟဲံ႟ဌစဃၛၩႏ"));
                     Cc.error(e);
                     Cc.error(e.getStackTrace());
                  }
               }
               else
               {
                  Cc.log(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("援換掶挪揁揬捌捂捌挴掩掷掦挽插掳掯捶掯挒挿捵捆挑揘挿捦挵挱捓挍捾持挵挞揭揲掍捷挰掞掦揹据捳揼掘挽捍捭揘揊捴捞挥捄揚掚按振掕挆挽揈揅捹掿捍掠揄掊捭挽挵挊掝掠捻捌揟捵揢揕挎挈掖揁掜掺挧掜挡捊揳捽揰掝揁捀掯","掷揢挵持掚挧揪挑捙揊揲捒挴排掍掘") + this._1b070ccfd9aba61d0966e17d);
                  _02fbe4cbe9e83f1b8c711799.removeEventListener(this,this,Event.ENTER_FRAME,this._a084d5568f4db4406831b448);
                  this._de46adb1ce4f5035d00b79ca();
                  dispatchEvent(new Event(Event.COMPLETE));
               }
            }
            else
            {
               this._663add367e295c4e401e355a._4abd7c3aad51c496276fb656();
               if(this._663add367e295c4e401e355a.isComplete())
               {
                  updateList = this._663add367e295c4e401e355a._7120ced6b8dc8511e430ec67();
                  if(!emptyVector(updateList))
                  {
                     this._6195cb3b41c1a624e4aefb41 = this._6195cb3b41c1a624e4aefb41.concat(updateList);
                  }
                  displayObjectList = this._663add367e295c4e401e355a._8c7137adb6802e3295eaecbb();
                  if(!emptyVector(displayObjectList))
                  {
                     offsetX = -916732314 ^ -588005051 ^ -1111140157 ^ -1469227040;
                     offsetY = 0x77264C28 ^ 0x7518CC0D ^ -992682194 ^ -957718773;
                     if(this._663add367e295c4e401e355a is _b42bdcefdcfefad3a62d7a17)
                     {
                        (this._663add367e295c4e401e355a as _b42bdcefdcfefad3a62d7a17)._d1275084d2e36b0d41132e3e();
                        offsetX = (this._663add367e295c4e401e355a as _b42bdcefdcfefad3a62d7a17).container.x;
                        offsetY = (this._663add367e295c4e401e355a as _b42bdcefdcfefad3a62d7a17).container.y;
                        for each(dayOfNightObject in displayObjectList)
                        {
                           if((this._663add367e295c4e401e355a as _b42bdcefdcfefad3a62d7a17).name == _95da7f1147c669197db81295._8f4866de82b7339154180ecb("刉剈剴勜剅初刿劫刐剺劎勖刢剞刣勴剜剞刳則刻勱","剣剸劗刎勖劎劗到勌刞劏劓刉剓剆券"))
                           {
                              dayOfNightObject.cacheAsBitmap = true;
                              this._e87a7f4f1d3814d3f06cc5c7._754eda0de238659164fdbf55(dayOfNightObject);
                           }
                           else
                           {
                              this._e87a7f4f1d3814d3f06cc5c7._cd00d97cac65b4dc892b5324(dayOfNightObject);
                           }
                        }
                     }
                     if(this._663add367e295c4e401e355a is _21ee2590fbb3a9b026850d06)
                     {
                        offsetX = (this._663add367e295c4e401e355a as _21ee2590fbb3a9b026850d06).asset.x;
                        offsetY = (this._663add367e295c4e401e355a as _21ee2590fbb3a9b026850d06).asset.y;
                        for each(displayObject in displayObjectList)
                        {
                           this._e87a7f4f1d3814d3f06cc5c7._f0b680965f9a5238045064d5(displayObject);
                        }
                     }
                     this._visibilityManager._bb52e35f3bc3b32fc0cc3330(displayObjectList,offsetX,offsetY);
                  }
               }
            }
         }
         if(this._ddc03b79d89c9c6960c201b9 > this._88db867279e5a25411de40aa.length)
         {
            this._ddc03b79d89c9c6960c201b9 = this._88db867279e5a25411de40aa.length;
         }
      }
      
      private function _d84a92a14f48c27e12c48323(param1:DisplayObject) : void
      {
         var _loc2_:int = -660329128 ^ -389849003 ^ 0x26BE3261 ^ -1366421225;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (-689906297 ^ 0x4F11606A ^ 0x0BFAF43B ^ 0x2A5C27A9))
            {
               case 0:
                  if(param1 is DisplayObjectContainer)
                  {
                     _loc2_ = 0x57BD4A38 ^ -1046531100 ^ -1934439201 ^ -1563960450;
                  }
                  else
                  {
                     _loc2_ = -1542981568 ^ 0x0E01B250 ^ -956556858 ^ -726843990;
                  }
                  break;
               case 1:
                  InteractiveObject(param1).mouseEnabled = false;
                  _loc2_ = 0x5BDB5A34 ^ 0x221297F7 ^ 0x37EAC6FC ^ -160144064;
                  break;
               case 2:
                  DisplayObjectContainer(param1).mouseChildren = false;
                  _loc2_ = -526925371 ^ -106413094 ^ -1582579063 ^ 0xC32EEA;
                  break;
               case 3:
                  this._d950ad5e456ef35dfb21d570(param1);
                  return;
               case 4:
                  if(param1 is InteractiveObject)
                  {
                     _loc2_ = -364012431 ^ -206676789 ^ 0x65F1FCBD ^ -1002089863;
                  }
                  else
                  {
                     _loc2_ = 0x7F239047 ^ -897187126 ^ -1190104127 ^ -1260220621;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      protected function _d950ad5e456ef35dfb21d570(param1:DisplayObject) : void
      {
         var _loc2_:_93801b1eb0ddeaa9f8a99f9f = null;
         var _loc3_:DisplayObject = null;
         var _loc4_:Vector.<DisplayObject> = null;
         var _loc5_:_10aec915df137be255fad9fc = null;
         var _loc6_:DisplayObject = null;
         var _loc7_:Array = null;
         var _loc8_:int = -582283628 ^ -63836735 ^ 0x10A0C65B ^ 0x31DA250E;
         var _loc9_:_21ee2590fbb3a9b026850d06 = null;
         var _loc10_:_d06e8ada26b7326913cdb9c9 = null;
         var _loc11_:DisplayObject = null;
         var _loc12_:DisplayObject = null;
         var _loc13_:_a0122b99577546c514d5fb28 = null;
         var _loc14_:DisplayObject = null;
         var _loc15_:_296ee54b441acfe4f3a01508 = null;
         var _loc16_:_b42bdcefdcfefad3a62d7a17 = null;
         var _loc17_:Number = NaN;
         var _loc18_:Array = null;
         var _loc19_:_a5e6911f85306c220b8b5d78 = null;
         var _loc20_:String = null;
         var _loc21_:Array = null;
         var _loc22_:DisplayObject = null;
         var _loc23_:String = null;
         var _loc24_:_68d6770c6e8ca6ab940a29bc = null;
         var _loc25_:Point = null;
         var _loc26_:_54f42c01108a013ebe64775b = null;
         var _loc27_:_40c40768738c862c74ddd128 = null;
         var _loc28_:Class = null;
         var _loc29_:_2a31502166ae419b5332a782 = null;
         var _loc30_:String = param1.name;
         switch(_loc30_)
         {
            case _77ca96a94affdf1e9d31698c.EDOT_TOP:
               §§push(-1168039552 ^ 0x6045E88D ^ 0x66950017 ^ -1129199334);
               break;
            case _77ca96a94affdf1e9d31698c.EDOT_LAKES:
               §§push(0x67B5789A ^ -1910347573 ^ -1596687441 ^ 0x49436BFF);
               break;
            case _77ca96a94affdf1e9d31698c.EDOT_ANIMATION:
               §§push(-1839770995 ^ -1783593357 ^ -73320406 ^ -62460714);
               break;
            case _77ca96a94affdf1e9d31698c.EDOT_ANIMATION_CROP:
               §§push(0x28BA442D ^ 0x2F2EDA71 ^ 0x325ED302 ^ 0x35CA4D5D);
               break;
            case _77ca96a94affdf1e9d31698c.EDOT_ANIMATION_CONTAINER:
               §§push(-2107761991 ^ 0x7BBD8196 ^ 0x4AFC2E69 ^ -1289767614);
               break;
            case _77ca96a94affdf1e9d31698c.EDOT_ANIMATION_RIVER:
               §§push(0x4BAE3809 ^ 0x461F025A ^ 0x284C2927 ^ 0x25FD1371);
               break;
            case _77ca96a94affdf1e9d31698c.EDOT_ANIMATION_WATER:
               §§push(-1364818434 ^ -1532194520 ^ -2131309252 ^ -1963140628);
               break;
            case _77ca96a94affdf1e9d31698c.EDOT_FILTER_NIGHT_CUSTOM:
               §§push(0x5C4223E1 ^ 0x22D5EC7E ^ 0x19C41CCA ^ 0x6753D352);
               break;
            case _77ca96a94affdf1e9d31698c.EDOT_FILTER_NIGHT_LAKE:
               §§push(0x0B420DA8 ^ 0x0C1A93DF ^ 0x57080087 ^ 0x50509EF8);
               break;
            case _77ca96a94affdf1e9d31698c.EDOT_FILTER_NIGHT_GROUND:
               §§push(-1014779858 ^ -1010846907 ^ 0x7957836C ^ 0x796B800E);
               break;
            case _77ca96a94affdf1e9d31698c.EDOT_FILTER_NIGHT_TREE:
               §§push(-213412311 ^ -917996528 ^ 0x70F16561 ^ 0x4AFE8F52);
               break;
            case _77ca96a94affdf1e9d31698c.EDOT_STATIC:
               §§push(0x425AFD9F ^ 0x6A22F645 ^ -1493535492 ^ -1904050387);
               break;
            case _77ca96a94affdf1e9d31698c.EDOT_ISO:
               §§push(-1614910099 ^ 0x28D828A3 ^ -1895154591 ^ 0x386C79A3);
               break;
            case _77ca96a94affdf1e9d31698c.EDOT_ISO_NO_FILTERS:
               §§push(-800700729 ^ -1987269121 ^ 0x0EAC6E06 ^ 0x57668533);
               break;
            case _77ca96a94affdf1e9d31698c.EDOT_ISO_VISIBLE:
               §§push(0x6C797EC3 ^ 0x249C7251 ^ -84926168 ^ -1307234892);
               break;
            case _77ca96a94affdf1e9d31698c.EDOT_ISO_VISIBLE_INVERTED:
               §§push(-208857623 ^ 0x3A6158EF ^ -743048712 ^ 0x1A59B4F1);
               break;
            case _77ca96a94affdf1e9d31698c.EDOT_ISO_FARM:
               §§push(-1397562726 ^ 0x5DE6598B ^ -760591106 ^ 0x23FEF7FF);
               break;
            case _77ca96a94affdf1e9d31698c.EDOT_ISO_MARKET:
               §§push(0x37066CAA ^ -648399080 ^ -1140092882 ^ 0x5257CB8D);
               break;
            case _77ca96a94affdf1e9d31698c.EDOT_SYSTEM_LAKE_CELLS:
               §§push(-1022832216 ^ -380438779 ^ 0x42762426 ^ 0x682C0299);
               break;
            case _77ca96a94affdf1e9d31698c.EDOT_SYSTEM_OBSTACLE_BOAT:
               §§push(-1565924093 ^ -1521130034 ^ 0x17EA6018 ^ 0x1016E0C6);
               break;
            case _77ca96a94affdf1e9d31698c.EDOT_SYSTEM_PATH_LEAVES:
               §§push(0x7C7B08C9 ^ -1884560977 ^ -709878126 ^ 0x2660F7E0);
               break;
            case _77ca96a94affdf1e9d31698c.EDOT_SYSTEM_PATH_NPC:
               §§push(0x277A2B2C ^ -1050369818 ^ 0x0E78A7A9 ^ -395957130);
               break;
            case _77ca96a94affdf1e9d31698c.EDOT_SPECIAL_FROZEN_LAKE:
               §§push(0x61329A2E ^ -1947750788 ^ 0x2B0515FE ^ -1043324486);
               break;
            case _77ca96a94affdf1e9d31698c.EDOT_SHELLS:
               §§push(0x231494D6 ^ 0x296799A3 ^ 0x564F4214 ^ 0x5C3C4F76);
               break;
            case _77ca96a94affdf1e9d31698c.EDOT_TREE:
               §§push(-818109035 ^ 0x73FF6867 ^ -2049659215 ^ 0x3917635B);
               break;
            case _77ca96a94affdf1e9d31698c.EDOT_TREE_WITH_ISO:
               §§push(-72766980 ^ -2004463810 ^ 0x79C20F87 ^ 0x0AEDE95C);
               break;
            case _77ca96a94affdf1e9d31698c.EDOT_FARM:
               §§push(-418074543 ^ 0x6E7462C6 ^ 0x7D5CA167 ^ -197364758);
               break;
            case _77ca96a94affdf1e9d31698c.EDOT_LAND_ROAD:
               §§push(-206361753 ^ -1155178021 ^ 0x5E282EB8 ^ 0x16BE641F);
               break;
            case _77ca96a94affdf1e9d31698c.EDOT_LANDING:
               §§push(0x1E8651BD ^ 0x506DCE0C ^ 0x2FE925BE ^ 0x6102BA13);
               break;
            case _77ca96a94affdf1e9d31698c.EDOT_LANDING_WALL:
               §§push(-1485247152 ^ 0x79CD2FD8 ^ 0x0BD010CE ^ -714747301);
               break;
            case _77ca96a94affdf1e9d31698c.EDOT_SPECIAL_WALL:
               §§push(0x3874252B ^ -360499224 ^ 0x3E170252 ^ -320860017);
               break;
            case _77ca96a94affdf1e9d31698c.EDOT_START_LINE:
               §§push(-304831227 ^ -1259469264 ^ 0x49187C98 ^ 0x1022DFB2);
               break;
            case _77ca96a94affdf1e9d31698c.EDOT_TOURNAMENT_FINISH:
               §§push(-955298222 ^ 0x6B868558 ^ 0x28CE62E6 ^ -2075678260);
               break;
            case _77ca96a94affdf1e9d31698c.EDOT_TOP_PLAYER:
               §§push(0x1A8C5503 ^ 0x5C754753 ^ 0x3BA2E33C ^ 0x7D5BF14D);
               break;
            case _77ca96a94affdf1e9d31698c.EDOT_TOP_PLAYER_BOARD:
               §§push(-120443247 ^ 0x15E005A5 ^ 0x444EA794 ^ -1451455358);
               break;
            case _77ca96a94affdf1e9d31698c.EDOT_RAFT:
               §§push(0x5E84E64F ^ -1131889066 ^ 0x1923E29C ^ -80758106);
               break;
            case _77ca96a94affdf1e9d31698c.EDOT_LAMP:
               §§push(0x2505EBA4 ^ 0x4B8B6AC9 ^ -89655274 ^ -1809221281);
               break;
            case _77ca96a94affdf1e9d31698c.EDOT_MARKET_DOOR:
               §§push(-1327702874 ^ -2044667634 ^ 0x4BD3BB0A ^ 0x7D2FBE87);
               break;
            case _77ca96a94affdf1e9d31698c.EDOT_SHADOW:
               §§push(-1103506135 ^ 0x44055241 ^ 0x346DE039 ^ -833525897);
               break;
            case _77ca96a94affdf1e9d31698c.EDOT_GROUND:
               §§push(-664944817 ^ -809174533 ^ -916033088 ^ -553699501);
               break;
            case _77ca96a94affdf1e9d31698c.EDOT_GROUND_HOUSE_FRIENDS:
               §§push(-2079438128 ^ 0x4344C87B ^ 0x4799DC5E ^ -2133631267);
               break;
            case _77ca96a94affdf1e9d31698c.EDOT_GROUND_HOUSE_PRIVATE:
               §§push(-1894833690 ^ -1758875509 ^ 0x59652EED ^ 0x4143BFA9);
               break;
            default:
               §§push(-33291523 ^ -94064879 ^ 0x7B02AD42 ^ 0x7F620084);
         }
         switch(§§pop())
         {
            case 0:
               disableMouse(param1);
               param1.cacheAsBitmap = true;
               _a59e9ad02d49ff892e329e08(param1,this._topLayer);
               this._e87a7f4f1d3814d3f06cc5c7._cd00d97cac65b4dc892b5324(param1);
               this._visibilityManager._cd00d97cac65b4dc892b5324(param1);
               break;
            case 1:
               this._e87a7f4f1d3814d3f06cc5c7.lakesLayer = param1;
               this._e58ba948a41fdded563972d3(DisplayObjectContainer(param1));
               break;
            case 2:
               this._bf9af00ba8b271f6f56b59b8(param1);
               break;
            case 3:
               this._bf9af00ba8b271f6f56b59b8(param1,true);
               break;
            case 4:
               this._e58ba948a41fdded563972d3(DisplayObjectContainer(param1));
               break;
            case 5:
               _loc9_ = new _21ee2590fbb3a9b026850d06(DisplayObjectContainer(param1));
               this._663add367e295c4e401e355a = _loc9_;
               this._c6149c23ac0b7ae831123747.push(_loc9_);
               break;
            case 6:
               _787f7f18916a208de3a31378(param1);
               _loc5_ = new _10aec915df137be255fad9fc(MovieClip(param1),false,true,this._e890ef042c61b87547d2c7c7);
               _loc5_.name = param1.name;
               this._c6149c23ac0b7ae831123747.push(_loc5_);
               this._663add367e295c4e401e355a = _loc5_;
               _loc5_.framePerSec = 0x3F6C37A3 ^ 0x7CC484D2 ^ 0x5410E174 ^ 0x17B8520F;
               _loc5_.play();
               this._6195cb3b41c1a624e4aefb41.push(_loc5_);
               this._e87a7f4f1d3814d3f06cc5c7._f0b680965f9a5238045064d5(_loc5_);
               break;
            case 7:
               this._0a5bccd0d6a6357ea6f9d9ca(_9c52777792d76fde110d23c0._c08b9d50de93ee9df95de516(param1),param1);
               param1.filters = null;
               this._e87a7f4f1d3814d3f06cc5c7._cd00d97cac65b4dc892b5324(param1);
               break;
            case 8:
            case 9:
            case 10:
               this._e87a7f4f1d3814d3f06cc5c7._92c9d577ac680f24db415275(_loc30_,param1);
               break;
            case 11:
               _loc7_ = _9c52777792d76fde110d23c0._c08b9d50de93ee9df95de516(param1);
               this._0a5bccd0d6a6357ea6f9d9ca(_loc7_,param1);
               _787f7f18916a208de3a31378(param1);
               this._e87a7f4f1d3814d3f06cc5c7._cd00d97cac65b4dc892b5324(param1);
               this._visibilityManager._cd00d97cac65b4dc892b5324(param1);
               break;
            case 12:
               this._1a164c08adb80e45952aec24(DisplayObjectContainer(param1));
               this._8b1877110d8870eb13b911cf(DisplayObjectContainer(param1),true);
               _06c8e1061029a15354dfe842(DisplayObjectContainer(param1));
               break;
            case 13:
               this._8b1877110d8870eb13b911cf(DisplayObjectContainer(param1),false,false);
               break;
            case 14:
            case 15:
               this._8b1877110d8870eb13b911cf(DisplayObjectContainer(param1),true,false);
               break;
            case 16:
               this._8b1877110d8870eb13b911cf(DisplayObjectContainer(param1),true);
               _06c8e1061029a15354dfe842(DisplayObjectContainer(param1));
               break;
            case 17:
               this._7f6840a8c82275266d513d5a(DisplayObjectContainer(param1));
               this._2ab9e1ce7d6a25a5ee856c72(false);
               break;
            case 18:
               this._2cfa40737447e7273389a616 = DisplayObjectContainer(param1);
               this._2cfa40737447e7273389a616.visible = false;
               break;
            case 19:
               this._2612954270c443e009a41713 = _5f5fc3a6dc1e8f79994a4a9b.clone(param1);
               param1.parent.removeChild(param1);
               break;
            case 20:
               if(this._ddef0d049d3de3d08bd19a3a != null)
               {
                  _92d7656ddc3c3da810e99c74.getInstance()._57ad3faeff9ca92cbf9fe447(_34a2ba6ad978d976b8b0f5a4.TIMER_200).add(this._ddef0d049d3de3d08bd19a3a);
                  this._ddef0d049d3de3d08bd19a3a._ea33e15d7580c95234cf9e24(DisplayObjectContainer(param1));
                  var _temp_3:* = this._visibilityManager;
                  var _temp_2:* = this._ddef0d049d3de3d08bd19a3a._20c01ec568ebe1eb64b3bed0();
                  var _temp_1:* = -627090026 ^ 0x02054AC7 ^ 0x36BDA15D ^ -299387380;
                  _temp_3._bb52e35f3bc3b32fc0cc3330(_temp_2,_temp_1,_temp_1,_temp_1,0x610B5364 ^ -151420720 ^ -116659992 ^ 0x6EF93B5C,true);
               }
               break;
            case 21:
               this._fce6d02e4e607c9fb4208dec = DisplayObjectContainer(param1);
               this._fce6d02e4e607c9fb4208dec.visible = false;
               this._fce6d02e4e607c9fb4208dec.parent.removeChild(this._fce6d02e4e607c9fb4208dec);
               break;
            case 22:
               this.frozenLake = new _60ca73acc6a9648cf0a76e6f();
               this.frozenLake.process(param1);
               _a59e9ad02d49ff892e329e08(param1,this.mainLayer);
               this._zSorter._e212a4ed5e2246a1788a7970(param1);
               this._visibilityManager._cd00d97cac65b4dc892b5324(this.frozenLake,this.frozenLake.origX,this.frozenLake.origY);
               this._e87a7f4f1d3814d3f06cc5c7._cd00d97cac65b4dc892b5324(param1);
               break;
            case 23:
               this._0a5bccd0d6a6357ea6f9d9ca(_9c52777792d76fde110d23c0._c08b9d50de93ee9df95de516(param1),param1);
               break;
            case 24:
               _loc10_ = new _d06e8ada26b7326913cdb9c9(param1);
               _loc11_ = _loc10_.iso;
               if(_loc11_ != null)
               {
                  _a59e9ad02d49ff892e329e08(_loc11_,this.mainLayer);
                  this._zSorter._e212a4ed5e2246a1788a7970(_loc11_);
                  this._visibilityManager._cd00d97cac65b4dc892b5324(_loc11_);
               }
               _loc6_ = _loc10_.top;
               if(_loc6_ != null)
               {
                  _a59e9ad02d49ff892e329e08(_loc6_,this._topLayer);
                  this._visibilityManager._cd00d97cac65b4dc892b5324(_loc6_);
               }
               _loc12_ = _loc10_.shadow;
               if(_loc12_ != null)
               {
                  _a59e9ad02d49ff892e329e08(_loc12_,this._topLayer);
                  this._visibilityManager._cd00d97cac65b4dc892b5324(_loc12_);
               }
               _06c8e1061029a15354dfe842(DisplayObjectContainer(param1));
               this._e87a7f4f1d3814d3f06cc5c7._cd00d97cac65b4dc892b5324(_loc10_);
               break;
            case 25:
               this._e4de3937ae6f28a930aee0d1(param1 as DisplayObjectContainer);
               break;
            case 26:
               _loc13_ = new _a0122b99577546c514d5fb28(param1);
               this._0a5bccd0d6a6357ea6f9d9ca(param1.filters,_loc13_);
               _loc6_ = _loc13_.top;
               if(_loc6_)
               {
                  disableMouse(_loc6_);
                  _loc6_.cacheAsBitmap = true;
                  _a59e9ad02d49ff892e329e08(_loc6_,this._topLayer);
                  this._visibilityManager._cd00d97cac65b4dc892b5324(_loc6_);
               }
               _loc14_ = _loc13_.iso;
               if(_loc14_ != null)
               {
                  _a59e9ad02d49ff892e329e08(_loc14_,this.mainLayer);
                  this._zSorter._e212a4ed5e2246a1788a7970(_loc14_);
                  this._visibilityManager._cd00d97cac65b4dc892b5324(_loc14_);
               }
               else
               {
                  this._visibilityManager._cd00d97cac65b4dc892b5324(_loc13_.asset);
               }
               this._e87a7f4f1d3814d3f06cc5c7._cd00d97cac65b4dc892b5324(_loc13_);
               break;
            case 27:
               this.keyRoad = new _16d81cd3752ec17476350b1a();
               this.keyRoad.process(param1);
               _a59e9ad02d49ff892e329e08(param1,this.mainLayer);
               this._zSorter._e212a4ed5e2246a1788a7970(param1);
               this._visibilityManager._cd00d97cac65b4dc892b5324(param1,param1.x,param1.y);
               this._e87a7f4f1d3814d3f06cc5c7._cd00d97cac65b4dc892b5324(param1);
               break;
            case 28:
               this._c636a9008b287c77b787592d = MovieClip(param1);
               if(this._c636a9008b287c77b787592d != null)
               {
                  this._c636a9008b287c77b787592d.parent.removeChild(this._c636a9008b287c77b787592d);
               }
               this._c636a9008b287c77b787592d.mouseEnabled = false;
               break;
            case 29:
               this.landingWall = new _9ab09ce89d8862a65811bed2();
               this.landingWall.process(param1);
               break;
            case 30:
               _loc7_ = _9c52777792d76fde110d23c0._c08b9d50de93ee9df95de516(param1);
               this._0a5bccd0d6a6357ea6f9d9ca(_loc7_,param1);
               _787f7f18916a208de3a31378(param1);
               this.specialWall = new _b7bea0b482b17e66dd570fc5();
               this.specialWall.process(param1);
               _a59e9ad02d49ff892e329e08(param1,this.mainLayer);
               this._zSorter._e212a4ed5e2246a1788a7970(param1);
               this._visibilityManager._cd00d97cac65b4dc892b5324(param1,param1.x,param1.y);
               this._e87a7f4f1d3814d3f06cc5c7._cd00d97cac65b4dc892b5324(param1);
               break;
            case 31:
               this._d3bb79bd421edff468a906a4(param1);
               break;
            case 32:
               this.tournamentFinish = new _a5e6911f85306c220b8b5d78();
               this.tournamentFinish.process(param1);
               break;
            case 33:
               this.bestPlayer = MovieClip(param1);
               this.bestPlayer.visible = false;
               this._f0de33de12d7a75eff23d77c("","","");
               break;
            case 34:
               param1.alpha = -1017487777 ^ 0x04B449C1 ^ 0x5E248A33 ^ -1714774611;
               this.topPlayerBoard = MovieClip(param1);
               param1.cacheAsBitmap = true;
               _a59e9ad02d49ff892e329e08(param1,this._topLayer);
               break;
            case 35:
               _loc7_ = _9c52777792d76fde110d23c0._c08b9d50de93ee9df95de516(param1);
               _787f7f18916a208de3a31378(param1);
               _loc5_ = new _10aec915df137be255fad9fc(MovieClip(param1),true,false);
               _loc5_.name = param1.name;
               this._c6149c23ac0b7ae831123747.push(_loc5_);
               _loc5_.framePerSec = -219126239 ^ 0x2216FC96 ^ -1406230411 ^ 0x7CC83AC8;
               _loc5_.play();
               _loc4_ = _loc5_._7aa00ab6e8c1c792ca866dec();
               this._visibilityManager._bb52e35f3bc3b32fc0cc3330(_loc4_,_loc5_.x,_loc5_.y);
               for each(_loc3_ in _loc4_)
               {
                  this._0a5bccd0d6a6357ea6f9d9ca(_loc7_,_loc3_);
                  this._e87a7f4f1d3814d3f06cc5c7._cd00d97cac65b4dc892b5324(_loc3_);
               }
               this._73198cea26e250f553300b17.push(_loc5_);
               this._1212b384e0d9409aee0efe8a = new _a00a2200c99ccb365fe1b90e(Sprite(_loc5_));
               break;
            case 36:
               _loc15_ = new _296ee54b441acfe4f3a01508(param1,this._9fc930a8e7d5d7d599fab014);
               _a59e9ad02d49ff892e329e08(_loc15_.asset,this.mainLayer);
               this._zSorter._e212a4ed5e2246a1788a7970(_loc15_.asset);
               this._visibilityManager._cd00d97cac65b4dc892b5324(_loc15_.asset);
               this._e87a7f4f1d3814d3f06cc5c7._c1284069d5114be7c54fa362(_loc15_);
               break;
            case 37:
               this._bb9e557c6ae085296248ef18 = MovieClip(param1);
               break;
            case 38:
               this._9ff0cfc80c91df8a1178a691 = MovieClip(param1);
               if(this._9ff0cfc80c91df8a1178a691 != null)
               {
                  _a59e9ad02d49ff892e329e08(this._9ff0cfc80c91df8a1178a691,this.mainLayer);
                  this._zSorter._e212a4ed5e2246a1788a7970(this._9ff0cfc80c91df8a1178a691);
                  this._visibilityManager._cd00d97cac65b4dc892b5324(this._9ff0cfc80c91df8a1178a691);
               }
               break;
            case 39:
               _loc16_ = new _b42bdcefdcfefad3a62d7a17(param1 as DisplayObject,-1547905992 ^ -1167122595 ^ -1367927197 ^ -1213932323,0x77B9E903 ^ -1276508060 ^ 0x70F5E6C6 ^ -1264187991,this.fullWidth,this.fullHeight);
               _loc16_.addToDayNight = true;
               _loc16_.name = param1.name;
               this._663add367e295c4e401e355a = _loc16_;
               this._c6149c23ac0b7ae831123747.push(this._663add367e295c4e401e355a);
               break;
            case 40:
            case 41:
               _loc17_ = (0x3191CBA6 ^ 0x2E27992D ^ -1601758834 ^ 0x40CEB4CB) * ((0x25771071 ^ -1784514294 ^ 0x6363489F ^ -743038693) / (-1702439340 ^ 0x73268A12 ^ -431141415 ^ 0x0FED1165));
               _loc18_ = [];
               var _temp_6:* = _loc18_;
               var _temp_5:* = 0x1ACE5DC5 ^ -1098493053 ^ 0x58D297A9 ^ -56976914;
               var _temp_4:* = -1573988381 ^ -819674983 ^ -2016654832 ^ -356098710;
               _loc18_ = _temp_6.concat([_temp_5,_temp_4,_temp_4,_temp_4,_loc17_]);
               var _temp_10:* = _loc18_;
               var _temp_9:* = 0x0D39B1DC ^ 0x3C4C6D83 ^ -406985208 ^ -691520937;
               var _temp_8:* = -1210761299 ^ -1226259945 ^ 0x05C8F03A ^ 0x04F50D81;
               var _temp_7:* = -119889565 ^ -86470215 ^ -1134655504 ^ -1101220054;
               _loc18_ = _temp_10.concat([_temp_9,_temp_8,_temp_7,_temp_7,_loc17_]);
               var _temp_12:* = _loc18_;
               var _temp_11:* = 0x73CD572D ^ -1462500716 ^ -1220089255 ^ 0x6C5FBFE0;
               _loc18_ = _temp_12.concat([_temp_11,_temp_11,-455024224 ^ 0x1ADD26E8 ^ 0x18034AF0 ^ -432108103,0x72B3CAC9 ^ 0x259B4FE0 ^ 0x180DCAC8 ^ 0x4F254FE1,_loc17_]);
               var _temp_14:* = _loc18_;
               var _temp_13:* = 0x3F0021EA ^ -36933970 ^ 0x4DFD31B6 ^ -1892581646;
               _loc18_ = _temp_14.concat([_temp_13,_temp_13,_temp_13,0x5AF7452E ^ 0x57F083B8 ^ 0x13A24723 ^ 0x1EA581B4,0x11892067 ^ -301894877 ^ -896756075 ^ 0x3504C5D1]);
               this._0a5bccd0d6a6357ea6f9d9ca([new ColorMatrixFilter(_loc18_)],param1);
               this._e87a7f4f1d3814d3f06cc5c7._cd00d97cac65b4dc892b5324(param1);
               break;
            default:
               if(_loc30_.indexOf(_77ca96a94affdf1e9d31698c.EDOT_SYSTEM_SUBLOCATION) > (-1550986086 ^ -1647995206 ^ -1857218062 ^ 0x50FAA42D))
               {
                  _loc19_ = new _a5e6911f85306c220b8b5d78();
                  _loc19_.process(param1);
                  this._sublocationEnters.push(_loc19_);
               }
               else if(_loc30_.indexOf(_77ca96a94affdf1e9d31698c.EDOT_ANIMATION_ISO) > (-1404682723 ^ 0x34E6C71F ^ 0x15561914 ^ 0x72091FE9))
               {
                  if(_loc30_.indexOf(_77ca96a94affdf1e9d31698c.EDOT_ANIMATION_ISO + _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၵႀფမၥ႟ဃအဃဴ","ၭၐဤၵၞ၏ဌႇႅ၏შိၨဏჰဎ")) > (-1645613020 ^ -874326149 ^ 0x581046AD ^ -236675571))
                  {
                     _loc20_ = _loc30_.split(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剼创刪刋刻刻勝割创募","剰創劙刽勽勞勃刬勯刐募努刹劒加制"))[0x377BF32F ^ -1856680601 ^ -1151963608 ^ 0x1D78D061];
                  }
                  _loc21_ = _9c52777792d76fde110d23c0._c08b9d50de93ee9df95de516(param1);
                  this._0a5bccd0d6a6357ea6f9d9ca(_loc21_,param1);
                  _787f7f18916a208de3a31378(param1);
                  _a59e9ad02d49ff892e329e08(param1,this.mainLayer);
                  this._zSorter._e212a4ed5e2246a1788a7970(param1);
                  _loc22_ = DisplayObjectContainer(param1).getChildByName(_77ca96a94affdf1e9d31698c.EDOT_ANIMATION);
                  if(_loc22_ != null)
                  {
                     _loc5_ = new _10aec915df137be255fad9fc(MovieClip(_loc22_),false,false,this._57c24f114faba6064e97cdb2);
                     if(!empty(_loc21_))
                     {
                        this._0a5bccd0d6a6357ea6f9d9ca(_loc21_,param1);
                        this._e87a7f4f1d3814d3f06cc5c7._cd00d97cac65b4dc892b5324(param1);
                     }
                     _loc5_.name = param1.name;
                     _loc5_.origX = param1.x;
                     _loc5_.origY = param1.y;
                     this._c6149c23ac0b7ae831123747.push(_loc5_);
                     this._663add367e295c4e401e355a = _loc5_;
                     if(!empty(_loc20_))
                     {
                        _loc5_.framePerSec = parseInt(_loc20_);
                     }
                     else
                     {
                        _loc5_.framePerSec = -1054636522 ^ 0x610E2666 ^ -536580294 ^ 0x4029CF40;
                     }
                     _loc5_.play();
                     this._73198cea26e250f553300b17.push(_loc5_);
                  }
               }
               else if(_loc30_.indexOf(_77ca96a94affdf1e9d31698c.EDOT_ANIMATION_INSTANCE) > (0x0E5E4A3B ^ -1460725168 ^ 0x6407A987 ^ 0x3D490613))
               {
                  _loc23_ = _loc30_.split(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掛揫捝捐措捵掗捇揾揓","揓掐掿挪挙捒捎掸捁掑挨掍捭排捬掕"))[-1300340085 ^ 0x7A5E17D8 ^ -666429518 ^ 0x106762E3];
                  _loc24_ = this._0ee123a5d77cb417c313b8d6(_loc23_);
                  if(_loc24_ != null)
                  {
                     _loc25_ = new Point(param1.x,param1.y);
                     _loc26_ = new _54f42c01108a013ebe64775b(_loc24_,param1);
                     _loc4_ = _loc26_._7aa00ab6e8c1c792ca866dec();
                     this._visibilityManager._bb52e35f3bc3b32fc0cc3330(_loc4_,_loc25_.x,_loc25_.y);
                     if(_loc23_ == _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ညႱღၟဿပ჏ჾႼႲႆၖယဘႦჃ့ႵႫၶဝხႼႄეႊၵဥ၇ၮჅჃჇႭ჎ါ","჎ဤ၃႑ႚჷ჎ჰသ჎ႈဪ჊ჶ်ၰ"))
                     {
                        this._e87a7f4f1d3814d3f06cc5c7._f0b680965f9a5238045064d5(_loc26_);
                     }
                     else if(_loc23_ == _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("推掵捇挬挒揈捥捳捘掯揁換掼捏揺揵掯揣捒捞捚揱掮掷揈排挎挸挏排揲掔揨揥","掄揔捹捁掎挍挿接揩持据揓掸掴捊掰"))
                     {
                        this._e87a7f4f1d3814d3f06cc5c7._cd00d97cac65b4dc892b5324(_loc26_);
                     }
                  }
               }
               else if(_loc30_.indexOf(_77ca96a94affdf1e9d31698c.EDOT_WALL_AREA) > (0x1AA02EA4 ^ 0x14ACFA49 ^ -585657613 ^ 0x2CE4B9E1))
               {
                  _loc8_ = _a5e6911f85306c220b8b5d78._0f3dc57f03793beb3b7ce5aa(param1.name);
                  _loc2_ = this._4c654e3fd6f244303856d656(_loc8_);
                  _loc2_.process(param1);
               }
               else if(_loc30_.indexOf(_77ca96a94affdf1e9d31698c.EDOT_WALL_BUTTON) > (0x4C92C1C6 ^ -1213653176 ^ 0x2F3D0E37 ^ 0x2BF92F46))
               {
                  _loc7_ = _9c52777792d76fde110d23c0._c08b9d50de93ee9df95de516(param1);
                  this._0a5bccd0d6a6357ea6f9d9ca(_loc7_,param1);
                  _787f7f18916a208de3a31378(param1);
                  _loc8_ = _a5e6911f85306c220b8b5d78._0f3dc57f03793beb3b7ce5aa(param1.name);
                  _loc2_ = this._4c654e3fd6f244303856d656(_loc8_);
                  _loc2_.processButton(param1);
                  this._e87a7f4f1d3814d3f06cc5c7._cd00d97cac65b4dc892b5324(param1);
               }
               else if(_loc30_.indexOf(_77ca96a94affdf1e9d31698c.EDOT_BOAT) > (0x2865369E ^ -2140060752 ^ 0x57DC4993 ^ 0x37C342))
               {
                  if(this._7f4c4d3ce6b374ffe3041cc3 == null)
                  {
                     this._7f4c4d3ce6b374ffe3041cc3 = new _9764d11560b9366107f04187();
                     _loc28_ = this._4c1e192866a678168c944244(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ყဝဓႼဟၒးႲ၎Ⴉၛႅတ႓ၔႾხၒႤေႵဌထဝသရ","ႇၗဉ჊ცႅႋၽჷჃဥჃး၅ႋၮ"));
                     this._7f4c4d3ce6b374ffe3041cc3.process(new _loc28_());
                  }
                  _loc27_ = new _40c40768738c862c74ddd128(this._7f4c4d3ce6b374ffe3041cc3);
                  _loc27_.process(param1);
                  this.boatByIndex[_loc27_.index] = _loc27_;
                  this.boats.push(_loc27_);
                  _a59e9ad02d49ff892e329e08(_loc27_.graphic,this._bottom2Layer);
                  var _temp_17:* = this._visibilityManager;
                  var _temp_16:* = _loc27_.graphic;
                  var _temp_15:* = 0x103A9C7E ^ 0x5E3AD04A ^ 0x03175F48 ^ 0x4D17137C;
                  _temp_17._cd00d97cac65b4dc892b5324(_temp_16,_temp_15,_temp_15,_temp_15,0x528C4DAC ^ -1094812468 ^ 0x7E92B9EF ^ -1834973041,true);
                  this._e87a7f4f1d3814d3f06cc5c7._cd00d97cac65b4dc892b5324(_loc27_.graphic);
               }
               else if(_loc30_.indexOf(_77ca96a94affdf1e9d31698c.EDOT_WALL) > (0x0C8DBB67 ^ -2105972241 ^ -132114570 ^ -1993655807))
               {
                  if(this.tournamentWalls == null)
                  {
                     _loc29_ = GameSwf.instance.managerTournaments.tournamentCurrent;
                     this.tournamentWalls = new _12463b7a4f31956d48b752ee(_loc29_);
                  }
                  this.tournamentWalls.process(param1);
                  disableMouse(param1);
                  param1.cacheAsBitmap = true;
                  _a59e9ad02d49ff892e329e08(param1,this._topLayer);
               }
               else if(param1 is Bitmap || param1 is Shape)
               {
                  this._e87a7f4f1d3814d3f06cc5c7._754eda0de238659164fdbf55(param1);
               }
               else if(param1 is DisplayObjectContainer)
               {
                  this._e58ba948a41fdded563972d3(DisplayObjectContainer(param1));
               }
         }
      }
      
      private function _e4de3937ae6f28a930aee0d1(param1:DisplayObjectContainer) : void
      {
         var _loc2_:_d06e8ada26b7326913cdb9c9 = new _d06e8ada26b7326913cdb9c9(param1);
         var _loc3_:DisplayObjectContainer = _loc2_.iso as DisplayObjectContainer;
         if(_loc3_ != null)
         {
            this._8b1877110d8870eb13b911cf(_loc3_,true);
         }
         var _loc4_:DisplayObject = _loc2_.top;
         if(_loc4_ != null)
         {
            _a59e9ad02d49ff892e329e08(_loc4_,this._topLayer);
            this._visibilityManager._cd00d97cac65b4dc892b5324(_loc4_);
         }
         var _loc5_:DisplayObject = _loc2_.shadow;
         if(_loc5_ != null)
         {
            _a59e9ad02d49ff892e329e08(_loc5_,this._topLayer);
            this._visibilityManager._cd00d97cac65b4dc892b5324(_loc5_);
         }
         this._e87a7f4f1d3814d3f06cc5c7._cd00d97cac65b4dc892b5324(_loc2_);
      }
      
      private function _7f6840a8c82275266d513d5a(param1:DisplayObjectContainer) : void
      {
         var _loc2_:DisplayObject = null;
         var _loc3_:MovieClip = MovieClip(param1.getChildByName(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ုၿოဠသႅဤჵၩჅჷႾၵတხဩჽႾნႉლဗရ႙ႋႏჃၐ","ဃ჻ဖယၟႮကၟႅჾიჸဥႹဳဃ")));
         var _loc4_:MovieClip = MovieClip(param1.getChildByName(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掛揦掏揬揫掇挗捌捞掠挠挶挍捊掯揦捜掻挻捜捳握採挖掏挈掍揻","揇挧揻捵捣揙挚揚捺揙掏捈挧指接推")));
         for each(_loc2_ in param1)
         {
            this._e87a7f4f1d3814d3f06cc5c7._cd00d97cac65b4dc892b5324(_loc2_);
            _a59e9ad02d49ff892e329e08(_loc2_,this.mainLayer);
            this._zSorter._e212a4ed5e2246a1788a7970(_loc2_);
            this._visibilityManager._cd00d97cac65b4dc892b5324(_loc2_);
         }
         if(_loc3_ != null)
         {
            this._6b0a1871221a7637dc588649 = _loc3_;
         }
         if(_loc4_ != null)
         {
            this._7a80f5dcfbb903a5f0bfd7c6 = _loc4_;
         }
      }
      
      private function _57c24f114faba6064e97cdb2(param1:_10aec915df137be255fad9fc) : void
      {
         var _loc2_:Vector.<DisplayObject> = param1._7aa00ab6e8c1c792ca866dec();
         this._visibilityManager._bb52e35f3bc3b32fc0cc3330(_loc2_,param1.origX,param1.origY);
         this._e87a7f4f1d3814d3f06cc5c7._91a21a458e77847fc1b8ecc5(param1);
      }
      
      private function _e890ef042c61b87547d2c7c7(param1:_10aec915df137be255fad9fc) : void
      {
         var _loc2_:Vector.<DisplayObject> = param1._7aa00ab6e8c1c792ca866dec();
         this._visibilityManager._bb52e35f3bc3b32fc0cc3330(_loc2_,param1.origX,param1.origY);
      }
      
      private function _9fc930a8e7d5d7d599fab014(param1:Sprite) : void
      {
         this._73198cea26e250f553300b17.push(param1);
      }
      
      private function _d3bb79bd421edff468a906a4(param1:DisplayObject) : void
      {
         var _loc2_:DisplayObject = (param1 as DisplayObjectContainer).getChildByName(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挗挆掛挲捝捎捐挌插捭揷捓捾揧","掺捂掄挺捩挒揗捪挵挟揋挵揊挟掷掯"));
         this._e87a7f4f1d3814d3f06cc5c7._cd00d97cac65b4dc892b5324(_loc2_);
         _a59e9ad02d49ff892e329e08(_loc2_,this.mainLayer);
         this._zSorter._e212a4ed5e2246a1788a7970(_loc2_);
         this._visibilityManager._cd00d97cac65b4dc892b5324(_loc2_);
         this.startLineCounter = MovieClip((param1 as DisplayObjectContainer).getChildByName(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ှႴႆၝၱႁတႯჂႵၼၒႄတဝუჶၚၙ჻၈ၝ","ჟဦქ၌Ⴂ၇႓ႷႼ၂ცფ၈႗ၺႷ")));
         this.startLineCounter.stop();
         disableMouse(this.startLineCounter);
         this.startLineCounter.cacheAsBitmap = true;
         _a59e9ad02d49ff892e329e08(this.startLineCounter,this._topLayer);
         this._visibilityManager._cd00d97cac65b4dc892b5324(_loc2_);
      }
      
      protected function _bf9af00ba8b271f6f56b59b8(param1:DisplayObject, param2:Boolean = false) : void
      {
         var _loc3_:Array = _9c52777792d76fde110d23c0._c08b9d50de93ee9df95de516(param1);
         _787f7f18916a208de3a31378(param1);
         var _loc4_:_10aec915df137be255fad9fc = new _10aec915df137be255fad9fc(MovieClip(param1),false,param2,this._57c24f114faba6064e97cdb2);
         _loc4_.name = param1.name;
         this._c6149c23ac0b7ae831123747.push(_loc4_);
         this._663add367e295c4e401e355a = _loc4_;
         if(!empty(_loc3_))
         {
            this._0a5bccd0d6a6357ea6f9d9ca(_loc3_,param1,_loc4_);
            this._e87a7f4f1d3814d3f06cc5c7._cd00d97cac65b4dc892b5324(param1);
         }
         _loc4_.framePerSec = -1034900452 ^ -1736992155 ^ 0x6A8C9510 ^ 0x30ABA363;
         _loc4_.play();
         this._73198cea26e250f553300b17.push(_loc4_);
      }
      
      private function _4c654e3fd6f244303856d656(param1:int) : _93801b1eb0ddeaa9f8a99f9f
      {
         var _loc2_:_93801b1eb0ddeaa9f8a99f9f = null;
         var _loc3_:_93801b1eb0ddeaa9f8a99f9f = null;
         for each(_loc3_ in this.wallButtonEnters)
         {
            if(param1 == _loc3_.id)
            {
               return _loc3_;
            }
         }
         _loc2_ = new _93801b1eb0ddeaa9f8a99f9f();
         this.wallButtonEnters.push(_loc2_);
         return _loc2_;
      }
      
      private function _4c1e192866a678168c944244(param1:String) : Class
      {
         var _loc2_:Class = null;
         if(this._applicationDomain != null && this._applicationDomain.hasDefinition(param1))
         {
            return Class(this._applicationDomain.getDefinition(param1));
         }
         return null;
      }
      
      private function _0ee123a5d77cb417c313b8d6(param1:String) : _68d6770c6e8ca6ab940a29bc
      {
         var _loc2_:_68d6770c6e8ca6ab940a29bc = null;
         var _loc3_:Class = null;
         if(this._fb5e6481710930750b82d357[param1] == null)
         {
            if(this._applicationDomain != null && this._applicationDomain.hasDefinition(param1))
            {
               _loc3_ = Class(this._applicationDomain.getDefinition(param1));
               _loc2_ = new _68d6770c6e8ca6ab940a29bc(new _loc3_());
               _loc2_.framePerSec = 0x0681F2D0 ^ 0x3D4BB1B4 ^ -1980612106 ^ -1304952168;
               _loc2_.play();
               this._73198cea26e250f553300b17.push(_loc2_);
            }
            this._fb5e6481710930750b82d357[param1] = _loc2_;
         }
         return this._fb5e6481710930750b82d357[param1];
      }
      
      public function addLocationItem(param1:_b24d698d62126854674d50a8) : void
      {
         this.addChild(param1.source);
         param1.show();
      }
      
      public function removeLocationItem(param1:_b24d698d62126854674d50a8) : void
      {
         this.removeChild(param1.source);
         disableMouse(param1.source);
         this._topLayer.addChild(param1.source);
         param1.hide();
      }
      
      public function _b6c63454f97f7df50ecb6b3e(param1:_51ba0158a860b043fa168db6) : void
      {
         var _loc2_:DisplayObject = null;
         var _loc3_:DisplayObjectContainer = param1.source as DisplayObjectContainer;
         this.mainLayer.addChild(_loc3_);
         var _loc4_:int = -1449853318 ^ 0x326DCBCE ^ -29785631 ^ 0x65C0B455;
         while(_loc4_ < _loc3_.numChildren)
         {
            _loc2_ = _loc3_.getChildAt(_loc4_);
            this._d84a92a14f48c27e12c48323(_loc2_);
            _loc4_++;
         }
      }
      
      override public function addChild(param1:DisplayObject) : DisplayObject
      {
         var _loc2_:DisplayObject = null;
         if(param1 != null && param1.parent != this.mainLayer && this._zSorter != null)
         {
            _loc2_ = this.mainLayer.addChild(param1);
            this._zSorter._e212a4ed5e2246a1788a7970(_loc2_);
         }
         return _loc2_;
      }
      
      override public function removeChild(param1:DisplayObject) : DisplayObject
      {
         if(param1.parent == this.mainLayer && this._zSorter != null)
         {
            this._zSorter._c1ccdb928cf168005fc7c4ff(param1);
         }
         return param1;
      }
      
      public function _698bb584b5b0ca8d2e60ce08() : BitmapData
      {
         return this._obstacleMapBitmapData;
      }
      
      public function get fullWidth() : Number
      {
         return this._34d6de36a0510fa2ea937b04 != null ? this._34d6de36a0510fa2ea937b04.x : -1928264075 ^ -1834109490 ^ -1817187854 ^ -1944888759;
      }
      
      public function get fullHeight() : Number
      {
         return this._34d6de36a0510fa2ea937b04 != null ? this._34d6de36a0510fa2ea937b04.y : 0x25287D51 ^ -1942760325 ^ 0x537ABAB0 ^ -94301286;
      }
      
      public function _d2821df50f261a80f9891c48() : DisplayObject
      {
         return this._2cfa40737447e7273389a616;
      }
      
      public function _455fd402ad4447162b4ccee3(param1:Sprite) : void
      {
         var _loc2_:int = -1454857514 ^ 0x212C4100 ^ -64216543 ^ -1756168993;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x20707C90 ^ 0x7F93AFF9 ^ -1654871329 ^ 0x21A5449E))
            {
               case 0:
                  if(this._topLayer.hasOwnProperty(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挹挵掚挆揂措捈捗挚接揥掶捅捗捞挐揓挕按排掲捌掷掸挖揷","掍捛掱挵捗揦捪挆捩揠捘揸捱措持揂")))
                  {
                     _loc2_ = 0x07E2D4B3 ^ 0x54CCEF4E ^ 0x47C038B4 ^ -134988192;
                  }
                  else
                  {
                     _loc2_ = 0x5B0E2624 ^ 0x2661377E ^ 0x1C5631A4 ^ -2111627820;
                  }
                  break;
               case 1:
                  this._topLayer.removeChild(this._topLayer.getChildByName(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剙劏刻刱刓剙剈刬剘勷切劝勇刪勘勊劤劵勉剶勩劲劭劯刊刦","剬劍劜勐勼勰勖剕办勪务剒動勖勿刡")));
                  _loc2_ = 0x4F06026B ^ 0x2A7E2C70 ^ 0x155C02F4 ^ -1824648763;
                  break;
               case 2:
                  this._topLayer.addChildAt(param1,-1467883544 ^ 0x72528822 ^ 0x4CAF00A1 ^ -1770236053);
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      override public function set scrollRect(param1:Rectangle) : void
      {
         var _loc2_:Rectangle = scrollRect;
         if(_loc2_ != null && param1.x == _loc2_.x && param1.y == _loc2_.y && param1.height == _loc2_.height && param1.width == _loc2_.width)
         {
            return;
         }
         _0a7f35e7b4f831fcb900592b = getTimer();
         _9b189a790efd59581443eb40.change(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("刎划剋刷勚勋制剟劎刜勆劏劣勧刴努","剢勆勆劋功勵劀刍剂刦刧勐劖剪剀刼"),this.x + _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၽႧეხဏႍჯၙინ","ဦ၀ဳႣლဉဘეၵံႊ၆ဍၧჁ၄") + this.y + _95da7f1147c669197db81295._8f4866de82b7339154180ecb("刪劋勎勲勦励刐勶勧刂","劒劮勑勠劢初劦勉加刐劦刻劵判勆刳") + param1.x + _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揔捁揈捪掠揪捴捠挞掳","排掝掏掰授掳捫捪掳揈挖挼掬揜挓掔") + param1.y);
         super.scrollRect = param1;
         this._c5ac49f492d09d052de9acd4.x = param1.x;
         this._c5ac49f492d09d052de9acd4.y = param1.y;
         this._c5ac49f492d09d052de9acd4.scrollRect = param1;
         this._9538484d27ba215be40aadcb.scrollRect = param1.clone();
         this._visibilityManager.scrollRect = param1;
         _08c120b706560fce9302bcab.locationLayersScrollRect = param1;
      }
      
      public function set weather(param1:_da93b7e4b1cf62dcb698e0bd) : void
      {
         this._c5ac49f492d09d052de9acd4.weatherType = param1;
      }
      
      public function update(param1:uint, param2:uint) : void
      {
         var _loc3_:_69eec7d2f73604da25ccda04 = null;
         var _loc4_:_69eec7d2f73604da25ccda04 = null;
         this._zSorter.update();
         this._e87a7f4f1d3814d3f06cc5c7.update(param1,param2);
         for each(_loc3_ in this._73198cea26e250f553300b17)
         {
            _loc3_.update(param1,param2);
         }
         if(Config.WATER_ANIMATION_EFFECT)
         {
            for each(_loc4_ in this._6195cb3b41c1a624e4aefb41)
            {
               _loc4_.update(param1,param2);
            }
         }
         this._visibilityManager._c865673e0608682cda4f1e92();
      }
      
      public function _92d6baab4102395a7951d68b(param1:DisplayObject, param2:Boolean = true) : void
      {
         var _loc3_:int = 0x2EC2A23F ^ 0x433D2CA6 ^ -1063713167 ^ -1396302474;
         loop0:
         while(true)
         {
            switch(_loc3_ ^ (-1727885489 ^ -1151502265 ^ 0x15101638 ^ 0x36EF74AC))
            {
               case 0:
                  param1.alpha = 0x1AE87C5D ^ 0x317B10AE ^ 0x3AB2644A ^ 0x112108B8;
                  _loc3_ = 0x32FFB697 ^ -919271748 ^ 0x24D605A3 ^ -558096361;
                  break;
               case 1:
                  param1.alpha = 0x48735EA5 ^ 0x23FD7C5E ^ -499246814 ^ -1984939047;
                  TweenCube.to(param1,0x41DF73F3 ^ -661436690 ^ -1293240413 ^ 0x2BA682BC,{(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揂揉挐掛捲揟捗揍捦掘排掬掚挩接捃掓捅","挸掄挫掭掠揾掄捁援掃捦揰揭掊描挟")):0x3613C6C6 ^ -626444248 ^ 0x3FC88938 ^ -747472937});
                  _loc3_ = 0x2A1AAE12 ^ -241716975 ^ -1635000891 ^ 0x44A65759;
                  break;
               case 2:
                  if(param2)
                  {
                     _loc3_ = -1180309241 ^ -1468287278 ^ -2017877032 ^ -1748538992;
                  }
                  else
                  {
                     _loc3_ = 0x0182EA23 ^ 0x7A91E03A ^ 0x4253D66C ^ 0x38E049E9;
                  }
                  break;
               case 3:
                  this.addChild(param1);
                  var _temp_5:* = this._visibilityManager;
                  var _temp_4:* = param1;
                  var _temp_3:* = -param1.width / (-590110642 ^ -608734503 ^ 0x6178CAF7 ^ 0x661C1862);
                  var _temp_2:* = -param1.height + (0x0781763E ^ 0x1533EDF8 ^ -650172176 ^ -879906014);
                  var _temp_1:* = -728314514 ^ -626963961 ^ 0x22647DD4 ^ 0x2C53FABD;
                  _temp_5._cd00d97cac65b4dc892b5324(_temp_4,_temp_3,_temp_2,_temp_1,_temp_1,true);
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function removeChar(param1:DisplayObject) : void
      {
         var _loc2_:int = -666700871 ^ 0x50075DB8 ^ -231322846 ^ -900790753;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x637A5A8F ^ -754540700 ^ -504983099 ^ -509167854))
            {
               case 0:
                  if(param1.parent != null)
                  {
                     _loc2_ = 0x3730D37C ^ 0x4F770469 ^ 0x3CF43E39 ^ -191952367;
                  }
                  else
                  {
                     _loc2_ = 0x19E1F9C5 ^ 0x790A2ED8 ^ -1914273925 ^ 0x5D314B58;
                  }
                  break;
               case 1:
                  TweenCube.to(param1,-1739294932 ^ -969169609 ^ 0x647E9AE2 ^ 0x3A1148FB,{(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ႈဍသၶჇჳႫႧჍဧდဂႡეုძႲ၎","Ⴇၖၞ႞႙ုၚ႑႔ဎი၊ჼာဍႡ")):-373323197 ^ -854703221 ^ -1541097507 ^ -2137686507},{
                     (_95da7f1147c669197db81295._8f4866de82b7339154180ecb("刺劈劓剢刢勃刻前努勥勨剼劇刷勫刚劵勈勜刱勮剚勳利剟剥刑劆","剆勧勠势刁剙刹勻勐刳劬刚剀刚勁剅")):this.removeChild,
                     (_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挨捦排掤掾揫揫捡捀据挽揓捊捏揪揜挅揷揧掗挥捦捧揣掍捒挕捷掻揌挠挐捙掋挥推挋捿掣捵","推挡揋掋揶提掚捘掍挑掳掾掠掹揍掷")):[param1]
                  });
                  _loc2_ = 0x7B364D50 ^ -205263002 ^ -1931460549 ^ -1272381133;
                  break;
               case 2:
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function get lakeObstacleMap() : BitmapData
      {
         return this._0275cb7be397e6b98706c6c3;
      }
      
      public function get progress() : Number
      {
         return this._88db867279e5a25411de40aa == null ? -226919698 ^ 0x44256024 ^ -708574304 ^ 0x6398196A : (this._7662020ef88e5dd76f67739a - this._ddc03b79d89c9c6960c201b9) / this._7662020ef88e5dd76f67739a;
      }
      
      public function get landingMap() : MovieClip
      {
         return this._c636a9008b287c77b787592d;
      }
      
      public function get raftRectangle() : Rectangle
      {
         var _loc1_:int = -1664898302 ^ -1747739289 ^ 0x586DE69D ^ 0x4CE9D9FA;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (-707351994 ^ 0x287E075A ^ -114509486 ^ 0x1B101D4D))
            {
               case 0:
                  var _temp_2:* = §§findproperty(Rectangle);
                  var _temp_1:* = 0x6EEEAA67 ^ -464810425 ^ 0x156BF540 ^ -1613835936;
                  return new Rectangle(_temp_1,_temp_1,_temp_1,0x4E737EAE ^ -1459906114 ^ 0x6965C85E ^ -1880281266);
               case 1:
                  if(this._1212b384e0d9409aee0efe8a != null)
                  {
                     _loc1_ = -943242479 ^ -1377679375 ^ -786094936 ^ -1533793975;
                  }
                  else
                  {
                     _loc1_ = -1713808347 ^ -637019566 ^ 0x022F6CD5 ^ 0x5E65E3A1;
                  }
                  break;
               case 2:
                  return this._1212b384e0d9409aee0efe8a.rectangle;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function get raft() : _a00a2200c99ccb365fe1b90e
      {
         return this._1212b384e0d9409aee0efe8a;
      }
      
      public function _9cfcda3bd875179340e11488(param1:String) : void
      {
         var _loc2_:int = -1172459370 ^ -1781179812 ^ -653926385 ^ 0x7117B7BF;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (-855775217 ^ -304567549 ^ -1896302085 ^ 0x2807478D))
            {
               case 0:
                  if(this._2fb88311b89050d1f183f3bb != null)
                  {
                     _loc2_ = -1351107128 ^ 0x1EED7C97 ^ 0x6F519A8E ^ 0x5911E6AA;
                  }
                  else
                  {
                     _loc2_ = 0x446AB1E6 ^ 0x2F31B285 ^ 0x07AF97CD ^ -349296170;
                  }
                  break;
               case 1:
                  _02fbe4cbe9e83f1b8c711799.removeEventListener(this,this._2fb88311b89050d1f183f3bb,Event.COMPLETE,this._a4c9645a33e5e0daa1577dc3);
                  _loc2_ = 0x65C9F0B3 ^ 0x1E8F68A7 ^ -1244925634 ^ 0x4957D452;
                  break;
               case 2:
                  this._2fb88311b89050d1f183f3bb = new _f5d3c19b4de5df055d1bc952(-158070988 ^ 0x24E5650F ^ -1756710781 ^ 0x453BDABB);
                  _02fbe4cbe9e83f1b8c711799.addEventListener(this,this._2fb88311b89050d1f183f3bb,Event.COMPLETE,this._a4c9645a33e5e0daa1577dc3);
                  this._2fb88311b89050d1f183f3bb.load(new URLRequest(param1));
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      protected function _a4c9645a33e5e0daa1577dc3(param1:Event) : void
      {
         _02fbe4cbe9e83f1b8c711799.removeEventListener(this,this._2fb88311b89050d1f183f3bb,Event.COMPLETE,this._a4c9645a33e5e0daa1577dc3);
         if(this._2fb88311b89050d1f183f3bb.content != null && this._2fb88311b89050d1f183f3bb.content is Bitmap && Bitmap(this._2fb88311b89050d1f183f3bb.content).bitmapData != null)
         {
            this._obstacleMapBitmapData = Bitmap(this._2fb88311b89050d1f183f3bb.content).bitmapData;
            if(this._e8d1aa0c19a7a3446ada0870 == null)
            {
               this._e8d1aa0c19a7a3446ada0870 = new Bitmap();
               this._e8d1aa0c19a7a3446ada0870.alpha = this._e614a759f50203320a3a7f68;
            }
            this._e8d1aa0c19a7a3446ada0870.bitmapData = this._obstacleMapBitmapData;
            dispatchEvent(new _178a822f6f1028b33439b0d5(_178a822f6f1028b33439b0d5.UPDATE_OBSTACLE_MAP));
         }
         else
         {
            Cc.error(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("别劑刬刡剤劶劓刄剰劺刃劓劒刵劲剿劓勊務劤券勐剧剛分剤列割勡刏剧剽勸刑剟刽劰剒剸劚剢剏剬剎勘勫勥刴勏利剴剖劼剺劔功勚刿剮刉剆劷勼剝刵勓劺劵勊勳剀刢劚刻刧劔","刭劚勁刬勛勚劷劘勵務劅刍剖勣剳刃") + this._2fb88311b89050d1f183f3bb.url);
         }
      }
      
      public function _3e3242382a87d19d8938f33c(param1:String) : void
      {
         var _loc2_:int = -882274314 ^ 0x1E8B018C ^ 0x4D3E960E ^ -28287006;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x6C08C8D5 ^ 0x086C1A93 ^ -1659124251 ^ -1611444172))
            {
               case 0:
                  this._5bbc65ca60a8e8c3a6c58c13 = new _f5d3c19b4de5df055d1bc952(-1887468332 ^ -1818014029 ^ 0x6529CDAC ^ 0x79F507C8);
                  _02fbe4cbe9e83f1b8c711799.addEventListener(this,this._5bbc65ca60a8e8c3a6c58c13,Event.COMPLETE,this._a4106070b86cc914b2cf7634);
                  this._5bbc65ca60a8e8c3a6c58c13.load(new URLRequest(param1));
                  return;
               case 1:
                  if(this._5bbc65ca60a8e8c3a6c58c13 != null)
                  {
                     _loc2_ = 0x07D88E93 ^ -672885612 ^ -1313640856 ^ 0x070333FA;
                  }
                  else
                  {
                     _loc2_ = 0x6E508B3A ^ -865031680 ^ -28679898 ^ 0x3AE6078B;
                  }
                  break;
               case 2:
                  _02fbe4cbe9e83f1b8c711799.removeEventListener(this,this._5bbc65ca60a8e8c3a6c58c13,Event.COMPLETE,this._a4106070b86cc914b2cf7634);
                  _loc2_ = 0x6DF690EF ^ -870216964 ^ 0x1312B744 ^ -733353280;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function _6d5465207fd2659f33dd930a(param1:String) : void
      {
         var _loc2_:int = -175887184 ^ 0x1BE3B823 ^ 0x14136C3F ^ -160849506;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (-557403532 ^ -66703167 ^ 0x2AD0B063 ^ 0x040D6BE6))
            {
               case 0:
                  _02fbe4cbe9e83f1b8c711799.removeEventListener(this,this._3bfeeeec4d93a48347bf91fa,Event.COMPLETE,this._cb636d799a9913c61167837a);
                  _loc2_ = -1161867900 ^ 0x1216198F ^ -920506104 ^ 0x6D963C32;
                  break;
               case 1:
                  this._3bfeeeec4d93a48347bf91fa = new _f5d3c19b4de5df055d1bc952();
                  _02fbe4cbe9e83f1b8c711799.addEventListener(this,this._3bfeeeec4d93a48347bf91fa,Event.COMPLETE,this._cb636d799a9913c61167837a);
                  this._3bfeeeec4d93a48347bf91fa.load(new URLRequest(param1));
                  return;
               case 2:
                  if(this._3bfeeeec4d93a48347bf91fa != null)
                  {
                     _loc2_ = -173440648 ^ 0x394713E1 ^ -1093229629 ^ 0x7E25686A;
                  }
                  else
                  {
                     _loc2_ = 0x71A12807 ^ -1706200139 ^ -1081375014 ^ 0x587A8459;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function _a4106070b86cc914b2cf7634(param1:Event) : void
      {
         _02fbe4cbe9e83f1b8c711799.removeEventListener(this,this._5bbc65ca60a8e8c3a6c58c13,Event.COMPLETE,this._a4106070b86cc914b2cf7634);
         if(this._5bbc65ca60a8e8c3a6c58c13.content != null && this._5bbc65ca60a8e8c3a6c58c13.content is Bitmap && Bitmap(this._5bbc65ca60a8e8c3a6c58c13.content).bitmapData != null)
         {
            this._0275cb7be397e6b98706c6c3 = Bitmap(this._5bbc65ca60a8e8c3a6c58c13.content).bitmapData;
            if(this._60ce786b92a924c287dac885 == null)
            {
               this._60ce786b92a924c287dac885 = new Bitmap();
               this._60ce786b92a924c287dac885.alpha = this._e614a759f50203320a3a7f68;
            }
            this._60ce786b92a924c287dac885.bitmapData = this._0275cb7be397e6b98706c6c3;
            this._9538484d27ba215be40aadcb.lakeObstacleMapBitmap = this._0275cb7be397e6b98706c6c3;
            dispatchEvent(new _178a822f6f1028b33439b0d5(_178a822f6f1028b33439b0d5.UPDATE_LAKE_OBSTACLE_MAP));
         }
         else
         {
            Cc.error(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劔刧剎动刐刂刃勪刮刓劁刄刖刣判刨删勭勚劣勱劙劂勛刪勘勄剸劈剺剘刟勩刌剢勝劏勲剆勚勯勤勲势勾剧劏勺剭刷別剞刷剌勠劽勗剐劄刑効劢劮剜刺剁劝刑劌剤剽务剻刯剋刅勃切勾勹刈则办剉剆制","劗剶効势剿剅刋剿劾勡劜勇剛剖勘劎") + this._2fb88311b89050d1f183f3bb.url);
         }
      }
      
      private function _cb636d799a9913c61167837a(param1:Event) : void
      {
         _02fbe4cbe9e83f1b8c711799.removeEventListener(this,this._3bfeeeec4d93a48347bf91fa,Event.COMPLETE,this._cb636d799a9913c61167837a);
         if(this._3bfeeeec4d93a48347bf91fa.content != null && this._3bfeeeec4d93a48347bf91fa.content is Bitmap && Bitmap(this._3bfeeeec4d93a48347bf91fa.content).bitmapData != null)
         {
            this.soundMapBitmapData = Bitmap(this._3bfeeeec4d93a48347bf91fa.content).bitmapData;
            if(this._d999a3358ad3b1440b6f4613 == null)
            {
               this._d999a3358ad3b1440b6f4613 = new Bitmap();
               this._d999a3358ad3b1440b6f4613.alpha = this._ccf75e1f4569a1197facf1d1;
            }
            this._d999a3358ad3b1440b6f4613.bitmapData = this.soundMapBitmapData;
            dispatchEvent(new _178a822f6f1028b33439b0d5(_178a822f6f1028b33439b0d5.UPDATE_SOUND_MAP));
         }
         else
         {
            Cc.error(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捍掵揘捴挶捕掆捙掑捀排掛捞措掍捾掺掶振揓掔掕捨掑掍挢掂揥握捊揃挶捰捖捈捩揟捷掅揺挥掌揼掖掣掸捎捅挣揬揪捲挹掤揍挼捨掝捵掲挹捔揁持据挆捥捇揠挘排掕","捊揾捵揠掰捪捺掷排捑捑挒捩挴揹掜") + this._3bfeeeec4d93a48347bf91fa.url);
         }
      }
      
      public function _3fa89e92f28203fdc9e6d637(param1:Number) : void
      {
         var _loc2_:int = 0x10F73B7C ^ 0x57F37077 ^ -74959692 ^ 0x08ACD6ED;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (-1480774204 ^ 0x5C7FE6D0 ^ 0x0414221F ^ 0x4BF64059))
            {
               case 0:
                  if(this._e8d1aa0c19a7a3446ada0870 != null)
                  {
                     _loc2_ = -1084032254 ^ 0x550E5813 ^ 0x1A82D4D2 ^ 0x44CEDE99;
                  }
                  else
                  {
                     _loc2_ = 0x24BAB2CE ^ -1103761797 ^ -1575811278 ^ -1933774126;
                  }
                  break;
               case 1:
                  _loc2_ = 0x303408B6 ^ -266720059 ^ -745271207 ^ -1483039361;
                  break;
               case 2:
                  DEBUG_SPRITE.addChild(this._e8d1aa0c19a7a3446ada0870);
                  _loc2_ = -1649582276 ^ -2078218397 ^ -360784380 ^ 0x47D3CF08;
                  break;
               case 3:
                  this._60ce786b92a924c287dac885.visible = true;
                  this._60ce786b92a924c287dac885.alpha = param1;
                  _loc2_ = -1942437346 ^ 0x06C83198 ^ 0x1D6576DF ^ 0x23B52C0E;
                  break;
               case 4:
                  this._e8d1aa0c19a7a3446ada0870.visible = false;
                  _loc2_ = 0x5B61EABF ^ -1404751019 ^ -2107623957 ^ -1050393260;
                  break;
               case 5:
                  this._e614a759f50203320a3a7f68 = param1;
                  return;
               case 6:
                  this._e8d1aa0c19a7a3446ada0870.visible = true;
                  this._e8d1aa0c19a7a3446ada0870.alpha = param1;
                  if(this._e8d1aa0c19a7a3446ada0870.parent == null)
                  {
                     _loc2_ = -1741774574 ^ -59019289 ^ 0x7D5ABDE2 ^ -1389372857;
                  }
                  else
                  {
                     _loc2_ = -369151736 ^ 0x2DD6823D ^ 0x6FB76E6D ^ 0x1FBE740B;
                  }
                  break;
               case 7:
                  if(this._60ce786b92a924c287dac885 != null)
                  {
                     _loc2_ = -1710745718 ^ -697419258 ^ -1784263685 ^ 0x6DE0CF2F;
                  }
                  else
                  {
                     _loc2_ = -1535239019 ^ 0x374C59CC ^ 0x74F45EE7 ^ 0x53E6B2E9;
                  }
                  break;
               case 8:
                  if(param1 > (0x49C1BC0E ^ 0x2AE0E960 ^ 0x21F9BD33 ^ 0x42D8E85D))
                  {
                     _loc2_ = 0x263D6B3D ^ 0x016BD465 ^ -269220101 ^ 0x7C8210F7;
                  }
                  else
                  {
                     _loc2_ = 0x1C53B4D0 ^ 0x5F993C4D ^ -760513968 ^ 0x25415B9B;
                  }
                  break;
               case 9:
                  this._60ce786b92a924c287dac885.visible = false;
                  _loc2_ = 0x6469268A ^ 0x268A3AE0 ^ 0x73D587F3 ^ -2062142770;
                  break;
               case 10:
                  if(param1 > (0x3FC75DA3 ^ 0x13C543AA ^ -1823811032 ^ -1085750239))
                  {
                     _loc2_ = -1313904907 ^ 0x3A1EC85A ^ -1700294738 ^ -1523152816;
                  }
                  else
                  {
                     _loc2_ = -1816508231 ^ 0x05D07A10 ^ -1878619209 ^ -1303637947;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function _c17e0b4b08addbaa4786c0f4(param1:Number) : void
      {
         var _loc2_:int = 0x1734329A ^ -1241905278 ^ 0x4522BD14 ^ -1380989488;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x0F53CA2A ^ -639140319 ^ -485211586 ^ 0x7FE3BBED))
            {
               case 0:
                  this._d999a3358ad3b1440b6f4613.visible = true;
                  this._d999a3358ad3b1440b6f4613.alpha = param1;
                  _loc2_ = 0x18E608DB ^ 0x5FD880E9 ^ 0x053EC119 ^ 0x084304F2;
                  break;
               case 1:
                  this._ccf75e1f4569a1197facf1d1 = param1;
                  return;
               case 2:
                  if(param1 > (0x61B5D2A5 ^ 0x6EEA1EAE ^ 0x79D68304 ^ 0x76894F0F))
                  {
                     _loc2_ = 0x750424F3 ^ 0x4467A005 ^ -1570196431 ^ -649560801;
                  }
                  else
                  {
                     _loc2_ = -1536894293 ^ -909435748 ^ 0x43F4960B ^ 0x64181DE7;
                  }
                  break;
               case 3:
                  this._d999a3358ad3b1440b6f4613.visible = false;
                  _loc2_ = 0x07422E16 ^ -1296437870 ^ 0x77BD8ABE ^ -2012936989;
                  break;
               case 4:
                  if(this._d999a3358ad3b1440b6f4613 != null)
                  {
                     _loc2_ = 0x48CF73D3 ^ -437299024 ^ -1575206278 ^ 0x457F24C3;
                  }
                  else
                  {
                     _loc2_ = -1261689885 ^ 0x433DF255 ^ -1263759364 ^ 0x091E1393;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function destroy() : void
      {
         var _loc1_:Object = null;
         var _loc2_:_a5e6911f85306c220b8b5d78 = null;
         var _loc3_:_93801b1eb0ddeaa9f8a99f9f = null;
         var _loc4_:BitmapData = null;
         var _loc5_:_40c40768738c862c74ddd128 = null;
         var _loc6_:_e82930b870cc8514498fa9d2 = null;
         var _loc7_:_7cc6184a6a6df90ac01c6c08 = null;
         _92d7656ddc3c3da810e99c74.getInstance()._57ad3faeff9ca92cbf9fe447(_34a2ba6ad978d976b8b0f5a4.TIMER_200).remove(this._9538484d27ba215be40aadcb);
         _92d7656ddc3c3da810e99c74.getInstance()._57ad3faeff9ca92cbf9fe447(_34a2ba6ad978d976b8b0f5a4.TIMER_200).remove(this._ddef0d049d3de3d08bd19a3a);
         if(this._1212b384e0d9409aee0efe8a != null)
         {
            this._1212b384e0d9409aee0efe8a.destroy();
         }
         this.bestPlayer = null;
         removeFromParent(this._bb9e557c6ae085296248ef18);
         this._bb9e557c6ae085296248ef18 = null;
         removeFromParent(this._9ff0cfc80c91df8a1178a691);
         this._9ff0cfc80c91df8a1178a691 = null;
         this._6b0a1871221a7637dc588649 = null;
         this._7a80f5dcfbb903a5f0bfd7c6 = null;
         for each(_loc1_ in this._c6149c23ac0b7ae831123747)
         {
            if(_loc1_ is _c36d2d5bdf0600686d3429c2)
            {
               _c36d2d5bdf0600686d3429c2(_loc1_).destroy();
            }
         }
         this._c6149c23ac0b7ae831123747 = null;
         removeAllChildrenRecursive(this);
         _02fbe4cbe9e83f1b8c711799._87b72cd49d8fc861c4443e4d(this);
         if(this.parent != null)
         {
            this.parent.removeChild(this);
         }
         if(this.bestPlayer != null)
         {
            TweenCube.destroyTweensOf(this.bestPlayer,false);
            this.bestPlayer = null;
         }
         removeFromParent(this._9f093b8b185337e28d5404ab);
         this._9f093b8b185337e28d5404ab = null;
         removeFromParent(this._topLayer);
         this._topLayer = null;
         removeAllChildren(this._bottomLayer);
         removeFromParent(this._bottomLayer);
         this._bottomLayer = null;
         removeAllChildren(this._2595a9d9b1bfa3376e72cb8b);
         removeFromParent(this._2595a9d9b1bfa3376e72cb8b);
         this._2595a9d9b1bfa3376e72cb8b = null;
         removeAllChildren(this._2b0896c6d0a530499ca65cf8);
         removeFromParent(this._2b0896c6d0a530499ca65cf8);
         this._2b0896c6d0a530499ca65cf8 = null;
         removeAllChildren(this._layerSpecial);
         removeFromParent(this._layerSpecial);
         this._layerSpecial = null;
         removeFromParent(this._bottom2Layer);
         this._bottom2Layer = null;
         removeFromParent(this.mainLayer);
         this.mainLayer = null;
         this._zSorter.destroy();
         this._zSorter = null;
         this._34d6de36a0510fa2ea937b04 = null;
         this._2cfa40737447e7273389a616 = null;
         if(this._c5ac49f492d09d052de9acd4 != null)
         {
            this._c5ac49f492d09d052de9acd4.destroy();
            removeFromParent(this._c5ac49f492d09d052de9acd4);
            this._c5ac49f492d09d052de9acd4 = null;
         }
         removeFromParent(charMessagesLayer,this);
         this._73198cea26e250f553300b17 = null;
         this._6195cb3b41c1a624e4aefb41 = null;
         if(this._visibilityManager != null)
         {
            this._visibilityManager.destroy();
            this._visibilityManager = null;
         }
         removeFromParent(DEBUG_SPRITE,this);
         if(this._obstacleMapBitmapData != null)
         {
            this._obstacleMapBitmapData.dispose();
            this._obstacleMapBitmapData = null;
         }
         if(this._0275cb7be397e6b98706c6c3 != null)
         {
            this._0275cb7be397e6b98706c6c3.dispose();
            this._0275cb7be397e6b98706c6c3 = null;
         }
         if(this.soundMapBitmapData != null)
         {
            this.soundMapBitmapData.dispose();
            this.soundMapBitmapData = null;
         }
         this._fce6d02e4e607c9fb4208dec = null;
         this._88db867279e5a25411de40aa = null;
         this._applicationDomain = null;
         this._fb5e6481710930750b82d357 = null;
         if(this._9538484d27ba215be40aadcb != null)
         {
            this._9538484d27ba215be40aadcb.destroy();
            this._9538484d27ba215be40aadcb = null;
         }
         if(this._ddef0d049d3de3d08bd19a3a != null)
         {
            this._ddef0d049d3de3d08bd19a3a.destroy();
            this._ddef0d049d3de3d08bd19a3a = null;
         }
         for each(_loc2_ in this._sublocationEnters)
         {
            _loc2_.destroy();
         }
         this._sublocationEnters = null;
         for each(_loc3_ in this.wallButtonEnters)
         {
            _loc3_.destroy();
         }
         this.wallButtonEnters = null;
         this._c636a9008b287c77b787592d = null;
         if(this._7f4c4d3ce6b374ffe3041cc3 != null)
         {
            this._7f4c4d3ce6b374ffe3041cc3.destroy();
         }
         this._7f4c4d3ce6b374ffe3041cc3 = null;
         this.boatByIndex = null;
         for each(_loc4_ in this._39d73d3afcbca5aad3b0c0e4)
         {
            _loc4_.dispose();
         }
         this._39d73d3afcbca5aad3b0c0e4 = null;
         if(this._e5cf3083d48dfd0c91722de9 != null)
         {
            this._e5cf3083d48dfd0c91722de9.destroy();
            this._e5cf3083d48dfd0c91722de9 = null;
         }
         if(this._2612954270c443e009a41713 != null)
         {
            this._2612954270c443e009a41713.dispose();
            this._2612954270c443e009a41713 = null;
         }
         if(this._f37b0339d029ff74ae76a13d != null)
         {
            this._f37b0339d029ff74ae76a13d.destroy();
            this._f37b0339d029ff74ae76a13d = null;
         }
         if(this._0e7dea17c02b26492e44e974 != null)
         {
            this._0e7dea17c02b26492e44e974.destroy();
            this._0e7dea17c02b26492e44e974 = null;
         }
         if(this._f8991787ca249bf0354f1d4a != null)
         {
            this._f8991787ca249bf0354f1d4a.destroy();
            this._f8991787ca249bf0354f1d4a = null;
         }
         this.bestPlayer = null;
         this.topPlayerBoard = null;
         this._663add367e295c4e401e355a = null;
         if(this.specialWall != null)
         {
            this.specialWall.destroy();
            this.specialWall = null;
         }
         if(this.landingWall != null)
         {
            this.landingWall.destroy();
            this.landingWall = null;
         }
         if(this.keyRoad != null)
         {
            this.keyRoad.destroy();
            this.keyRoad = null;
         }
         if(this.frozenLake != null)
         {
            this.frozenLake.destroy();
            this.frozenLake = null;
         }
         if(this.boats != null)
         {
            for each(_loc5_ in this.boats)
            {
               _loc5_.destroy();
            }
            this.boats = null;
         }
         if(this.tournamentWalls != null)
         {
            this.tournamentWalls.destroy();
            this.tournamentWalls = null;
         }
         if(this.tournamentFinish != null)
         {
            this.tournamentFinish.destroy();
            this.tournamentFinish = null;
         }
         if(this._2fb88311b89050d1f183f3bb != null)
         {
            this._2fb88311b89050d1f183f3bb.destroy();
            this._2fb88311b89050d1f183f3bb = null;
         }
         this._e8d1aa0c19a7a3446ada0870 = null;
         if(this._5bbc65ca60a8e8c3a6c58c13 != null)
         {
            this._5bbc65ca60a8e8c3a6c58c13.destroy();
            this._5bbc65ca60a8e8c3a6c58c13 = null;
         }
         this._60ce786b92a924c287dac885 = null;
         if(this._3bfeeeec4d93a48347bf91fa != null)
         {
            this._3bfeeeec4d93a48347bf91fa.destroy();
            this._3bfeeeec4d93a48347bf91fa = null;
         }
         this._d999a3358ad3b1440b6f4613 = null;
         if(this._506ffa81b31dab5143a16c4b != null)
         {
            for each(_loc6_ in this._506ffa81b31dab5143a16c4b)
            {
               _loc6_.destroy();
            }
            this._506ffa81b31dab5143a16c4b = null;
         }
         if(this._7d3eb7775a3eeff80eacae0f != null)
         {
            for each(_loc7_ in this._7d3eb7775a3eeff80eacae0f)
            {
               _loc7_.destroy();
            }
            this._7d3eb7775a3eeff80eacae0f = null;
         }
      }
      
      public function _76e3d85dd243e353ed6e13fb(param1:Number, param2:Number) : _a5e6911f85306c220b8b5d78
      {
         var _loc3_:_a5e6911f85306c220b8b5d78 = null;
         for each(_loc3_ in this._sublocationEnters)
         {
            if(_loc3_.hitTestPoint(param1,param2))
            {
               return _loc3_;
            }
         }
         return null;
      }
      
      public function _eff2210177460a6b2f06ef20(param1:int) : _40c40768738c862c74ddd128
      {
         return this.boatByIndex[param1];
      }
      
      public function addShell(param1:Point) : void
      {
         var _loc2_:_e82930b870cc8514498fa9d2 = null;
         if(this._39d73d3afcbca5aad3b0c0e4 != null)
         {
            for each(_loc2_ in this._506ffa81b31dab5143a16c4b)
            {
               if(_loc2_.position.equals(param1))
               {
                  return;
               }
            }
            _loc2_ = new _e82930b870cc8514498fa9d2();
            _loc2_.position = param1;
            _loc2_.x = param1.x;
            _loc2_.y = param1.y;
            _loc2_.bitmapData = this._39d73d3afcbca5aad3b0c0e4[param1.x * param1.y % this._39d73d3afcbca5aad3b0c0e4.length];
            _loc2_.add();
            this.addChild(_loc2_);
            this._e5cf3083d48dfd0c91722de9._be1b77d80347283ab8d5769d(_loc2_);
            this._e87a7f4f1d3814d3f06cc5c7._cd00d97cac65b4dc892b5324(_loc2_);
         }
      }
      
      public function _202b1ebc4fc246c252082527(param1:Number, param2:Number, param3:int) : _55043b34818a7b88d28e92ef
      {
         return this._e5cf3083d48dfd0c91722de9 != null ? this._e5cf3083d48dfd0c91722de9._56f70dcfd335648be87c5995(param1,param2,param3) : null;
      }
      
      public function removeShell(param1:_55043b34818a7b88d28e92ef) : void
      {
         var _loc2_:_e82930b870cc8514498fa9d2 = null;
         var _loc3_:_e82930b870cc8514498fa9d2 = _e82930b870cc8514498fa9d2(param1.data);
         this._zSorter._c1ccdb928cf168005fc7c4ff(_loc3_);
         disableMouse(_loc3_);
         _loc3_.cacheAsBitmap = true;
         this._topLayer.addChild(_loc3_);
         _loc3_.remove();
         this._e5cf3083d48dfd0c91722de9._612e5b50a32957241aa1a510(param1);
         for each(_loc2_ in this._506ffa81b31dab5143a16c4b)
         {
            if(_loc2_.position.equals(_loc3_.position))
            {
               this._506ffa81b31dab5143a16c4b.splice(this._506ffa81b31dab5143a16c4b.indexOf(_loc2_),0x3D6F4310 ^ 0x7A894EDB ^ -2344239 ^ -1204144357);
               return;
            }
         }
      }
      
      public function addFishbox(param1:Point) : void
      {
         if(this._0e7dea17c02b26492e44e974 == null)
         {
            this._0e7dea17c02b26492e44e974 = new _eb2dccb1856b952dc47c053a(-763380604 ^ -852992600 ^ -685249785 ^ -932181315,0x34237EE1 ^ -129459157 ^ 0x3F2BF375 ^ -213905111);
         }
         var _loc2_:_85158387221dcd7a44602d59 = new _85158387221dcd7a44602d59();
         _loc2_.position = param1;
         _loc2_.x = param1.x;
         _loc2_.y = param1.y;
         _loc2_.add();
         this.mainLayer.addChildAt(_loc2_,-607801534 ^ -1736038431 ^ -1330040594 ^ -201672627);
         this._zSorter._e212a4ed5e2246a1788a7970(_loc2_);
         this._0e7dea17c02b26492e44e974._be1b77d80347283ab8d5769d(_loc2_);
      }
      
      public function _9ec0d0ddb6a21e008ac7809c(param1:Number, param2:Number, param3:int) : _55043b34818a7b88d28e92ef
      {
         var _loc4_:_55043b34818a7b88d28e92ef = null;
         if(this._0e7dea17c02b26492e44e974 != null)
         {
            _loc4_ = this._0e7dea17c02b26492e44e974._56f70dcfd335648be87c5995(param1,param2,param3);
         }
         return _loc4_;
      }
      
      public function removeFishbox(param1:_55043b34818a7b88d28e92ef) : void
      {
         var _loc2_:_85158387221dcd7a44602d59 = _85158387221dcd7a44602d59(param1.data);
         this._zSorter._c1ccdb928cf168005fc7c4ff(_loc2_);
         disableMouse(_loc2_);
         this._topLayer.addChild(_loc2_);
         _loc2_.remove();
         this._0e7dea17c02b26492e44e974._612e5b50a32957241aa1a510(param1);
      }
      
      public function destroyFishbox(param1:_55043b34818a7b88d28e92ef) : void
      {
         var _loc2_:_85158387221dcd7a44602d59 = _85158387221dcd7a44602d59(param1.data);
         this._zSorter._c1ccdb928cf168005fc7c4ff(_loc2_);
         _loc2_.remove();
         this._0e7dea17c02b26492e44e974._612e5b50a32957241aa1a510(param1);
      }
      
      public function get bobsMinigameFishCoinsLength() : int
      {
         return this._7d3eb7775a3eeff80eacae0f.length;
      }
      
      public function _5afbfdf792004d80fb00b861(param1:Point) : void
      {
         if(this._f37b0339d029ff74ae76a13d == null)
         {
            this._f37b0339d029ff74ae76a13d = new _eb2dccb1856b952dc47c053a(-999541166 ^ -1586935520 ^ 0x3DCA4894 ^ 0x58CF3770,-732320531 ^ -70577629 ^ 0x2D60D0B2 ^ 0x02F26EEA);
         }
         var _loc2_:_7cc6184a6a6df90ac01c6c08 = new _7cc6184a6a6df90ac01c6c08(param1);
         this._7d3eb7775a3eeff80eacae0f.push(_loc2_);
         _loc2_.add();
         this.mainLayer.addChildAt(_loc2_,-1512138966 ^ -1233062118 ^ 0x195BC536 ^ 0x0A05A506);
         this._zSorter._e212a4ed5e2246a1788a7970(_loc2_);
         this._f37b0339d029ff74ae76a13d._be1b77d80347283ab8d5769d(_loc2_,new Rectangle(_loc2_.x - _loc2_.width / (0x4451AB21 ^ -1250552101 ^ 0x39955D99 ^ -927801247),_loc2_.y - _loc2_.height,_loc2_.width,_loc2_.height));
      }
      
      public function _657d465ecebbecc9c5a079a3(param1:_55043b34818a7b88d28e92ef) : void
      {
         var _loc2_:_7cc6184a6a6df90ac01c6c08 = _7cc6184a6a6df90ac01c6c08(param1.data);
         this._zSorter._c1ccdb928cf168005fc7c4ff(_loc2_);
         disableMouse(_loc2_);
         this._topLayer.addChild(_loc2_);
         _loc2_.remove();
         this._f37b0339d029ff74ae76a13d._612e5b50a32957241aa1a510(param1);
         var _loc3_:int = this._7d3eb7775a3eeff80eacae0f.indexOf(_loc2_);
         if(_loc3_ != (-1178931691 ^ 0x0FC3B36B ^ -1254527523 ^ -54538404))
         {
            this._7d3eb7775a3eeff80eacae0f.splice(_loc3_,0x0AFC19BB ^ 0x5A54DEBA ^ 0x2E74BE4F ^ 0x7EDC794F);
         }
      }
      
      public function _45958c320bd5b6aee346e3fb(param1:Number, param2:Number, param3:int) : _55043b34818a7b88d28e92ef
      {
         var _loc4_:int = -1762066239 ^ -383852276 ^ -2016656578 ^ 0x44276C1C;
         loop0:
         while(true)
         {
            switch(_loc4_ ^ (0x1D3D79EE ^ -2117016248 ^ 0x4F0C40AB ^ 0x6FED12E0))
            {
               case 0:
                  return this._f37b0339d029ff74ae76a13d._56f70dcfd335648be87c5995(param1,param2,param3);
               case 1:
                  return null;
               case 2:
                  if(this._f37b0339d029ff74ae76a13d == null)
                  {
                     _loc4_ = 0x60403AAC ^ 0x6CFBDE29 ^ -1917510624 ^ 0x3D023649;
                  }
                  else
                  {
                     _loc4_ = 0x2F4CF115 ^ 0x1ACF1D6D ^ -639541071 ^ 0x506E4224;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function _63ecae1a1945233fa8f786fa() : void
      {
         var _loc1_:int = 0x0DD41C17 ^ -1074686313 ^ -1589900087 ^ 0x13198649;
         var _loc2_:int = 0x312EC829 ^ 0x64E575C3 ^ 0x7675E822 ^ 0x604E364A;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (-27725816 ^ -1611461537 ^ 0x0E02872E ^ 0x2C5918FA))
            {
               case 0:
                  if(_loc1_ >= this._7d3eb7775a3eeff80eacae0f.length)
                  {
                     _loc2_ = -918653309 ^ 0x0B9CCD49 ^ 0x1463CEEE ^ -1791945052;
                  }
                  else
                  {
                     _loc2_ = -612222219 ^ -1548843380 ^ 0x7C890375 ^ 0x4755DC8D;
                  }
                  break;
               case 1:
                  _loc1_ = 0x398BC20F ^ -1200560305 ^ 0x05C8CBDD ^ -2076971363;
                  _loc2_ = -1052335209 ^ -1283733733 ^ 0x053F7CD3 ^ 0x34F27BDC;
                  break;
               case 2:
                  this._zSorter._c1ccdb928cf168005fc7c4ff(this._7d3eb7775a3eeff80eacae0f[_loc1_]);
                  disableMouse(this._7d3eb7775a3eeff80eacae0f[_loc1_]);
                  this._topLayer.addChild(this._7d3eb7775a3eeff80eacae0f[_loc1_]);
                  this._7d3eb7775a3eeff80eacae0f[_loc1_].remove();
                  _loc1_++;
                  _loc2_ = 0x5EBBC94C ^ 0x529264DD ^ -278644290 ^ -1598163028;
                  break;
               case 3:
                  this._7d3eb7775a3eeff80eacae0f = new Vector.<_7cc6184a6a6df90ac01c6c08>();
                  this._f37b0339d029ff74ae76a13d = null;
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function _2437fa057e87547fc3e09012(param1:Point) : void
      {
         if(this._f8991787ca249bf0354f1d4a == null)
         {
            this._f8991787ca249bf0354f1d4a = new _eb2dccb1856b952dc47c053a(0x52CBA0FA ^ -718180579 ^ -1933948523 ^ 0x0B4086E4,0x4D474584 ^ -1176184978 ^ 0x60B0AF37 ^ -1810678453);
         }
         var _loc2_:_90e1ac06a8e81403c4b24e0b = new _90e1ac06a8e81403c4b24e0b();
         _loc2_.position = param1;
         _loc2_.x = param1.x;
         _loc2_.y = param1.y;
         this._030f8741df827db9c10a0653.push(_loc2_);
         _loc2_.add();
         this.mainLayer.addChildAt(_loc2_,-996431041 ^ -1547214435 ^ 0x1AAC3FD8 ^ 0x7DF0F57A);
         this._zSorter._e212a4ed5e2246a1788a7970(_loc2_);
         this._f8991787ca249bf0354f1d4a._be1b77d80347283ab8d5769d(_loc2_);
      }
      
      public function _68cdea0efa6f5d7587006336(param1:Number, param2:Number, param3:int) : _55043b34818a7b88d28e92ef
      {
         var _loc4_:_55043b34818a7b88d28e92ef = null;
         if(this._f8991787ca249bf0354f1d4a != null)
         {
            _loc4_ = this._f8991787ca249bf0354f1d4a._56f70dcfd335648be87c5995(param1,param2,param3);
         }
         return _loc4_;
      }
      
      public function _2c18518c5908ae6b6df3be2d(param1:_55043b34818a7b88d28e92ef) : void
      {
         var _loc2_:_90e1ac06a8e81403c4b24e0b = _90e1ac06a8e81403c4b24e0b(param1.data);
         this._zSorter._c1ccdb928cf168005fc7c4ff(_loc2_);
         disableMouse(_loc2_);
         _loc2_.cacheAsBitmap = true;
         this._topLayer.addChild(_loc2_);
         _loc2_.remove();
         this._f8991787ca249bf0354f1d4a._612e5b50a32957241aa1a510(param1);
         var _loc3_:int = 0x7FC34251 ^ 0x312FBC7B ^ 0x1FB2632D ^ 0x515E9D07;
         while(_loc3_ < this._030f8741df827db9c10a0653.length)
         {
            if(this._030f8741df827db9c10a0653[_loc3_] == _loc2_)
            {
               this._030f8741df827db9c10a0653.splice(_loc3_,0x5CEB4795 ^ 0x7AADA5CB ^ -784664011 ^ -142862230);
            }
            _loc3_++;
         }
      }
      
      public function _08c86fd02004f9e45fef2ca8() : BitmapData
      {
         return this._2612954270c443e009a41713;
      }
      
      public function reorder() : void
      {
         this._zSorter._76378135adf4667d0a28e439();
      }
      
      public function activate() : void
      {
         var _loc1_:int = 0x673D24AD ^ -1215764362 ^ -1465827267 ^ -486611265;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (-2004785795 ^ 0x3DDC5BD7 ^ -420415122 ^ -918049380))
            {
               case 0:
                  this._0cf75d1fdc622ed9bab69af0 = true;
                  this._zSorter._76378135adf4667d0a28e439();
                  this._65ab545691c2cc4b8a5276f4();
                  _loc1_ = -306334541 ^ 0x3C4ECCDA ^ 0x62CC5F6C ^ 0x29D54D5F;
                  break;
               case 1:
                  if(this._0cf75d1fdc622ed9bab69af0 == false)
                  {
                     _loc1_ = 0x750FF7C8 ^ -1871650923 ^ -1379891736 ^ -766130195;
                  }
                  else
                  {
                     _loc1_ = 0x7FC1DDD9 ^ 0x1A8BD2C3 ^ -2084476774 ^ 0x7C610DDA;
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
      
      public function deactivate() : void
      {
         var _loc1_:int = 0x5939398D ^ -1623182328 ^ 0x6C761351 ^ -1413810394;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (-268084449 ^ 0x5ED1066A ^ -680513644 ^ 0x78119B12))
            {
               case 0:
                  removeAllChildren(this._19e5a63f04ab067b6a1fae5d);
                  _loc1_ = 0x57EA13A6 ^ -1236998665 ^ -1024397482 ^ 0x22EBF0F0;
                  break;
               case 1:
                  if(this._0cf75d1fdc622ed9bab69af0)
                  {
                     _loc1_ = -1962289027 ^ -938656845 ^ 0x442A0DF9 ^ 0x069B07C6;
                  }
                  else
                  {
                     _loc1_ = -1350330252 ^ 0x113C15B7 ^ -2032223078 ^ 0x39D4D8A9;
                  }
                  break;
               case 2:
                  this._0cf75d1fdc622ed9bab69af0 = false;
                  _loc1_ = -701717107 ^ -2142891430 ^ -1418968183 ^ -55370322;
                  break;
               case 3:
                  if(this._19e5a63f04ab067b6a1fae5d != null)
                  {
                     _loc1_ = -2145765736 ^ 0x42B8C2 ^ 0x0265F2BE ^ -2088200937;
                  }
                  else
                  {
                     _loc1_ = -1124650134 ^ -1971161426 ^ 0x1F16DF6B ^ 0x28D67358;
                  }
                  break;
               case 4:
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function _1c159b38b0afc6bd2e36e87c(param1:FishBlocksAtLakesDataResp, param2:int, param3:Array) : void
      {
         var lakesCellData:Object = null;
         var resp:FishBlocksAtLakesDataResp = param1;
         var radarType:int = param2;
         var targetFishCountCell:Array = param3;
         var temp:Object = null;
         var lakeId:String = null;
         var lakeCellData:Array = null;
         var length:uint = uint(0x5AF259E3 ^ 0x29DA8401 ^ -1105240401 ^ -851999923);
         var cellFishCount:int = -249258775 ^ -348177189 ^ -824113198 ^ -721770528;
         var originalLakeCell:DisplayObject = null;
         var i:int = -1398764180 ^ -685269694 ^ -478523121 ^ -1728233183;
         var debugLakeCell:DebugLakeCell = null;
         var bitmapData:BitmapData = null;
         var isBlockHitGround:Boolean = false;
         var isBlockHitSpecial:Boolean = false;
         var fishingZone:FishingZone = null;
         Cc.log(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揌捿掫挐捀揙捩挙揪掑挲掬揇掁掱揾捴挕捋掴捗推揰掏挆挢振掞揺揺挰揺掋捎提挶捶掔挵挂掦捜挜揦指捱揀捌","揉挅振掴挷揙捍掄挿捩揱挙描掔捡捫") + resp + _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ნႣჀწငစံ၏ဏუႥპဠၟႿჲဠႝაၚ჈Ⴘიჴႇဗ၉჏ა႟","ძၧစრၙႥဂဧყႍၵေႈႩქ႒") + radarType + _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("პစၣႨၙჾဲგႰဢ၅ဓ჆ჸჸ၍ႍၦၵၞငၑႀ჊ပჟႆဲეဴွრၩჭၽၨႹ၄ဏ჊ႁ၍ၿႩၔჸၑႷშံဧႍ","ႀႊၕၿွၦၦ႙Ⴟဝ჎႒ႯႮ၊ႏ") + targetFishCountCell + _95da7f1147c669197db81295._8f4866de82b7339154180ecb("剖勎剜剋勉劏刯勌剋刣","劐刐刔勦剗刄加剧勘剰勈刽勺勋劌勃"));
         lakesCellData = JSON.parse(resp.data);
         try
         {
            if(GameSwf.isDebugLakeCellsVisible)
            {
               if(this._19e5a63f04ab067b6a1fae5d == null)
               {
                  if(DEBUG_SPRITE.getChildByName(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("効劼勩劖劕刌勩则勫刕勆剻剗划劅剆劜勥删刼刘剖刐剤劀劉刴勂剶刏勵劳努刎勼勖劏勒勨劺剦刋励勘剻劮剩判","劯劸判剌勏勫剛勚刡勯励劃剆刭劗到")) != null)
                  {
                     temp = DEBUG_SPRITE.getChildByName(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("初劤劘勌刯剹刍勿勲刧刽勁初勸剪功勂劄勢勋劫勻力劌労力刳剺刋勠剺刻劍勞列劤剀劊劍勁励勔劉剭刵勈勠劝","刴劏勂勮剆劃剼劬劧刷劋前劘劑勝勱"));
                     DEBUG_SPRITE.removeChild(Sprite(temp));
                  }
                  this._19e5a63f04ab067b6a1fae5d = new Sprite();
                  this._19e5a63f04ab067b6a1fae5d.name = _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挤捺捪捇揺挳挾挺挴挶捍挪掵描捲挴挘掖揜捰捧捥掝揪捐捘捱挫揓掌挂掂揜捠捄挊掳挡掖挦揆持捨挆捜捽揪挝","掭掭捹揺掚掬探提揝掔掸捯挜掙揄挞");
                  DEBUG_SPRITE.addChild(this._19e5a63f04ab067b6a1fae5d);
               }
               removeAllChildren(this._19e5a63f04ab067b6a1fae5d);
               for(lakeId in lakesCellData)
               {
                  lakeCellData = lakesCellData[lakeId];
                  Cc.log(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၐცႍႎႚჱႶရႥႌဏუႩ჻႖လဢჵႫညႎၦၴဋႰဆၐၢဖႄဈ႘ღဓီဈၝႏ","ၷ၏ၘჾဖၥႣူჁჳဂႊჿဠႨဒ") + lakeCellData);
                  length = lakeCellData.length;
                  i = 0x30080EA0 ^ -27518647 ^ 0x19D7A809 ^ -679231520;
                  while(i < length)
                  {
                     cellFishCount = int(lakeCellData[i]);
                     Cc.log(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剶刊剟初勧刿剩劄刯剜勖勸勹剭剄剪剌剏则劇剜劧勮劉剪励勈刼分剌剐刍列勝勃剾劂剩刹劢","劣割勋剘剕删删劖剑勌勠劀劉剸剫勗") + cellFishCount);
                     originalLakeCell = this._2cfa40737447e7273389a616.getChildByName(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捕揹挮掚揙掗捳揍捒掼捙揇挊揁揑排捡掋","掸挘掯揪挷揞揩捰挔按捴挄掭掐捀揹") + lakeId + _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揯挠挔揄揨捆揽捑捵掞","揃挖挈掸揁提挸按据揸挅揍挣挲掕挦") + (i + (0x3DC85EA8 ^ 0x42A72C3F ^ 0x2CF57D99 ^ 0x539A0F0F)));
                     debugLakeCell = new DebugLakeCell();
                     debugLakeCell.x = originalLakeCell.x;
                     debugLakeCell.y = originalLakeCell.y;
                     debugLakeCell.gotoAndStop(cellFishCount + (-1251314142 ^ 0x7701F748 ^ 0x3C49DBFC ^ -31303017));
                     this._19e5a63f04ab067b6a1fae5d.addChild(debugLakeCell);
                     i++;
                  }
               }
            }
            else if(DEBUG_SPRITE.getChildByName(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("Ⴗ္ၫြဝႲႫ၏ჷႛ၁မၼိၹჯငၦႼძ္ႴၽჃჰၔၽႳၞკႦဎၸ႙့၁ြၺရဧႮယႳႤ჉ကၸ჈","႟Ⴓဲၤ႓ႍ႐ဗႦა့့ၭ႐პၠ")) != null)
            {
               temp = DEBUG_SPRITE.getChildByName(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၖၗღၗဝႳႾှလრჃდ၉ჴံႫრლႵ်ჶჹ်ၢြზၡჾႪၩႥႶႥმႫႶဢဈႊგჱၚၡၴႣ၂ယჿ","ိၱ္ိႮၯႸ჉ရ၅ႮმႼჂမ္"));
               DEBUG_SPRITE.removeChild(Sprite(temp));
            }
         }
         catch(e:Error)
         {
            Cc.error(e);
            Cc.error(e.getStackTrace());
            GameSwf._6b2ea987f29b60cd755db2f5(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剭剬剔势刴剧勹剫劙剼劮勂劅刮劃刂勔務勗剘劫到劥勼劰勪劾勢勄勥刺刄別勱勴刌劤劁勈刺","勃刨剀劦劭勝劥劥劓勊劑劾力勇剪勏"));
            throw e;
         }
         try
         {
            if(radarType != (-182578940 ^ -594121497 ^ -1244626920 ^ -1671889413))
            {
               removeAllChildren(this._2b0896c6d0a530499ca65cf8);
               for(lakeId in lakesCellData)
               {
                  lakeCellData = lakesCellData[lakeId];
                  length = lakeCellData.length;
                  bitmapData = new BitmapData(0x33CF458A ^ -1857914028 ^ 0x3DBA595B ^ -1623759027,-1530265395 ^ -1040459716 ^ -469559541 ^ -2127376590);
                  i = 0x1987C327 ^ -1476878115 ^ -1570543687 ^ 0x1C1C0443;
                  while(i < length)
                  {
                     cellFishCount = int(lakeCellData[i]);
                     if(targetFishCountCell.indexOf(cellFishCount) != (0x1CB85EBF ^ 0x4FC4CEC1 ^ 0x311DF4E3 ^ -1650549918))
                     {
                        originalLakeCell = this._2cfa40737447e7273389a616.getChildByName(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揗掻挒掋掗捋掠挫掃捝掭挲挥掍掌挶挂捧","揝挽揓掱揤捤掠换揪揂援揄挍捞掭挧") + lakeId + _95da7f1147c669197db81295._8f4866de82b7339154180ecb("删刱創刌刿創刳劬勊務","勝办勶勴勚刵勬劈剃刏劮刚刨剥勆勧") + (i + (-1597370182 ^ -1514353483 ^ 0x795AE2B8 ^ 0x7C2C3EB6)));
                        if(originalLakeCell != null)
                        {
                           bitmapData.copyPixels(this._60ce786b92a924c287dac885.bitmapData,new Rectangle(originalLakeCell.x,originalLakeCell.y,-658790926 ^ 0x074E701D ^ 0x6854FCAF ^ -1214174840,-951869247 ^ -107704660 ^ -254911899 ^ -837192512),new Point());
                           bitmapData = _8f5c70f6d54344ad64571642(bitmapData);
                           isBlockHitGround = bitmapData.hitTest(_85c463930cec98e06d72d6a3.ZERO_POINT,-1514437255 ^ 0x0154E98B ^ 0x32BD9972 ^ -1772948097,_a8cd7e2998f94b76ddd36b0d,_85c463930cec98e06d72d6a3.ZERO_POINT,0x0901D710 ^ 0x6D2C9FAF ^ 0x12BC49CD ^ 0x7691018D);
                           isBlockHitSpecial = false;
                           if(!isBlockHitGround && !isBlockHitSpecial)
                           {
                              fishingZone = new FishingZone();
                              fishingZone.x = originalLakeCell.x;
                              fishingZone.y = originalLakeCell.y;
                              fishingZone.alpha = _95da7f1147c669197db81295._6371735dc9287bd2d9618c1e("刽刔勬刍剗刦募劌勶勔劶勻剔则剦刮削勒刼刑初劚劘劋","剎剃功刲勞剴勮刼勬動刍動劣劕劝勭");
                              fishingZone.gotoAndStop(radarType);
                              this._2b0896c6d0a530499ca65cf8.addChild(fishingZone);
                           }
                        }
                        else
                        {
                           Cc.warn(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("Ⴂႆ၇ზၦလႯတစႄႦၹჳჅ႖ႚႹ၎ဴၵြဝၼჇჁဵႥႏအႄာ္ၪႇႉშႂဗძ჋჎჉ფ჻ဳშ","ူဌဋၠႍဠၿႆဍၘပ၆ႦၳႀႺ") + _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掓捍挘掾捆捷挵援挡揱揖挟掯揓挺捋揰掬","掎掅捄捥掌捫挸挳捏揦挑挊掎揿揌挚") + lakeId + _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ღှღႍႦქჶჴჳჃ","Ⴁၷၯဪე჆ჹလၑၵ჌ဒჷჅჱႤ") + (i + (-610362025 ^ -1962374376 ^ 0x4D45D773 ^ 0x1DD3C13D)));
                           GameSwf._6b2ea987f29b60cd755db2f5(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ჸႆဖဇკჰჟ႟ၡႍ၎ჹთမအ჏","ှპჂႲၵ၅Ⴧწဢ჉ဆ့၅პဿမ"));
                        }
                     }
                     i++;
                  }
               }
            }
         }
         catch(e:Error)
         {
            Cc.error(e);
            Cc.error(e.getStackTrace());
            GameSwf._6b2ea987f29b60cd755db2f5(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ႀჴჺჿႭცထၹტဌၮჴ၎႖ၦღၩ၃ႍၜႻၛဦႛჀႫႻႬ","ႁဴာျ႙ီဂფႾိၕဥ႗၆ၣ၈"));
            throw e;
         }
      }
      
      public function _e46d3c66d0ce5b50a0501670(param1:String) : _40c40768738c862c74ddd128
      {
         var _loc2_:_40c40768738c862c74ddd128 = null;
         for each(_loc2_ in this.boats)
         {
            if(_loc2_.lastFieldCharUsername == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function removeAllShells() : void
      {
         var _loc1_:Vector.<_55043b34818a7b88d28e92ef> = null;
         var _loc2_:_55043b34818a7b88d28e92ef = null;
         if(this._e5cf3083d48dfd0c91722de9 != null)
         {
            _loc1_ = this._e5cf3083d48dfd0c91722de9.getAll();
            for each(_loc2_ in _loc1_)
            {
               this.removeShell(_loc2_);
            }
         }
         if(this._506ffa81b31dab5143a16c4b != null)
         {
            this._506ffa81b31dab5143a16c4b = new Vector.<_e82930b870cc8514498fa9d2>();
         }
      }
      
      public function _c5c2b6297dcacfce7f576e43() : void
      {
         var _loc1_:Vector.<_55043b34818a7b88d28e92ef> = null;
         var _loc2_:_55043b34818a7b88d28e92ef = null;
         if(this._030f8741df827db9c10a0653 != null)
         {
            this._030f8741df827db9c10a0653 = new Vector.<_90e1ac06a8e81403c4b24e0b>();
         }
         if(this._f8991787ca249bf0354f1d4a != null)
         {
            _loc1_ = this._f8991787ca249bf0354f1d4a.getAll();
            for each(_loc2_ in _loc1_)
            {
               this._2c18518c5908ae6b6df3be2d(_loc2_);
            }
         }
      }
      
      public function _7abdee135350d72b294fa8a6() : void
      {
         var _loc1_:Vector.<_55043b34818a7b88d28e92ef> = null;
         var _loc2_:_55043b34818a7b88d28e92ef = null;
         if(this._0e7dea17c02b26492e44e974 != null)
         {
            _loc1_ = this._0e7dea17c02b26492e44e974.getAll();
            for each(_loc2_ in _loc1_)
            {
               this.removeFishbox(_loc2_);
            }
         }
      }
      
      public function _f0de33de12d7a75eff23d77c(param1:String, param2:String, param3:String) : void
      {
         var _loc4_:int = 0x4D67B257 ^ 0x26B556A1 ^ 0x20B3D038 ^ -1150695164;
         loop0:
         while(true)
         {
            switch(_loc4_ ^ (0x32787FAD ^ -1812140137 ^ -385439276 ^ -1198865370))
            {
               case 0:
                  return;
               case 1:
                  TextField(this.bestPlayer.getChildByName(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၖဪၑ႙ცႍျၞთႁ၂သქၨႨ႐჊ဵႦ၆ဟဲၥြႨჀ႟ႲႲဉ႕ႎჰႧၟჩ","ႅႝჂჄ၏ჸကၖႏზဆ၉Ⴚဳკၵ"))).text = param1;
                  TextField(this.bestPlayer.getChildByName(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挥挣捯振掲揞挊捹捝揉捄挰挖掂掻揝掺挌挸揪掋指捖挄掼挸掳挞揂捷揜捾","挂掝捉掽挹捼掝捈捩提捃挘掵捹揕捎"))).text = param2;
                  TextField(this.bestPlayer.getChildByName(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("Ⴃၴၿတဌ჊ႥႹ჈ၧႸხၕင၊ဓჂ႞ႝტၹၲၟႹၽဩხ႑შ၄Ⴚၢ","၂ည၇ႫကဨဪၥႾက၄ိႽႣသၻ"))).text = param3;
                  _loc4_ = -1466854182 ^ -45682340 ^ -1506833998 ^ 0x03F011FC;
                  break;
               case 2:
                  if(this.bestPlayer != null)
                  {
                     _loc4_ = 0x16B0A4F8 ^ 0x5E9BB3C0 ^ -1950990195 ^ 0x3395AA7C;
                  }
                  else
                  {
                     _loc4_ = 0x281238F0 ^ -1779105414 ^ -1996058383 ^ -991341389;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function _8da2a70b254394476be6a342(param1:Boolean) : void
      {
         var _loc2_:int = 0x2447607E ^ 0x3F6CABA1 ^ -2127947704 ^ -741054310;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (-1921771772 ^ 0x5BB67C8D ^ -1986692968 ^ 0x1682A81D))
            {
               case 0:
                  _a59e9ad02d49ff892e329e08(this._bb9e557c6ae085296248ef18,this.mainLayer);
                  this._zSorter._c1ccdb928cf168005fc7c4ff(this._bb9e557c6ae085296248ef18);
                  this._zSorter._e212a4ed5e2246a1788a7970(this._bb9e557c6ae085296248ef18);
                  this._visibilityManager._cd00d97cac65b4dc892b5324(this._bb9e557c6ae085296248ef18);
                  _loc2_ = 0x75F32341 ^ 0x760652AA ^ -1164470034 ^ -256421364;
                  break;
               case 1:
                  this._3d05188fed68153be18319b9 = param1;
                  if(this._bb9e557c6ae085296248ef18 == null)
                  {
                     _loc2_ = -1814297996 ^ 0x01BB3159 ^ -1038231442 ^ 0x19AF504B;
                  }
                  else
                  {
                     _loc2_ = 0x6D136062 ^ -1590100991 ^ -1951241208 ^ 0x0E4C4B64;
                  }
                  break;
               case 2:
                  removeFromParent(this._bb9e557c6ae085296248ef18);
                  _loc2_ = -1110869262 ^ 0x18B25BC4 ^ -1546435584 ^ 0x4F7DDE3F;
                  break;
               case 3:
                  if(this._3d05188fed68153be18319b9 == true)
                  {
                     _loc2_ = -1635409159 ^ -2002061321 ^ -1796762042 ^ -887261114;
                  }
                  else
                  {
                     _loc2_ = -1379564994 ^ 0x57200D0B ^ -1527840347 ^ 0x17DF359C;
                  }
                  break;
               case 4:
                  return;
               case 5:
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function isFishMarketOpen() : Boolean
      {
         if(this._bb9e557c6ae085296248ef18 == null && this._3d05188fed68153be18319b9)
         {
            return true;
         }
         return this._3d05188fed68153be18319b9;
      }
      
      public function _b1ece124f95a8581ffc8606e(param1:Boolean) : void
      {
         var _loc2_:int = 0x07421EF8 ^ -1618166883 ^ 0x7F58F709 ^ -1243809639;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x7D4782EA ^ 0x49106A0D ^ -300221211 ^ -2012758281))
            {
               case 0:
                  if(this.bestPlayer != null)
                  {
                     _loc2_ = 0x64FDA9ED ^ -1987553620 ^ 0x285F8D00 ^ -1755260751;
                  }
                  else
                  {
                     _loc2_ = -1286441094 ^ -1746369636 ^ -524764279 ^ -1773607522;
                  }
                  break;
               case 1:
                  if(this.bestPlayer.visible == false)
                  {
                     _loc2_ = 0x3997FDF5 ^ 0x3AFD3B27 ^ -2014048033 ^ -690717442;
                  }
                  else
                  {
                     _loc2_ = 0x46D6A833 ^ -1992944533 ^ -1135338178 ^ 0x21FE0B91;
                  }
                  break;
               case 2:
                  _loc2_ = 0x389986FB ^ 0x743CB472 ^ -1636880396 ^ -2139048052;
                  break;
               case 3:
                  this.bestPlayer.visible = false;
                  _loc2_ = 0x428BB061 ^ 0x2F06E3BF ^ -373508801 ^ -696562672;
                  break;
               case 4:
                  return;
               case 5:
                  if(param1 == true)
                  {
                     _loc2_ = -1978990643 ^ -1817902417 ^ 0x6FE53FA9 ^ 0x2400683F;
                  }
                  else
                  {
                     _loc2_ = 0x71F148FC ^ 0x2226180A ^ -266437022 ^ -243039134;
                  }
                  break;
               case 6:
                  this.bestPlayer.alpha = 0x7E1C2B31 ^ -608176949 ^ -116030322 ^ 0x5CB65B74;
                  this.bestPlayer.visible = true;
                  TweenCube.to(this.bestPlayer,-138162428 ^ -505041418 ^ -933084518 ^ -565960598,{(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("切初勮刀勪剝剓劄勱剳加剼刿劘剽募划刃","則劌剺创勭刉刣剹剸剗剉刖勞刈別剃")):-1678148459 ^ 0x09DAFA96 ^ -878264376 ^ 0x598539CA});
                  _loc2_ = 0x4E94D539 ^ 0x2A46AB4E ^ 0x758A9408 ^ 0x43124088;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function _2ab9e1ce7d6a25a5ee856c72(param1:Boolean) : void
      {
         if(this._6b0a1871221a7637dc588649 == null || this._7a80f5dcfbb903a5f0bfd7c6 == null)
         {
            return;
         }
         this._7add36b068237b4c94c1510a = param1;
         if(param1 == true)
         {
            if(this._6b0a1871221a7637dc588649.parent != null)
            {
               this._zSorter._c1ccdb928cf168005fc7c4ff(this._6b0a1871221a7637dc588649);
               removeFromParent(this._6b0a1871221a7637dc588649);
            }
            if(this._7a80f5dcfbb903a5f0bfd7c6.parent == null)
            {
               _a59e9ad02d49ff892e329e08(this._7a80f5dcfbb903a5f0bfd7c6,this.mainLayer);
               this._zSorter._e212a4ed5e2246a1788a7970(this._7a80f5dcfbb903a5f0bfd7c6);
            }
         }
         else
         {
            if(this._7a80f5dcfbb903a5f0bfd7c6.parent != null)
            {
               this._zSorter._c1ccdb928cf168005fc7c4ff(this._7a80f5dcfbb903a5f0bfd7c6);
               removeFromParent(this._7a80f5dcfbb903a5f0bfd7c6);
            }
            if(this._6b0a1871221a7637dc588649.parent == null)
            {
               _a59e9ad02d49ff892e329e08(this._6b0a1871221a7637dc588649,this.mainLayer);
               this._zSorter._e212a4ed5e2246a1788a7970(this._6b0a1871221a7637dc588649);
            }
         }
      }
      
      public function get isDecorationMarketOpen() : Boolean
      {
         return this._7add36b068237b4c94c1510a;
      }
      
      private function _1a164c08adb80e45952aec24(param1:DisplayObjectContainer) : void
      {
         var _loc2_:int = 0x0BD7BBF9 ^ -340778205 ^ -1766400429 ^ -1859074088;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (-578890780 ^ -1867444671 ^ -249037159 ^ 0x5B09A26D))
            {
               case 0:
                  if(this.friendHouseDoor == null)
                  {
                     _loc2_ = 0x6E4C4A1D ^ 0x35AA4A9E ^ 0x6858631D ^ -731913522;
                  }
                  else
                  {
                     _loc2_ = -2018399604 ^ 0x1A81D1EB ^ -1923401354 ^ -141900990;
                  }
                  break;
               case 1:
                  this.friendHouseDoor = MovieClip(param1.getChildByName(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ဘ႑ၕ့Ⴌၮ჎ဒဂჴ჋ၯჍ႐ဇၛႄოჱ၇႑ႱွၳჀၓႾ჻ႌႂ","ၪႷသႬ။ၲဌშႇၕႠၡႝჵდၜ")));
                  _loc2_ = -1642239130 ^ 0x054F088E ^ 0x552256F5 ^ 0x2991B44E;
                  break;
               case 2:
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function _2ad4d4984befd68039b4b0f8() : void
      {
         this._e87a7f4f1d3814d3f06cc5c7._cd00d97cac65b4dc892b5324(this.friendHouseDoor);
         _a59e9ad02d49ff892e329e08(this.friendHouseDoor,this.mainLayer);
         this._zSorter._e212a4ed5e2246a1788a7970(this.friendHouseDoor);
         this._visibilityManager._cd00d97cac65b4dc892b5324(this.friendHouseDoor);
      }
      
      protected function _424a1f44ff05e52733e46eeb(param1:DisplayObjectContainer, param2:Boolean = true, param3:Boolean = true) : void
      {
         var _loc4_:int = 0x430B65D6 ^ 0x5FD16DC5 ^ -901494311 ^ -1063669306;
         loop0:
         while(true)
         {
            switch(_loc4_ ^ (-451805271 ^ -664371901 ^ -272024479 ^ -994488701))
            {
               case 0:
                  return;
               case 1:
                  _a59e9ad02d49ff892e329e08(param1,this.mainLayer);
                  _loc4_ = 0x6E2A02C2 ^ -110391781 ^ -1356071729 ^ 0x2E6D801C;
                  break;
               case 2:
                  this._zSorter._e212a4ed5e2246a1788a7970(param1);
                  if(param3)
                  {
                     _loc4_ = -791088462 ^ 0x08D3C52C ^ -471724209 ^ 0x2DEEC8DA;
                  }
                  else
                  {
                     _loc4_ = 0x6AF4909E ^ -1334712110 ^ 0x08727E96 ^ -990841134;
                  }
                  break;
               case 3:
                  this._visibilityManager._cd00d97cac65b4dc892b5324(param1);
                  _loc4_ = -202147039 ^ 0x6F7B5E6A ^ -214296951 ^ 0x79B5C3CA;
                  break;
               case 4:
                  if(param2)
                  {
                     _loc4_ = -2060320289 ^ 0x52CBC0DD ^ -356351855 ^ 0x2B3CB19A;
                  }
                  else
                  {
                     _loc4_ = 0x102226DE ^ 0x54AE64E8 ^ -1100073520 ^ -320501780;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function _c3c3fd4ed9f1ce80f3e08210() : void
      {
         removeFromParent(this.friendHouseDoor);
      }
      
      public function _2b083dd5e9245358d284a01f() : void
      {
         removeAllChildren(this._2b0896c6d0a530499ca65cf8);
         removeFromParent(this._2b0896c6d0a530499ca65cf8);
         GameSwf.radarType = 0x340F1DA6 ^ 0x5659F402 ^ -1363454889 ^ -856834573;
      }
   }
}

