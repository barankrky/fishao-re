package com.ax3.fishao.display.panels
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import assets.general.BitePanel;
   import com.ax3.display.wrappers.impl._1408d94400cd9851158c4009;
   import com.ax3.events._02fbe4cbe9e83f1b8c711799;
   import com.ax3.fishao.control.managers._3a8a2602dcf9bf49b62e62af;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import com.ax3.fishao.view.dialogs.notCaughtFish._94e4ddb255ac2d62a5aa926d;
   import com.ax3.fishao.view.dialogs.notCaughtFish._9acf05184b7ae19b3ce8b4b1;
   import com.ax3.fishao.view.dialogs.notCaughtFish._bf155b4a1a362c99e1091d0d;
   import com.ax3.fishao.view.dialogs.notCaughtFish._e6b1b181cfbf52927a5d8c0b;
   import com.ax3.utils.ColorMatrix;
   import com.ax3.utils._cbd58f52130bcef0d9dc895a;
   import com.ax3.utils.math.limit;
   import com.ax3.utils.removeFromParent;
   import com.ax3.utils.timer._34a2ba6ad978d976b8b0f5a4;
   import com.ax3.utils.timer._69eec7d2f73604da25ccda04;
   import com.ax3.utils.timer._92d7656ddc3c3da810e99c74;
   import flash.display.GradientType;
   import flash.display.SpreadMethod;
   import flash.events.Event;
   import flash.filters.BitmapFilter;
   import flash.filters.BitmapFilterQuality;
   import flash.filters.ColorMatrixFilter;
   import flash.filters.DropShadowFilter;
   import flash.filters.GlowFilter;
   import flash.geom.Matrix;
   import flash.ui.Keyboard;
   import flash.utils.getTimer;
   
   public class _9fd7a7cc8b0e1dff9d3b56e1 extends BitePanel implements _69eec7d2f73604da25ccda04
   {
      
      private static var _4fe759892d70c114b78e2ba2:Array;
      
      public static const RIGHT_PADDING:int = 0x1AE11987 ^ -821953856 ^ -913687774 ^ 0x1C6AD8F3;
      
      public static const BOTTOM_PADDING:int = -505358527 ^ -1360400559 ^ -1705523467 ^ -715194765;
      
      private const _49c9edaecbab8b02f24a4ae3:int = 285;
      
      private const _57feb23121d6b6bb152cba30:int = 35;
      
      private var _d8cf3e7b9aa5b8ed8625e88d:int = 1;
      
      private var _dd669181bd4b829eb0e74bf8:int;
      
      private var _2229a8f210ff3e20763375c0:int;
      
      private var _72a2f325d2b7b0b3539dc9f9:int;
      
      private var _description:_1408d94400cd9851158c4009;
      
      private var _fa93ae98ad467be7e020c541:Boolean = false;
      
      private var _8894b0ab8b0d295b4b12bc5d:Number = 0;
      
      private var _a66962b4f35619a2f62e5ab8:Number = 0;
      
      private var _fb0c78de9c51caf7cbd51d7e:Number = 0;
      
      private var _3ba0ce4c9c3ec79d6d211be4:Boolean = false;
      
      private var _3715316f14e2f2df48846978:int;
      
      private var _6bde11f4edbb9c1d22d2a93d:int = 0;
      
      protected var _fishRandom:Number = 0.5;
      
      private var _c2e0f2cde91ba9b39d96b1d1:Number = 0.5;
      
      private var _e1389d14b5ebdb94d496345c:Number = 0.5;
      
      private var _8c1551618d4356acd5112704:Number = 0;
      
      private var _53854d9bc35483408f0b77f7:Number = 0;
      
      private var _9f89e07858cba0467c03bca9:Number = 0;
      
      public var rarity:Number;
      
      protected var _fishSizeCm:Number;
      
      protected var _fishSizeCmFactor:Number;
      
      public var left_down:Boolean = false;
      
      public var right_down:Boolean = false;
      
      private var idle:int;
      
      private var _66ce1bd714c010e03e65ef0e:int;
      
      private var _045a708f9912324c56aae364:Number;
      
      private var _b529dc6fae7755cb1ad07b99:Number;
      
      private var _1a09e5ceef0e26bedb46cdd6:Number;
      
      private var _51494964d425c009250f325c:Number;
      
      private var _333f4ae4cb9fbc5c16ae779f:Number;
      
      private var _013afe9dc9453814370bc613:Boolean;
      
      private var _ee574ed032490e9b8b3d1266:Array;
      
      private var _f7eaa5cc42565252fac371ad:Array;
      
      private var _66e0553bfdc8e2c30db6fbf6:Boolean = false;
      
      public function _9fd7a7cc8b0e1dff9d3b56e1()
      {
         var _loc1_:BitmapFilter = null;
         var _loc2_:ColorMatrix = null;
         var _loc3_:ColorMatrixFilter = null;
         var _loc4_:GlowFilter = null;
         var _loc5_:ColorMatrix = null;
         super();
         titleField.text = _c2ad9d37d7be0097d6d2e977._a1824cf8cfedd1c4a5e49576(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剿剫刕劺劲劂剬刷刜刮刡劘刁勭勈初力剪刜刔剾勵剦劣勲劑刍募刳勎劍刱刃勧劄割","剏刄勬刧勘剜剟剼勀剹剭剒刡剏勽勷"));
         progressField.text = _c2ad9d37d7be0097d6d2e977._a1824cf8cfedd1c4a5e49576(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("႔႒ထၗჾჯჾ၊ႧႜၱႴဈႛჳူၙႝჳჿဵჟმიჅ჻თႧႍჵႮႃၟဉႻ჌ႜဇ၁ၯჵ၊","ၴႪႉပჷဌဏე၅Ⴟၺဨိ၁Ⴍၓ"));
         descriptionField.text = _c2ad9d37d7be0097d6d2e977.get(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("Ⴊဿ႐ၟ჏ဍႸထჍၐႦ္Ⴌ္კ჎ႹႦ။ႛ႕ၯၸ჌ဒီႠႯႷၙၔၪၬოဠ႓ၳးშၥ჊၁ၞၿဵၿၱკ","შဦ္ၐ႔ს႕჉ၤဓဪၨႻჷჄ၁"));
         this._description = new _1408d94400cd9851158c4009();
         this._description.process(descriptionField);
         this._description.text = _c2ad9d37d7be0097d6d2e977.get(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勉别刋剼剺劦劃勁剔励労劧刋勢刧剨勼刐利剁剹动刣刕刾劻力剒勑剰勔劳剿到剥勬募刟勖劇勝勉劬刊勓刟剎勾","剆剸剃剧動剮募勪刏劺分勡勣則刅劫"));
         if(_4fe759892d70c114b78e2ba2 == null)
         {
            _loc5_ = new ColorMatrix();
            _loc5_.adjustHue(0x6746391C ^ -977302145 ^ 0x492C9FA4 ^ 0x142AD491);
            _4fe759892d70c114b78e2ba2 = [_loc5_.filter];
         }
         this._72a2f325d2b7b0b3539dc9f9 = this._49c9edaecbab8b02f24a4ae3 * _39d7d82359bf8046fe8ef6c4._ed4a735c5a6981f99dda5b73("捗掎揅挆捡挶掳探捦捲捣掄挭指揠掯掬掛捱掳揳掦掫挙","挘掟捋捬掚揔掩挑挱挿挛揆掍捭措揕");
         this._ee574ed032490e9b8b3d1266 = titleField.filters;
         this._f7eaa5cc42565252fac371ad = [];
         for each(_loc1_ in this._ee574ed032490e9b8b3d1266)
         {
            this._f7eaa5cc42565252fac371ad.push(_loc1_);
         }
         _loc2_ = new ColorMatrix();
         _loc2_.adjustHue(-768985058 ^ -1096702476 ^ 0x0913BC2C ^ 0x65982150);
         _loc2_.adjustSaturation(0x5D6A5951 ^ -1648660296 ^ 0x1C778408 ^ -593056285);
         _loc2_.adjustBrightness(_95da7f1147c669197db81295._6371735dc9287bd2d9618c1e("劘势勛劻剮剰判勤勣剝剝剆剀则勞剂勼刟判刲删刖勘劯","勊劵劣勓劤勪剠劷刂副刼劻劫刣剆勄"));
         _loc3_ = new ColorMatrixFilter(_loc2_.matrix);
         this._f7eaa5cc42565252fac371ad.push(_loc3_);
         var _temp_4:* = §§findproperty(GlowFilter);
         var _temp_3:* = 0x6383EF8B ^ -1406877193 ^ 0x77546B09 ^ -1191990134;
         var _temp_2:* = -152734465 ^ 0x195B3A21 ^ -567714882 ^ 0x31971561;
         var _temp_1:* = 0x22657A60 ^ 0x6BB992E4 ^ -1536175406 ^ -307021229;
         _loc4_ = new GlowFilter(_temp_3,_temp_2,_temp_1,_temp_1,0x3DE532BD ^ -1342678483 ^ 0x2517A323 ^ -1224029262,BitmapFilterQuality.HIGH);
         this._f7eaa5cc42565252fac371ad.push(_loc4_);
      }
      
      public function set fishSizeCm(param1:Number) : void
      {
         var _loc2_:int = 0x3B399270 ^ -492131615 ^ 0x513250CC ^ 0x2F86C304;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (-510052940 ^ -175593182 ^ 0x0DCFD304 ^ -1090919221))
            {
               case 0:
                  if(this._fishSizeCm == param1)
                  {
                     _loc2_ = -723364311 ^ -1744518742 ^ -88147101 ^ 0x117FC7BB;
                  }
                  else
                  {
                     _loc2_ = -1499798167 ^ -1124876321 ^ -888547666 ^ 0x76472740;
                  }
                  break;
               case 1:
                  this._fishSizeCm = param1;
                  this._fishSizeCmFactor = (-680548231 ^ 0x0B9B9D9F ^ 0x2E2A952C ^ -220290824) + this._fishSizeCm * ((-1501026786 ^ -1309858516 ^ 0x77FF1E56 ^ 0x609A1D6F) + this._fishRandom - _95da7f1147c669197db81295._6371735dc9287bd2d9618c1e("劉剴务剪刵剄刍剄劮刉勃劢刈剝刳勥刣勮办剬分功助劣","動副剒勷効勳刿刋劣剨勂勔勡剞劕刃")) / (0x3F96B96A ^ 0x426EA05C ^ -2106269636 ^ -7538431);
                  return;
               case 2:
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function set minigameDurationMultiplier(param1:Number) : void
      {
         var _loc2_:int = 0x0F43146B ^ -1907093993 ^ -1395266461 ^ -1682323241;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (-646799983 ^ 0x4213CE42 ^ 0x17893F75 ^ 0x3A93526C))
            {
               case 0:
                  return;
               case 1:
                  this._045a708f9912324c56aae364 = param1;
                  return;
               case 2:
                  if(this._045a708f9912324c56aae364 == param1)
                  {
                     _loc2_ = 0x3F2D6EAF ^ -1829808289 ^ -1620180808 ^ -2066282622;
                  }
                  else
                  {
                     _loc2_ = -1382174523 ^ -1970329323 ^ -1768446837 ^ 0x07FE0390;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function set boosterMultiplier(param1:Number) : void
      {
         var _loc2_:int = 0x1F79A6E0 ^ 0x580600C8 ^ -846767590 ^ -1287760818;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (-168643682 ^ -1464020510 ^ 0x1D96D2DA ^ 0x791E18DA))
            {
               case 0:
                  if(this._51494964d425c009250f325c == param1)
                  {
                     _loc2_ = -390189087 ^ 0x29F85D12 ^ -338310628 ^ 0x13551091;
                  }
                  else
                  {
                     _loc2_ = 0x24100971 ^ -186935152 ^ -2114455783 ^ 0x68FACE85;
                  }
                  break;
               case 1:
                  this._51494964d425c009250f325c = param1;
                  return;
               case 2:
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function set fishingLineLength(param1:Number) : void
      {
         var _loc2_:int = 0x46305CF1 ^ -1032100444 ^ 0x22DB56F6 ^ -2123576004;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (-1116410674 ^ 0x4C2C329B ^ 0x7365F36B ^ -1514041440))
            {
               case 0:
                  return;
               case 1:
                  if(this._1a09e5ceef0e26bedb46cdd6 == param1)
                  {
                     _loc2_ = -1041295519 ^ 0x318D3B6E ^ -1975912978 ^ 0x5DA77B7F;
                  }
                  else
                  {
                     _loc2_ = 0x48C6E653 ^ 0x3EEFB39C ^ -1952870835 ^ -632522466;
                  }
                  break;
               case 2:
                  this._1a09e5ceef0e26bedb46cdd6 = param1;
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function set rodSizeCm(param1:Number) : void
      {
         var _loc2_:int = 0x172ABD39 ^ 0x12508C17 ^ 0x702F90D7 ^ 0x647E75C0;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (-378871038 ^ 0x46D58762 ^ 0x6BEDBE18 ^ -713486781))
            {
               case 0:
                  return;
               case 1:
                  this._b529dc6fae7755cb1ad07b99 = param1;
                  return;
               case 2:
                  if(this._b529dc6fae7755cb1ad07b99 == param1)
                  {
                     _loc2_ = -236007617 ^ 0x1356E6E6 ^ -1307065509 ^ 0x41843EB9;
                  }
                  else
                  {
                     _loc2_ = -1987764908 ^ 0x4D379227 ^ 0x03AF9E27 ^ -701053586;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function get dialogToShowClass() : Class
      {
         var _loc1_:Class = _bf155b4a1a362c99e1091d0d;
         var _loc2_:Boolean = this._fishSizeCm > this._1a09e5ceef0e26bedb46cdd6;
         var _loc3_:Boolean = this._fishSizeCm > this._b529dc6fae7755cb1ad07b99;
         if(_loc2_ && !_loc3_)
         {
            _loc1_ = _9acf05184b7ae19b3ce8b4b1;
         }
         else if(_loc2_ && _loc3_)
         {
            _loc1_ = _94e4ddb255ac2d62a5aa926d;
         }
         else if(_loc3_)
         {
            _loc1_ = _e6b1b181cfbf52927a5d8c0b;
         }
         return _loc1_;
      }
      
      private function get _70c4c58c39b99b862985b1c1() : Number
      {
         return (this._b529dc6fae7755cb1ad07b99 + this._1a09e5ceef0e26bedb46cdd6) / (0x0555552F ^ -163233438 ^ 0x51D2C6F0 ^ -1564290369) * this._51494964d425c009250f325c;
      }
      
      public function set fishIsShiny(param1:Boolean) : void
      {
         if(this._013afe9dc9453814370bc613 == param1)
         {
            return;
         }
         this._013afe9dc9453814370bc613 = param1;
         titleField.filters = this._013afe9dc9453814370bc613 ? this._f7eaa5cc42565252fac371ad : this._ee574ed032490e9b8b3d1266;
      }
      
      private function get _007c8bbcbb908a9055d640a4() : Number
      {
         var _loc1_:Number = Math.floor((0x3EA9295B ^ -2077523092 ^ -1047540604 ^ 0x7B0D66D7) + Math.random() * (0x39C61E34 ^ -1201141892 ^ -2007916324 ^ 0x09FFB9F0));
         return _loc1_ * this._045a708f9912324c56aae364;
      }
      
      public function _e84cfa0e0f60dd51a065d0a8(param1:Number) : void
      {
         colorBar.graphics.clear();
         var _loc2_:Matrix = new Matrix();
         var _temp_4:* = _loc2_;
         var _temp_3:* = this._49c9edaecbab8b02f24a4ae3;
         var _temp_2:* = -1908754122 ^ 0x7ACD6399 ^ 0x2A11050B ^ -555294844;
         var _temp_1:* = -329322923 ^ 0x6F164F4D ^ 0x67F910AF ^ -458116681;
         _temp_4.createGradientBox(_temp_3,_temp_2,_temp_1,_temp_1,_temp_1);
         var _loc3_:int = (0x426EBC1D ^ -907717822 ^ 0x0A63F959 ^ -2115496402) + (-1146142190 ^ -516713222 ^ 0x37DEFC6A ^ 0x6D422AB0) * ((0x2904F5E3 ^ -88794161 ^ -434258103 ^ 0x35AC5164) - param1);
         var _temp_9:* = colorBar.graphics;
         var _temp_8:* = GradientType.LINEAR;
         var _temp_7:* = [0x3EA80C5E ^ 0x6AC334E9 ^ -80151539 ^ -1347631942,-1953687376 ^ -1085409735 ^ -568424227 ^ -366896812,0x50D7EC49 ^ -356373404 ^ -2103885067 ^ 0x388C7DD8,-1674949870 ^ -229815841 ^ 0x377D9C40 ^ 0x59E5618D,-1964345 ^ -67155197 ^ -1898395627 ^ -1975876143];
         var _temp_5:* = 0x6019662A ^ -1811748238 ^ 0x166F1DB2 ^ -495676949;
         var _temp_6:* = 0x1486E01D ^ 0x5FA91CA4 ^ -401335552 ^ -1556355144;
         _temp_9.beginGradientFill(_temp_8,_temp_7,[_temp_5,_temp_5,_temp_5,_temp_6,_temp_6],[-1568426448 ^ -1400726738 ^ 0x3D8211AD ^ 0x33833CB3,_loc3_,-1591060131 ^ 0x3C876023 ^ 0x555152E5 ^ -922981404,(0x48E4762B ^ -2143297647 ^ 0x3BCD856A ^ -216650705) - _loc3_,0x52689F48 ^ 0x615E050A ^ 0x60B5A5BD ^ 0x53833F00],_loc2_,SpreadMethod.PAD);
         var _temp_11:* = colorBar.graphics;
         var _temp_10:* = -1057426687 ^ -1179401953 ^ 0x2592D73B ^ 0x5CD9E525;
         _temp_11.drawRoundRect(_temp_10,_temp_10,this._49c9edaecbab8b02f24a4ae3,-1742244913 ^ 0x12146DA4 ^ -1618854429 ^ 0x15B123A8,-2030597586 ^ -1698623818 ^ -1854495371 ^ -1925176857);
         colorBar.graphics.endFill();
         var _temp_19:* = colorBar;
         var _temp_18:* = §§findproperty(DropShadowFilter);
         var _temp_17:* = -1719237482 ^ -1255839845 ^ -727760188 ^ -130244152;
         var _temp_16:* = -1726701318 ^ -541954711 ^ 0x59B05866 ^ 0x1F1695AF;
         var _temp_15:* = -1160055343 ^ -1647160197 ^ 0x30CE7C81 ^ 0x17C6DD2B;
         var _temp_14:* = 0x055CC0F2 ^ 0x43EA787F ^ -1696965795 ^ -596843567;
         var _temp_12:* = -4945835 ^ -1106051097 ^ -587637127 ^ -1654707767;
         var _temp_13:* = 0x2BF5905E ^ -1254969731 ^ -1402607113 ^ 0x32A2D7D5;
         _temp_19.filters = [new DropShadowFilter(_temp_17,_temp_16,_temp_15,_temp_14,_temp_12,_temp_12,_temp_13,_temp_13,true,false,false)];
         colorBar.addChild(pointer);
         pointer.y = 0x1DABA36D ^ 0x7B889B69 ^ -813845228 ^ -1453421296;
         pointer.x = this._72a2f325d2b7b0b3539dc9f9;
         var _loc4_:Number = this._49c9edaecbab8b02f24a4ae3 * param1 * _433075a5d49397e40222eeae._9417d5d828724209ec5cfbb1("႓ၘ჻ႜႾဋႏထၟဣၝြნ၎ၟႌၐႵဪმဂჼႈသ","ႉჿဪჟჹဵ႔ၘႨჟႴႶၻჲჸႰ");
         this._dd669181bd4b829eb0e74bf8 = this._72a2f325d2b7b0b3539dc9f9 - _loc4_ * _39d7d82359bf8046fe8ef6c4._ed4a735c5a6981f99dda5b73("掓揇掍挿揻挸揼揔揬挆掹採捷挞挎揞挰揖掕揿捛揘挧挄","捓挎掚挼掳揽揇掳掣揩捊捌揼描挰掭") - this._d8cf3e7b9aa5b8ed8625e88d * (-1695438409 ^ -1395051402 ^ -1315896842 ^ -2017878990);
         this._2229a8f210ff3e20763375c0 = this._72a2f325d2b7b0b3539dc9f9 + _loc4_ * _95da7f1147c669197db81295._6371735dc9287bd2d9618c1e("劼刉勶劫劄勘功剪勡刂劀劻勑剪勪剃動勂勦勈剓判劯刄","剫劸劽刁剰勋剹勉刔刜勭劬刃刘劉剘") + this._d8cf3e7b9aa5b8ed8625e88d * (0x66B78121 ^ -1008674114 ^ 0x6DDE1866 ^ -930528260);
      }
      
      public function start() : void
      {
         var _loc1_:int = -866157625 ^ 0x695EE453 ^ -289272609 ^ -2070875333;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (0x517D5E4D ^ 0x7D804F03 ^ 0x2DF261AD ^ -832827245))
            {
               case 0:
                  if(this._3ba0ce4c9c3ec79d6d211be4)
                  {
                     _loc1_ = 0x5C701EE0 ^ -1876322928 ^ -1516254107 ^ -1500174489;
                  }
                  else
                  {
                     _loc1_ = -1799404326 ^ 0x7986BFEE ^ -192144800 ^ -689536731;
                  }
                  break;
               case 1:
                  this._66e0553bfdc8e2c30db6fbf6 = false;
                  this._e84cfa0e0f60dd51a065d0a8((-1650686336 ^ -965490756 ^ -1854554620 ^ -895811783) - (limit(this.rarity,0x5E9213DC ^ 0x2913B036 ^ -2058679626 ^ -221599395,-864828799 ^ 0x4E5A6304 ^ 0x68550BC8 ^ -360928696) - 1) / (-1257696926 ^ 0x56640126 ^ 0x1EF78EF0 ^ -40198479));
                  this._8894b0ab8b0d295b4b12bc5d = this.rarity * _433075a5d49397e40222eeae._9417d5d828724209ec5cfbb1("Ⴕျპ၉ဉၤၶာၡၢႾဿႩၱငპၥკႏဲჁဝ჏კ","ၻဣႁခဵႂးညၖ်ဗჺႷၑჩდ") + (-866846470 ^ 0x0BC67B80 ^ -2063533140 ^ 0x429278D9);
                  this._a66962b4f35619a2f62e5ab8 = this.rarity * _95da7f1147c669197db81295._6371735dc9287bd2d9618c1e("剫勌剋剕劍剀割創刮务劥刕剒勷勾劂剕勮剩劺劝勪剄勘","制劐勏剤劤刘劧刄劺利劘剬剣勋劔劃") + (-1348847851 ^ -1340383026 ^ -506075086 ^ -28000258);
                  this._fb0c78de9c51caf7cbd51d7e = this.rarity * _433075a5d49397e40222eeae._9417d5d828724209ec5cfbb1("႟ာ჻჻ၷႆႯ႑რၩ჏ိၯပၳჲ჊჆ဇဋဟ၉ၢၿ","ႄဢၴႪႠႂ၉჋Ⴆစჷ႞ၼရမ်") + (-128513649 ^ 0x5E446459 ^ 0x5ECEEA93 ^ -119699611);
                  _3a8a2602dcf9bf49b62e62af._2aab252d084c88689c72b466(_39d7d82359bf8046fe8ef6c4._ed4a735c5a6981f99dda5b73("掄掟揌挀換掀揈揹掎挗掶揪掟掚掞挲挶捩揟挤损掂掀揀","掠挮捓捚捀揗揍揗揽掭揳捪挺挚捒捉"));
                  _3a8a2602dcf9bf49b62e62af._d2b72a74253af6d1c777cb05(_3a8a2602dcf9bf49b62e62af.SFX_047_MUS_Catch_music);
                  this._3ba0ce4c9c3ec79d6d211be4 = true;
                  this._3715316f14e2f2df48846978 = this._007c8bbcbb908a9055d640a4;
                  this._6bde11f4edbb9c1d22d2a93d = 0x39D1DC47 ^ 0x0C78C7E6 ^ 0x721121D5 ^ 0x47B83A74;
                  this._8c1551618d4356acd5112704 = -872212755 ^ 0x52DDB276 ^ 0x670E3A15 ^ -103768434;
                  this.idle = -862266982 ^ -522985277 ^ 0x2361A783 ^ 0x0F289EDA;
                  pointer.x = this._72a2f325d2b7b0b3539dc9f9;
                  this._9f89e07858cba0467c03bca9 = -1329942227 ^ 0x74AFAFB6 ^ -1688345888 ^ 0x5F48FC49;
                  this._53854d9bc35483408f0b77f7 = -1869230691 ^ 0x3F4F0192 ^ -1673410229 ^ 0x339B0544;
                  this._153b257a5ac70b91b263df36();
                  this._fishRandom = Math.random();
                  this._c2e0f2cde91ba9b39d96b1d1 = Math.random();
                  this._e1389d14b5ebdb94d496345c = Math.random();
                  this._333f4ae4cb9fbc5c16ae779f = (0x28E9342B ^ -2033629807 ^ 0x3CBE26B7 ^ -1835116737) + this._70c4c58c39b99b862985b1c1;
                  _cbd58f52130bcef0d9dc895a.initialize(stage);
                  _92d7656ddc3c3da810e99c74.getInstance()._57ad3faeff9ca92cbf9fe447(_34a2ba6ad978d976b8b0f5a4.ENTER_FRAME).add(this);
                  this._66ce1bd714c010e03e65ef0e = getTimer();
                  return;
               case 2:
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function update(param1:uint, param2:uint) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         if(!this._3ba0ce4c9c3ec79d6d211be4)
         {
            return;
         }
         while(this._66ce1bd714c010e03e65ef0e < getTimer())
         {
            this._66ce1bd714c010e03e65ef0e += this._57feb23121d6b6bb152cba30;
            if(_cbd58f52130bcef0d9dc895a._021886a61ca44aa046c75d7d(Keyboard.LEFT,Keyboard.A))
            {
               leftButton.gotoAndStop(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勰劼劃加刎勅动劕刀剑勰劂加剳勰剥","剬勹刍剶劽勚労剤勈勾剁勢剣勜動勁"));
               this.left_down = true;
            }
            else
            {
               leftButton.gotoAndStop(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剤劲勁劉勅勻勧刭劐勦副劰劥劂劑勸剨刘剖刵","劚勑勚剨劇勺剟剀勝勭剦利勁勭勋勅"));
               this.left_down = false;
            }
            if(_cbd58f52130bcef0d9dc895a._021886a61ca44aa046c75d7d(Keyboard.RIGHT,Keyboard.D))
            {
               rightButton.gotoAndStop(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၟၝႛႁၠჾოလႝჟႣေႿ၊ာႺ","Ⴉဉ။ႍဆჱၱ჈ၶႢქ၈႕ვჶအ"));
               this.right_down = true;
            }
            else
            {
               rightButton.gotoAndStop(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("探挑挸捖掮捼捏挪捩揗捬掱揼揚挒挦捈捳掆捺","挍挃掴捾挞挚掖採援捇掔捋揚捒挡捷"));
               this.right_down = false;
            }
            ++this._6bde11f4edbb9c1d22d2a93d;
            _loc4_ = Math.random() - _433075a5d49397e40222eeae._9417d5d828724209ec5cfbb1("၃ီယဨႇဠဌႃဪရႱ၆္၅အကეჇၰဍျဤှႄ","Ⴅ၅၂ၙၝႾႈံါჅဉပ႟၉Ⴉမ");
            _loc5_ = Math.random() - _39d7d82359bf8046fe8ef6c4._ed4a735c5a6981f99dda5b73("损挼挱揩捈揅掘描揯掮捦挾挒挓捥掯措捡揌掋持挢捦掵","捙捋揍掮提揣捜捜揆揰挝揧捛挹损掗");
            if(Math.abs(_loc4_) > Math.abs(_loc5_))
            {
               _loc3_ = _loc4_;
            }
            else
            {
               _loc3_ = _loc5_;
            }
            if(this.left_down || this.right_down)
            {
               this.idle = -940039659 ^ -1923957116 ^ 0x53B496BB ^ 0x191E0A2A;
            }
            else
            {
               ++this.idle;
            }
            if(this._8c1551618d4356acd5112704 < (0x59496085 ^ 0x09E7D237 ^ -1026858315 ^ -1838821329))
            {
               _loc3_ = _loc3_ * this._8c1551618d4356acd5112704 / (0x44F1452D ^ -745129893 ^ 0x556E4B40 ^ -1039583714);
            }
            if(this.idle > (-711879050 ^ -1134320925 ^ -1538738143 ^ -843412324))
            {
               _loc3_ = _loc3_ * this.idle / (-486203002 ^ 0x45835F56 ^ -1488054281 ^ 0x01C8690F);
            }
            if(Math.random() < _39d7d82359bf8046fe8ef6c4._ed4a735c5a6981f99dda5b73("揼揲挀挷揔挧挶揵捕挥捔揤揇指揭挐挓捌挗捂挾揬掹捯","捸挄掺挬挴掵揔掍揑挬挆挟挖揈揗捠") && (_loc3_ < (0x6938B646 ^ 0x7CEFD1B8 ^ 0x6911AE73 ^ 0x7CC6C98D) && this._53854d9bc35483408f0b77f7 > (0x54874CC2 ^ 0x529E4405 ^ 0x1DAAB577 ^ 0x1BB3BDB0) || _loc3_ > (0x5049DDA6 ^ 0x09455FCC ^ -967811564 ^ -1621304194) && this._53854d9bc35483408f0b77f7 < (0x6123C4F6 ^ -780740363 ^ 0x0CDE7FF9 ^ -1131715590)))
            {
               _loc3_ = -_loc3_;
            }
            if(this._fishSizeCmFactor > this._333f4ae4cb9fbc5c16ae779f * _95da7f1147c669197db81295._6371735dc9287bd2d9618c1e("勍剞判劊勼勥判劬劌削勜剜勆動劮劘勼劢劗剒刐劣剔办","剙劕剨勰刦劑刿刂刯創勺剧列勐効剻"))
            {
               _loc6_ = this._fishSizeCmFactor / this._333f4ae4cb9fbc5c16ae779f * _433075a5d49397e40222eeae._9417d5d828724209ec5cfbb1("ာႣၱჲဂႥုႄზှဂႋ჎ဗზႋၟႢ჈ႉ၉ჵႱၸ","ၑႏ჏႗ქဗၐიသႷႝဲၨၤဍႄ");
               if((this.left_down || this.right_down) && Math.random() < _95da7f1147c669197db81295._6371735dc9287bd2d9618c1e("劢勅劤剓劥剢剢勓劜勦切劀剔劃劺剫剞剷剉勼刂分刕劫","劑剦劳剒勅剳势剒刧刮刬勱劜勸勀刎") + this.rarity / (-902454290 ^ -1581519231 ^ 0x0E2BC1CE ^ 0x65A58C9D))
               {
                  this._53854d9bc35483408f0b77f7 = _433075a5d49397e40222eeae._9417d5d828724209ec5cfbb1("့ზ၎ႺႋგႂဗဉဖၲრသျႍၸႡႭၑၝთ၄ဴჟ","ဌနျၡၯတႹအႱဈჽჀၥင၊Ⴢ") * this._53854d9bc35483408f0b77f7;
               }
            }
            else if(this._fishSizeCmFactor > this._333f4ae4cb9fbc5c16ae779f)
            {
               _loc6_ = this._fishSizeCmFactor / this._333f4ae4cb9fbc5c16ae779f * _433075a5d49397e40222eeae._9417d5d828724209ec5cfbb1("၄ၟბႀწჵა၄ၖဎၻჶ჆ဲဨურဌဪყპჶဵၛ","ႩဒၘძეၲၡရၩჱჸဴႩခုဧ");
               if((this.left_down || this.right_down) && Math.random() < _433075a5d49397e40222eeae._9417d5d828724209ec5cfbb1("ဴჟတ၂თთჾლ႑ოၙိၪၼ႔အၳპဇၱჸწႅႼ","ဦჰၑၲႸჶუႢဿႏးဘႄ႟္ဝ") + this.rarity / (0x61FF4C2B ^ -166482774 ^ 0x378645F5 ^ -1603623608))
               {
                  this._53854d9bc35483408f0b77f7 = _433075a5d49397e40222eeae._9417d5d828724209ec5cfbb1("၉ႄၢჾ္၃ၤၘပჂჺფႇჟცနჂ့ႪႠყၳဲჟ","Ⴅႅ჋ဣႏႤၑၩၹႜဠဌჲႯႆ၄") * this._53854d9bc35483408f0b77f7;
               }
            }
            else
            {
               _loc6_ = this._fishSizeCmFactor / this._333f4ae4cb9fbc5c16ae779f * _39d7d82359bf8046fe8ef6c4._ed4a735c5a6981f99dda5b73("捫插掶挍掫挭挚措揎挅挺插捇揯挡挨揂指捉掷挘按探挜","掋掏挒提揔挝挒揎推捒揜捸掯掱挌挛");
               if((this.left_down || this.right_down) && Math.random() < _39d7d82359bf8046fe8ef6c4._ed4a735c5a6981f99dda5b73("掛挕捕掻掇指挙捔揢揕挏捉捻挖排掽捂掩揖採掦掀挰揬","挦捌挩挴掲排捶挘挩挧揸捾捎掽掍掳") + this.rarity / (-174118395 ^ 0x4C14985B ^ -671306135 ^ 0x6E771C71))
               {
                  this._53854d9bc35483408f0b77f7 = _39d7d82359bf8046fe8ef6c4._ed4a735c5a6981f99dda5b73("捭挜捦挞挡挆捛挝揯揩掫捏掐捷挤掟掁揀捠捏揤控揧揪","捸揄捋揝揷掑揢挕揾挤捾掷掞掀掸捹") * this._53854d9bc35483408f0b77f7;
               }
            }
            if(_loc6_ < _39d7d82359bf8046fe8ef6c4._ed4a735c5a6981f99dda5b73("掌掋捼捦挵按捜掑捠挍挂挔掤插捴挴挲掤挩掸揲掬挀掂","揉揳揽揊捸控掰捎描捥捽掛掾捉排掚"))
            {
               _loc6_ = _95da7f1147c669197db81295._6371735dc9287bd2d9618c1e("勬剬刳刯剬勭前勥剀勄劢劅剳劧勔劌勮勯勝刣勰刑剪勣","勯到剔劵刹刟刾劥勔劓勝勔刜劓勢劰");
            }
            _loc6_ *= _39d7d82359bf8046fe8ef6c4._ed4a735c5a6981f99dda5b73("捹挦掱揣挶捞捡揤捚捷揠揫挄掻揤掺描挮挃挑掮揂掂揙","插挊措揎捗捵掫捞掰捍挰捸捘揸掟捉") + this.rarity / (0x51C09004 ^ 0x06F91D13 ^ 0x4FFCC70D ^ 0x18C54A19);
            _loc6_ += this._6bde11f4edbb9c1d22d2a93d / this._3715316f14e2f2df48846978 / (0x3FE0B9CE ^ -964153187 ^ -539892277 ^ 0x26B96C9B);
            this._53854d9bc35483408f0b77f7 += _loc3_ * _loc6_;
            this._53854d9bc35483408f0b77f7 = this._53854d9bc35483408f0b77f7 * ((0x0A6235D6 ^ 0x2C6FCD2C ^ -1023320203 ^ -452155512) + this._c2e0f2cde91ba9b39d96b1d1 - _433075a5d49397e40222eeae._9417d5d828724209ec5cfbb1("Ⴊ჎ၮდဨဒၡე႞კ჊ႢჅႜႯဤჿတ့ၩႀჴწႵ","၆ၗလჼၿჩ႟ဏ႖ჂႽႾ႖ဖၘဎ")) / (-1241594977 ^ 0x2E482091 ^ 0x7C46F428 ^ -403695839);
            if(this.left_down && !this.right_down)
            {
               this._9f89e07858cba0467c03bca9 -= _433075a5d49397e40222eeae._9417d5d828724209ec5cfbb1("Ⴚဨ႗ဦ၊დ၅სၴီၕჸႄრႁၖၺშၟၮ႔჌ီၝ","ႥႺဨ႔დ႕ၠၪႹ႐၁ႄဲႈ჊ღ") - this.rarity / (0x7979E72B ^ -1076937556 ^ -803359033 ^ 0x16AB6D68) + this._e1389d14b5ebdb94d496345c / (-1637405239 ^ -1410863331 ^ -813507935 ^ -100525967);
               this._53854d9bc35483408f0b77f7 *= _433075a5d49397e40222eeae._9417d5d828724209ec5cfbb1("ၖၣ္ကႽပဢჺჱძႃფဥၫၨုჴဧႡ၇ႚာ၀ႛ","ႴဝီႠ၇႘႑ၡ჌ႇ႐ჵၞჿၾသ");
               if(this._53854d9bc35483408f0b77f7 > (-1957027813 ^ -1701085191 ^ 0x4EA0FEB4 ^ 0x5F61A156) && Math.random() < _433075a5d49397e40222eeae._9417d5d828724209ec5cfbb1("ჾဥ၊჈၁ဇჃဍႅၮႲჄၢဖုၙံ႔ၶႤყწ႓ဈ","჊႕ოပოჍၛငႧဝႲ჆჈ღႝ႐"))
               {
                  this._53854d9bc35483408f0b77f7 = _39d7d82359bf8046fe8ef6c4._ed4a735c5a6981f99dda5b73("掙挈挶揝挟挸捾捾揳揊挺捽揕掠揣掏挽挥挂据掟捇挚捣","捙揁掷換捒揮捑掖控捵指捎掸掎揑挈") * this._53854d9bc35483408f0b77f7;
               }
            }
            else if(!this.left_down && this.right_down)
            {
               this._9f89e07858cba0467c03bca9 += _39d7d82359bf8046fe8ef6c4._ed4a735c5a6981f99dda5b73("揮揱揂捝揻揨揤挝揙掔掔挘捺换揹描揓揄挿掘捐握挷捶","捴掸揫挌掷捺掰掉揍掛揵掸振控揟掐") - this.rarity / (-84864488 ^ -927411756 ^ 0x1B6C8A45 ^ 0x292549A1) + this._e1389d14b5ebdb94d496345c / (-1472885736 ^ -343045756 ^ 0x3D77DB74 ^ 0x7ECFDEEC);
               this._53854d9bc35483408f0b77f7 *= _39d7d82359bf8046fe8ef6c4._ed4a735c5a6981f99dda5b73("捲揦揇捜揵揠捻挞挷挋挠挜持挭揬挙指挰揫掴挔挂揮捆","挦揼捲挔捱捳挒捛揇掌挲揉挬揟挮掞");
               if(this._53854d9bc35483408f0b77f7 < (0x1F6F3B54 ^ 0x60F62BEB ^ 0x5EBF7224 ^ 0x2126629B) && Math.random() < _433075a5d49397e40222eeae._9417d5d828724209ec5cfbb1("ဣိၠွჾჀუႺჲჄႯ၏၈Ⴓჼგၺဠ႑ၜၶၻႯႩ","჆ჹჶႹႎႎၐႄဈႛၘႸჴ႗ၰံ"))
               {
                  this._53854d9bc35483408f0b77f7 = _39d7d82359bf8046fe8ef6c4._ed4a735c5a6981f99dda5b73("掌揓掻捌掀揢揋掶揹挛揤揬捹探捃措揰掯挆掜掄捘捙掘","捻揃推挾挜揫掺掑挒掀掎揄掜掙掲挲") * this._53854d9bc35483408f0b77f7;
               }
            }
            this._9f89e07858cba0467c03bca9 += this._53854d9bc35483408f0b77f7;
            pointer.x = this._9f89e07858cba0467c03bca9 / (0x2C436D82 ^ 0x562654CD ^ 0x2040262E ^ 0x5A251F05) * this._49c9edaecbab8b02f24a4ae3;
            if(pointer.x < this._8894b0ab8b0d295b4b12bc5d || pointer.x > this._49c9edaecbab8b02f24a4ae3 - this._8894b0ab8b0d295b4b12bc5d)
            {
               this._8c1551618d4356acd5112704 -= 0x2F468744 ^ -627887990 ^ -686547351 ^ 0x22C1A9A2;
               this._e30e6a1f4d9ac83ecef19a74();
            }
            else if(pointer.x < this._a66962b4f35619a2f62e5ab8 || pointer.x > this._49c9edaecbab8b02f24a4ae3 - this._a66962b4f35619a2f62e5ab8)
            {
               this._8c1551618d4356acd5112704 -= 0x42625B5D ^ 0x29EFA43F ^ 0x759051E0 ^ 0x1E1DAE81;
               this._e30e6a1f4d9ac83ecef19a74();
            }
            else if(pointer.x < this._fb0c78de9c51caf7cbd51d7e || pointer.x > this._49c9edaecbab8b02f24a4ae3 - this._fb0c78de9c51caf7cbd51d7e)
            {
               --this._8c1551618d4356acd5112704;
               this._e30e6a1f4d9ac83ecef19a74();
            }
            else
            {
               this._153b257a5ac70b91b263df36();
               ++this._8c1551618d4356acd5112704;
            }
            if(this._8c1551618d4356acd5112704 < (-594592261 ^ -1707851631 ^ 0x36B85C93 ^ 0x700321F9))
            {
               this._8c1551618d4356acd5112704 = 0x18054271 ^ 0x01712D65 ^ -1647473917 ^ -2068192233;
               this._3ba0ce4c9c3ec79d6d211be4 = false;
            }
            if(this._8c1551618d4356acd5112704 >= this._3715316f14e2f2df48846978)
            {
               this._8c1551618d4356acd5112704 = this._3715316f14e2f2df48846978;
               this._3ba0ce4c9c3ec79d6d211be4 = false;
            }
            if(pointer.x < (0x0755E274 ^ 0x5BD13F6C ^ -1475928115 ^ -192691497))
            {
               pointer.x = 0x35040788 ^ 0x37AC34BD ^ -1061471950 ^ -1038939643;
               this._8c1551618d4356acd5112704 = Math.floor(this._8c1551618d4356acd5112704 / (0x0C48E497 ^ -692571335 ^ 0x56530D6D ^ -1935418688));
            }
            if(pointer.x > this._49c9edaecbab8b02f24a4ae3 - (0x14136810 ^ 0x1E3AEAC1 ^ 0x41A163 ^ 0x0A6823B0))
            {
               pointer.x = this._49c9edaecbab8b02f24a4ae3 - (-908375781 ^ 0x75F47418 ^ 0x45F3B645 ^ -102986940);
               this._8c1551618d4356acd5112704 = Math.floor(this._8c1551618d4356acd5112704 / (0x5A7E08E6 ^ 0x26791241 ^ 0x1C50E056 ^ 0x6057FAF2));
            }
            if(this._3ba0ce4c9c3ec79d6d211be4 == false)
            {
               if(this._8c1551618d4356acd5112704)
               {
                  this._ea47f14e525e23b2c7a74dca();
               }
               else
               {
                  this._5e5e49360cb515473f9a4c4a();
               }
            }
            progressBar.gotoAndStop(int(this._8c1551618d4356acd5112704 / this._3715316f14e2f2df48846978 * (0x60F1A650 ^ -1285730570 ^ 0x4000385A ^ -1817391052)));
         }
      }
      
      private function _5e5e49360cb515473f9a4c4a() : void
      {
         var _loc1_:int = 0x0272D6A3 ^ 0x1737E00A ^ 0x5C561099 ^ 0x4857A995;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (0x0C38864A ^ -1859616994 ^ -622421791 ^ 0x46B2EE12))
            {
               case 0:
                  return;
               case 1:
                  this._66e0553bfdc8e2c30db6fbf6 = true;
                  _3a8a2602dcf9bf49b62e62af._455115db629ba63658f60520(_3a8a2602dcf9bf49b62e62af.SFX_047_MUS_Catch_music);
                  _3a8a2602dcf9bf49b62e62af.play(_3a8a2602dcf9bf49b62e62af.SFX_047_MUS_Catch_fail);
                  _92d7656ddc3c3da810e99c74.getInstance()._57ad3faeff9ca92cbf9fe447(_34a2ba6ad978d976b8b0f5a4.ENTER_FRAME).remove(this);
                  dispatchEvent(new Event(Event.CANCEL));
                  return;
               case 2:
                  if(this._66e0553bfdc8e2c30db6fbf6)
                  {
                     _loc1_ = 0x412BCE63 ^ 0x11E1FBC8 ^ 0x45B59D2D ^ 0x143B2721;
                  }
                  else
                  {
                     _loc1_ = -568902145 ^ 0x2C7C2113 ^ -1330275082 ^ 0x439A0FBC;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function cancel() : void
      {
         var _loc1_:int = -1255721291 ^ -510702275 ^ -316359697 ^ -2031837973;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (-476820393 ^ -252866145 ^ -386949071 ^ -989978249))
            {
               case 0:
                  _3a8a2602dcf9bf49b62e62af._455115db629ba63658f60520(_3a8a2602dcf9bf49b62e62af.SFX_047_MUS_Catch_music);
                  _3a8a2602dcf9bf49b62e62af.play(_3a8a2602dcf9bf49b62e62af.SFX_047_MUS_Catch_fail);
                  _92d7656ddc3c3da810e99c74.getInstance()._57ad3faeff9ca92cbf9fe447(_34a2ba6ad978d976b8b0f5a4.ENTER_FRAME).remove(this);
                  dispatchEvent(new Event(Event.CLOSE));
                  _loc1_ = 0x06B5C1EC ^ -70086714 ^ 0x251D0CE1 ^ -418243004;
                  break;
               case 1:
                  return;
               case 2:
                  this._3ba0ce4c9c3ec79d6d211be4 = false;
                  if(this.parent)
                  {
                     _loc1_ = 0x6AA3F0EE ^ 0x6FC7FFAC ^ -1616428900 ^ -1515515056;
                  }
                  else
                  {
                     _loc1_ = 0x3BED8E03 ^ -1175307240 ^ -1845241590 ^ 0x2F74379E;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function _ea47f14e525e23b2c7a74dca() : void
      {
         _92d7656ddc3c3da810e99c74.getInstance()._57ad3faeff9ca92cbf9fe447(_34a2ba6ad978d976b8b0f5a4.ENTER_FRAME).remove(this);
         _3a8a2602dcf9bf49b62e62af._455115db629ba63658f60520(_3a8a2602dcf9bf49b62e62af.SFX_047_MUS_Catch_music);
         _3a8a2602dcf9bf49b62e62af.play(_3a8a2602dcf9bf49b62e62af.SFX_047_MUS_Catch_success);
         dispatchEvent(new Event(Event.COMPLETE));
      }
      
      private function _e30e6a1f4d9ac83ecef19a74() : void
      {
         var _loc1_:int = -610485641 ^ 0x30EBAD9D ^ -303615099 ^ -1220471693;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (0x3FC8B5E5 ^ 0x379AAA26 ^ 0x66CDFAC6 ^ -548481768))
            {
               case 0:
                  this._fa93ae98ad467be7e020c541 = true;
                  progressBar.filters = _4fe759892d70c114b78e2ba2;
                  _loc1_ = -1469295980 ^ -112526312 ^ 0x40A42733 ^ -1605125728;
                  break;
               case 1:
                  if(this._fa93ae98ad467be7e020c541 == false)
                  {
                     _loc1_ = -908990227 ^ -579450774 ^ 0x4B0D99E2 ^ -293926536;
                  }
                  else
                  {
                     _loc1_ = 0x0D2901B8 ^ -1270734986 ^ -922096667 ^ -1045183180;
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
      
      private function _153b257a5ac70b91b263df36() : void
      {
         var _loc1_:int = -53974932 ^ 0x134C81A1 ^ -543191228 ^ 0x1B21C750;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (0x40342735 ^ -684663495 ^ 0x33CEEF2F ^ -1880050438))
            {
               case 0:
                  if(this._fa93ae98ad467be7e020c541)
                  {
                     _loc1_ = 0x13298C62 ^ -1686299755 ^ -1734421272 ^ 0x3BF0E2C7;
                  }
                  else
                  {
                     _loc1_ = -1705353650 ^ -2055450762 ^ 0x11BF3B1D ^ 0x25A38BFE;
                  }
                  break;
               case 1:
                  this._fa93ae98ad467be7e020c541 = false;
                  progressBar.filters = null;
                  _loc1_ = 0x1C3E2163 ^ -2084226911 ^ -446967298 ^ 0x519A69E7;
                  break;
               case 2:
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function destroy() : void
      {
         removeFromParent(this);
         _02fbe4cbe9e83f1b8c711799._87b72cd49d8fc861c4443e4d(this);
         _92d7656ddc3c3da810e99c74.getInstance()._57ad3faeff9ca92cbf9fe447(_34a2ba6ad978d976b8b0f5a4.ENTER_FRAME).remove(this);
      }
   }
}

