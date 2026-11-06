package com.ax3.fishao.core
{
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.config.ApplicationConfig;
   import com.ax3.core.App;
   import com.ax3.fishao.Config;
   import com.ax3.fishao.managers._de89e27ae8b90e70822b4fad;
   import com.ax3.fishao.mediators._458f27be309c3864556e3018;
   import com.ax3.fishao.model._01a2aa99fe260235a2a4e8a7;
   import com.ax3.fishao.model._3ef14f9cf1f00a99b8abf756;
   import com.ax3.fishao.model._4157959afad0a63925019e0f;
   import com.ax3.fishao.model._7c016a43d731dd4f2bb277fe;
   import com.ax3.fishao.model._b36c7f3e8894e685271e760a;
   import com.ax3.fishao.model._b6623dcbe6cf97cbdc7c37e5;
   import com.ax3.fishao.model.character.CharViewConfig;
   import com.ax3.fishao.model.character.clothes.Body;
   import com.ax3.fishao.model.character.clothes.Hair;
   import com.ax3.fishao.model.character.clothes.Hat;
   import com.ax3.fishao.model.character.clothes.Icon;
   import com.ax3.fishao.model.character.clothes.Lower;
   import com.ax3.fishao.model.character.clothes.Shoes;
   import com.ax3.fishao.model.character.clothes.Suit;
   import com.ax3.fishao.model.character.clothes.Upper;
   import com.ax3.fishao.model.pling._6da056ef4965277960002989;
   import com.ax3.fishao.model.vo._ce86dee7dc1496f14ad148fa;
   import com.ax3.fishao.model.vo._cff30366d510ea862540bfef;
   import com.ax3.fishao.utils._26035541af3e75a81d8bde8c;
   import com.ax3.utils._7f6e94654d569d3506e684e2;
   import com.ax3.utils.math.randomRange;
   import com.junkbyte.console.Cc;
   import flash.system.System;
   
   public class _43e386d644f99926bc77847f extends App
   {
      
      public var dialogFactory:_26035541af3e75a81d8bde8c;
      
      public var char:CharViewConfig;
      
      public var user:_01a2aa99fe260235a2a4e8a7;
      
      public var sid:String;
      
      public var plings:_6da056ef4965277960002989;
      
      public var rodsDict:_7c016a43d731dd4f2bb277fe;
      
      public var baitsDict:_7c016a43d731dd4f2bb277fe;
      
      public var clothesDict:_7c016a43d731dd4f2bb277fe;
      
      public var extraFloatsDict:_7c016a43d731dd4f2bb277fe;
      
      public var fishDict:_b18e4ba81042d80d9b37dd6c;
      
      public var privateHouseInteriorItemDict:_7c016a43d731dd4f2bb277fe;
      
      public var countries:_b6623dcbe6cf97cbdc7c37e5;
      
      public var moderatorModel:_b36c7f3e8894e685271e760a;
      
      public var performanceManager:_de89e27ae8b90e70822b4fad;
      
      public var timezones:_3ef14f9cf1f00a99b8abf756;
      
      public var memoryController:_7f6e94654d569d3506e684e2;
      
      public var resourcesDict:_7c016a43d731dd4f2bb277fe;
      
      public var looksDict:_7c016a43d731dd4f2bb277fe;
      
      public var fossils:_7c016a43d731dd4f2bb277fe;
      
      public var fruits:_7c016a43d731dd4f2bb277fe;
      
      public var decorationItemsModel:_4157959afad0a63925019e0f = new _4157959afad0a63925019e0f();
      
      public var fishboxLevelUpMediator:_458f27be309c3864556e3018;
      
      public function _43e386d644f99926bc77847f(param1:ApplicationConfig)
      {
         super(param1);
         this.dialogFactory = new _26035541af3e75a81d8bde8c(dialogManager);
         this.rodsDict = new _7c016a43d731dd4f2bb277fe(Config.RODS_DATA_URL);
         this.baitsDict = new _7c016a43d731dd4f2bb277fe(Config.BAITS_DATA_URL);
         this.extraFloatsDict = new _7c016a43d731dd4f2bb277fe(Config.EXTRA_FLOATS_DATA_URL);
         this.fishDict = new _b18e4ba81042d80d9b37dd6c(Config.FISH_DATA_URL,_cff30366d510ea862540bfef);
         this.countries = new _b6623dcbe6cf97cbdc7c37e5(Config.COUNTRIES_URL);
         this.timezones = new _3ef14f9cf1f00a99b8abf756(Config.TIMEZONES_URL);
         this.clothesDict = new _7c016a43d731dd4f2bb277fe(Config.CLOTHES_DATA_URL);
         this.privateHouseInteriorItemDict = new _7c016a43d731dd4f2bb277fe(Config.PRIVATE_HOUSE_INTERIOR_ITEM_DATA_URL,_ce86dee7dc1496f14ad148fa);
         this.char = new CharViewConfig(new Body(0x5D620B97 ^ 0x27BF244F ^ -394812105 ^ -1834317074,0x5D197AA4 ^ -1752440269 ^ -1527685900 ^ 0x6E63C460),new Upper(0x3F5DEA21 ^ 0x55BD2DBD ^ 0x17DB47B1 ^ 0x7D3B802C,Math.floor(Math.random() * (0x7C9353C7 ^ 0x6A5B977D ^ -1494996710 ^ -1339232848)) + (-1480508567 ^ -57892835 ^ 0x79A43141 ^ 0x22E9AA34)),new Lower(0x6BA91E73 ^ 0x5F6E7628 ^ -1741242951 ^ -1393437213,Math.floor(Math.random() * (-1052575863 ^ 0x35F64495 ^ 0x621AFACF ^ -1766962750)) + (0x04DB09D7 ^ -1736064946 ^ -886609299 ^ 0x5779A3F5)),new Hair(-1153792555 ^ 0x7D5B5D34 ^ -1094419825 ^ 0x78A5A26F,Math.floor(Math.random() * (-1684425314 ^ 0x224FAA68 ^ -637793002 ^ 0x602A12EC)) + (-146199345 ^ 0xB04FBF ^ -742260476 ^ 0x243B6275)),new Hat(CharViewConfig.NO_HAT,-1985119028 ^ 0x103A2223 ^ 0x511D2E07 ^ -930451223),new Shoes(-2025026325 ^ -1552793212 ^ -1817359489 ^ -1215068654,0x7E265495 ^ -683987049 ^ -762439450 ^ 0x7B9363E5),new Icon(CharViewConfig.NO_ICON,-1801230219 ^ -1991177055 ^ 0x4925522C ^ 0x54D736F9)
         ,new Suit(CharViewConfig.NO_SUIT,0x27AA91AA ^ 0x3F32E460 ^ -315222617 ^ -173121428));
         this.user = new _01a2aa99fe260235a2a4e8a7();
         this.plings = new _6da056ef4965277960002989();
         this.moderatorModel = new _b36c7f3e8894e685271e760a();
         this.performanceManager = new _de89e27ae8b90e70822b4fad();
         this.memoryController = new _7f6e94654d569d3506e684e2((0x4161DECF ^ 0x368DA785 ^ 0x2F474AF7 ^ 0x58AB33B8) * (0x628F5649 ^ 0x7C265CC9 ^ 0x3A3F26A6 ^ 0x24962FCE),(0x238E94A8 ^ 0x75F045D6 ^ 0x55A9CC96 ^ 0x03D719E8) * (-421306192 ^ -1474058724 ^ 0x7373201D ^ 0x3DB3E2B1) * (0x0BA90F33 ^ 0x4A10B33C ^ -606659398 ^ -1704025251),(0x0D583987 ^ 0x2DC0C17E ^ -752470675 ^ -205600364) * (0x73729E19 ^ -876810246 ^ 0x7E9C5960 ^ -967693181) * (-555696872 ^ -1077286789 ^ 0x6B301465 ^ 0x0A1944DA),(0x2FB50D9F ^ 0x35D3F1FB ^ 0x01BEF205 ^ 0x1BD80E6B) * (0x428818DC ^ -141599460 ^ 0x7DDD6DDA ^ -925225998),0x59E24DDB ^ -221723737 ^ 0x750B1DC2 ^ -568224835,this._422595c36e5692b159c92049,this._663658868f48adeb5237ab23);
         this.resourcesDict = new _7c016a43d731dd4f2bb277fe(Config.RESOURCES_DATA_URL);
         this.looksDict = new _7c016a43d731dd4f2bb277fe(Config.LOOKS_DATA_URL);
         this.fossils = new _7c016a43d731dd4f2bb277fe(Config.FOSSILS_DATA_URL);
         var _loc2_:String = Config.SERVER + _95da7f1147c669197db81295._8f4866de82b7339154180ecb("到劔办剣勧劕刀剹刦劤刕勲劥剘劒効勷勁刿劔勗勝分刮刏勯勵刐劸剷剽勋劕勺剀刔剰剺剃劌剔分創到刋劆","勱勍剖勤刴刟劧刈剁动勘刭剟劃動剹") + randomRange(-594473812 ^ -1388812606 ^ -1361076983 ^ -545851545,0x01591F49 ^ 0x0E161693 ^ -1383373761 ^ -1564194059);
         this.fruits = new _7c016a43d731dd4f2bb277fe(_loc2_);
         this.fishboxLevelUpMediator = new _458f27be309c3864556e3018();
      }
      
      private function _422595c36e5692b159c92049() : void
      {
         Cc.error(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ქလ჎პჯაႱါ်დႴြႩၭ၀ၚჷႎჸၘၯႦႚၬႜၜღႮခნံဋწჱრႎ႟ဖဢ႓჎ႳဥႥ჈ၯႦმ၇ႏၠცჷႰၢႥၠ႐","ჸ႖ႍჅ႐ၚ჊ყჄၸႵဿဃၽႸၜ") + System.totalMemory);
      }
      
      private function _663658868f48adeb5237ab23() : void
      {
      }
   }
}

