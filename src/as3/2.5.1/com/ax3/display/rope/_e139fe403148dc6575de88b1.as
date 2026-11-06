package com.ax3.display.rope
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.display._473832fc48e3c8aba3f6d2fe;
   import flash.display.Shape;
   import flash.display.Sprite;
   import flash.geom.Point;
   import flash.utils.getTimer;
   
   public class _e139fe403148dc6575de88b1 extends Sprite
   {
      
      public static const FLEX_SOFT_COEF:Number = _39d7d82359bf8046fe8ef6c4._ed4a735c5a6981f99dda5b73("挦掣捰据揳揀捨揓揁揟揼掙揶捕换振揟揌挏掶挄挕掶揃","掛捈挰掂掤掳捯捘挿捑揬揩挝揲措挞");
      
      public static const FLEX_HARD_COEF:Number = _433075a5d49397e40222eeae._9417d5d828724209ec5cfbb1("၈ၙၖვႣဗცာဌჲၑဝဍ၂ိႇဧႩဍၭჅဗႬၜ","ႦჼႂႷႜဦဌოეყသ။ူဌ၉၈");
      
      public static const SOFT_ROPE:Number = _39d7d82359bf8046fe8ef6c4._ed4a735c5a6981f99dda5b73("捯挈挬捅掿掑捝掤揝掌控捱捲掃揑挱挲掴捜挬換掕挹掔","揊据挫揠挹掞挬掼揠探捫捶捴掓揉捦");
      
      public static const HARD_ROPE:Number = _95da7f1147c669197db81295._6371735dc9287bd2d9618c1e("勹剈务劇劊刲劰劜勈刓刃刬劘剸刋勄勇刜劒勊勀劉劯分","劾勂刵劃判別勏劬剛劔剳剃勰勛勊剧");
      
      private static const _3e906341c8a55833fe7eb68a:Number = _433075a5d49397e40222eeae._9417d5d828724209ec5cfbb1("ႇႁူၖ၎ႃၗႺႝၸკ႐်ှႸၬႣცსႧၥဘႬ၌","ႃ၌တညဥჹၔႦၮထჽပႾလჟၬ");
      
      private var _bdd9cffa760807c726464b94:Number = 0.025;
      
      private var _f64310b5176d0f7ac70090c9:Number = 0.00001;
      
      private var _54c96136efea25ac475e0d98:Number = 1;
      
      private var _7aedb610768f0b3012000b77:Number = 1;
      
      private var _f972ea2aa9cdde72dc32ace3:Number = 30;
      
      private var _ec43240c5804c29b60ac91f7:Number = 0.03333333333333333;
      
      private var _796c5f05b81aaa1b01e94f64:Number = 0.03333333333333333;
      
      private var _623a315bcc75e275c49283b2:Number = 0.5;
      
      private var _65af51e89657faf09cd69dc0:Number = 4.905;
      
      private var _5fcdbaab63c9c6b76fef8843:Number = 100;
      
      private var _6bb7cd267cd43e41d3862b5d:Number = 0.5;
      
      private var _633b70ae2f5422164743f0f1:Number = 0.016666666666666666;
      
      private var _94eb1c9b586c4b85c38c4b26:uint = 3;
      
      private var _4015b98552ed8f86c411ecf3:Array = [];
      
      private var _ddb71e7629cbedb7247ccf03:Array = [];
      
      private var _7937aa2f395d269983f24e0e:Array = [];
      
      private var _5bc427b337e2b1eb0824030d:Array = [];
      
      private var _947dcb0753486dbc9814e3ec:Array = [];
      
      private var _4cc4df5e6c70a6bd0c62c1d4:Array = [];
      
      private var _asset:Shape = new Shape();
      
      private var _e669ffa5a23fb1335b623b99:Number = 0;
      
      private var _515c0ffafbf80c08a76c50e6:Number = 0;
      
      private var _076f99f7eda0aedd9b9ec90e:_473832fc48e3c8aba3f6d2fe = new _473832fc48e3c8aba3f6d2fe();
      
      private var _d47499eca9dc1a3be00b60c9:Point = new Point();
      
      public var endPoint:Point = new Point();
      
      private var _0a92b1b614b3993e7e4f1ae1:Number;
      
      private var _b6cc00ba0e9bb9d943943ef6:Number;
      
      private var _8cbf00201393abd251afbb0e:Number;
      
      private var _c29251f7b1ac4f3ae8ac17e3:Number;
      
      private var _d588d887c2171373edd2e3f4:Number;
      
      private var _7e6452aa03e9a10a1141c306:int = 2147483647;
      
      private const _8891a0da92413d3b9ae238c8:int = 2000;
      
      public function _e139fe403148dc6575de88b1(param1:_473832fc48e3c8aba3f6d2fe)
      {
         super();
         name = _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ဘွႛჾ၏်჈။Ⴓဝၕွႝဇႇၗ","Ⴟ႑့၇ჶႝဥႈၤဵჿჩჳშკს");
         this._076f99f7eda0aedd9b9ec90e = param1;
      }
      
      public function create() : void
      {
         var _loc1_:uint = uint(0x5096B31A ^ -1251388815 ^ 0x5F8B5D5C ^ -1166754761);
         while(_loc1_ <= this._f972ea2aa9cdde72dc32ace3)
         {
            this._4015b98552ed8f86c411ecf3[_loc1_] = (-55097483 ^ 0x1BAAF05C ^ 0x287E8BF5 ^ -815579946) + this._796c5f05b81aaa1b01e94f64 * this._5fcdbaab63c9c6b76fef8843 * _loc1_;
            this._ddb71e7629cbedb7247ccf03[_loc1_] = -742018032 ^ -877486653 ^ -557769632 ^ -961137223;
            this._7937aa2f395d269983f24e0e[_loc1_] = (0x4E86E836 ^ -469624071 ^ 0x620CA076 ^ -930590029) + this._796c5f05b81aaa1b01e94f64 * this._5fcdbaab63c9c6b76fef8843 * _loc1_;
            this._5bc427b337e2b1eb0824030d[_loc1_] = -37608526 ^ -872591770 ^ -1696803362 ^ -1394362368;
            this._947dcb0753486dbc9814e3ec[_loc1_] = -1084130312 ^ -383789499 ^ -378571822 ^ -1089347985;
            this._4cc4df5e6c70a6bd0c62c1d4[_loc1_] = -139913404 ^ 0x043434AC ^ -1415450418 ^ 0x583CD326;
            _loc1_++;
         }
         addChild(this._asset);
      }
      
      public function update(param1:Number) : void
      {
         var _loc2_:int = -461197730 ^ 0x62B49F4E ^ -1642613940 ^ 0x1821825C;
         var _loc3_:uint = uint(0x75B4B36B ^ 0x7AD8FE1B ^ -296515409 ^ -515914273);
         var _loc4_:Boolean = false;
         var _loc5_:uint = uint(-1916679973 ^ -203018050 ^ -263087625 ^ -1904844398);
         this._4015b98552ed8f86c411ecf3[0x31412558 ^ 0x71AD7B29 ^ 0x1C522BAD ^ 0x5CBE75DC] = this._d47499eca9dc1a3be00b60c9.x;
         this._ddb71e7629cbedb7247ccf03[-1291377560 ^ -745602590 ^ 0x380FD46C ^ 0x5887F1E6] = this._d47499eca9dc1a3be00b60c9.y;
         this._4015b98552ed8f86c411ecf3[this._f972ea2aa9cdde72dc32ace3] = this.endPoint.x;
         this._ddb71e7629cbedb7247ccf03[this._f972ea2aa9cdde72dc32ace3] = this.endPoint.y;
         if(getTimer() - this._7e6452aa03e9a10a1141c306 <= this._8891a0da92413d3b9ae238c8)
         {
            this._37d37097edbf0d1ebcd7faa6();
            this._835ce70a9368561f8bd1a450(param1);
            _loc2_ = this._f972ea2aa9cdde72dc32ace3 * param1;
            _loc3_ = uint(0x4FF066C3 ^ -712151856 ^ -1576602796 ^ 0x387BF947);
            while(_loc3_ <= _loc2_)
            {
               this._bc52fe61ea0df984b942c3a1(param1);
               _loc3_++;
            }
            this._asset.cacheAsBitmap = false;
            this._asset.graphics.clear();
            this._asset.graphics.lineStyle(this._076f99f7eda0aedd9b9ec90e.thickness,this._076f99f7eda0aedd9b9ec90e.color,this._076f99f7eda0aedd9b9ec90e.alpha,this._076f99f7eda0aedd9b9ec90e.pixelHinting,this._076f99f7eda0aedd9b9ec90e.scaleMode,this._076f99f7eda0aedd9b9ec90e.caps,this._076f99f7eda0aedd9b9ec90e.joints,this._076f99f7eda0aedd9b9ec90e.miterLimit);
            this._asset.graphics.moveTo(this._d47499eca9dc1a3be00b60c9.x,this._d47499eca9dc1a3be00b60c9.y);
            _loc4_ = true;
            _loc5_ = uint(0x6F39E722 ^ 0x389AA0CD ^ -182876766 ^ -1564818867);
            while(_loc5_ <= this._f972ea2aa9cdde72dc32ace3)
            {
               this._asset.graphics.lineTo(this._4015b98552ed8f86c411ecf3[_loc5_],this._ddb71e7629cbedb7247ccf03[_loc5_]);
               if(_loc4_ == false && _loc5_ != (-487994620 ^ -1398197134 ^ -456922248 ^ -1434250226) && _loc5_ != this._f972ea2aa9cdde72dc32ace3)
               {
                  this._e669ffa5a23fb1335b623b99 = this._4015b98552ed8f86c411ecf3[_loc5_] - this._7937aa2f395d269983f24e0e[_loc5_];
                  this._515c0ffafbf80c08a76c50e6 = this._ddb71e7629cbedb7247ccf03[_loc5_] - this._5bc427b337e2b1eb0824030d[_loc5_];
                  if(this._e669ffa5a23fb1335b623b99 > _39d7d82359bf8046fe8ef6c4._ed4a735c5a6981f99dda5b73("挫指揶捼揵挎掎捳掩掩挓掶揨掞揵按捞掟揬掂捘挮掼挑","採挶捛掣挣揣掺揨挝揬挿挽揣掫揭揆") || this._e669ffa5a23fb1335b623b99 < _39d7d82359bf8046fe8ef6c4._ed4a735c5a6981f99dda5b73("揫掋挪插挥捌揬挗捌掫掿掃掜掳掀捕挚捽捼揣掉揥挢捵","挓挄掗掑捱揍捹揲持揘提揫揎推揌掰") || this._515c0ffafbf80c08a76c50e6 > _95da7f1147c669197db81295._6371735dc9287bd2d9618c1e("刈勐動劆刏勹動劜勆剢勿剆刯劣劬剳劝剤務勊到刾剺劈","劝劢刂劀刼勊剝努剓刍剸勾刪劘剐劆") || this._515c0ffafbf80c08a76c50e6 < _433075a5d49397e40222eeae._9417d5d828724209ec5cfbb1("Ⴋၘ႞ႴჾჭႲႹၯႋၳဠဧႋ၉ႸႲჁჇု႕ჰႋ჋","჋ჽႳႬ႓ႉ჻့Ⴁပჶၑဉ჏ცტ"))
                  {
                     _loc4_ = true;
                  }
               }
               _loc5_++;
            }
            if(_loc4_)
            {
               this._e793d8e60eaab3c87ec6013c();
            }
            this._asset.graphics.lineTo(this.endPoint.x,this.endPoint.y);
            if(getTimer() - this._7e6452aa03e9a10a1141c306 > this._8891a0da92413d3b9ae238c8)
            {
               this._asset.cacheAsBitmap = true;
            }
         }
      }
      
      public function _e793d8e60eaab3c87ec6013c() : void
      {
         this._7e6452aa03e9a10a1141c306 = getTimer();
      }
      
      public function _835ce70a9368561f8bd1a450(param1:Number) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Number = NaN;
         var _loc4_:Number = this._633b70ae2f5422164743f0f1 * this._6bb7cd267cd43e41d3862b5d;
         var _loc5_:uint = uint(0x276A6933 ^ 0x7B4006BB ^ 0x6C5B0FC2 ^ 0x3071604A);
         while(_loc5_ <= this._f972ea2aa9cdde72dc32ace3)
         {
            _loc2_ = Number(this._4015b98552ed8f86c411ecf3[_loc5_]);
            _loc3_ = Number(this._ddb71e7629cbedb7247ccf03[_loc5_]);
            this._4015b98552ed8f86c411ecf3[_loc5_] += _3e906341c8a55833fe7eb68a * this._4015b98552ed8f86c411ecf3[_loc5_] - _3e906341c8a55833fe7eb68a * this._7937aa2f395d269983f24e0e[_loc5_] + this._947dcb0753486dbc9814e3ec[_loc5_] * this._5fcdbaab63c9c6b76fef8843 * _loc4_ * _loc4_;
            this._ddb71e7629cbedb7247ccf03[_loc5_] += _3e906341c8a55833fe7eb68a * this._ddb71e7629cbedb7247ccf03[_loc5_] - _3e906341c8a55833fe7eb68a * this._5bc427b337e2b1eb0824030d[_loc5_] + this._4cc4df5e6c70a6bd0c62c1d4[_loc5_] * this._5fcdbaab63c9c6b76fef8843 * _loc4_ * _loc4_;
            this._7937aa2f395d269983f24e0e[_loc5_] = _loc2_;
            this._5bc427b337e2b1eb0824030d[_loc5_] = _loc3_;
            _loc5_++;
         }
      }
      
      public function _37d37097edbf0d1ebcd7faa6() : void
      {
         var _loc1_:uint = uint(-945023115 ^ 0x04BB94A8 ^ 0x6C38B72F ^ -1355860749);
         while(_loc1_ <= this._f972ea2aa9cdde72dc32ace3 - 1)
         {
            this._4cc4df5e6c70a6bd0c62c1d4[_loc1_] = this._65af51e89657faf09cd69dc0;
            _loc1_++;
         }
      }
      
      public function _bc52fe61ea0df984b942c3a1(param1:Number) : void
      {
         var _loc2_:Number = NaN;
         if(isNaN(this._f64310b5176d0f7ac70090c9) == false)
         {
            _loc2_ = Point.distance(this._d47499eca9dc1a3be00b60c9,this.endPoint);
            if(_loc2_ > (-170358369 ^ -1718696839 ^ 0x3B1E107F ^ 0x57485D9A))
            {
               _loc2_ = -4233162 ^ -756046257 ^ 0x2E5598F5 ^ 0x0305568F;
            }
            this._796c5f05b81aaa1b01e94f64 = _loc2_ / this._f972ea2aa9cdde72dc32ace3 * this._f64310b5176d0f7ac70090c9;
         }
         var _loc3_:uint = uint(0x51A40D1D ^ -1049554901 ^ 0x6F9396AB ^ -12153956);
         while(_loc3_ <= this._f972ea2aa9cdde72dc32ace3)
         {
            this._0a92b1b614b3993e7e4f1ae1 = (this._4015b98552ed8f86c411ecf3[_loc3_] - this._4015b98552ed8f86c411ecf3[_loc3_ - 1]) / this._5fcdbaab63c9c6b76fef8843;
            this._b6cc00ba0e9bb9d943943ef6 = (this._ddb71e7629cbedb7247ccf03[_loc3_] - this._ddb71e7629cbedb7247ccf03[_loc3_ - 1]) / this._5fcdbaab63c9c6b76fef8843;
            this._8cbf00201393abd251afbb0e = Math.sqrt(this._0a92b1b614b3993e7e4f1ae1 * this._0a92b1b614b3993e7e4f1ae1 + this._b6cc00ba0e9bb9d943943ef6 * this._b6cc00ba0e9bb9d943943ef6);
            this._c29251f7b1ac4f3ae8ac17e3 = this._8cbf00201393abd251afbb0e - this._796c5f05b81aaa1b01e94f64;
            this._4015b98552ed8f86c411ecf3[_loc3_] -= this._0a92b1b614b3993e7e4f1ae1 / this._8cbf00201393abd251afbb0e * this._bdd9cffa760807c726464b94 * this._5fcdbaab63c9c6b76fef8843 * this._c29251f7b1ac4f3ae8ac17e3;
            this._ddb71e7629cbedb7247ccf03[_loc3_] -= this._b6cc00ba0e9bb9d943943ef6 / this._8cbf00201393abd251afbb0e * this._bdd9cffa760807c726464b94 * this._5fcdbaab63c9c6b76fef8843 * this._c29251f7b1ac4f3ae8ac17e3;
            this._4015b98552ed8f86c411ecf3[_loc3_ - 1] += this._0a92b1b614b3993e7e4f1ae1 / this._8cbf00201393abd251afbb0e * this._bdd9cffa760807c726464b94 * this._5fcdbaab63c9c6b76fef8843 * this._c29251f7b1ac4f3ae8ac17e3;
            this._ddb71e7629cbedb7247ccf03[_loc3_ - 1] += this._b6cc00ba0e9bb9d943943ef6 / this._8cbf00201393abd251afbb0e * this._bdd9cffa760807c726464b94 * this._5fcdbaab63c9c6b76fef8843 * this._c29251f7b1ac4f3ae8ac17e3;
            _loc3_++;
         }
      }
      
      public function set startPointX(param1:int) : void
      {
         var _loc2_:int = -1437022656 ^ -956072869 ^ -805980182 ^ -801562381;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x19748144 ^ 0x4BD8A79C ^ -1873662686 ^ -1335286024))
            {
               case 0:
                  if(this._d47499eca9dc1a3be00b60c9.x != param1)
                  {
                     _loc2_ = -871674315 ^ 0x5AAA73B7 ^ -1843582043 ^ 0x762B3B24;
                  }
                  else
                  {
                     _loc2_ = 0x7A8F3950 ^ 0x58CE0E7A ^ -1500400802 ^ -163075724;
                  }
                  break;
               case 1:
                  this._d47499eca9dc1a3be00b60c9.x = param1;
                  this._7e6452aa03e9a10a1141c306 = getTimer();
                  _loc2_ = 0x26FFCF90 ^ -1449527976 ^ -489281132 ^ 0x1F273E5C;
                  break;
               case 2:
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function set startPointY(param1:int) : void
      {
         var _loc2_:int = -1269274493 ^ 0x3822AB1F ^ -901491474 ^ -332905680;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x60CADD8A ^ -2084691726 ^ 0x6E8FC633 ^ 0x27EDEF0B))
            {
               case 0:
                  return;
               case 1:
                  this._d47499eca9dc1a3be00b60c9.y = param1;
                  this._7e6452aa03e9a10a1141c306 = getTimer();
                  _loc2_ = -1434993028 ^ 0x7A33D451 ^ 0x60A5E2ED ^ 0x1AF75C80;
                  break;
               case 2:
                  if(this._d47499eca9dc1a3be00b60c9.y != param1)
                  {
                     _loc2_ = -1506728458 ^ -1989234079 ^ -343933922 ^ 0x6E36BFC8;
                  }
                  else
                  {
                     _loc2_ = 0x23240987 ^ 0x68DAE3F0 ^ -1683418257 ^ 0x7A412D58;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function get startPointX() : int
      {
         return this._d47499eca9dc1a3be00b60c9.x;
      }
      
      public function get startPointY() : int
      {
         return this._d47499eca9dc1a3be00b60c9.y;
      }
      
      public function set endPointX(param1:int) : void
      {
         var _loc2_:int = -1785993227 ^ 0x21B00D64 ^ 0x2293B524 ^ 0x124BB7F4;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x21A05F7F ^ -238437620 ^ 0x144C3D64 ^ 0x40C63157))
            {
               case 0:
                  this.endPoint.x = param1;
                  this._7e6452aa03e9a10a1141c306 = getTimer();
                  _loc2_ = -1460956344 ^ -379912498 ^ -1095737582 ^ 0x7BE2DAD6;
                  break;
               case 1:
                  if(this.endPoint.x != param1)
                  {
                     _loc2_ = -1367548839 ^ -1728016309 ^ -459113216 ^ 0x573DD952;
                  }
                  else
                  {
                     _loc2_ = 0x3512437B ^ -1881488208 ^ 0x1C944F45 ^ 0x22BF20CC;
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
      
      public function set endPointY(param1:int) : void
      {
         var _loc2_:int = -939343081 ^ -743246506 ^ 0x0260909D ^ -562281898;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x5BBBCD15 ^ 0x21301C3E ^ 0x08BAD924 ^ -1247941497))
            {
               case 0:
                  this.endPoint.y = param1;
                  this._7e6452aa03e9a10a1141c306 = getTimer();
                  _loc2_ = -1228693856 ^ 0x25756FC5 ^ -806711476 ^ -1678730592;
                  break;
               case 1:
                  return;
               case 2:
                  if(this.endPoint.y != param1)
                  {
                     _loc2_ = -693638374 ^ -827033464 ^ 0x7304EC6E ^ -1396991116;
                  }
                  else
                  {
                     _loc2_ = -969437543 ^ 0x63AD7F72 ^ 0x252B7028 ^ 0x471D654A;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function get endPointX() : int
      {
         return this.endPoint.x;
      }
      
      public function get endPointY() : int
      {
         return this.endPoint.y;
      }
      
      public function set flexibilityCoef(param1:Number) : void
      {
         this._bdd9cffa760807c726464b94 = param1;
      }
      
      public function set autoLengthCoef(param1:int) : void
      {
         this._f64310b5176d0f7ac70090c9 = param1;
      }
      
      public function get lastButOneX() : Number
      {
         return this._4015b98552ed8f86c411ecf3.length > (0x0BBD1978 ^ 0x18EC1192 ^ 0x50ED0402 ^ 0x43BC0CEA) ? Number(this._4015b98552ed8f86c411ecf3[this._4015b98552ed8f86c411ecf3.length - (-1503630642 ^ -1472923043 ^ 0x2095DCBC ^ 0x2EC14C2D)]) : Number(this._4015b98552ed8f86c411ecf3[this._4015b98552ed8f86c411ecf3.length - 1]);
      }
      
      public function get lastButOneY() : Number
      {
         return this._ddb71e7629cbedb7247ccf03.length > (-1018163356 ^ -226587472 ^ -1922771979 ^ -1135980509) ? Number(this._ddb71e7629cbedb7247ccf03[this._ddb71e7629cbedb7247ccf03.length - (0x09052600 ^ 0x36E5445D ^ 0x3BE21CA0 ^ 0x04027EFF)]) : Number(this._ddb71e7629cbedb7247ccf03[this._ddb71e7629cbedb7247ccf03.length - 1]);
      }
      
      public function set lastChangeTsMS(param1:int) : void
      {
         this._7e6452aa03e9a10a1141c306 = param1;
      }
      
      public function _b105ebfb1439d5efa2514f92(param1:uint) : Number
      {
         return Number(this._4015b98552ed8f86c411ecf3[param1]);
      }
      
      public function _6a8899a6316b18390227bcc4(param1:uint) : Number
      {
         return Number(this._ddb71e7629cbedb7247ccf03[param1]);
      }
   }
}

