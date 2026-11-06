package com.ax3.utils
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import flash.display.BitmapData;
   import flash.filters.ColorMatrixFilter;
   import flash.geom.ColorTransform;
   import flash.geom.Matrix3D;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class ColorMatrix
   {
      
      public static const COLOR_DEFICIENCY_TYPES:Array = [_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劬刼刀勻勷剤別勎劳刴劜剙刁劳剎剪劕勿劾删劖勞勘剬劶加剄刑","别前剷務剨劷剾刵勒剿劶劬刼刹剦刧"),_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揎掫揻挳揗揗握捭挃揅捽揥挠揇挛振捐揾掙掬揈捠揥揆揥掔挊揎挑揇","捭捪掞挡捹掐揩掤捽掜捨捂捍挃提掦"),_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၵၣၧၪეူ჋ၻ၃ჵဴၵ႔ჰႫ၌ႻၪႯႉ႗၃ဃဈံ႐ჹჭျဗႳ၀","ဎႩၔႢ၍Ⴀ႔ႁაဢ၍ღဵႰဲუ"),_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勇劈势剱剿勄刉劏勋刹刄劄剿剆剖劼刃刡力勘務刿剓助刖剁勎劆労勠刑勨剽剹","刄劭劷勇劀劗勼劒剅刍剚剏刃勡劫劒"),_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၖတဆჽၑ႒၅ႝၩჾႅႴဪႿါႵရႾဝၕ႐ჿန္ၿးႏႍ","ၱ၁၀ჿჴႚ၃ჼႄႊႛၦဩქၣႳ"),_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剱劼刲勸勏勾剧剈剝勖刃劯努别劄删剔刬刃刨劋劐剿剎劳剪勂剔剼則","勦劚別剣务剄刈勢勴剆劏剅剾刹刢刟"),_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("握捉揂揈揸掼揠挢挐挚揥挡揕掍挐捰捥掁揨掣掯挴掬损掺捴掎挍挖揹捂挩挑挠","揉挿揉揻掺挼捾揭挓捙挶挒捃挩換挥"),_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("჏჎ေၮႄშလကჄကჩၠჭ႓ာဘၧဘჸဤძဴჰტჂ჊မရၘႢၐဒ႒၊","თႈဳဴ჏჋ၻႺြယဆႌႜၭ။ီ")];
      
      private static const LUMA_R:Number = _39d7d82359bf8046fe8ef6c4._ed4a735c5a6981f99dda5b73("挄揧捝揪揂掇揆揬捎掂掘揼挎挞掎挭換挨掩挝挰挙揪挤","揰捓揚挙捐揄挼捐掏换挠捅捤掻掱掻");
      
      private static const LUMA_G:Number = _433075a5d49397e40222eeae._9417d5d828724209ec5cfbb1("ႌხႴ၀ႝჭဦ၃ဩဇၪუჾႽჱၾ၏ၹႫ၍ၩგზႲ","ဃჂ၏ჼႪထႺჾည၇ჺရၲႽပာ");
      
      private static const LUMA_B:Number = _39d7d82359bf8046fe8ef6c4._ed4a735c5a6981f99dda5b73("掾损揉揕挄挚授挄挶捤捊揈揌捗揁掿揽捍挓掅揜掦掬推","揑掘捾捫损揆揔挓捂揅捩捳挰捽挖捷");
      
      private static const LUMA_R2:Number = _95da7f1147c669197db81295._6371735dc9287bd2d9618c1e("勬勘劦努刨剿剞刾劚剫勉勹刵剹勉創刯刃剀勱勾务删劢","剂劕勭剗則勻劯刮勺勳劅劦勭勰剗劫");
      
      private static const LUMA_G2:Number = _95da7f1147c669197db81295._6371735dc9287bd2d9618c1e("制刵剄剰刟判剋労勵効勀勐勷刂劁别剈務刖勑勻刵劤刕","勖勼删創刼刀勛勝刖刑剨切勛剠剚劕");
      
      private static const LUMA_B2:Number = _39d7d82359bf8046fe8ef6c4._ed4a735c5a6981f99dda5b73("掮挺挸捱挶捚捀掆揯挷捐捠掫掎揦挒握挭揗揚挸揫挍挝","掮揚掻捙捗捗揙掱揿揚挀掕掦捖挤揜");
      
      private static const ONETHIRD:Number = (0x6D6705F8 ^ 0x49C9BDD4 ^ -1014061006 ^ -417329121) / (0x69131353 ^ 0x06A6B82B ^ 0x1A0EDB28 ^ 0x75BB7053);
      
      var _temp_9:* = -1882806200 ^ -745724267 ^ -2143116524 ^ -603378232;
      var _temp_1:* = -1642066304 ^ -2058557914 ^ 0x3B5FC0F1 ^ 0x20332857;
      var _temp_2:* = -260030883 ^ 0x33273E11 ^ -1835434843 ^ 0x513E7CE9;
      var _temp_8:* = 0x444CABCE ^ -410272995 ^ 0x70914CA6 ^ -749314956;
      var _temp_3:* = 0x4B7BD6D1 ^ 0x4AC5DFC2 ^ -971106272 ^ -945811149;
      var _temp_4:* = 0x61515B30 ^ 0x7BB3F23D ^ 0x13BB8E53 ^ 0x0959275E;
      var _temp_7:* = 0x2CB9DFC2 ^ 0x3177BE4E ^ -539285682 ^ -1038793021;
      var _temp_5:* = 0x01AA69DC ^ -910267094 ^ 0x26857BB5 ^ -292454589;
      var _temp_6:* = -601232546 ^ -1507329876 ^ 0x0CA91AF7 ^ 0x76A70905;
      
      public static const IDENTITY:Array = [_temp_9,_temp_1,_temp_1,_temp_1,_temp_2,_temp_2,_temp_8,_temp_3,_temp_3,_temp_3,_temp_4,_temp_4,_temp_7,_temp_5,_temp_5,_temp_5,_temp_6,_temp_6,0xD18F39 ^ 0x30618524 ^ -1409870420 ^ -1689837648,0x2C5B8F02 ^ 0x799EA220 ^ -635628596 ^ -1881653522];
      
      private static const RAD:Number = Math.PI / (0x218EEB22 ^ 0x187F85DE ^ 0x3523F759 ^ 0x0CD29911);
      
      public var matrix:Array;
      
      private var preHue:ColorMatrix;
      
      private var postHue:ColorMatrix;
      
      private var hueInitialized:Boolean;
      
      public function ColorMatrix(param1:Object = null)
      {
         super();
         if(param1 is ColorMatrix)
         {
            this.matrix = param1.matrix.concat();
         }
         else if(param1 is Array)
         {
            this.matrix = param1.concat();
         }
         else
         {
            this.reset();
         }
      }
      
      public static function processMatrixTransparent(param1:Array, param2:Array, param3:Number) : Array
      {
         var _loc4_:* = undefined;
         var _loc5_:* = undefined;
         var _loc6_:* = undefined;
         var _loc7_:Number = NaN;
         var _loc8_:uint = param1.length;
         var _loc9_:int = 0x65477F08 ^ -581133261 ^ 0x1028A7DE ^ -1473035035;
         while(_loc9_ < _loc8_)
         {
            _loc4_ = IDENTITY[_loc9_];
            _loc5_ = param2[_loc9_];
            _loc6_ = _loc4_ - _loc5_;
            _loc7_ = _loc6_ * ((0x2BB3947E ^ 0x7440CCE6 ^ 0x35B5C0D9 ^ 0x6A469840) - param3);
            param1[_loc9_] = _loc7_ + _loc5_;
            _loc9_++;
         }
         return param1;
      }
      
      public static function process2MatrixTransparent(param1:Array, param2:Array, param3:Number) : Array
      {
         var _loc4_:* = undefined;
         var _loc5_:* = undefined;
         var _loc6_:* = undefined;
         var _loc7_:Number = NaN;
         var _loc8_:Array = [];
         var _loc9_:uint = param1.length;
         var _loc10_:int = 0x6113B846 ^ -1860997256 ^ -1585777304 ^ 0x517A2256;
         while(_loc10_ < _loc9_)
         {
            _loc4_ = param1[_loc10_];
            _loc5_ = param2[_loc10_];
            _loc6_ = _loc4_ - _loc5_;
            _loc7_ = _loc6_ * ((-85650862 ^ -885441515 ^ -2009584477 ^ -1176239387) - param3);
            _loc8_[_loc10_] = _loc7_ + _loc5_;
            _loc10_++;
         }
         return _loc8_;
      }
      
      public static function isColorTransformNotEmpty(param1:ColorTransform) : Boolean
      {
         return param1.redMultiplier != (0x7B8EFC9A ^ -1232781526 ^ 0x23608BFF ^ -294959026) || param1.redOffset != (0x3C91FD19 ^ -1228779783 ^ 0x726A353F ^ -130447649) || param1.greenMultiplier != (-1491332673 ^ -829652634 ^ 0x7826E184 ^ 0x11B6715C) || param1.greenOffset != (-525278370 ^ -1894981069 ^ 0x0A0CBE23 ^ 0x65B0BF4E) || param1.blueMultiplier != (-1089335783 ^ 0x7B3173B6 ^ -156192111 ^ 0x3293CF3F) || param1.blueOffset != (0x5AA7D255 ^ 0x22D57CF2 ^ -2104199086 ^ -85534987) || param1.alphaMultiplier != (0x2A4FD098 ^ 0x5E173703 ^ -1946100490 ^ -128435348) || param1.alphaOffset != (-1100220409 ^ -562667724 ^ -774843693 ^ -1311935008);
      }
      
      public function reset() : void
      {
         this.matrix = IDENTITY.concat();
      }
      
      public function clone() : ColorMatrix
      {
         return new ColorMatrix(this.matrix);
      }
      
      public function invert() : void
      {
         var _temp_13:* = this;
         var _temp_12:* = -224800239 ^ -315804717 ^ 0x4FEA4BFD ^ -1348381248;
         var _temp_1:* = 0x1A3F4556 ^ -682915721 ^ 0x0C5AE77C ^ -1053939107;
         var _temp_11:* = -1136334378 ^ 0x2498D681 ^ -1258308260 ^ 0x2C2382F4;
         var _temp_10:* = -547125619 ^ -1586887103 ^ -397473762 ^ -1773762350;
         var _temp_9:* = -432364409 ^ -1866479227 ^ -94967031 ^ 0x732C79F4;
         var _temp_2:* = 0x6B27481F ^ 0x683BD771 ^ 0x403BBD00 ^ 0x4327226E;
         var _temp_8:* = 0x79A6331B ^ -900413498 ^ 0x34AD05B5 ^ -2023755369;
         var _temp_3:* = 0x11B289FE ^ 0x49BCAB70 ^ 0x369559E8 ^ 0x6E9B7B66;
         var _temp_7:* = -275902187 ^ -155133290 ^ 0x2869F02E ^ -824654766;
         var _temp_6:* = 0x3BFB1D87 ^ 0x2E439068 ^ -1441788179 ^ -1079475454;
         var _temp_5:* = 0x5CED00B7 ^ 0x528810C3 ^ -72726774 ^ -170961023;
         var _temp_4:* = 0x5EA78282 ^ -244860181 ^ 0x14675270 ^ -1146656231;
         _temp_13.concat([_temp_12,_temp_1,_temp_1,_temp_1,_temp_11,_temp_10,_temp_9,_temp_2,_temp_2,_temp_8,_temp_3,_temp_3,_temp_7,_temp_6,_temp_5,_temp_4,_temp_4,_temp_4,0x549CC825 ^ -626829255 ^ -7544694 ^ 0x71B37097,0x218C5A7F ^ -374664718 ^ -1271520255 ^ 0x7C116F8C]);
      }
      
      public function adjustSaturation(param1:Number = 1) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         _loc2_ = (-106912650 ^ -1371649195 ^ -1588544130 ^ -154250660) - param1;
         _loc3_ = _loc2_ * LUMA_R;
         _loc4_ = _loc2_ * LUMA_G;
         _loc5_ = _loc2_ * LUMA_B;
         var _temp_14:* = this;
         var _temp_13:* = _loc3_ + param1;
         var _temp_12:* = _loc4_;
         var _temp_11:* = _loc5_;
         var _temp_1:* = -899367634 ^ -740116257 ^ 0x3F734E53 ^ 0x26F54BA2;
         var _temp_10:* = _loc3_;
         var _temp_9:* = _loc4_ + param1;
         var _temp_8:* = _loc5_;
         var _temp_2:* = -1062409131 ^ 0x06610067 ^ 0x3A2A5F81 ^ -51924045;
         var _temp_7:* = _loc3_;
         var _temp_6:* = _loc4_;
         var _temp_5:* = _loc5_ + param1;
         var _temp_3:* = -1858554084 ^ -1673282920 ^ 0x3E0600BA ^ 0x337D0D3E;
         var _temp_4:* = -1006797555 ^ -913765775 ^ -239568859 ^ -70512807;
         _temp_14.concat([_temp_13,_temp_12,_temp_11,_temp_1,_temp_1,_temp_10,_temp_9,_temp_8,_temp_2,_temp_2,_temp_7,_temp_6,_temp_5,_temp_3,_temp_3,_temp_3,_temp_4,_temp_4,0x2BFCC8EB ^ -973117862 ^ 0x4F3A8051 ^ -1590087967,0x6AD05781 ^ 0x63B26F93 ^ -1049976401 ^ -938960451]);
      }
      
      public function adjustContrast(param1:Number = 0, param2:Number = NaN, param3:Number = NaN) : void
      {
         if(isNaN(param2))
         {
            param2 = param1;
         }
         if(isNaN(param3))
         {
            param3 = param1;
         }
         param1 += -736044314 ^ -729951760 ^ 0x2A470A55 ^ 0x2A1A0142;
         param2 += -154722123 ^ -100012245 ^ -2041211247 ^ -1969530610;
         param3 += -1769051198 ^ 0x79471B03 ^ -1664561724 ^ 0x7301BD04;
         var _temp_13:* = this;
         var _temp_12:* = param1;
         var _temp_1:* = 0x24F51E57 ^ -596006600 ^ -1849237016 ^ 0x694A5687;
         var _temp_11:* = (-1925052213 ^ -259971620 ^ 0x3468B217 ^ 0x49AB9F80) * ((-264020201 ^ -1242670117 ^ -918227745 ^ -1930825710) - param1);
         var _temp_10:* = -1387155083 ^ -1795049244 ^ 0x78134228 ^ 0x40434BB9;
         var _temp_9:* = param2;
         var _temp_2:* = 0x4AF4F38A ^ 0x2BEA04F3 ^ 0x716692D9 ^ 0x107865A0;
         var _temp_8:* = (0x6E8F1C0D ^ 0x3AFD9003 ^ -1638967208 ^ -901917482) * ((0x026509FC ^ 0x01D2D8F8 ^ 0x713665E0 ^ 0x7281B4E5) - param2);
         var _temp_3:* = 0x27CB794C ^ -1280143973 ^ -1187832969 ^ 0x2D4AEFA0;
         var _temp_7:* = param3;
         var _temp_6:* = 0x1A78D679 ^ 0x4066346D ^ -304167429 ^ -1212143633;
         var _temp_5:* = (-759531505 ^ 0x695728ED ^ -1108921775 ^ 0x060A6233) * ((0x2C261D67 ^ -2067866381 ^ -1463591712 ^ 0x5B9D75) - param3);
         var _temp_4:* = -927076329 ^ -1863998703 ^ -1556790174 ^ -76736668;
         _temp_13.concat([_temp_12,_temp_1,_temp_1,_temp_1,_temp_11,_temp_10,_temp_9,_temp_2,_temp_2,_temp_8,_temp_3,_temp_3,_temp_7,_temp_6,_temp_5,_temp_4,_temp_4,_temp_4,-1023849942 ^ -593804927 ^ 0x6926824F ^ 0x774489E5,-707527747 ^ -719335532 ^ -253360485 ^ -265669966]);
      }
      
      public function adjustBrightness(param1:Number = 0, param2:Number = NaN, param3:Number = NaN) : void
      {
         if(isNaN(param2))
         {
            param2 = param1;
         }
         if(isNaN(param3))
         {
            param3 = param1;
         }
         var _temp_13:* = this;
         var _temp_12:* = 0x53ECA396 ^ 0x0C8243A8 ^ -344044875 ^ -1273976182;
         var _temp_1:* = 0x13F38AD9 ^ -1959589451 ^ -1849569370 ^ 0x09014CCA;
         var _temp_11:* = param1;
         var _temp_10:* = 0x5256BAAB ^ -284528110 ^ 0x1D6836AD ^ -1607139820;
         var _temp_9:* = 0x3868EE93 ^ -1458723537 ^ -386551762 ^ 0x7990FB93;
         var _temp_2:* = 0x111EEA39 ^ -1888800711 ^ -1682227200 ^ 0x05CE9A00;
         var _temp_8:* = param2;
         var _temp_3:* = -395081091 ^ -1797406262 ^ 0x69C9490E ^ 0x156702B9;
         var _temp_7:* = 0x22165109 ^ -133871505 ^ 0x46CADCCB ^ -1663449684;
         var _temp_6:* = -1155407767 ^ 0x0C5A9259 ^ 0x606CF727 ^ -686324457;
         var _temp_5:* = param3;
         var _temp_4:* = 0x16C7B56E ^ 0x78B2A7A0 ^ 0x13F846A5 ^ 0x7D8D546B;
         _temp_13.concat([_temp_12,_temp_1,_temp_1,_temp_1,_temp_11,_temp_10,_temp_9,_temp_2,_temp_2,_temp_8,_temp_3,_temp_3,_temp_7,_temp_6,_temp_5,_temp_4,_temp_4,_temp_4,-171347294 ^ -1627211263 ^ 0x14A190C2 ^ 0x7E6A5860,-2077835384 ^ -911326552 ^ -2022621170 ^ -889602770]);
      }
      
      public function toGreyscale(param1:Number = 0.212671, param2:Number = 0.71516, param3:Number = 0.072169) : void
      {
         var _temp_14:* = this;
         var _temp_13:* = param1;
         var _temp_12:* = param2;
         var _temp_11:* = param3;
         var _temp_1:* = -1132424896 ^ 0x6C2E7EF7 ^ 0x7525E2A8 ^ -1517613793;
         var _temp_10:* = param1;
         var _temp_9:* = param2;
         var _temp_8:* = param3;
         var _temp_2:* = -1061182560 ^ -1037311813 ^ -443481048 ^ -419084493;
         var _temp_7:* = param1;
         var _temp_6:* = param2;
         var _temp_5:* = param3;
         var _temp_3:* = 0x168693B9 ^ 0x6CE32385 ^ 0x69024A9B ^ 0x1367FAA7;
         var _temp_4:* = -179070513 ^ 0x0EA1A882 ^ 0x176BA557 ^ -325479398;
         _temp_14.concat([_temp_13,_temp_12,_temp_11,_temp_1,_temp_1,_temp_10,_temp_9,_temp_8,_temp_2,_temp_2,_temp_7,_temp_6,_temp_5,_temp_3,_temp_3,_temp_3,_temp_4,_temp_4,-1328156330 ^ -1046601800 ^ -483127390 ^ -1837113011,-631398486 ^ 0x545E5A12 ^ -925057277 ^ 0x46DF7ABB]);
      }
      
      public function adjustHue(param1:Number = 0) : void
      {
         param1 *= RAD;
         var _loc2_:Number = Math.cos(param1);
         var _loc3_:Number = Math.sin(param1);
         var _temp_14:* = this;
         var _temp_13:* = LUMA_R + _loc2_ * ((-1282753209 ^ -565151972 ^ 0x29D16D3A ^ 0x440BA760) - LUMA_R) + _loc3_ * -LUMA_R;
         var _temp_12:* = LUMA_G + _loc2_ * -LUMA_G + _loc3_ * -LUMA_G;
         var _temp_11:* = LUMA_B + _loc2_ * -LUMA_B + _loc3_ * ((0x49F297D7 ^ 0x69C128B6 ^ 0x411B5FDE ^ 0x6128E0BE) - LUMA_B);
         var _temp_1:* = 0x2616F7BD ^ -1793924690 ^ -207862933 ^ 0x40985578;
         var _temp_10:* = LUMA_R + _loc2_ * -LUMA_R + _loc3_ * _95da7f1147c669197db81295._6371735dc9287bd2d9618c1e("勧剪勼勰創券勞劐勬勫刨勴剄劉剥創劉剋判刚剙剻剾勞","剃剤刅努刈剳剥刿剽劣刓刍勈劚勨刣");
         var _temp_9:* = LUMA_G + _loc2_ * ((-567794904 ^ 0x3F938C68 ^ 0x6EA4679E ^ -1893742369) - LUMA_G) + _loc3_ * _39d7d82359bf8046fe8ef6c4._ed4a735c5a6981f99dda5b73("掁挼揘损捓捋掿揔掼挴捩揃捊揤挧捜挩控掩挎掺捲揞挘","插挜掀捃揥掼掉揓捘掐掁据挄揉持掜");
         var _temp_8:* = LUMA_B + _loc2_ * -LUMA_B + _loc3_ * _433075a5d49397e40222eeae._9417d5d828724209ec5cfbb1("ჷუႫ့ဦბ၇ဏႰဪၴႆჼა၄ႀႼ႟კစ႖ო၍Ⴈ","၈ာဎညႡ჊Ⴌ჎ႸႏၰႭ႙၎჆ၟ");
         var _temp_2:* = 0x51349277 ^ -388230298 ^ -431248496 ^ 0x5FA32A81;
         var _temp_7:* = LUMA_R + _loc2_ * -LUMA_R + _loc3_ * -((0x25C5B4AC ^ 0x6ADA2F91 ^ -366106639 ^ -1523434291) - LUMA_R);
         var _temp_6:* = LUMA_G + _loc2_ * -LUMA_G + _loc3_ * LUMA_G;
         var _temp_5:* = LUMA_B + _loc2_ * ((-1238992039 ^ 0x721962ED ^ 0x06B42DB9 ^ -1031064564) - LUMA_B) + _loc3_ * LUMA_B;
         var _temp_3:* = -1343354171 ^ -961843271 ^ -2044309958 ^ -278713530;
         var _temp_4:* = -402445979 ^ 0x70C1F13A ^ 0x299FF98F ^ -1319296560;
         _temp_14.concat([_temp_13,_temp_12,_temp_11,_temp_1,_temp_1,_temp_10,_temp_9,_temp_8,_temp_2,_temp_2,_temp_7,_temp_6,_temp_5,_temp_3,_temp_3,_temp_3,_temp_4,_temp_4,-1669332782 ^ 0x63A5ECAE ^ -430323236 ^ 0x197C25A1,0x01E9BE3E ^ 0x720ECD68 ^ -1404011598 ^ -541652764]);
      }
      
      public function rotateHue(param1:Number = 0) : void
      {
         this.initHue();
         this.concat(this.preHue.matrix);
         this.rotateBlue(param1);
         this.concat(this.postHue.matrix);
      }
      
      public function luminance2Alpha() : void
      {
         var _temp_14:* = this;
         var _temp_1:* = 0x01E300FA ^ 0x37085CCC ^ -1052440282 ^ -139569904;
         var _temp_13:* = 0x0B5C5074 ^ -603031764 ^ 0x624F1455 ^ -1256377587;
         var _temp_12:* = -1761778352 ^ 0x46D62A8B ^ -1449502942 ^ 0x79B11806;
         var _temp_2:* = 0x3B4EF123 ^ 0x72C057EC ^ -70793450 ^ -1303813671;
         var _temp_11:* = 0x2F8997C8 ^ 0x1160FD7A ^ 0x1A2C3EF3 ^ 0x24C55441;
         var _temp_10:* = 0x7D454132 ^ 0x30273334 ^ 0x3D14E9C7 ^ 0x70769B3E;
         var _temp_3:* = -1226690527 ^ 0x73C423C3 ^ -601209111 ^ 0x190C550B;
         var _temp_9:* = 0x1BEB5727 ^ 0x6C9B752E ^ -538291013 ^ -1466272078;
         var _temp_8:* = 0x5608920B ^ -1728047339 ^ -294555132 ^ 0x2179F7E5;
         var _temp_7:* = LUMA_R;
         var _temp_6:* = LUMA_G;
         var _temp_5:* = LUMA_B;
         var _temp_4:* = -1909714092 ^ -1949313965 ^ -375528929 ^ -327277288;
         _temp_14.concat([_temp_1,_temp_1,_temp_1,_temp_13,_temp_12,_temp_2,_temp_2,_temp_2,_temp_11,_temp_10,_temp_3,_temp_3,_temp_3,_temp_9,_temp_8,_temp_7,_temp_6,_temp_5,_temp_4,_temp_4]);
      }
      
      public function adjustAlphaContrast(param1:Number = 0) : void
      {
         param1 += 0x0A0B0676 ^ 0x789B3DA2 ^ -298104288 ^ -1666485771;
         var _temp_10:* = this;
         var _temp_9:* = -1390373033 ^ 0x28681EC9 ^ 0x3A0327D1 ^ -1085559218;
         var _temp_1:* = -810230356 ^ 0x3DFF95D5 ^ 0x4E420F48 ^ -1140242639;
         var _temp_2:* = -554174613 ^ 0x557C69FA ^ 0x65C916EE ^ -297629569;
         var _temp_8:* = 0x4DFA48F6 ^ 0x11CDC68E ^ -811230927 ^ -1819142328;
         var _temp_3:* = -471801725 ^ 0x35C71199 ^ -1197099827 ^ 0x6E8245D7;
         var _temp_4:* = -569086727 ^ 0x31AA0FA6 ^ 0x2FAF5A62 ^ -1072613059;
         var _temp_7:* = -777383197 ^ -1816715752 ^ 0x67FE894D ^ 0x25E385B7;
         var _temp_5:* = 0x40698512 ^ -1610307358 ^ -284055742 ^ 0x0F7C8AB2;
         var _temp_6:* = 0x682D8AD7 ^ -269890775 ^ 0x451D04D6 ^ -1025948376;
         _temp_10.concat([_temp_9,_temp_1,_temp_1,_temp_1,_temp_2,_temp_2,_temp_8,_temp_3,_temp_3,_temp_3,_temp_4,_temp_4,_temp_7,_temp_5,_temp_5,_temp_5,_temp_6,_temp_6,param1,(-926991056 ^ 0x48C4598C ^ -1482438690 ^ 0x27D8A3E2) * ((-966391503 ^ 0x46AE4C71 ^ 0x061BD460 ^ -2032955103) - param1)]);
      }
      
      public function colorize(param1:int, param2:Number = 1) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         _loc3_ = (param1 >> (-1807776563 ^ 0x67902BAC ^ -1402140194 ^ 0x5FC2A6AF) & (0x078CBB3D ^ 0x0697CFCB ^ -81846794 ^ -100374017)) / (0x178F8514 ^ -1026572743 ^ 0x528FBD9B ^ -2016442807);
         _loc4_ = (param1 >> (-1755024626 ^ 0x0C1639D2 ^ -595960557 ^ 0x470817C7) & (-1827087687 ^ 0x6E34D3EF ^ -1202513969 ^ 0x457F1E66)) / (0x28157E12 ^ 0x36B7FDBE ^ -1146701474 ^ -1526449651);
         _loc5_ = (param1 & (-1668729661 ^ 0x48B0310F ^ -1314686742 ^ 0x659A7DD9)) / (0x44B9B14C ^ -928153631 ^ 0x65B6AE25 ^ -375234441);
         _loc6_ = (0x6C271957 ^ 0x3B615BDF ^ -1989364124 ^ -567610131) - param2;
         var _temp_14:* = this;
         var _temp_13:* = _loc6_ + param2 * _loc3_ * LUMA_R;
         var _temp_12:* = param2 * _loc3_ * LUMA_G;
         var _temp_11:* = param2 * _loc3_ * LUMA_B;
         var _temp_1:* = -1010875917 ^ -1878753743 ^ 0x65904793 ^ 0x362B7851;
         var _temp_10:* = param2 * _loc4_ * LUMA_R;
         var _temp_9:* = _loc6_ + param2 * _loc4_ * LUMA_G;
         var _temp_8:* = param2 * _loc4_ * LUMA_B;
         var _temp_2:* = -344878335 ^ 0x07DE90C2 ^ -1415250555 ^ 0x470BFE46;
         var _temp_7:* = param2 * _loc5_ * LUMA_R;
         var _temp_6:* = param2 * _loc5_ * LUMA_G;
         var _temp_5:* = _loc6_ + param2 * _loc5_ * LUMA_B;
         var _temp_3:* = 0x40C040C7 ^ -469269812 ^ 0x7E41B7A2 ^ -628722263;
         var _temp_4:* = 0x384E5372 ^ -1634249533 ^ 0x0D09DE1E ^ -1412376145;
         _temp_14.concat([_temp_13,_temp_12,_temp_11,_temp_1,_temp_1,_temp_10,_temp_9,_temp_8,_temp_2,_temp_2,_temp_7,_temp_6,_temp_5,_temp_3,_temp_3,_temp_3,_temp_4,_temp_4,0x6CE6C25C ^ -1778434362 ^ 0x0297E93A ^ -74574431,-355406319 ^ 0x5B770492 ^ 0x6AF1B6B6 ^ -615097291]);
      }
      
      public function setChannels(param1:int = 1, param2:int = 2, param3:int = 4, param4:int = 8) : void
      {
         var _loc5_:Number = (((param1 & (-904487402 ^ -634481680 ^ 0x2500D78B ^ 0x3538DA6C)) == (0x7FB038E5 ^ 0x3325E79D ^ -1831460325 ^ -565969566) ? 0x68E4F44D ^ 0x1950E353 ^ -922267268 ^ -1196210589 : ((0x48AB3475 ^ 0x4AF5ED64 ^ 0x41AE58ED ^ 0x43F081FC) + ((param1 & (0x19EAFCF0 ^ 0x3F677121 ^ -1713082271 ^ -1083572814)) == (0x03C013BF ^ 0x32C73CA7 ^ 0x220D1321 ^ 0x130A3C3B)) ? -2062190078 ^ 0x3E8B7064 ^ -1606891443 ^ 0x1BA6C22A : -1058704999 ^ -709092575 ^ -660090507 ^ -838943795)) + ((param1 & (0x7ABCC6BD ^ 0x0F4DB003 ^ -110666184 ^ -1936316286)) == (-1268546306 ^ 0x44FA4D78 ^ 0x7F00BD17 ^ -1885768555)) ? 0x4E15D0FF ^ -2020580085 ^ 0x19C57AF4 ^ -801059071 : 0x22CC935A ^ 0x59591F43 ^ -971557627 ^ -1115506404) + ((param1 & (-1693846947 ^ 0x0D82EBBF ^ -1875744984 ^ 0x06B97EC2)) == (-1250586518 ^ -1608521721 ^ 0x27938FA0 ^ 0x32F9F7C5)) ? 0x3FCAD10A ^ 0x7CDDB62C ^ 0x3775B350 ^ 0x7462D477 : -1111711173 ^ 0x67392458 ^ 0x4D946C1C ^ -1760433537;
         if(_loc5_ > (0x739B2369 ^ -473781256 ^ -2071240785 ^ 0x14D2D73E))
         {
            _loc5_ = (0x5C05BA12 ^ -1972572776 ^ -21231720 ^ 0x28D55013) / _loc5_;
         }
         var _loc6_:Number = (((param2 & (-1828735831 ^ -376907556 ^ -1425373533 ^ -797054249)) == (-957630223 ^ 0x1F2DE708 ^ 0x2E25D720 ^ -136083240) ? -1627923171 ^ 0x13C3C190 ^ -1784675789 ^ 0x18941EBF : ((0x74EDC3A9 ^ -1678897821 ^ -681455093 ^ 0x38621CC1) + ((param2 & (0x55582F91 ^ -2115927291 ^ -1432113648 ^ 0x7E1A0286)) == (-595317556 ^ -1232063904 ^ 0x135A7073 ^ 0x794E6EDD)) ? -1024516795 ^ 0x1950B04E ^ -168389820 ^ 0x2E493E4E : 0x2EE5A131 ^ 0x1663D6AE ^ -95942273 ^ -1026654496)) + ((param2 & (-1937077752 ^ 0x635091C6 ^ 0x5B603227 ^ -1262867987)) == (-13378299 ^ 0x2C46D271 ^ -1733692113 ^ 0x4BDCFA5F)) ? -146831918 ^ -1014478153 ^ -66808625 ^ -927769685 : 0x746BED78 ^ 0x5F3EF630 ^ 0x69CA83DE ^ 0x429F9896) + ((param2 & (0x1C3365C4 ^ 0x02050B6D ^ 0x61F10B75 ^ 0x7FC765D4)) == (0x72A36D3B ^ 0x4742A605 ^ -2128385108 ^ -1262313318)) ? 0x57A15DC6 ^ 0x682793DA ^ -1198239901 ^ -2028830338 : -1663295131 ^ 0x48A5F3C0 ^ -997126580 ^ 0x10E8DCE9;
         if(_loc6_ > (-1493007652 ^ -2140826745 ^ 0x50A1DC56 ^ 0x77C6CD0D))
         {
            _loc6_ = (-888643400 ^ 0x1C532BAE ^ 0x4C5EFB29 ^ -1694126018) / _loc6_;
         }
         var _loc7_:Number = (((param3 & (0x2A401EFD ^ -674272271 ^ 0x242738A1 ^ -643281492)) == (-1550870344 ^ -1323998886 ^ -1816374318 ^ -2128172495) ? 0x547A287A ^ -399832607 ^ 0x630BE936 ^ -547698516 : ((-1409582465 ^ -871837028 ^ -178267107 ^ -1834191618) + ((param3 & (0x1BE843BB ^ -1064472175 ^ 0x341EF77E ^ -277101226)) == (-1769655861 ^ -1712411205 ^ 0x154A0521 ^ 0x1A219953)) ? 0x7AAF5086 ^ 0xEC8896 ^ 0x490EF4CB ^ 0x334D2CDA : -1112683168 ^ -2032481277 ^ -1443416830 ^ -1837091743)) + ((param3 & (-444831891 ^ 0x30F7A5C9 ^ -457865447 ^ 0x313E45B9)) == (0x0E6348DF ^ -951131725 ^ 0x2619AEAF ^ -281802809)) ? -829294386 ^ 0x49F37ED5 ^ 0x1CF13ED5 ^ -1684817713 : -1466779704 ^ -1209083165 ^ 0x5C6F656C ^ 0x43130847) + ((param3 & (0x0E61001A ^ -51293363 ^ 0x01A32B3C ^ -214730653)) == (-1266869968 ^ 0x0487999E ^ -1282937868 ^ 0x037D6B52)) ? 0x4280C8F9 ^ 0x52ACD059 ^ -1713638490 ^ -1980241145 : 0x333D88F1 ^ 0x23DAAE84 ^ 0x65CB965A ^ 0x752CB02F;
         if(_loc7_ > (0x22C4A2A6 ^ 0x161E5469 ^ 0x6E57F6EB ^ 0x5A8D0024))
         {
            _loc7_ = (-1310314234 ^ 0x6082BF3C ^ 0x71007457 ^ -1603995028) / _loc7_;
         }
         var _loc8_:Number = (((param4 & (-671061672 ^ -1003950067 ^ -910014217 ^ -706031197)) == (0x79ED4A26 ^ 0x02160520 ^ 0x1911CB58 ^ 0x62EA845F) ? -163948298 ^ -285425911 ^ -1512985430 ^ -1122546860 : ((0x6A546D7A ^ -200780009 ^ 0x5EE079DC ^ -1061403727) + ((param4 & (-61436041 ^ -1840574333 ^ 0x161AA500 ^ 0x78073AF6)) == (-147431168 ^ 0x6E223C9D ^ 0x7C358F51 ^ -450768178)) ? -806429069 ^ 0x7CC747AB ^ -421472768 ^ 0x55C94FD9 : -924739300 ^ -520283070 ^ 0x3FCF0B20 ^ 0x17D38E7E)) + ((param4 & (0x64359BA0 ^ -1727661863 ^ 0x24F9930F ^ -641077134)) == (-281009662 ^ -1819286424 ^ -56422074 ^ -2140350680)) ? -974015293 ^ 0x586E0EF5 ^ 0x75A4EB10 ^ -398765785 : -776708334 ^ 0x1EF4A468 ^ -1406230007 ^ 0x636E5973) + ((param4 & (-35502766 ^ 0x55FE0ED3 ^ -181760068 ^ 0x5D36C435)) == (0x3A32AE10 ^ 0x2838EE2D ^ 0x70C110D9 ^ 0x62CB50EC)) ? -1790154870 ^ -1002356401 ^ -1023797650 ^ -1812516694 : -285079828 ^ -10449119 ^ -469014427 ^ -194387544;
         if(_loc8_ > (0x02613A65 ^ -1299279079 ^ -1712111970 ^ 0x291C97E2))
         {
            _loc8_ = (-781917529 ^ -2034395707 ^ -691968605 ^ -2129128768) / _loc8_;
         }
         this.concat([(param1 & (-437648387 ^ 0x5FE84628 ^ 0x1093D6F1 ^ -1433300187)) == (0x3F4D5C99 ^ 0x37861E24 ^ 0x36773003 ^ 0x3EBC72BF) ? _loc5_ : -1051840193 ^ -593161922 ^ -145396918 ^ -356627637,(param1 & (-1538911114 ^ -1428124700 ^ 0x3A4CDB0F ^ 0x34EA449F)) == (0x6E665AED ^ -800983725 ^ -2015716328 ^ 0x39FD33A4) ? _loc5_ : 0x780412EE ^ -1104713305 ^ 0x09BA92C4 ^ -811996787,(param1 & (0x2425C55F ^ -1364320263 ^ -1156051640 ^ 0x3193D7EA)) == (-1944583893 ^ -1724448199 ^ 0x6E26969E ^ 0x7B099588) ? _loc5_ : -1417639164 ^ -2088604298 ^ 0x1EC55F21 ^ 0x36C7B953,(param1 & (-1585707553 ^ -1469149724 ^ 0x0DEB5767 ^ 0x04F9DF54)) == (0x60334CE0 ^ 0x3B9F35C4 ^ -1148194526 ^ -534542322) ? _loc5_ : 0x3CD3AF20 ^ 0x71F07E1B ^ 0x4F40C1DE ^ 0x026310E5,-248212955 ^ 0x1E3D74E5 ^ -660392150 ^ 0x37AAD1EA,(param2 & (0x3BDFE844 ^ 0x4257AC70 ^ -969820870 ^ -1078333169)) == (0x494B7E5F ^ 0x1C95CE9A ^ -57539053 ^ -1454590249) ? _loc6_ : 0x5428A8DE ^ -1284600532 ^ 0x19EEEC22 ^ -22492720,(param2 & (-1600240938 ^ -406737624 ^ 0x4AC236F5 ^ 0x0D9DD909)) == (0x7A93F231 ^ 0x33E67648 ^ 0x3D0F7AD4 ^ 0x747AFEAF) ? _loc6_ : -1628621140 ^ -1138228795 ^ 0x4656A9F4 ^ 0x64939E9D
         ,(param2 & (0x77664207 ^ -1211012323 ^ 0x4757D952 ^ -2015301556)) == (-1288897550 ^ 0x7EAC5FB1 ^ 0x179EE1F5 ^ -635550286) ? _loc6_ : -845694979 ^ -420721154 ^ 0x1FE0DDD5 ^ 0x349B27D6,(param2 & (-1382125916 ^ 0x0BFC1E09 ^ -1689237295 ^ 0x3D323874)) == (0x793F1EEB ^ -1145760198 ^ -1957101718 ^ 0x49D2F7B3) ? _loc6_ : -1823294801 ^ -1761291165 ^ 0x43DCDDB4 ^ 0x478AB378,0x759E99AC ^ -506080926 ^ 0x5A02A516 ^ -834015784,(param3 & (0x3AD7DF8E ^ 0x4E53F9D1 ^ 0x65513194 ^ 0x11D517CA)) == (0x6E45EA83 ^ 0x275D601B ^ 0x2F9CDEFA ^ 0x66845463) ? _loc7_ : 0x372A95AA ^ 0x40D86674 ^ 0x7167AB91 ^ 0x0695584F,(param3 & (0x69075746 ^ -1704794110 ^ -1560319319 ^ 0x519AD5EF)) == (-1602937696 ^ 0x13E2C15E ^ -954438915 ^ 0x748BB701) ? _loc7_ : 0x1B035503 ^ -115966564 ^ 0x035D62A7 ^ -515356104,(param3 & (-481261238 ^ -1281940850 ^ -414103207 ^ -1214848359)) == (0x2E3BA890 ^ -1649892257 ^ -168014032 ^ 0x466F43FB) ? _loc7_ : 0x4285F261 ^ -696470789 ^ 0x11B9D04E ^ -2059366188,(param3 & (-1467531194 ^ 0x76A7D85B ^ 0x6AFE78C6 ^ -1260461869)) == (0x319A1706 ^ -1102261546 ^ -1023261002 ^ 0x4CD4836E) ? _loc7_ : -819871525 ^ 0x14F1E6EE ^ -1837654510 ^ 0x49A7B827
         ,-2145963436 ^ -211800182 ^ 0x37C1D285 ^ 0x44B6CF5B,(param4 & (-1982127466 ^ 0x51DD4720 ^ -890144870 ^ 0x12F7122D)) == (0x79930257 ^ 0x23583A85 ^ 0x76F0EFC1 ^ 0x2C3BD712) ? _loc8_ : -816630940 ^ -3048369 ^ 0x17B1BE6C ^ 0x2733F147,(param4 & (-841983045 ^ 0x55A591C7 ^ -1294323634 ^ 0x2AAFFA30)) == (0x2EBC83E3 ^ -1505620055 ^ 0x0A39E405 ^ -2100860851) ? _loc8_ : -137325070 ^ -1866173870 ^ 0x04A84D36 ^ 0x63BCAA96,(param4 & (0x28187956 ^ -1634422814 ^ -537860096 ^ 0x697C3EB0)) == (-2029813231 ^ -264942291 ^ -721078076 ^ -1573652484) ? _loc8_ : -82722732 ^ -374490031 ^ -1149446274 ^ -1446990981,(param4 & (0x4EC06517 ^ 0x5D294DE0 ^ 0x61D0E75F ^ 0x7239CFA0)) == (0x1F2AB33D ^ 0x39279D26 ^ -1368651482 ^ -2006898891) ? _loc8_ : 0x3D37EB8E ^ 0x08A4E82D ^ 0x722E46A8 ^ 0x47BD450B,-145384548 ^ 0x257CAA0E ^ -1032529551 ^ 0x105DE8E3]);
      }
      
      public function blend(param1:ColorMatrix, param2:Number) : void
      {
         var _loc3_:Number = (0x075EB84C ^ -749457452 ^ 0x1DDB30AF ^ -909007050) - param2;
         var _loc4_:int = -20920065 ^ 0x6CA747BC ^ -198278792 ^ 0x66490E3B;
         while(_loc4_ < (0x77D62FBB ^ -2062118203 ^ 0x661311E2 ^ -1798067064))
         {
            this.matrix[_loc4_] = _loc3_ * Number(this.matrix[_loc4_]) + param2 * Number(param1.matrix[_loc4_]);
            _loc4_++;
         }
      }
      
      public function average(param1:Number = 0.3333333333333333, param2:Number = 0.3333333333333333, param3:Number = 0.3333333333333333) : void
      {
         var _temp_14:* = this;
         var _temp_13:* = param1;
         var _temp_12:* = param2;
         var _temp_11:* = param3;
         var _temp_1:* = 0x6A542071 ^ 0x51B9E209 ^ -736078878 ^ -271740518;
         var _temp_10:* = param1;
         var _temp_9:* = param2;
         var _temp_8:* = param3;
         var _temp_2:* = 0x548CBDCB ^ -406437142 ^ 0x107579F5 ^ -1556117804;
         var _temp_7:* = param1;
         var _temp_6:* = param2;
         var _temp_5:* = param3;
         var _temp_3:* = -1079212660 ^ 0x379D2656 ^ 0x7003B5F1 ^ -130935253;
         var _temp_4:* = -21257551 ^ 0x2CEDB790 ^ -269046956 ^ 0x3DA0BE75;
         _temp_14.concat([_temp_13,_temp_12,_temp_11,_temp_1,_temp_1,_temp_10,_temp_9,_temp_8,_temp_2,_temp_2,_temp_7,_temp_6,_temp_5,_temp_3,_temp_3,_temp_3,_temp_4,_temp_4,-690125103 ^ 0x14C86561 ^ -390015972 ^ 0x2AD537AD,-2039407346 ^ 0x68CB8B56 ^ -1061521076 ^ 0x2E00EF14]);
      }
      
      public function threshold(param1:Number, param2:Number = 256) : void
      {
         var _temp_17:* = this;
         var _temp_16:* = LUMA_R * param2;
         var _temp_15:* = LUMA_G * param2;
         var _temp_14:* = LUMA_B * param2;
         var _temp_13:* = -1382791014 ^ 0x62EDB8F9 ^ -1585306425 ^ 0x6EFBD4A4;
         var _temp_12:* = -(param2 - 1) * param1;
         var _temp_11:* = LUMA_R * param2;
         var _temp_10:* = LUMA_G * param2;
         var _temp_9:* = LUMA_B * param2;
         var _temp_8:* = -469662637 ^ 0x15373AF7 ^ 0x0CC0AAD6 ^ -34204558;
         var _temp_7:* = -(param2 - 1) * param1;
         var _temp_6:* = LUMA_R * param2;
         var _temp_5:* = LUMA_G * param2;
         var _temp_4:* = LUMA_B * param2;
         var _temp_3:* = 0x3F3BFDAA ^ -369515594 ^ 0x25A1AD05 ^ -211553511;
         var _temp_2:* = -(param2 - 1) * param1;
         var _temp_1:* = 0x21B908AB ^ 0x573667D0 ^ 0x071F8371 ^ 0x7190EC0A;
         _temp_17.concat([_temp_16,_temp_15,_temp_14,_temp_13,_temp_12,_temp_11,_temp_10,_temp_9,_temp_8,_temp_7,_temp_6,_temp_5,_temp_4,_temp_3,_temp_2,_temp_1,_temp_1,_temp_1,0x74CE4FE5 ^ -1225932707 ^ -609549980 ^ 0x19888EDD,0x760ECF49 ^ 0x0B69EBCF ^ 0x375F774C ^ 0x4A3853CA]);
      }
      
      public function threshold_rgb(param1:Number, param2:Number = 256) : void
      {
         var _temp_13:* = this;
         var _temp_12:* = param2;
         var _temp_1:* = -1126588009 ^ 0x39BBFC2A ^ -417561991 ^ 0x627EDFC4;
         var _temp_11:* = -(param2 - 1) * param1;
         var _temp_10:* = 0x6C7BC27E ^ -565681995 ^ -736143730 ^ 0x662CF445;
         var _temp_9:* = param2;
         var _temp_2:* = 0x6EB5624C ^ 0x21AACF29 ^ 0x3DA3C78C ^ 0x72BC6AE9;
         var _temp_8:* = -(param2 - 1) * param1;
         var _temp_3:* = -1208357509 ^ -1762925152 ^ 0x464B874B ^ 0x67598F90;
         var _temp_7:* = param2;
         var _temp_6:* = 0x7EC45C80 ^ -329708829 ^ -591608222 ^ 0x4E219001;
         var _temp_5:* = -(param2 - 1) * param1;
         var _temp_4:* = 0x3F0AF5F7 ^ -1506843076 ^ 0x6243EE4F ^ -77169276;
         _temp_13.concat([_temp_12,_temp_1,_temp_1,_temp_1,_temp_11,_temp_10,_temp_9,_temp_2,_temp_2,_temp_8,_temp_3,_temp_3,_temp_7,_temp_6,_temp_5,_temp_4,_temp_4,_temp_4,0x35675E7E ^ -55155623 ^ -1687830375 ^ 0x52B4FABF,0x398F41F5 ^ -409779452 ^ -796132397 ^ 0x0E97F922]);
      }
      
      public function desaturate() : void
      {
         var _temp_14:* = this;
         var _temp_13:* = LUMA_R;
         var _temp_12:* = LUMA_G;
         var _temp_11:* = LUMA_B;
         var _temp_1:* = -435388222 ^ -1338123852 ^ -972919455 ^ -1875692521;
         var _temp_10:* = LUMA_R;
         var _temp_9:* = LUMA_G;
         var _temp_8:* = LUMA_B;
         var _temp_2:* = -681649831 ^ -1874659060 ^ 0x1F45CB29 ^ 0x5859EB7C;
         var _temp_7:* = LUMA_R;
         var _temp_6:* = LUMA_G;
         var _temp_5:* = LUMA_B;
         var _temp_3:* = 0x792D2E54 ^ 0x12DDE3AD ^ 0x3630740B ^ 0x5DC0B9F2;
         var _temp_4:* = 0xABD46A ^ 0x2226479C ^ 0x3014AE57 ^ 0x12993DA1;
         _temp_14.concat([_temp_13,_temp_12,_temp_11,_temp_1,_temp_1,_temp_10,_temp_9,_temp_8,_temp_2,_temp_2,_temp_7,_temp_6,_temp_5,_temp_3,_temp_3,_temp_3,_temp_4,_temp_4,0x2A9E73D3 ^ -2076484561 ^ -1323684887 ^ 0x1FBF0414,-351378618 ^ -419838343 ^ -556036750 ^ -752080819]);
      }
      
      public function randomize(param1:Number = 1, param2:Boolean = false) : void
      {
         var _loc3_:Number = (-499785876 ^ 0x0E1F963D ^ 0x67CB10E4 ^ -1948165708) - param1;
         var _loc4_:Number = _loc3_ + param1 * (Math.random() - Math.random());
         var _loc5_:Number = param1 * (Math.random() - Math.random());
         var _loc6_:Number = param1 * (Math.random() - Math.random());
         var _loc7_:Number = param1 * (0x5B6C7A86 ^ -235238421 ^ -595592693 ^ 0x76E90B99) * (Math.random() - Math.random());
         var _loc8_:Number = param1 * (Math.random() - Math.random());
         var _loc9_:Number = _loc3_ + param1 * (Math.random() - Math.random());
         var _loc10_:Number = param1 * (Math.random() - Math.random());
         var _loc11_:Number = param1 * (0x4AE415D7 ^ 0x25852848 ^ 0x6FA2F399 ^ 0xC3CEF9) * (Math.random() - Math.random());
         var _loc12_:Number = param1 * (Math.random() - Math.random());
         var _loc13_:Number = param1 * (Math.random() - Math.random());
         var _loc14_:Number = _loc3_ + param1 * (Math.random() - Math.random());
         var _loc15_:Number = param1 * (0x734FC107 ^ 0x5E308051 ^ -974259843 ^ -393037612) * (Math.random() - Math.random());
         var _temp_17:* = this;
         var _temp_16:* = _loc4_;
         var _temp_15:* = _loc5_;
         var _temp_14:* = _loc6_;
         var _temp_13:* = 0x652E873B ^ -746293162 ^ -1777557906 ^ 0x20A66103;
         var _temp_12:* = _loc7_;
         var _temp_11:* = _loc8_;
         var _temp_10:* = _loc9_;
         var _temp_9:* = _loc10_;
         var _temp_8:* = -1448704768 ^ 0x524FC26E ^ -923363088 ^ 0x331FDF9E;
         var _temp_7:* = _loc11_;
         var _temp_6:* = _loc12_;
         var _temp_5:* = _loc13_;
         var _temp_4:* = _loc14_;
         var _temp_3:* = 0x38A392A4 ^ -16657863 ^ -375708754 ^ 0x2E396333;
         var _temp_2:* = _loc15_;
         var _temp_1:* = -1503262791 ^ -999908990 ^ -498236539 ^ -2142429762;
         _temp_17.concat([_temp_16,_temp_15,_temp_14,_temp_13,_temp_12,_temp_11,_temp_10,_temp_9,_temp_8,_temp_7,_temp_6,_temp_5,_temp_4,_temp_3,_temp_2,_temp_1,_temp_1,_temp_1,-641540126 ^ 0x3D985C98 ^ -1356899627 ^ 0x4B45D9AE,-981716752 ^ -1622490955 ^ 0x380BBC1D ^ 0x623D4C58]);
         if(param2)
         {
            this.normalize();
         }
      }
      
      public function setMultiplicators(param1:Number = 1, param2:Number = 1, param3:Number = 1, param4:Number = 1) : void
      {
         var _temp_10:* = §§findproperty(Array);
         var _temp_9:* = param1;
         var _temp_1:* = 0x63173D52 ^ 0x373E8B71 ^ -1205554004 ^ -334691697;
         var _temp_2:* = -103418896 ^ -855426358 ^ 0x7B307366 ^ 0x4FE6BA5C;
         var _temp_8:* = param2;
         var _temp_3:* = 0x344C216E ^ -644101045 ^ 0x182D14C0 ^ -168101403;
         var _temp_4:* = -63285129 ^ 0x70D176 ^ 0x4A16508B ^ -1235428982;
         var _temp_7:* = param3;
         var _temp_5:* = -1897796242 ^ 0x4478488A ^ 0x271DE7ED ^ -310099447;
         var _temp_6:* = 0x71789051 ^ 0x727E1DD9 ^ -1535640360 ^ -1485737648;
         var _loc5_:Array = new Array(_temp_9,_temp_1,_temp_1,_temp_1,_temp_2,_temp_2,_temp_8,_temp_3,_temp_3,_temp_3,_temp_4,_temp_4,_temp_7,_temp_5,_temp_5,_temp_5,_temp_6,_temp_6,param4,-1656943171 ^ -1695952856 ^ -1443128254 ^ -1372634665);
         this.concat(_loc5_);
      }
      
      public function clearChannels(param1:Boolean = false, param2:Boolean = false, param3:Boolean = false, param4:Boolean = false) : void
      {
         if(param1)
         {
            this.matrix[-1746148211 ^ 0x4745B3E7 ^ 0x49F0901B ^ -1721841807] = this.matrix[0x61EAA554 ^ 0x0477C06F ^ -298176963 ^ -1951970553] = this.matrix[-1138884600 ^ -601961441 ^ -20664764 ^ -1631296943] = this.matrix[0x24001980 ^ -1181813673 ^ -858027968 ^ 0x51556594] = this.matrix[0x02EA1449 ^ 0x25853135 ^ -372880093 ^ -827758501] = 0x366473B0 ^ 0x2F41ECEC ^ 0x59187C05 ^ 0x403DE359;
         }
         if(param2)
         {
            this.matrix[0x58BCAA6B ^ -1944112418 ^ 0x05157EF8 ^ -776542648] = this.matrix[-831735619 ^ 0x5FA5C6BC ^ 0x557787CF ^ -994117176] = this.matrix[-1642733626 ^ -752219386 ^ 0x31CDD357 ^ 0x7CF20790] = this.matrix[0x2C758C78 ^ -399011510 ^ 0x615BB604 ^ -1525044418] = this.matrix[0x64E0FC08 ^ 0x68A57959 ^ -1907749651 ^ -2112910923] = -277310443 ^ 0x14668ECE ^ -867690630 ^ 0x37560DA1;
         }
         if(param3)
         {
            this.matrix[0x2C288D3B ^ 0x528905C2 ^ -94235341 ^ -2067554880] = this.matrix[0x046CEDD0 ^ 0x2D10CD03 ^ -291072351 ^ -941967751] = this.matrix[-825532640 ^ -1039793179 ^ -2028284913 ^ -1948809018] = this.matrix[0x3064DA3E ^ -1261053262 ^ -1989948119 ^ 0x0DD2CDA8] = this.matrix[0x5B4968A2 ^ 0x07D010F5 ^ 0x7A9CF4AE ^ 0x26058CF7] = 0x419FC1B3 ^ -153485854 ^ -793177980 ^ 0x67FF2CD5;
         }
         if(param4)
         {
            this.matrix[-376249476 ^ -767929089 ^ 0x15D60B55 ^ 0x2E7EBCD9] = this.matrix[0x71E011DD ^ 0x6380A4FD ^ 0x480E9E0E ^ 0x5A6E2B3E] = this.matrix[0x15D6A48D ^ -1171312268 ^ 0x50D6C555 ^ -13676355] = this.matrix[0x41C218AB ^ 0x1EE3E5BA ^ 0x100B24EA ^ 0x4F2AD9E9] = this.matrix[-1715797057 ^ -576359324 ^ -504462152 ^ -1510935696] = 0x7FEB3F83 ^ 0x408C2496 ^ -1270370760 ^ -1960790739;
         }
      }
      
      public function thresholdAlpha(param1:Number = 0.5, param2:Number = 256) : void
      {
         var _temp_10:* = this;
         var _temp_9:* = 0x7C46CC5A ^ 0x5F959F5F ^ 0x25076613 ^ 0x06D43517;
         var _temp_1:* = -2136098677 ^ -1010543345 ^ -1825837980 ^ -800980512;
         var _temp_2:* = -1336089829 ^ -376358983 ^ -1732619943 ^ -1049131525;
         var _temp_8:* = -1451146640 ^ 0x551736E6 ^ 0x0FB5D9B0 ^ -215765721;
         var _temp_3:* = -856525827 ^ -996504586 ^ -1611666835 ^ -1752755610;
         var _temp_4:* = -872450015 ^ -960568067 ^ 0x0BC78A98 ^ 0x06861644;
         var _temp_7:* = 0x2C845414 ^ 0x29606502 ^ 0x0D0AE6E7 ^ 0x08EED7F0;
         var _temp_5:* = -1185448528 ^ -1202093693 ^ 0x0F02C9DA ^ 0x0E0C35E9;
         var _temp_6:* = 0x47A70E02 ^ -1657219631 ^ 0x05D623AC ^ -548800385;
         _temp_10.concat([_temp_9,_temp_1,_temp_1,_temp_1,_temp_2,_temp_2,_temp_8,_temp_3,_temp_3,_temp_3,_temp_4,_temp_4,_temp_7,_temp_5,_temp_5,_temp_5,_temp_6,_temp_6,param2,-param2 * param1]);
      }
      
      public function averageRGB2Alpha() : void
      {
         var _temp_14:* = this;
         var _temp_1:* = -2073674425 ^ -873176354 ^ 0x2B618DC1 ^ 0x64F3D258;
         var _temp_13:* = -588614711 ^ 0x7E6F8326 ^ 0x68EB0E45 ^ -898695510;
         var _temp_12:* = -1834855234 ^ -41604241 ^ -79896007 ^ -1810129641;
         var _temp_2:* = 0x740C5969 ^ 0x413603C9 ^ -1933514665 ^ -1174752521;
         var _temp_11:* = 0x46C3697F ^ -84170954 ^ 0x5596B913 ^ -374442150;
         var _temp_10:* = 0x0BAE8ABA ^ -1630239036 ^ 0x2D5F0F26 ^ -1205533785;
         var _temp_3:* = 0x1F75DBE2 ^ -790750923 ^ 0x1CDE5B73 ^ -747267676;
         var _temp_9:* = -1908708453 ^ 0x28395504 ^ 0x4BB1D1E1 ^ -306974850;
         var _temp_8:* = -1303302354 ^ 0x05734CD2 ^ -1389749454 ^ 0x1A087831;
         var _temp_7:* = ONETHIRD;
         var _temp_6:* = ONETHIRD;
         var _temp_5:* = ONETHIRD;
         var _temp_4:* = 0x2925EEDD ^ 0x19483B30 ^ -1986704463 ^ -1174888868;
         _temp_14.concat([_temp_1,_temp_1,_temp_1,_temp_13,_temp_12,_temp_2,_temp_2,_temp_2,_temp_11,_temp_10,_temp_3,_temp_3,_temp_3,_temp_9,_temp_8,_temp_7,_temp_6,_temp_5,_temp_4,_temp_4]);
      }
      
      public function invertAlpha() : void
      {
         var _temp_10:* = this;
         var _temp_9:* = -989427958 ^ 0x67F4DCAB ^ -1245381749 ^ 0x1736A02B;
         var _temp_1:* = 0x1F5E6CC0 ^ 0x5D80FE33 ^ 0x697662EB ^ 0x2BA8F018;
         var _temp_2:* = 0x49E72157 ^ 0x7BC687AD ^ -1498744848 ^ -1802809078;
         var _temp_8:* = -1791668286 ^ -236368687 ^ -1417780835 ^ -811441521;
         var _temp_3:* = 0x7BEF9060 ^ 0x7668C941 ^ -228102386 ^ -2083281;
         var _temp_4:* = 0x17973587 ^ 0x3DFFAF56 ^ -1455724852 ^ -2091647971;
         var _temp_7:* = -1141512641 ^ -892842497 ^ -956543681 ^ -1212029186;
         var _temp_5:* = -172482421 ^ 0x57382BF8 ^ -1393170874 ^ 0x0E75ED35;
         var _temp_6:* = 0x2280DAB1 ^ 0x73F02602 ^ -1804702132 ^ -987852033;
         _temp_10.concat([_temp_9,_temp_1,_temp_1,_temp_1,_temp_2,_temp_2,_temp_8,_temp_3,_temp_3,_temp_3,_temp_4,_temp_4,_temp_7,_temp_5,_temp_5,_temp_5,_temp_6,_temp_6,-1757862651 ^ -1561633264 ^ 0x0D331BE9 ^ -954294525,0x6BED6E88 ^ -2049069354 ^ -328984332 ^ 0x0254D855]);
      }
      
      public function rgb2Alpha(param1:Number = 0.3333333333333333, param2:Number = 0.3333333333333333, param3:Number = 0.3333333333333333) : void
      {
         var _temp_14:* = this;
         var _temp_1:* = -1060791661 ^ -1986955834 ^ 0x461E83E6 ^ 0x0F4A6CB3;
         var _temp_13:* = -1800975564 ^ -407736329 ^ -1130104179 ^ -810099122;
         var _temp_12:* = 0x2AC13A99 ^ -342635161 ^ 0x4DDBA7BF ^ -1937157954;
         var _temp_2:* = 0x393C77FD ^ -1915427850 ^ -1398431094 ^ 0x184D3681;
         var _temp_11:* = -1302023687 ^ -389283420 ^ 0x16AF00F9 ^ 0x4C07B0A4;
         var _temp_10:* = -432134497 ^ 0x298EEEE0 ^ -1657306189 ^ 0x52874B33;
         var _temp_3:* = -188904595 ^ 0x6B53DDE7 ^ 0x250B7531 ^ -1159388229;
         var _temp_9:* = -1136827092 ^ 0x5C50303D ^ 0x5360458B ^ -1290989414;
         var _temp_8:* = -1883658478 ^ 0x792FD12E ^ 0x12FD23C7 ^ -462727932;
         var _temp_7:* = param1;
         var _temp_6:* = param2;
         var _temp_5:* = param3;
         var _temp_4:* = -1884608789 ^ 0x67B8DE64 ^ 0x15B7DCB1 ^ -39574466;
         _temp_14.concat([_temp_1,_temp_1,_temp_1,_temp_13,_temp_12,_temp_2,_temp_2,_temp_2,_temp_11,_temp_10,_temp_3,_temp_3,_temp_3,_temp_9,_temp_8,_temp_7,_temp_6,_temp_5,_temp_4,_temp_4]);
      }
      
      public function setAlpha(param1:Number = 1) : void
      {
         var _temp_10:* = this;
         var _temp_9:* = -2099787839 ^ 0x18DC7B11 ^ -749390620 ^ 0x495E8835;
         var _temp_1:* = -1115388230 ^ -1945915118 ^ 0x24CD8A8C ^ 0x154ABD24;
         var _temp_2:* = 0x285264CF ^ -223098210 ^ -1058111185 ^ 0x1A0F2F7E;
         var _temp_8:* = -1200817208 ^ 0x47236B1F ^ 0x020E1B6C ^ -46036038;
         var _temp_3:* = 0x6EE61EC5 ^ 0x24AFDD7C ^ -1550983940 ^ -373022907;
         var _temp_4:* = -1793841135 ^ 0x3D83F7D2 ^ 0x2CB50176 ^ -2078089547;
         var _temp_7:* = 0x5D2BEC6D ^ 0x0F294D9C ^ 0x4A2B6636 ^ 0x1829C7C6;
         var _temp_5:* = 0x0C8AF632 ^ 0x059F550C ^ -318344826 ^ -468462920;
         var _temp_6:* = -1952121558 ^ -545943138 ^ -1304432581 ^ -420569969;
         _temp_10.concat([_temp_9,_temp_1,_temp_1,_temp_1,_temp_2,_temp_2,_temp_8,_temp_3,_temp_3,_temp_3,_temp_4,_temp_4,_temp_7,_temp_5,_temp_5,_temp_5,_temp_6,_temp_6,param1,-200807116 ^ 0x1EAD659C ^ 0x258510A2 ^ -818964470]);
      }
      
      public function get filter() : ColorMatrixFilter
      {
         return new ColorMatrixFilter(this.matrix);
      }
      
      public function applyFilter(param1:BitmapData, param2:Rectangle = null) : void
      {
         var _loc3_:Point = new Point(param2 ? param2.x : -2002084251 ^ -1881726263 ^ 0x10699D11 ^ 0x171421BD,param2 ? param2.y : -950450436 ^ -1995298672 ^ 0x47519FF7 ^ 0x091AF19B);
         param1.applyFilter(param1,param2 ? param2 : param1.rect,_loc3_,this.filter);
      }
      
      public function concat(param1:Array) : void
      {
         var _loc2_:int = 0x112060EE ^ 0x26A374B1 ^ -963654552 ^ -250816457;
         var _loc3_:int = -1038629490 ^ -2123003199 ^ 0x50E4A3C5 ^ 0x1386EC8A;
         var _loc4_:Array = [];
         var _loc5_:int = -656102037 ^ -636293680 ^ 0x030F1D68 ^ 0x01F95DD3;
         _loc3_ = 0x7FA4586E ^ -1383690962 ^ -1697303391 ^ 0x48F7E1E1;
         while(_loc3_ < (0x2B55E7BD ^ 0x48752FD0 ^ -1400923799 ^ -815836928))
         {
            _loc2_ = 0x2678D781 ^ -1824398436 ^ -1439202891 ^ 0x1F0EB5A8;
            while(_loc2_ < (-1416388165 ^ -1898543841 ^ -1620291685 ^ -1171690694))
            {
               _loc4_[int(_loc5_ + _loc2_)] = Number(param1[_loc5_]) * Number(this.matrix[_loc2_]) + Number(param1[int(_loc5_ + (0x7FFBCEF3 ^ 0x0A8F0091 ^ -554010081 ^ -1416711044))]) * Number(this.matrix[int(_loc2_ + (0x091F4EF8 ^ 0x452C26AA ^ 0x4F02A7A2 ^ 0x0331CFF5))]) + Number(param1[int(_loc5_ + (-922130510 ^ 0x10C2A9A6 ^ 0x499082F5 ^ -1873064733))]) * Number(this.matrix[int(_loc2_ + (-223003993 ^ 0x3DB3D585 ^ -1866543964 ^ 0x5FB8238C))]) + Number(param1[int(_loc5_ + (0x28B01A9D ^ 0x62C2E108 ^ -1460633775 ^ -494762809))]) * Number(this.matrix[int(_loc2_ + (-754506763 ^ -72849758 ^ -1647189535 ^ -1249991495))]) + (_loc2_ == (-1956788225 ^ -921409930 ^ -1577257496 ^ -474655643) ? Number(param1[int(_loc5_ + (-2031841455 ^ 0x2F7F20B5 ^ 0x3B1B5EE2 ^ -1837043454))]) : 0x3D23C94D ^ 0x52E7CB5E ^ 0x04B04EF5 ^ 0x6B744CE6);
               _loc2_++;
            }
            _loc5_ += 0x0964F7F8 ^ 0x441D4A51 ^ 0x47648933 ^ 0x0A1D349F;
            _loc3_++;
         }
         this.matrix = _loc4_;
      }
      
      public function rotateRed(param1:Number = 0) : void
      {
         this.rotateColor(param1,0x0B3D572A ^ -1287377511 ^ 0x7455B676 ^ -869479225,-1026888356 ^ -1087779329 ^ -62104171 ^ -2119205577);
      }
      
      public function rotateGreen(param1:Number = 0) : void
      {
         this.rotateColor(param1,-503848190 ^ 0x06A9546A ^ -1492534217 ^ 0x40570B5F,-859811584 ^ -1076144751 ^ 0x27A11189 ^ 0x54BA151A);
      }
      
      public function rotateBlue(param1:Number = 0) : void
      {
         this.rotateColor(param1,0x1186BFD3 ^ -1172702782 ^ -1970325586 ^ 0x211071BE,0x2B1A63FC ^ -748417138 ^ -920547476 ^ 0x315FE31E);
      }
      
      public function normalize() : void
      {
         var _loc1_:Number = NaN;
         var _loc2_:int = 0x1843F9B6 ^ -190469766 ^ -1059136865 ^ 0x2C388A53;
         var _loc3_:int = -1865834448 ^ -1657028394 ^ 0x5ED2311D ^ 0x532051FB;
         while(_loc3_ < (0x33EBF8CF ^ 0x184F797B ^ -264494598 ^ -610754486))
         {
            _loc1_ = 0x0F98A04C ^ -833665174 ^ 0x62420B7C ^ -1550455718;
            _loc2_ = -1332777772 ^ -69438719 ^ -60821070 ^ -1223889305;
            while(_loc2_ < (0x51E9D319 ^ -802017588 ^ 0x2675FDD5 ^ -1481768956))
            {
               _loc1_ += this.matrix[_loc3_ * (-735195906 ^ -242977537 ^ -1310799003 ^ -1804111007) + _loc2_] * this.matrix[_loc3_ * (-299504612 ^ -702811813 ^ 0x381A142F ^ 0x24096D) + _loc2_];
               _loc2_++;
            }
            _loc1_ = (0x487E866F ^ -354524646 ^ -750988359 ^ 0x719C37CD) / Math.sqrt(_loc1_);
            if(_loc1_ != (-1576525782 ^ -1492861040 ^ -1709824656 ^ -1625638197))
            {
               _loc2_ = 0x0C63885B ^ 0x76C2FC1C ^ -282686185 ^ -1786250928;
               while(_loc2_ < (-833699947 ^ 0x4BE52189 ^ 0x76DB5B61 ^ -210713223))
               {
                  this.matrix[_loc3_ * (-1919117803 ^ -289149587 ^ -687998888 ^ -1247640795) + _loc2_] = this.matrix[_loc3_ * (0x017AD7AF ^ -1029095212 ^ -1551227511 ^ 0x6059B2F7) + _loc2_] * _loc1_;
                  _loc2_++;
               }
            }
            _loc3_++;
         }
      }
      
      public function fitRange() : void
      {
         var _loc1_:Number = NaN;
         var _loc2_:Number = NaN;
         var _loc3_:int = -1348615538 ^ 0x7E561091 ^ 0x114BD3F3 ^ -1065352724;
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Number = NaN;
         var _loc8_:int = -449383192 ^ 0x619161AC ^ 0x751AC6F4 ^ -239250512;
         while(_loc8_ < (0x31F4079E ^ 0x40EAB120 ^ -1635071179 ^ -275481201))
         {
            _loc1_ = 0x0BC13C75 ^ -1456017464 ^ -2119885264 ^ 0x2352CD8D;
            _loc2_ = -1065046926 ^ -1196926430 ^ 0x023C676C ^ 0x7A10913C;
            _loc3_ = -968154934 ^ -397176391 ^ 0x064FF2A0 ^ 0x285743D3;
            while(_loc3_ < (0x5645F930 ^ 0x2FF7A817 ^ 0x554130E2 ^ 0x2CF361C1))
            {
               if(this.matrix[int(_loc8_ * (0x43AF4DE0 ^ -2008553856 ^ -512381819 ^ 0x2A9D07E0) + _loc3_)] < (0x1DBF9AB0 ^ -641927027 ^ 0x16AA4A18 ^ -760666075))
               {
                  _loc1_ += this.matrix[int(_loc8_ * (0x3A012E5F ^ -1318852316 ^ -294364947 ^ 0x65169F93) + _loc3_)];
               }
               else
               {
                  _loc2_ += this.matrix[int(_loc8_ * (0x157791B5 ^ 0x51C15669 ^ 0x5E0C6B84 ^ 0x1ABAAC5D) + _loc3_)];
               }
               _loc3_++;
            }
            _loc4_ = _loc2_ * (0x78AAEC5C ^ -1138662937 ^ 0x26DB7B9D ^ -498010407) - _loc1_ * (-1010056719 ^ -855503329 ^ 0x40357D21 ^ 0x4EFCB230);
            _loc5_ = (-1473372822 ^ -786246193 ^ 0x76B81ED5 ^ 0x0FB4D68F) / _loc4_;
            if(_loc5_ != (0x4DBB2ABF ^ -217783437 ^ 0x381B8AEF ^ -2036055262))
            {
               _loc3_ = -1210118408 ^ 0x07E4DC32 ^ 0x2F4B7752 ^ -1620007528;
               while(_loc3_ < (-221672513 ^ -1814794919 ^ -753794240 ^ -1307581022))
               {
                  this.matrix[int(_loc8_ * (0x2A6A80FF ^ 0x1E14A760 ^ 0x03881D5B ^ 0x37F63AC1) + _loc3_)] = this.matrix[int(_loc8_ * (0x35627C ^ 0x0235C08C ^ 0x51E92DD7 ^ 0x53E98F22) + _loc3_)] * _loc5_;
                  _loc3_++;
               }
            }
            _loc1_ = 0x5B515CBC ^ -987525017 ^ 0x238DF5F1 ^ -1107347158;
            _loc2_ = 0x5C216C1F ^ -1785152244 ^ 0x55FBF7A1 ^ -1673386318;
            _loc3_ = -2133902868 ^ -1021685923 ^ -362064651 ^ -1447157180;
            while(_loc3_ < (-206912254 ^ 0x12390245 ^ -244946640 ^ 0x10F5AE73))
            {
               if(this.matrix[int(_loc8_ * (-263681368 ^ -1069439641 ^ -1051569172 ^ -245662682) + _loc3_)] < (0x32D4F73D ^ -1593232640 ^ 0x2FA1B1E7 ^ -1132694054))
               {
                  _loc1_ += this.matrix[int(_loc8_ * (0x5F7A40AF ^ 0x030498DF ^ 0x1C3E0C54 ^ 0x4040D421) + _loc3_)];
               }
               else
               {
                  _loc2_ += this.matrix[int(_loc8_ * (-2108141000 ^ 0x447A60EC ^ -104100811 ^ 0x3FE9BEE4) + _loc3_)];
               }
               _loc3_++;
            }
            _loc6_ = _loc1_ * (-1185944018 ^ 0x292FD3B9 ^ -337861664 ^ 0x7BBC9E88);
            _loc7_ = _loc2_ * (-217181979 ^ -576748426 ^ -377868028 ^ -940858008);
            this.matrix[int(_loc8_ * (-582753032 ^ -167742670 ^ 0x582E8981 ^ 0x736D1E4E) + (-2010560525 ^ 0x2658DCEC ^ -1123310845 ^ 0x137A3818))] = -(_loc6_ + (_loc7_ - _loc6_) * _39d7d82359bf8046fe8ef6c4._ed4a735c5a6981f99dda5b73("挜挓捗捘揣掔揺排掃掀挴捀措掚揪掁揽掦握捳揷捍推挘","挆揯揗揶捬揿捾措揶掗揫揎捔挂掗捘") - _39d7d82359bf8046fe8ef6c4._ed4a735c5a6981f99dda5b73("揢掝掇掎挳揬挩揫掘捥掖揰捤捽揇捱挣捌掯掭捽挎捱挄","掓推揗掍挛揯掛揭揂援挎捎掚揙挵揘"));
            _loc8_++;
         }
      }
      
      public function shearRed(param1:Number, param2:Number) : void
      {
         this.shearColor(-1726719003 ^ -1182035472 ^ 0x7BE46900 ^ 0x5B7BA315,0x31730F37 ^ 0x77EDA4D9 ^ -1162981398 ^ -63904763,param1,0x1A21D918 ^ 0x343E98CD ^ 0x789A1311 ^ 0x568552C6,param2);
      }
      
      public function shearGreen(param1:Number, param2:Number) : void
      {
         this.shearColor(-950999982 ^ -708786623 ^ 0x7459E1DF ^ 0x66C9C3CD,-721487129 ^ 0x17373820 ^ -11186641 ^ 0x3C9C8CE8,param1,-1511029710 ^ 0x7BD96C30 ^ 0x7547424C ^ -1418614196,param2);
      }
      
      public function shearBlue(param1:Number, param2:Number) : void
      {
         this.shearColor(-2105180790 ^ -1501110969 ^ 0x617A3EBC ^ 0x45799E73,0x3E095857 ^ 0x3BD18FCC ^ 0x16A8B039 ^ 0x137067A2,param1,-1855611062 ^ 0x01526941 ^ 0x55BCFA1A ^ -980743152,param2);
      }
      
      public function applyColorDeficiency(param1:String) : void
      {
         switch(param1)
         {
            case _95da7f1147c669197db81295._8f4866de82b7339154180ecb("勉刢剝勩初刦刊劸勮劕剰刿勆剝勠剶剮劗劂刔劧创勢剦勩勈創劺","劻判刬勍功勽削剃务剜剮別勳勭劉勈"):
               §§push(-2090005869 ^ -51727635 ^ 0x02E574AD ^ 0x7D62CCD3);
               break;
            case _95da7f1147c669197db81295._8f4866de82b7339154180ecb("勀刪勱勱刂勝劥券剹勪券剻勌勫劥动刨劑刜勖勜別剄劧勓劼剐勔勅労","劈剅剡劫劘劮剾剂勗劤勌刪剁劜務判"):
               §§push(0x163A1BEC ^ -106414440 ^ 0x768B5FA2 ^ -1726383401);
               break;
            case _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("Ⴇဘ၂ၹႬဘ჆ၐၡႇၐჼ၈႒ႋၚဓႀვႦჟ႟တၻၜၰဖၫტოၺၩ","ၛၨုၥဇၸဉၢჍဆၥ႙ွႫოჱ"):
               §§push(0x6F5B6D14 ^ -1259109916 ^ 0x4E0C59A3 ^ -1784367791);
               break;
            case _95da7f1147c669197db81295._8f4866de82b7339154180ecb("劲勪剿別劇剘刣划劭劌剎剽剨剸则勰刎刮勜刽刲列労势剧剄勝則勀勥剘勐劬剢","勽刐刽刋劭剛剨刹刍勼剺剎勳剪勲劐"):
               §§push(0x2AF20349 ^ -1642720989 ^ 0x564E27F8 ^ -492161647);
               break;
            case _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("გဝဝဢၚი჻ႄშ၉႕ၓဣႃႰၣၬ႐ႬီၺჀႴးეჍၑၘ","ၜယဣၢၦ၅ე၉ႚმႿ။ႬုვჁ"):
               §§push(0x433C70D9 ^ 0x035D6B11 ^ 0x1B533727 ^ 0x5B322CEB);
               break;
            case _95da7f1147c669197db81295._8f4866de82b7339154180ecb("劦加动剌剽刄剌劆刱刑刅劙剟削刕助勈勀剠勎勶劕劋剪剃劲刅刾刺剟","剱勌募勌刏勚勳利勭動勅劉刮務劵刘"):
               §§push(0x267B01E0 ^ 0x490E25 ^ -950802615 ^ -513677175);
               break;
            case _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挴揽捕挩挎掑捰掳措挺挋挵揶掓掙揱捧挷揺揦损掫捯捑揻揢揵掃揋揑挧挍挜揺","握挩捶捜捇挀掅授捷捸掏掏援措挚捜"):
               §§push(0x3106A7E7 ^ 0x19A694FA ^ 0x6E9608E0 ^ 0x46363BFB);
               break;
            case _95da7f1147c669197db81295._8f4866de82b7339154180ecb("剴劝判効剝勝判判勝勌勰剁剛劀剓助剩勎劜勦剀劲刢劢劢剨勴剨刢分剷刿劏勗","勚劧勰剃剈劅刈劁创剈劻勈劂刻劕剹"):
               §§push(0x12D76C9D ^ 0x62C4F09C ^ 0x514702DC ^ 0x21549EDA);
               break;
            default:
               §§push(0x4C1F811E ^ 0x684B3560 ^ -2075740125 ^ -1609429931);
         }
         switch(§§pop())
         {
            case 0:
               var _temp_12:* = this;
               var _temp_11:* = _433075a5d49397e40222eeae._9417d5d828724209ec5cfbb1("ၟဋၭ။ცွ၃သႮး၍အၪၿ်ჯႧჀცცၙထქဌ","ტဃႋჴဩჲႢႥკိგၾჯဒႃ၊");
               var _temp_10:* = _39d7d82359bf8046fe8ef6c4._ed4a735c5a6981f99dda5b73("揥揪捶揸捷揘控捺掺措捅揪掩推揄捍捑掿掆掇措挍捧揬","揸捔挨挊掘揗掗捰挗掷损揨捫捨捋挦");
               var _temp_1:* = -1284562086 ^ -142542141 ^ -1960365885 ^ -808916646;
               var _temp_9:* = _95da7f1147c669197db81295._6371735dc9287bd2d9618c1e("剔剛刐勇刀劜勲分剻剪剧剹剩勰勃勰勄勐刓分刋初劁刘","勑剜删勺勠利剒刧剟劑勞剥劥刱刊刼");
               var _temp_8:* = _95da7f1147c669197db81295._6371735dc9287bd2d9618c1e("刘劓劗剢剆勯勻勶勑剘刯劀剼劰勰劽勹加劜勻刮剋刍剮","刓勧劢刷劒刖动刚利劙勲剻勗刹勀剎");
               var _temp_2:* = -831171740 ^ -436470802 ^ 0x107BE63E ^ 0x3BF54EB4;
               var _temp_7:* = -882940994 ^ -1012774269 ^ -819883354 ^ -941835365;
               var _temp_6:* = _433075a5d49397e40222eeae._9417d5d828724209ec5cfbb1("ဉჃဤსႛ။ჹ႔Ⴍ၍ჯႯၧဳჅၸ჋ဲგ၀၍ဘ။Ⴝ","჉ႊႈ၅၌ဧჸႷဈႮ჆႗ၨ္Ⴢ႟");
               var _temp_5:* = _39d7d82359bf8046fe8ef6c4._ed4a735c5a6981f99dda5b73("挙挼揖掍挨掴捱挡排捃捲掇挩掯掗捲捦揀挾掙捚捁掘揲","掊揔換措挆捧掅挜掭挄捬指挜挜揣掆");
               var _temp_3:* = -680772727 ^ -1382951064 ^ -5730987 ^ -2058001996;
               var _temp_4:* = 0x279CFDB7 ^ 0x7F0A2486 ^ 0x170601D0 ^ 0x4F90D8E1;
               _temp_12.concat([_temp_11,_temp_10,_temp_1,_temp_1,_temp_1,_temp_9,_temp_8,_temp_2,_temp_2,_temp_2,_temp_7,_temp_6,_temp_5,_temp_3,_temp_3,_temp_3,_temp_4,_temp_4,0x426FD200 ^ 0x50BDD251 ^ -744213466 ^ -1049217930,-1805482370 ^ -1959721794 ^ -631129957 ^ -986564005]);
               break;
            case 1:
               var _temp_24:* = this;
               var _temp_23:* = _95da7f1147c669197db81295._6371735dc9287bd2d9618c1e("創刓刿刿勝劮劜劝割刣刍勝刱剭勏劥剗剛剉勮劑劵劘剼","剙剾剾勗刁剒募劫别剻勝刈劳劏剣勴");
               var _temp_22:* = _39d7d82359bf8046fe8ef6c4._ed4a735c5a6981f99dda5b73("掙換捲掳揻挣揰揭揹捿掂捐掕捫掌掋揀挐捵揉掐揁揌捂","挴掝挀捆揌捪接捃挍挺揦揋掴握挳换");
               var _temp_13:* = -243214566 ^ -1402756438 ^ 0x66F51D8D ^ 0x3B16683D;
               var _temp_21:* = _95da7f1147c669197db81295._6371735dc9287bd2d9618c1e("剣勗劘勦勭勮勨勪劫剧勵划募刃刵剗动効劲剗刡劶刍勦","刑劍勠勈勝剖創劖刜则刿勍則剚剈刬");
               var _temp_20:* = _433075a5d49397e40222eeae._9417d5d828724209ec5cfbb1("ၠ၅ყ၆ႝၖပႳၹဇၲၘဧွმტယႤეုატလၠ","ၐ၆ფၞႻჟံ჈ႵდႱကჅႥႀნ");
               var _temp_14:* = 0x5C649A67 ^ 0x76FD5E27 ^ 0x22D565FD ^ 0x084CA1BD;
               var _temp_19:* = 0x4FEA332A ^ 0x2B5B4676 ^ 0x290DB496 ^ 0x4DBCC1CA;
               var _temp_18:* = _433075a5d49397e40222eeae._9417d5d828724209ec5cfbb1("။ၧ။၉၍ဘခၐၒႤ჉ჰთၠၵႄჶ၀၏ၹၙဍ၌ტ","ၫႋႮါၤၴက၍Ⴇဇ႑ှ၍ႪცႪ");
               var _temp_17:* = _39d7d82359bf8046fe8ef6c4._ed4a735c5a6981f99dda5b73("揕掎捕捙揿揃捅掠揬挄掰掳捝揳捒掖掂掩捱捚揸挐挮挦","掔揹掁挥捵捰掚捸挀挄掲揌掟挕挕揅");
               var _temp_15:* = 0x654C51B7 ^ 0x71C565DD ^ -1930366024 ^ -1736849454;
               var _temp_16:* = -1982228659 ^ 0x710E2A97 ^ 0x5A25AAC8 ^ -1561192686;
               _temp_24.concat([_temp_23,_temp_22,_temp_13,_temp_13,_temp_13,_temp_21,_temp_20,_temp_14,_temp_14,_temp_14,_temp_19,_temp_18,_temp_17,_temp_15,_temp_15,_temp_15,_temp_16,_temp_16,-999398927 ^ 0x2123E556 ^ 0x2453E709 ^ -1054973009,-1724651993 ^ 0x69AA7CEC ^ -213891848 ^ 0x03D9DE33]);
               break;
            case 2:
               var _temp_36:* = this;
               var _temp_35:* = _95da7f1147c669197db81295._6371735dc9287bd2d9618c1e("刔劑則剻剰刐刿办刪勄勁勊剂剃劆初劆劔劉劷剼勘剌勚","則剡勽劾努劕则勑劮剎剠剫剰剃剻勱");
               var _temp_34:* = _95da7f1147c669197db81295._6371735dc9287bd2d9618c1e("剏切刏別劽勩勍加勖刼动劮刬勨剣剠劂剄助劏劗别剢労","勄劎勇刬則刄势刟办刼劵勾勝功刬剪");
               var _temp_25:* = -994185086 ^ 0x45477183 ^ 0x0DB80A7E ^ -1941795969;
               var _temp_33:* = _39d7d82359bf8046fe8ef6c4._ed4a735c5a6981f99dda5b73("挲掀推描捻揧捆挍捭揍接掙捃挐掟挴揬揢捪挽排挜捱掜","捁捾揽捚揗挫捺捻捒揓捫捽掚掞揚捂");
               var _temp_32:* = _95da7f1147c669197db81295._6371735dc9287bd2d9618c1e("勣勽动勡剱剐剛势刁刢剔刱劁劔劦刌剕劋剺劶勑剱剙切","剶劂劾勬利务刐勡分刃剼勗剸劳劫剄");
               var _temp_26:* = 0x7049CED4 ^ -1433563638 ^ -194889856 ^ 0x2EA6775E;
               var _temp_31:* = 0x78607449 ^ -1024302893 ^ -750705545 ^ 0x69D330ED;
               var _temp_30:* = _433075a5d49397e40222eeae._9417d5d828724209ec5cfbb1("ဦ်გႢႧ჻ၠჯႷჭვႈႳၩဒ၊ွၚၠႇჅၥ႞Ⴜ","ိჵტႉၺၩფჿနၼႅჴჭရგအ");
               var _temp_29:* = _95da7f1147c669197db81295._6371735dc9287bd2d9618c1e("剚剕劎勭刷勁勩剺勒勊勏剎劇刍制刜劶刅勽勑劑劘剅刕","剂剁剦剼刔勴勿劉効劥勹剬勃劎刃刂");
               var _temp_27:* = 0x0D8D727B ^ -677942059 ^ 0x575EC928 ^ -1924868218;
               var _temp_28:* = 0x67C65D89 ^ -754243509 ^ 0x043A43F7 ^ -1325976011;
               _temp_36.concat([_temp_35,_temp_34,_temp_25,_temp_25,_temp_25,_temp_33,_temp_32,_temp_26,_temp_26,_temp_26,_temp_31,_temp_30,_temp_29,_temp_27,_temp_27,_temp_27,_temp_28,_temp_28,-1119070977 ^ 0x3FE52547 ^ 0x6A03E7B7 ^ -391473650,-1717321083 ^ -475432391 ^ 0x7D7FCE3A ^ 0x07757686]);
               break;
            case 3:
               var _temp_48:* = this;
               var _temp_47:* = _95da7f1147c669197db81295._6371735dc9287bd2d9618c1e("勮剾勦分劾刖劃刂劜勘勯勄刎剴劈勃勖劔刽办勄别劏刻","剖勆勻勺剂劙券剷刘剁创刵剜剰勬刮");
               var _temp_46:* = _433075a5d49397e40222eeae._9417d5d828724209ec5cfbb1("჻ၚပႌႚေႚ႓ფၢီ႟ၣჍၷၼღၐ၍ၵნ႘ဧჽ","မႃ၇ၪၥၷၱႂჭႡႮဗჅႮႠဉ");
               var _temp_37:* = -1848504737 ^ -209708890 ^ 0x5ECDCA2B ^ 0x3C9FDCD2;
               var _temp_45:* = _433075a5d49397e40222eeae._9417d5d828724209ec5cfbb1("။მჅ႖ၗကოဥႎဏၡႴဇცზၿႤ်჊ၽဣႪၴႌ","კლႈၒ၁ႌဈႺႇဲႹၾႀჟႼၬ");
               var _temp_44:* = _39d7d82359bf8046fe8ef6c4._ed4a735c5a6981f99dda5b73("掞捋揵揓捲挮捞掮捂掼揗挹挈揫挘捽据捄挹揈揲採揲挂","揆掎挂接揔掸掔捈掺揌捣揜挬挾挌掎");
               var _temp_38:* = -128084858 ^ -1492457851 ^ -444941535 ^ -1171404510;
               var _temp_43:* = -70814160 ^ -2074698070 ^ 0x2E317850 ^ 0x51A090CA;
               var _temp_42:* = _95da7f1147c669197db81295._6371735dc9287bd2d9618c1e("劭勈勚刌刃劒劦勦務初劷刳勖刡別劌刋剪勡剘初剔刭劄","劑剟劮劒刯勭剺剱券勡势劆分勚刍勀");
               var _temp_41:* = _95da7f1147c669197db81295._6371735dc9287bd2d9618c1e("劘剂剡勎劘勏分劫剎剅剄刂務剹劓劭勼剏剚则勢勚勜勽","刴削剈刟刜劵劰剞剢劽剥勭剷剴割刱");
               var _temp_39:* = -1992605082 ^ -1197424023 ^ -68998143 ^ -898061298;
               var _temp_40:* = -1715960949 ^ -2110120152 ^ 0x3B843DF3 ^ 0x2006A150;
               _temp_48.concat([_temp_47,_temp_46,_temp_37,_temp_37,_temp_37,_temp_45,_temp_44,_temp_38,_temp_38,_temp_38,_temp_43,_temp_42,_temp_41,_temp_39,_temp_39,_temp_39,_temp_40,_temp_40,0x05AB0AA5 ^ 0x3CA0B7B5 ^ 0x18F4838C ^ 0x21FF3E9D,-1980055135 ^ 0x6D4FC3E1 ^ -1161980907 ^ 0x5E089655]);
               break;
            case 4:
               var _temp_60:* = this;
               var _temp_59:* = _39d7d82359bf8046fe8ef6c4._ed4a735c5a6981f99dda5b73("揲捁揧揮捓掂捹按援挩捲掂捑挱掿揷损援捼挿捿捌掶揃","揿挜挺挵揶掉揙掦揌掵揮挳掹挜捌揫");
               var _temp_58:* = _95da7f1147c669197db81295._6371735dc9287bd2d9618c1e("勇劄勨勴励刂劅刾勔勵劂剨剺力剫勢剢劋勚初勈刀刦勊","剐剽刡判剐券剓勿刬刟勡劑勛剬勒劺");
               var _temp_49:* = -1976883032 ^ 0x30D8CD8E ^ -1454796321 ^ 0x13BA74F9;
               var _temp_57:* = -1858588782 ^ -1154446526 ^ 0x479C0BD3 ^ 0x6D94AF03;
               var _temp_56:* = _433075a5d49397e40222eeae._9417d5d828724209ec5cfbb1("ၚႆჟတၥႬၭၦဢ္ၠ႐ၢႺၣဗဍႈჅၠႵဘჱထ","ნၐ၏ჯႄჲႆႭၻၿჾႧჵသ჈ყ");
               var _temp_55:* = _39d7d82359bf8046fe8ef6c4._ed4a735c5a6981f99dda5b73("挘捖揽掜揯捥掵掘掷掑挿掐捷捜挝掌掹挲挰挻挥掚捵指","推挟揱提揋挒挭捶捘捕挓揲挠掦掅掇");
               var _temp_50:* = -523008169 ^ -1861082260 ^ 0x2128BF5E ^ 0x50E91B65;
               var _temp_54:* = _433075a5d49397e40222eeae._9417d5d828724209ec5cfbb1("ზ႔჉၆ၟၤၝၗၶႅ့သ၀ჩჷ႕ႆႮპ႑ტရႋჺ","ဆႭ႒ჺၴဆႩႇႅၶ႙ၟၻჶၔၾ");
               var _temp_53:* = _95da7f1147c669197db81295._6371735dc9287bd2d9618c1e("勔劢势劼劤勃勩剏刑刚勝劕剥刓刚勏剐勑剸剅創剕劜劼","勁剱刋刲勘刾剉剹劌勝刴剙刺刵刮劂");
               var _temp_51:* = 0x50AFFF81 ^ 0x3EB3DE37 ^ 0x456F0B84 ^ 0x2B732A32;
               var _temp_52:* = 0x31F5B020 ^ -1183557662 ^ -1725727870 ^ 0x11A29C40;
               _temp_60.concat([_temp_59,_temp_58,_temp_49,_temp_49,_temp_49,_temp_57,_temp_56,_temp_55,_temp_50,_temp_50,_temp_50,_temp_54,_temp_53,_temp_51,_temp_51,_temp_51,_temp_52,_temp_52,-1376284352 ^ 0x65FA3BAE ^ -1358302632 ^ 0x670458B7,-1713787572 ^ 0x7720E3C4 ^ -1492728233 ^ 0x49FF88DF]);
               break;
            case 5:
               var _temp_72:* = this;
               var _temp_71:* = _433075a5d49397e40222eeae._9417d5d828724209ec5cfbb1("ဇჟဆဍვၑႆဋႱ჌ယ႔჈ညဋႥႌှၛၺჺၛႺ႐","ၕყუဖ္ႹႌბႡႱပიႽტჽო");
               var _temp_70:* = _433075a5d49397e40222eeae._9417d5d828724209ec5cfbb1("ၷ჏ၣဨံჃၮჿဥႊ။ဉპ႒ၕဧၹပၨငჭၙၖၧ","ႜဥჩၥရၾဩჾ၏၁ჱ၉့ၦ႙ႈ");
               var _temp_61:* = 0x1A4A5F5A ^ 0x3CCCBE92 ^ -1541487341 ^ -2103958309;
               var _temp_69:* = 0x7FBD64E7 ^ -759871763 ^ -1124945782 ^ 0x11FA9280;
               var _temp_68:* = _433075a5d49397e40222eeae._9417d5d828724209ec5cfbb1("ჷႩက႑ၕ႞ၵဒႜჯႺႠဿჷბရုတၡჲဝႌღს","၉ხ၏ဗ၎჏ၘႇၻႄზၹთေჇဨ");
               var _temp_67:* = _433075a5d49397e40222eeae._9417d5d828724209ec5cfbb1("တუ႞ოၗအჶႮ၏ူၔ႘၅Ⴌ၏ႜႂဃၪႬჳ႙ိႂ","ၭ჉჋ლ჏ဖხႩှဒჸ၍၇ႵႧဧ");
               var _temp_62:* = -827617275 ^ -641399325 ^ -799246196 ^ -952963734;
               var _temp_66:* = _39d7d82359bf8046fe8ef6c4._ed4a735c5a6981f99dda5b73("挌据揰掬掔捕掷掭揱挊揟挟捾按掸捎揩挺捂揗捧捇捔插","掫捃掤挷捹捶揨挀振揌揀措捽持掀掶");
               var _temp_65:* = _39d7d82359bf8046fe8ef6c4._ed4a735c5a6981f99dda5b73("捳掆挛掘握援捭捚挩揌捨揚掉揅挭掆掩揂掳捞捡挺掳揊","揽捔掁挧揌揥控捘採掇掵揂捑掵掶揝");
               var _temp_63:* = -2093127461 ^ 0x296C5B3D ^ 0x1488AAEB ^ -1093035763;
               var _temp_64:* = -294288284 ^ 0x4B5C2E72 ^ 0x513ECB20 ^ -199794378;
               _temp_72.concat([_temp_71,_temp_70,_temp_61,_temp_61,_temp_61,_temp_69,_temp_68,_temp_67,_temp_62,_temp_62,_temp_62,_temp_66,_temp_65,_temp_63,_temp_63,_temp_63,_temp_64,_temp_64,0x6839FE59 ^ -919533119 ^ 0x19620078 ^ -1200949279,0x27ECD5E1 ^ 0x5E657A73 ^ -1019419814 ^ -1162523448]);
               break;
            case 6:
               var _temp_86:* = this;
               var _temp_85:* = _39d7d82359bf8046fe8ef6c4._ed4a735c5a6981f99dda5b73("揥接挎挐挬揂挱掋揶捺挞掌掰挥捚揿揰捒採挳捷捁挩捂","揼捱掄挌揾捦挺掟揎捽掲掓掉捭捆挲");
               var _temp_84:* = _39d7d82359bf8046fe8ef6c4._ed4a735c5a6981f99dda5b73("挛按掾揻挢捭挑揷捾挳揳捈挅揅掝揠捔捲掙挪捭揽援提","掛捱揝按揥捧揷揩挵挲挤揱掊捴揋捤");
               var _temp_83:* = _39d7d82359bf8046fe8ef6c4._ed4a735c5a6981f99dda5b73("挟掃捒捾換掲捦捂排捵揓挿挆掃挛挓挆掃挄揃掣掩揵捸","掽排掔挛挿挬掏掫掓捜掉挎挺掛捳接");
               var _temp_73:* = -202578283 ^ 0x6D447BC3 ^ -1960255215 ^ 0x15807C47;
               var _temp_82:* = _39d7d82359bf8046fe8ef6c4._ed4a735c5a6981f99dda5b73("捾掗挀掦捓挂挬捧挽挞揣挩揔掖揟捄掂揯探捏捀捽挂揯","捋挀捶挢揵掆捧指捡挛揻揳挄掃揰挝");
               var _temp_81:* = _433075a5d49397e40222eeae._9417d5d828724209ec5cfbb1("Ⴐჰქဲთ၀Ⴄၺ့ၜၹ჌ဎგကၼႷဆႈည၆ု၉ႂ","ჱ္თჍြლჟထဣတჟဵၪဆၱმ");
               var _temp_80:* = _95da7f1147c669197db81295._6371735dc9287bd2d9618c1e("刴利剨労剩勸剙劋刄利剨劍分剗剗刡勓劆剗刭刑刈刢剙","剚初刞刮勇剦剶加剂剸劆勷剂劓判剕");
               var _temp_74:* = 0x49FABB5C ^ 0x6ED45BA1 ^ -1505755163 ^ -2129584360;
               var _temp_79:* = _433075a5d49397e40222eeae._9417d5d828724209ec5cfbb1("ႀဎჇဉဴქၹႣ჏႗იგၜင၍။ႋၣႻႈဂဓဋ၅","ဉႲ႗ႯၟၙჱჁဓ႙჊၊ီၗ჌ဂ");
               var _temp_78:* = _433075a5d49397e40222eeae._9417d5d828724209ec5cfbb1("ၻჃႤრ჉၉ვ႖၀ႁ႒ပၖ႖ႊ၈სႭსၕლၯႾჰ","ငმჍၡဘႜჍი჻Ⴍ၃နჁဝၤၩ");
               var _temp_77:* = _95da7f1147c669197db81295._6371735dc9287bd2d9618c1e("勰刉到剩刱剾刑剋劵劇剷刵勝列劵勅劲劧劷剫勠利勚剆","勊勗剄劆勁刦刱勧剢劤勧劣劲刞剕剼");
               var _temp_75:* = -1116374663 ^ -414378163 ^ -1792564581 ^ -819999569;
               var _temp_76:* = 0x4AAACF86 ^ 0x6A362DC4 ^ -1680336364 ^ -1153107882;
               _temp_86.concat([_temp_85,_temp_84,_temp_83,_temp_73,_temp_73,_temp_82,_temp_81,_temp_80,_temp_74,_temp_74,_temp_79,_temp_78,_temp_77,_temp_75,_temp_75,_temp_75,_temp_76,_temp_76,0x077ABC93 ^ 0x3E2EB6E9 ^ 0x25E667A7 ^ 0x1CB26DDC,-294167018 ^ 0x4E147B18 ^ 0x7DC9F8D6 ^ -576004648]);
               break;
            case 7:
               var _temp_100:* = this;
               var _temp_99:* = _433075a5d49397e40222eeae._9417d5d828724209ec5cfbb1("ဪ၍၉ယဌဆုყუჇჂၭႹწფ႔ႮუၻႫႈჴႴყ","ဏႾჷာძၥႾყၱ჉ჄဇჿႁႽჀ");
               var _temp_98:* = _433075a5d49397e40222eeae._9417d5d828724209ec5cfbb1("ဈႠၕ႞Ⴖჳჽၭၡ၌႟ბညჳნႥႸ჋შႊၲძႈჇ","ၺჵႫმႡႶဝႴႠჁၭဘႥမၻဇ");
               var _temp_97:* = _95da7f1147c669197db81295._6371735dc9287bd2d9618c1e("別劾動刮勇劔劙剜刞刄勇剢劂刮刿剩剹勞勷前剥劥勛创","劉割刖功勢劉勇勊勅募劽刢劲刧割剬");
               var _temp_87:* = -1019349286 ^ -1283342265 ^ 0x593F979E ^ 0x2983A103;
               var _temp_96:* = _433075a5d49397e40222eeae._9417d5d828724209ec5cfbb1("ႾპၳၙႽၹဃသြႆ်။တჷჁრႊၐိာႩၖხ၀","႒၏ႺႮၠბჇცယၭჳჿဵ჎Ⴊၷ");
               var _temp_95:* = _95da7f1147c669197db81295._6371735dc9287bd2d9618c1e("剩劸前刀勀剘刜勂刞剔勾刄剭剮勎加剕劒劁刾刓剳勰劐","勊勂劦劫加勈剅勵刮剐劈剭勎劭劻勀");
               var _temp_94:* = _95da7f1147c669197db81295._6371735dc9287bd2d9618c1e("刓刕刂刻剷劧刄刖勡勢刓刨券劺刨勓勽刅削剭势剩勢力","勉刚劧劖刢勲剁務刀剬剏勼刕劰列剛");
               var _temp_88:* = -1770953125 ^ -665169564 ^ -1703127612 ^ -732470533;
               var _temp_93:* = _95da7f1147c669197db81295._6371735dc9287bd2d9618c1e("勚劝剁刍勘刁勡劖剽利剐劗剼劇勇剒勳勀劚劇勶劓勯剨","劒刿勆勔剱剙勾剾刑剾剨劷刳効剰則");
               var _temp_92:* = _39d7d82359bf8046fe8ef6c4._ed4a735c5a6981f99dda5b73("揋损挒掹捻挲掟捈掔掠授揿捨挫捭掔揬挗挷掟挿挻捸掾","掓捕捗揙捇掍掾揨挛揍挲捀挵掾捀揲");
               var _temp_91:* = _95da7f1147c669197db81295._6371735dc9287bd2d9618c1e("勰剁勎劻刞勯刴刃剣劂劂勆剩列剖勿剕勧勢刽刐劵勜勖","剔刼勅劣劕劳剄勉剽劦刧勌勴劐劬刄");
               var _temp_89:* = -45258357 ^ -1529780014 ^ -1420435053 ^ -221650742;
               var _temp_90:* = 0x67179A1A ^ -519346630 ^ 0x0C9B3EED ^ -1970814259;
               _temp_100.concat([_temp_99,_temp_98,_temp_97,_temp_87,_temp_87,_temp_96,_temp_95,_temp_94,_temp_88,_temp_88,_temp_93,_temp_92,_temp_91,_temp_89,_temp_89,_temp_89,_temp_90,_temp_90,0x31ACCF0C ^ 0x769ABD60 ^ 0x7A8D13C6 ^ 0x3DBB61AB,-480407035 ^ 0x2A3E5B2E ^ -212934572 ^ 0x3A2D297F]);
         }
      }
      
      public function RGB2YUV() : void
      {
         var _temp_16:* = this;
         var _temp_15:* = _39d7d82359bf8046fe8ef6c4._ed4a735c5a6981f99dda5b73("捃揃挵揗挃揰揉揀挗捓排掞掫揃揊捣捔掹掓掭揠掄揯揿","揩挔挶揅捩捡挄揳揔掩掬指揌捤採授");
         var _temp_14:* = _433075a5d49397e40222eeae._9417d5d828724209ec5cfbb1("ဧჇვქ္၄ჿ၁သႯ၏ဈဴဥဥ၏ၨႠ၅ძဋႧႥႱ","ჴ၌ဒဦსჵ။ု႒ညჳუႨ჋ႌ၈");
         var _temp_13:* = _39d7d82359bf8046fe8ef6c4._ed4a735c5a6981f99dda5b73("掃捋推掐捒挜捝捘掟捾掴揦掦捋揫捜捳授掾捫掌採掿捍","捖挥揄揻挎掮挘揂掜挻挟捃捷捜揁捛");
         var _temp_1:* = 0x03A2992B ^ -413698061 ^ 0x4F224226 ^ -1411928834;
         var _temp_12:* = _433075a5d49397e40222eeae._9417d5d828724209ec5cfbb1("ჄჺၒၫႅၞႅჁႬဂၘჭၯၝႪခဖႫსရၗဠႊၽ","ၹႠဍၱ႐ဤႇျဿფဒၽ႓၍ဗ႘");
         var _temp_11:* = _433075a5d49397e40222eeae._9417d5d828724209ec5cfbb1("ზဗჸႯ္ჴဖဓဿკვညႤႰბ၃Ⴤၐႍ၏ၫၡ჈Ⴠ","ႊၿმႠჲဉဦ႘჻ჺ႟ၭႪ။၄ხ");
         var _temp_10:* = _95da7f1147c669197db81295._6371735dc9287bd2d9618c1e("别判劕刁刷前割劦剩務刐刼刜剋刾劌刯劒勍劻刔勀剞判","動剮劾刐刾券剹刌刼刴劉刟剼剬勏募");
         var _temp_9:* = -1998406831 ^ -2059025890 ^ -448066110 ^ -387156851;
         var _temp_8:* = 0x521D04A2 ^ -1733757637 ^ -1464798253 ^ 0x620502CA;
         var _temp_7:* = _39d7d82359bf8046fe8ef6c4._ed4a735c5a6981f99dda5b73("挪換掍掬挚捺掏接挴掰揾揪揪损挅挮挂掃掦挃指挬揨接","揰捼掳捂掍掂挓插挐挖挫捼掋挅挓措");
         var _temp_6:* = _433075a5d49397e40222eeae._9417d5d828724209ec5cfbb1("ჽဠၓ႗ဆ၊ၔဩოႁၸ჆ჾ႘ၦဝဈပႏჅစႏၳဝ","჈ဨဢნ჈ႲჇငნ႐჎Ⴠၒဃၖზ");
         var _temp_5:* = _433075a5d49397e40222eeae._9417d5d828724209ec5cfbb1("ოၥხဃာ႐ြ၏ჽဧထအ႑შႜႥ႗်ဃႇႺၺპမ","ეဨႜၚၐံჼძၣႲၗဿႷႪၳၹ");
         var _temp_4:* = 0x67363DEB ^ 0x14A464F6 ^ -1260260353 ^ -948720926;
         var _temp_3:* = -246666064 ^ 0x5187EA56 ^ -1583959436 ^ 0x015D7412;
         var _temp_2:* = 0x2D16E6CA ^ 0x745D18CC ^ -16838923 ^ -1481314061;
         _temp_16.concat([_temp_15,_temp_14,_temp_13,_temp_1,_temp_1,_temp_12,_temp_11,_temp_10,_temp_9,_temp_8,_temp_7,_temp_6,_temp_5,_temp_4,_temp_3,_temp_2,_temp_2,_temp_2,-220481129 ^ -1909191530 ^ -27257535 ^ -2104516543,-1036149160 ^ 0x786330C3 ^ 0x37F61BE1 ^ -1918323334]);
      }
      
      public function YUV2RGB() : void
      {
         var _temp_17:* = this;
         var _temp_16:* = -1600562804 ^ -1165685441 ^ -807164206 ^ -704646560;
         var _temp_15:* = _95da7f1147c669197db81295._6371735dc9287bd2d9618c1e("劀劔剀剘創勋劑剈刍剥創劗劂剿刖劊劺劦勓剕劐动勬劣","刄劌创劬勧剱剈勾刽別剈勠删剦劜剽");
         var _temp_14:* = _433075a5d49397e40222eeae._9417d5d828724209ec5cfbb1("Ⴐၭံဣვၳ႙ာსლဍႫშႆၡ၄ႫွჷဩჭჇြႭ","ტၱ၍ႁჭ၃აႄწဌ႕ဩဢီჿ၍");
         var _temp_13:* = 0x42C45F87 ^ -1868336010 ^ 0x78046BF7 ^ -1436336122;
         var _temp_12:* = _39d7d82359bf8046fe8ef6c4._ed4a735c5a6981f99dda5b73("揜掦掿揚掆揀振掄挺挺掇捩挊揃挺掮揔揙挋捪掼挤揦捱","捒掄捏捀挂掩揶揃捙揟挎挡掰捖挭揻");
         var _temp_11:* = -1011621720 ^ -168006033 ^ 0x02801F53 ^ 0x34CF9195;
         var _temp_10:* = _95da7f1147c669197db81295._6371735dc9287bd2d9618c1e("動勾劦剛刞劌劫勤刟劺刽務刹势剈劤勛刨勪勢劵刘刴勆","劲删励列剛剦努劰办剩劸刴勐刣努劚");
         var _temp_9:* = _39d7d82359bf8046fe8ef6c4._ed4a735c5a6981f99dda5b73("挘挛挗挻揻挀捑挱揷掉捆掸挀换捰採揶掚掌揺挦指捑揪","挫挼掉揁掆掝挅掛掤掇揪据挰挙揦捃");
         var _temp_8:* = 0x5CABC2C7 ^ -1989074681 ^ -2030277050 ^ 0x53268D86;
         var _temp_7:* = _95da7f1147c669197db81295._6371735dc9287bd2d9618c1e("剮刻劖刳则労剌勅势劆勌勅刟删勚勋初刨剢劽劒务劮募","労勱刦勅勥加勂剾剐剔劅劍劌功勐刵");
         var _temp_6:* = -981619266 ^ -565265423 ^ -160514827 ^ -312628549;
         var _temp_5:* = _433075a5d49397e40222eeae._9417d5d828724209ec5cfbb1("ၠြჃၳၳ၆ႻၠၘჂၡ၇჻ვၸბႇၓဋၼუშၖႉ","ၦჇႳိჾဍჸဿႻჃႇႂညၫმტ");
         var _temp_4:* = _433075a5d49397e40222eeae._9417d5d828724209ec5cfbb1("ံႲჶဟ။ႈၾၠဨၦႎနၹ၇၆႞ქၷიိ၈ၤჳျ","ညႮႁ၃ၖဤიႿၢႹၓႊဠ႔ၺႠ");
         var _temp_3:* = 0x70E77482 ^ -477656816 ^ 0x6E4F477F ^ -47203603;
         var _temp_2:* = _433075a5d49397e40222eeae._9417d5d828724209ec5cfbb1("ჩွရသႁႱၨှထი၁ျရႠဩီစჶ႕ႊႸဃဎႹ","ჹႃ႙်၏ხဒစစၰუ၀Ⴒႃკჿ");
         var _temp_1:* = -60767621 ^ 0x6B00C70A ^ 0x53FC1D4B ^ -996403142;
         _temp_17.concat([_temp_16,_temp_15,_temp_14,_temp_13,_temp_12,_temp_11,_temp_10,_temp_9,_temp_8,_temp_7,_temp_6,_temp_5,_temp_4,_temp_3,_temp_2,_temp_1,_temp_1,_temp_1,-973356088 ^ -1345304316 ^ -272725139 ^ -2053832288,-595086004 ^ 0x5E9FE59C ^ -137243069 ^ 0x75C98693]);
      }
      
      public function RGB2YIQ() : void
      {
         var _temp_16:* = this;
         var _temp_15:* = _95da7f1147c669197db81295._6371735dc9287bd2d9618c1e("勼刑剮剻券势勵刴刌勻剴勆剥删勇剳勲劻勛勭刚勖切勾","刎勢到劤刲刭劑剙勰剹勁劖勏劵剄刽");
         var _temp_14:* = _95da7f1147c669197db81295._6371735dc9287bd2d9618c1e("剰劆劖勅剘刖剜剬刬剀剬劬則刑剢募劗勮劘勆勜剤刓勭","勴制劍剅劌劤劓劘刱利刦剷労則勰勃");
         var _temp_13:* = _39d7d82359bf8046fe8ef6c4._ed4a735c5a6981f99dda5b73("捸挎捂揥捲捳捇捰挛掔掉揶揝揓推挴挆挾捩掠掽揔掆揾","揚捓捯揥挸捙揚揁捦揰挰揍掳揟捳揷");
         var _temp_1:* = -2001697202 ^ -1405926012 ^ -446180450 ^ -1042018220;
         var _temp_12:* = _433075a5d49397e40222eeae._9417d5d828724209ec5cfbb1("ღျ჊იႠ႑ဌ၂Ⴃႅၴၸႅ၅თာცႝ၄ၧცႤႨ჊","၈Ⴄჩၙ჋Ⴣၥ၃ჺႆქცဈႉါჸ");
         var _temp_11:* = _39d7d82359bf8046fe8ef6c4._ed4a735c5a6981f99dda5b73("振揠挻捥捻揺掕挢挱揹捨掹揩挼掬掺捡挛揥揋捁揣捅掸","捯揩揽掬揤掟掴掠捈捜挆揝措挳掄揝");
         var _temp_10:* = _39d7d82359bf8046fe8ef6c4._ed4a735c5a6981f99dda5b73("捎持掠掽捅捞掘揼挜损揬揔掟掯揤挹掱描捹挻掾掏掳捚","揖揼揿掤捦挎換掁挍捤捚挫捈挈挥挹");
         var _temp_9:* = -1806874310 ^ -1454245392 ^ -1843348793 ^ -1355019763;
         var _temp_8:* = 0x061DA953 ^ 0x15A756F6 ^ 0x456791B4 ^ 0x56DD6E91;
         var _temp_7:* = _39d7d82359bf8046fe8ef6c4._ed4a735c5a6981f99dda5b73("捃揦掸挠揿挰捘掜挺掷捓捬挲揕挽挹挲捱揪揀捊挄挥揽","掁捘挺提揝捔揆捁揶挸揱掁挆挜揫掵");
         var _temp_6:* = _39d7d82359bf8046fe8ef6c4._ed4a735c5a6981f99dda5b73("挪捠揮振挹挏揀揠掟揉掼握捗挅揨換捋捵捳掻捕揤揙挎","掆揖捃掶揔掺掏揉揓揜掺掹挔挹挤掖");
         var _temp_5:* = _95da7f1147c669197db81295._6371735dc9287bd2d9618c1e("券勣劯剥剕刔刹刔动划勛劀刪剨勺募劝剝剛劥募勷刋勒","劓劇剂勦剁勣剖勗劤助势刭刘剳剰勩");
         var _temp_4:* = 0x66C2C9A6 ^ 0x317CEF29 ^ 0x65C27C61 ^ 0x327C5AEE;
         var _temp_3:* = 0x52C8CCD9 ^ 0x2D4A0E94 ^ -1210109955 ^ -933368528;
         var _temp_2:* = 0x4E366BD7 ^ -692338853 ^ -687992156 ^ 0x4E73C628;
         _temp_16.concat([_temp_15,_temp_14,_temp_13,_temp_1,_temp_1,_temp_12,_temp_11,_temp_10,_temp_9,_temp_8,_temp_7,_temp_6,_temp_5,_temp_4,_temp_3,_temp_2,_temp_2,_temp_2,0x13C8113D ^ 0x64269865 ^ -169027169 ^ -2113777466,-1065515040 ^ -2006174579 ^ 0x2180EAAF ^ 0x699159C2]);
      }
      
      public function autoDesaturate(param1:BitmapData, param2:Boolean = false, param3:Boolean = false) : void
      {
         var _loc4_:Number = NaN;
         var _loc5_:Number = NaN;
         var _loc6_:Number = NaN;
         var _loc7_:Vector.<Vector.<Number>> = param1.histogram(param1.rect);
         var _loc8_:Number = 0x141C98B3 ^ 0x7E8B7255 ^ 0x41CCEB28 ^ 0x2B5B01CE;
         var _loc9_:Number = 0x11B59129 ^ -1692747485 ^ 0x483E550E ^ -1030652668;
         var _loc10_:Number = 0x37D086CC ^ 0x42D16A9A ^ -712301684 ^ -1601515558;
         var _loc11_:Boolean = false;
         var _loc12_:int = 0x7B3BC06C ^ 0x09A62A8C ^ 0x44B7124D ^ 0x362AF8AD;
         while(_loc12_ < (0x4C720D0E ^ -74187857 ^ -2022412184 ^ 0x309587C9))
         {
            _loc8_ += _loc7_[0x4F5F1D06 ^ -675763287 ^ -468965917 ^ 0x7CEB934C][_loc12_] * _loc12_;
            _loc9_ += _loc7_[-1433455392 ^ 0x1695E5E4 ^ -576884528 ^ 0x6187A1D5][_loc12_] * _loc12_;
            _loc10_ += _loc7_[-157636633 ^ 0x2DD62A89 ^ -499056305 ^ 0x390D8C23][_loc12_] * _loc12_;
            if(param2)
            {
               if(_loc7_[-1415519552 ^ -1704364536 ^ -770367120 ^ -472074824][_loc12_] != (-158130311 ^ -1387673743 ^ -314328228 ^ -1231461548) || _loc7_[0x02DAEB9B ^ 0x11D03996 ^ -358384498 ^ -106320254][_loc12_] != (0x2899ABCB ^ 0x623347EE ^ -739118496 ^ -1722081723) || _loc7_[-619357623 ^ -1442350211 ^ -1260475925 ^ -976451363][_loc12_] != (-1460274922 ^ 0x247979B5 ^ 0x628A8B27 ^ -301593724))
               {
                  _loc5_ = _loc12_;
                  if(!_loc11_)
                  {
                     _loc4_ = _loc12_;
                     _loc11_ = true;
                  }
               }
            }
            _loc12_++;
         }
         var _loc13_:Number = _loc8_ + _loc9_ + _loc10_;
         if(_loc13_ == (0x433073CE ^ -851220634 ^ -1591635426 ^ 0x2F5286B6))
         {
            _loc13_ = 0x4AADEC2A ^ 0x1714B436 ^ -809924860 ^ -1845436645;
            _loc8_ = _loc9_ = _loc10_ = -2099573823 ^ -1720722368 ^ -1535360752 ^ -1077373294;
         }
         _loc8_ /= _loc13_;
         _loc9_ /= _loc13_;
         _loc10_ /= _loc13_;
         var _loc14_:Number = 0x6ED8820C ^ 0x41FF8941 ^ 0x554F09B5 ^ 0x7A6802F8;
         if(param2 && _loc5_ - _loc4_ < (-988004970 ^ -379533822 ^ -1545245063 ^ -1885760238))
         {
            _loc6_ = (-527327282 ^ -360809870 ^ -1058992578 ^ -904992126) / (_loc5_ - _loc4_ + (-1960812777 ^ 0x5304D80E ^ 0x25FC30F5 ^ -36128787));
            _loc8_ *= _loc6_;
            _loc9_ *= _loc6_;
            _loc10_ *= _loc6_;
            _loc14_ = -_loc4_;
         }
         _loc6_ = (-2112959285 ^ 0x780FA0AC ^ -520925382 ^ 0x1AF2235C) / Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_ + _loc10_ * _loc10_);
         _loc8_ *= _loc6_;
         _loc9_ *= _loc6_;
         _loc10_ *= _loc6_;
         if(!param3)
         {
            var _temp_22:* = this;
            var _temp_21:* = _loc8_;
            var _temp_20:* = _loc9_;
            var _temp_19:* = _loc10_;
            var _temp_18:* = 0x64D48677 ^ -761253610 ^ -719141969 ^ 0x635674CE;
            var _temp_17:* = _loc14_;
            var _temp_16:* = _loc8_;
            var _temp_15:* = _loc9_;
            var _temp_14:* = _loc10_;
            var _temp_13:* = 0x562ECE73 ^ 0x1250BCF6 ^ 0x67866718 ^ 0x23F8159D;
            var _temp_12:* = _loc14_;
            var _temp_11:* = _loc8_;
            var _temp_10:* = _loc9_;
            var _temp_9:* = _loc10_;
            var _temp_8:* = 0x076AFF56 ^ 0x6B7186EB ^ 0x2CAF6777 ^ 0x40B41ECA;
            var _temp_7:* = _loc14_;
            var _temp_6:* = 0x510024E0 ^ -2095897670 ^ 0x0939C93A ^ -617951648;
            _temp_22.concat([_temp_21,_temp_20,_temp_19,_temp_18,_temp_17,_temp_16,_temp_15,_temp_14,_temp_13,_temp_12,_temp_11,_temp_10,_temp_9,_temp_8,_temp_7,_temp_6,_temp_6,_temp_6,0x4DB9BA55 ^ -1783594771 ^ -1138205114 ^ 0x642164FF,0xE00D80 ^ -1826726161 ^ -2011612591 ^ 0x1BE7693E]);
         }
         else
         {
            var _temp_33:* = this;
            var _temp_23:* = 0x3D99D1EE ^ 0x3A7CAD03 ^ -462044603 ^ -477053272;
            var _temp_24:* = -425889176 ^ 0x1C951CF0 ^ 0x47972528 ^ -1113633872;
            var _temp_25:* = -189333106 ^ 0x1C18BCF2 ^ 0x053B86F3 ^ -309052529;
            var _temp_32:* = -572353175 ^ 0x6F1DB5A6 ^ -2017465860 ^ 0x3540C933;
            var _temp_31:* = _loc8_;
            var _temp_30:* = _loc9_;
            var _temp_29:* = _loc10_;
            var _temp_28:* = 0x5B400C3D ^ 0x558FE5E3 ^ -1122923564 ^ -1277271542;
            var _temp_27:* = _loc14_;
            var _temp_26:* = 0x2F52E4FE ^ 0x22F9DE4A ^ 0x4F53C6EA ^ 0x42F8FC5E;
            _temp_33.concat([_temp_23,_temp_23,_temp_23,_temp_24,_temp_24,_temp_24,_temp_25,_temp_25,_temp_25,_temp_32,_temp_31,_temp_30,_temp_29,_temp_28,_temp_27,_temp_26,_temp_26,_temp_26,-906336948 ^ -810036068 ^ 0x06A335DE ^ 0xEE840F,-1088880830 ^ -1813783404 ^ 0x40520634 ^ 0x6CA925E2]);
         }
      }
      
      public function invertMatrix() : Boolean
      {
         var _loc1_:Matrix3D = new Matrix3D(Vector.<Number>([this.matrix[-2092649332 ^ 0x779C1EA4 ^ -2050140311 ^ 0x7115FD41],this.matrix[-1234898796 ^ 0x35CEFAA1 ^ -883368170 ^ 0x48F2D522],this.matrix[-1051425006 ^ 0x14E03CC1 ^ -1333569389 ^ 0x6537E342],this.matrix[-836655687 ^ -1143983279 ^ 0x01ED46B5 ^ 0x741CD05E],this.matrix[0x0520A8E0 ^ -168722150 ^ -284699286 ^ 0x1FD6FC95],this.matrix[0x7344ECE8 ^ 0x40F0EBEE ^ 0x5B30E843 ^ 0x6884EF43],this.matrix[0x0B0CCD10 ^ 0x189DDD92 ^ -607360284 ^ -933397919],this.matrix[-1607123461 ^ -1727686745 ^ 0x0C5E9B4C ^ 0x356E3118],this.matrix[-1454927891 ^ -1834090320 ^ 0x115D4BC8 ^ 0x2AB4C49F],this.matrix[-1517459773 ^ -838497509 ^ 0x78C1369D ^ 0x1349DB4E],this.matrix[0x03683BF6 ^ 0x6DC01FDB ^ 0x38BE10E5 ^ 0x561634C4],this.matrix[0x24233D0A ^ 0x56A62056 ^ 0x105591B5 ^ 0x62D08CE4],this.matrix[-90787943 ^ 0x0E87E8EA ^ 0x1A441574 ^ -296398328],this.matrix[0x050CE12A ^ 0x73A6E966 ^ -1992648038 ^ -7302458],this.matrix[-449515602 ^ -1764572542 ^ 0x4DD4ACE9 ^ 0x3E3281D4]
         ,this.matrix[0x2F588D46 ^ -1056154361 ^ -1212395358 ^ 0x59E880F1]]));
         var _loc2_:Boolean = _loc1_.invert();
         if(!_loc2_)
         {
            return false;
         }
         this.matrix[-1927662602 ^ -2020233375 ^ 0x4CB8DBAE ^ 0x46374739] = _loc1_.rawData[-1198703046 ^ 0x17879791 ^ 0x7A8BCF7F ^ -712939820];
         this.matrix[0x6FBD2FFF ^ -1684308621 ^ -1976989529 ^ 0x7E0FDA2A] = _loc1_.rawData[-484731034 ^ -1839929928 ^ 0x69FE61D8 ^ 0x18B11307];
         this.matrix[0x4AEFA862 ^ 0x6E4F4CBF ^ 0x7E10E7EE ^ 0x5AB00331] = _loc1_.rawData[-1222555170 ^ -814880244 ^ -1364079191 ^ -688034183];
         this.matrix[0x26F12C25 ^ 0x428B386C ^ 0x016678FA ^ 0x651C6CB0] = _loc1_.rawData[0x32964AF0 ^ -2036632849 ^ 0x77B5F067 ^ -1011300229];
         var _loc3_:Number = -(_loc1_.rawData[-1185762411 ^ 0x3B21D4AE ^ 0x735277C0 ^ -249491205] * this.matrix[0x181E55ED ^ -435759604 ^ -1912990555 ^ 0x73E29740] + _loc1_.rawData[-574575034 ^ 0x5FEA6D9E ^ -2091221873 ^ 0x0170BF56] * this.matrix[0x58BA383A ^ -1019583088 ^ 0x1F6639F4 ^ -2065275817] + _loc1_.rawData[0x0A173986 ^ -1071931770 ^ 0x4689609D ^ -1937389665] * this.matrix[0x35250377 ^ 0x5958E313 ^ -1848293927 ^ -39279181] + _loc1_.rawData[0x68C20BDE ^ -896058104 ^ 0x450169E8 ^ -413900995] * this.matrix[-237151132 ^ -1495298259 ^ -2025784301 ^ -800968875]);
         this.matrix[-1901464919 ^ 0x755F1D61 ^ -151094279 ^ 0x0D089434] = _loc1_.rawData[-426976137 ^ 0x7095CACD ^ 0x730E9BE5 ^ -451441317];
         this.matrix[0x613CA4FC ^ 0x551D6B6B ^ 0x44A596FE ^ 0x7084596F] = _loc1_.rawData[0x707C8AAA ^ 0x166C66FB ^ -804816836 ^ -1239968664];
         this.matrix[0x58A33F29 ^ -116224043 ^ 0x26002119 ^ -2018405918] = _loc1_.rawData[0x7D8FF3F4 ^ 0x20DB5DDF ^ -503620911 ^ -1129319172];
         this.matrix[0x4DFCC556 ^ -1741283418 ^ -2134886863 ^ 0x550AECC9] = _loc1_.rawData[-1723157409 ^ -1894295283 ^ -630178871 ^ -869411172];
         var _loc4_:Number = -(_loc1_.rawData[-301358023 ^ 0x253BC5FA ^ -1030082947 ^ 0x09A84FBA] * this.matrix[0x4BFC71D9 ^ -784584909 ^ -1653686973 ^ 0x07AEE3AD] + _loc1_.rawData[0x457F587D ^ -1170957830 ^ 0x20C1B7FB ^ -544573831] * this.matrix[-472520612 ^ -1859611850 ^ -234233019 ^ -2131453914] + _loc1_.rawData[0x4AF353C6 ^ 0x24A168E5 ^ -468074303 ^ -1974731804] * this.matrix[0x7B5839F4 ^ 0x4BCF2098 ^ -351214101 ^ -611844983] + _loc1_.rawData[0x54509C3D ^ 0x2F9A0BC8 ^ 0x719E4C6B ^ 0x0A54DB99] * this.matrix[0x71014EFA ^ -454123594 ^ -1864649385 ^ 0x05346414]);
         this.matrix[0x3A2C320C ^ 0x7A3EC94C ^ -1678867365 ^ -604209391] = _loc1_.rawData[0x7E2726D6 ^ 0x0FFC813D ^ -891066596 ^ -1153908481];
         this.matrix[0x4E7FFFB2 ^ -1066302899 ^ -2046900744 ^ 0x0BF0B80C] = _loc1_.rawData[-1940272127 ^ 0x772AF47F ^ 0x23FE2DA5 ^ -661842478];
         this.matrix[0x49EA5A69 ^ 0x242D9EB0 ^ 0x6EEB321F ^ 0x032CF6CA] = _loc1_.rawData[-1395194664 ^ -1797944771 ^ -191188466 ^ -862438175];
         this.matrix[-232501734 ^ 0x184C84BE ^ 0x1AC0378A ^ -257360605] = _loc1_.rawData[0x715A3314 ^ 0x0907D2B1 ^ -597765736 ^ -1543294922];
         var _loc5_:Number = -(_loc1_.rawData[-521841464 ^ 0x3035B605 ^ -1389364451 ^ 0x7DFF19D8] * this.matrix[-1324680880 ^ -1095726264 ^ -1897125122 ^ -2125047582] + _loc1_.rawData[0x17B24627 ^ -1129858035 ^ -2088493088 ^ 0x2891E5C3] * this.matrix[-1466863779 ^ -1359213471 ^ 0x779D5DD1 ^ 0x71F03EE4] + _loc1_.rawData[0x25C57954 ^ -2057985970 ^ 0x0ECD4E74 ^ -1369598108] * this.matrix[-1259641124 ^ 0x08B761E2 ^ 0x0B8F0118 ^ -1210907096] + _loc1_.rawData[-1966653980 ^ 0x7F410D3C ^ 0x476F4FF2 ^ -1293320415] * this.matrix[0x6A339F4F ^ 0x673CBAB0 ^ 0x0E5FE643 ^ 0x0350C3B3]);
         this.matrix[-1913585356 ^ -1833950862 ^ 0x68700F6F ^ 0x77312F26] = _loc1_.rawData[-551118999 ^ -660750489 ^ -1123762168 ^ -1161828342];
         this.matrix[0x304F48C3 ^ -1690292613 ^ 0x71B21260 ^ -625118008] = _loc1_.rawData[0x6E72A285 ^ -1651457402 ^ -2034212059 ^ 0x7522032B];
         this.matrix[-2027288859 ^ -552761171 ^ 0x3C36D153 ^ 0x64115F0A] = _loc1_.rawData[-707688088 ^ -257473403 ^ -415734598 ^ -1035032231];
         this.matrix[-333789664 ^ -1845911372 ^ 0x71A5C1F1 ^ 0x0C46A777] = _loc1_.rawData[0x5FAFE8A8 ^ -767526170 ^ -1863551408 ^ 0x1D03E411];
         var _loc6_:Number = -(_loc1_.rawData[-1560746121 ^ -1454667990 ^ 0x25A910F7 ^ 0x2E1A70A6] * this.matrix[0x299787BD ^ -1483267772 ^ 0x699621AA ^ -409565353] + _loc1_.rawData[-14281606 ^ 0x1BD8C208 ^ 0x76A43D04 ^ -1839535237] * this.matrix[-1825224170 ^ 0x3221C171 ^ -1857958716 ^ 0x305547AA] + _loc1_.rawData[0x27C85171 ^ -1755941442 ^ 0x4BF77C04 ^ -76982075] * this.matrix[0x293DA506 ^ -698985217 ^ -1158139740 ^ 0x4593C153] + _loc1_.rawData[-764588618 ^ 0x02570E18 ^ 0x51023805 ^ -2127004764] * this.matrix[0x0C962D73 ^ -1893191833 ^ -2139720756 ^ 0x03C871D7]);
         this.matrix[-2065246712 ^ 0x2674D987 ^ 0x7AA35BCD ^ -667855802] = _loc3_;
         this.matrix[0x62F4FE6B ^ 0x7E358852 ^ -300211068 ^ -220573004] = _loc4_;
         this.matrix[0x49FF297C ^ -10821015 ^ 0x0AE622C4 ^ -1136399905] = _loc5_;
         this.matrix[-173264419 ^ 0x07959D19 ^ -1749072179 ^ 0x6586EA1A] = _loc6_;
         return true;
      }
      
      public function applyMatrix(param1:uint) : uint
      {
         var _loc2_:Number = param1 >>> (-450821992 ^ 0x5AFF1CB8 ^ 0x60B2A7B0 ^ -546522232) & (-1090489227 ^ 0x485B0702 ^ 0x0CC76E82 ^ -73655030);
         var _loc3_:Number = param1 >>> (0x0F0D6FFE ^ 0x13A482C9 ^ -718249786 ^ -912683551) & (0x74EDC32C ^ -665509381 ^ -231801245 ^ 0x5E961C4B);
         var _loc4_:Number = param1 >>> (0x2624CBB6 ^ 0x0890A91A ^ -2025816151 ^ -1443619571) & (-2045479472 ^ 0x13AA93EA ^ -895899394 ^ 0x5F274E3B);
         var _loc5_:Number = param1 & (-852822194 ^ -927384055 ^ 0x467D31E4 ^ 0x43EEF85C);
         var _loc6_:int = _39d7d82359bf8046fe8ef6c4._ed4a735c5a6981f99dda5b73("掬揨揌揹挗捵捩捭掲掻掣揞揪捉揹捂按持揮掚挏掳挜挼","掲揠揯探捕掀捊捀捥挦揎掭捱挨挷揪") + _loc3_ * this.matrix[0x4883B85B ^ 0x1EBB2821 ^ 0x1A2226B8 ^ 0x4C1AB6C2] + _loc4_ * this.matrix[0x55603E0F ^ -286804637 ^ -1835132538 ^ 0x291992EB] + _loc5_ * this.matrix[0x60EC0198 ^ 0x07EB3CD2 ^ -896704812 ^ -1383439460] + _loc2_ * this.matrix[0x0D4C595F ^ 0x6CEE498C ^ 0x3125EE98 ^ 0x5087FE48] + this.matrix[0x0A644456 ^ 0x12A664A4 ^ 0x553E3AE5 ^ 0x4DFC1A13];
         var _loc7_:int = _433075a5d49397e40222eeae._9417d5d828724209ec5cfbb1("၊ဌၕწပႽဥჁჍႦ႑ၗၼဥႍၭჳ჎ႥႦၴქბႊ","ါဨჅဣၧညၖ႒ီႄႆၳှၛႋႄ") + _loc3_ * this.matrix[0x25BD6F32 ^ 0x0528382C ^ -516911980 ^ -1046094961] + _loc4_ * this.matrix[-42426758 ^ -2009012164 ^ 0x37C195A9 ^ 0x42F9E3E9] + _loc5_ * this.matrix[0x28228B07 ^ 0x50B453A0 ^ 0x6292695B ^ 0x1A04B1FB] + _loc2_ * this.matrix[-859837448 ^ -1711429544 ^ 0x40026E71 ^ 0x15402DD9] + this.matrix[-1126545594 ^ -1882125918 ^ -1272846767 ^ -2027247428];
         var _loc8_:int = _433075a5d49397e40222eeae._9417d5d828724209ec5cfbb1("ၮჍၞၴဣနႸကႚჇဈ႖ထ၅ႏ႒ၫဉ၀႐ုရ္჋","჻ၐဗၹၐဟဇၾჄြဢ႟႞႖လდ") + _loc3_ * this.matrix[-540638236 ^ 0x3BFF3403 ^ 0x2E412EDF ^ -898066126] + _loc4_ * this.matrix[-2017241477 ^ -321302240 ^ -499120619 ^ -1990590139] + _loc5_ * this.matrix[-1551873664 ^ -1168288803 ^ 0x04FC4440 ^ 0x1D215E11] + _loc2_ * this.matrix[0x6E0D48D1 ^ -1022759027 ^ -418493667 ^ 0x4A0AEC4C] + this.matrix[0x017208CC ^ -984109373 ^ 0x4495DB6D ^ -2135917204];
         var _loc9_:int = _95da7f1147c669197db81295._6371735dc9287bd2d9618c1e("剘刁刨募剥勲剏刲剴劭制勦劄剒勒剸劁劵劊剙勂刚勚勆","勄剄勍剑勅劍労勜刘劲刻前剩利勬劔") + _loc3_ * this.matrix[0x66F121BF ^ -645709552 ^ -761107633 ^ 0x6DD00BEF] + _loc4_ * this.matrix[-2126536683 ^ 0x6E521EEE ^ -1585401250 ^ 0x4EED0CB5] + _loc5_ * this.matrix[0x34933892 ^ 0x2F4439F7 ^ 0x06E8E102 ^ 0x1D3FE076] + _loc2_ * this.matrix[0x229A64FC ^ 0x7EAC840C ^ -1243741674 ^ -370613516] + this.matrix[-1338963924 ^ -766145792 ^ -1316623140 ^ -740200477];
         if(_loc9_ < (0x5D7B5181 ^ 0x243D58D1 ^ 0x4744FA40 ^ 0x3E02F310))
         {
            _loc9_ = -920757284 ^ 0x59A7E5B8 ^ 0x63A1137A ^ -216486626;
         }
         if(_loc9_ > (-1129254176 ^ -250551833 ^ -1412032933 ^ -428472925))
         {
            _loc9_ = 0x5A4CF194 ^ -833836249 ^ -1567545948 ^ 0x36917FE8;
         }
         if(_loc6_ < (-690316019 ^ -216003077 ^ 0x2AE288D1 ^ 0x0F181827))
         {
            _loc6_ = 0x1FFC3DC9 ^ -1746493142 ^ 0x6E80FCA4 ^ -426090425;
         }
         if(_loc6_ > (-2007433001 ^ 0x553E1B7D ^ -202303041 ^ 0x2E9602EA))
         {
            _loc6_ = -1838055868 ^ -2070366371 ^ 0x323CBA0E ^ 0x24D573E8;
         }
         if(_loc7_ < (0x0A08449E ^ 0x1BC48846 ^ 0x6E0982E3 ^ 0x7FC54E3B))
         {
            _loc7_ = -1692001074 ^ 0x72733147 ^ -723976825 ^ 0x3D8DD00E;
         }
         if(_loc7_ > (-1667889659 ^ 0x6A59E658 ^ -728358268 ^ 0x2259C226))
         {
            _loc7_ = 0x771F6786 ^ -772949313 ^ 0x275A1498 ^ -2119644834;
         }
         if(_loc8_ < (0x67AC12C3 ^ 0x173F8B70 ^ -1442838883 ^ -627859666))
         {
            _loc8_ = 0x2DB9A8BE ^ 0x2BDEBEA2 ^ 0x1DFAF9FB ^ 0x1B9DEFE7;
         }
         if(_loc8_ > (-386442238 ^ -35146178 ^ -164859791 ^ -482567502))
         {
            _loc8_ = 0x04F6F302 ^ 0x07A2B270 ^ 0x5E237368 ^ 0x5D7732E5;
         }
         return _loc9_ << (-972170595 ^ -1008600674 ^ 0x0979DD83 ^ 0x0C95FE98) | _loc6_ << (0x1D935D06 ^ -1428778656 ^ -216882721 ^ 0x44576DA9) | _loc7_ << (-1760716500 ^ 0x057ED423 ^ 0x6C208CB3 ^ -28065356) | _loc8_;
      }
      
      public function transformVector(param1:Array) : void
      {
         if(param1.length != (0x4E88ACCA ^ -413562930 ^ -402536045 ^ 0x41D0E293))
         {
            return;
         }
         var _loc2_:Number = param1[0x64EF90E9 ^ -786894432 ^ 0x0C071307 ^ -1175424434] * this.matrix[0x30F13F10 ^ -366362367 ^ 0x389F9DBC ^ -498637907] + param1[0x0B420C44 ^ 0x65ED8C96 ^ -701218729 ^ -1197752188] * this.matrix[0x138C0891 ^ -239353990 ^ -1632247781 ^ 0x7C8257F1] + param1[0x46A3D425 ^ -609339717 ^ -715056978 ^ 0x486CFA32] * this.matrix[-938303806 ^ -1752759143 ^ 0x6B302E70 ^ 0x34A5B429] + param1[-1939585579 ^ 0x3C4677EB ^ -241986603 ^ 0x41B1A1E8] * this.matrix[0x5733BD12 ^ -748031387 ^ -195937742 ^ 0x70087546] + this.matrix[0x3D0F38FF ^ -868500568 ^ 0x2FC52629 ^ -554588806];
         var _loc3_:Number = param1[0x6CF1E933 ^ 0x25D157C1 ^ 0x49FA4906 ^ 0xDAF7F4] * this.matrix[-1209580028 ^ -2121012446 ^ 0x29FBD772 ^ 0x1F8F7A51] + param1[-1320709927 ^ 0x6B7D8C6F ^ 0x68BDE3DA ^ -1299710099] * this.matrix[-88506231 ^ 0x311F404C ^ -1191434656 ^ 0x735AE6A3] + param1[-616658237 ^ 0x76C79AF6 ^ 0x5E1497A2 ^ -202537067] * this.matrix[-75644055 ^ -1888574430 ^ 0x62979B3A ^ 0x1684FC76] + param1[-2145770882 ^ -524856203 ^ -816028601 ^ -1343155633] * this.matrix[0x7729269E ^ -282019943 ^ 0x63301FF8 ^ -81162505] + this.matrix[-702002491 ^ 0x108F1641 ^ 0x44004FAE ^ -2102979805];
         var _loc4_:Number = param1[-1887698759 ^ -323371025 ^ -1053303648 ^ -1561173002] * this.matrix[-1140455565 ^ -1701196743 ^ 0x257709F4 ^ 0x03E8C2B4] + param1[-690833732 ^ -1673253627 ^ 0x6ADF64C0 ^ 0x2049FF78] * this.matrix[0x026D42C0 ^ 0x65E6B6A1 ^ 0x49164EE5 ^ 0x2E9DBA8F] + param1[0x107423F2 ^ 0x238CB902 ^ -1742076346 ^ -1412260684] * this.matrix[-535705363 ^ -1008481526 ^ 0x4F1A0225 ^ 0x6CE801CE] + param1[0x6C2EC39A ^ 0x2B16DACD ^ 0x091D6BCE ^ 0x4E25729A] * this.matrix[-1152661547 ^ -798087789 ^ -1127095850 ^ -671874147] + this.matrix[-1772809341 ^ 0x0936C41D ^ -617027511 ^ 0x445B3FD9];
         var _loc5_:Number = param1[-930390880 ^ -24210441 ^ -1465820820 ^ -1633380805] * this.matrix[-1937700508 ^ 0x162053D8 ^ 0x67737228 ^ -36558693] + param1[-1077397640 ^ -523367146 ^ 0x7DB940FE ^ 0x22BF7A91] * this.matrix[0x6F571A04 ^ -1172479221 ^ 0x65D108EB ^ -1331990028] + param1[-402823110 ^ -2062687935 ^ 0x7AEB1936 ^ 0x181B904F] * this.matrix[0x26B53448 ^ -55136402 ^ 0x4D2611A5 ^ -1759147374] + param1[-527504078 ^ 0x4B952FB3 ^ 0x18EFDE09 ^ -1275847541] * this.matrix[-1205796275 ^ 0x60A85BA0 ^ -1971584676 ^ 0x52F558A3] + this.matrix[0x697FE3C3 ^ 0x69C3C9DD ^ 0x5732066F ^ 0x578E2C62];
         param1[0x64C727B5 ^ 0x122F9ED1 ^ -1577473517 ^ -686746761] = _loc2_;
         param1[-280671642 ^ -1071117599 ^ 0x768AA036 ^ 0x59E7E0B0] = _loc3_;
         param1[0x1D3D8319 ^ 0x6CAD6B67 ^ -1349200792 ^ -570147820] = _loc4_;
         param1[-293462840 ^ 0x4ACA5F11 ^ -66725261 ^ 0x584D99A9] = _loc5_;
      }
      
      private function initHue() : void
      {
         var _loc1_:Array = null;
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = _39d7d82359bf8046fe8ef6c4._ed4a735c5a6981f99dda5b73("描探挩探採掕挎掋挜掠挼掏掙掱捨挛揸捅掙捨挞挘挮捻","捔探捿揇挐揻捊挅捻插揵揦捨掩挂挀");
         if(!this.hueInitialized)
         {
            this.hueInitialized = true;
            this.preHue = new ColorMatrix();
            this.preHue.rotateRed(-2123278663 ^ -1682076277 ^ 0x74EA4F27 ^ 0x6E269438);
            this.preHue.rotateGreen(-_loc4_);
            _loc1_ = [LUMA_R2,LUMA_G2,LUMA_B2,-527505874 ^ -794583553 ^ -257846883 ^ -1064506803];
            this.preHue.transformVector(_loc1_);
            _loc2_ = _loc1_[-339123054 ^ 0x1474688B ^ -2067481167 ^ 0x7B79B1A8] / _loc1_[-1443465629 ^ -1151874665 ^ 0x75BEED45 ^ 0x671F52B3];
            _loc3_ = _loc1_[0x37838D07 ^ 0x203690F1 ^ -1641896545 ^ -1986545560] / _loc1_[0x1FABEE21 ^ 0x665449CE ^ 0x5883CDA5 ^ 0x217C6A48];
            this.preHue.shearBlue(_loc2_,_loc3_);
            this.postHue = new ColorMatrix();
            this.postHue.shearBlue(-_loc2_,-_loc3_);
            this.postHue.rotateGreen(_loc4_);
            this.postHue.rotateRed(0x7E4877C4 ^ 0x206A7581 ^ 0x087A8D39 ^ -1448644433);
         }
      }
      
      private function rotateColor(param1:Number, param2:int, param3:int) : void
      {
         param1 *= RAD;
         var _loc4_:Array = IDENTITY.concat();
         _loc4_[param2 + param2 * (0x64CF043D ^ -2031577229 ^ 0x2EFA2FB2 ^ -857883399)] = _loc4_[param3 + param3 * (-613422100 ^ 0x7006E903 ^ -210094587 ^ 0x581334EF)] = Math.cos(param1);
         _loc4_[param3 + param2 * (0x62B49406 ^ 0x024613 ^ -533021337 ^ -2104725641)] = Math.sin(param1);
         _loc4_[param2 + param3 * (-1586594901 ^ -463330196 ^ -1292342697 ^ -134990443)] = -Math.sin(param1);
         this.concat(_loc4_);
      }
      
      private function shearColor(param1:int, param2:int, param3:Number, param4:int, param5:Number) : void
      {
         var _loc6_:Array = IDENTITY.concat();
         _loc6_[param2 + param1 * (0x5D0FD0C5 ^ -85876004 ^ 0x4DC17BC4 ^ -366016040)] = param3;
         _loc6_[param4 + param1 * (0x0EC3E214 ^ -188095395 ^ -1026869580 ^ 0x38C130F8)] = param5;
         this.concat(_loc6_);
      }
      
      public function toString() : String
      {
         return this.matrix.toString();
      }
      
      public function readFromColorTransform(param1:ColorTransform) : void
      {
         var _loc2_:Array = new Array();
         var _temp_3:* = _loc2_;
         var _temp_2:* = param1.redMultiplier;
         var _temp_1:* = -654638179 ^ -103187538 ^ 0x0C158FE2 ^ 0x2D37F7D1;
         _loc2_ = _temp_3.concat([_temp_2,_temp_1,_temp_1,_temp_1,param1.redOffset]);
         var _temp_7:* = _loc2_;
         var _temp_6:* = 0x7102B769 ^ 0x01CC7E0E ^ -882462519 ^ -1146586706;
         var _temp_5:* = param1.greenMultiplier;
         var _temp_4:* = 0x544C5670 ^ -833028117 ^ 0x2ABAC2CA ^ -1330746543;
         _loc2_ = _temp_7.concat([_temp_6,_temp_5,_temp_4,_temp_4,param1.greenOffset]);
         var _temp_9:* = _loc2_;
         var _temp_8:* = 0x2D5047D5 ^ 0x0710EC5E ^ -719612627 ^ -10797402;
         _loc2_ = _temp_9.concat([_temp_8,_temp_8,param1.blueMultiplier,0x19C93E53 ^ -547939096 ^ -613674188 ^ 0x1DF2318F,param1.blueOffset]);
         var _temp_11:* = _loc2_;
         var _temp_10:* = -1027203440 ^ -1578923312 ^ 0x2013435C ^ 0x4336D71C;
         _loc2_ = _temp_11.concat([_temp_10,_temp_10,_temp_10,param1.alphaMultiplier,param1.alphaOffset]);
         this.matrix = _loc2_;
      }
   }
}

