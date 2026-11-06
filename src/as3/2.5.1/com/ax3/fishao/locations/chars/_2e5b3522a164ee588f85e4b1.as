package com.ax3.fishao.locations.chars
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.fishao.Config;
   import com.ax3.fishao.debug._9b189a790efd59581443eb40;
   import com.ax3.fishao.locations.base._bd60f9ad6ef4aaf28041ce8f;
   import com.ax3.fishao.locations.entries._08c120b706560fce9302bcab;
   import com.ax3.fishao.locations.npc.base._ba120ae720a391732e866217;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.watercraft._a00a2200c99ccb365fe1b90e;
   import com.ax3.geom._a5c3dbdfbeb709a5bf92d27c;
   import com.ax3.jpsearch._3f0b8f3bb126033c881dfbc2;
   import com.ax3.jpsearch._adf7395a2a04cf1a777de682;
   import com.ax3.utils.math.limit;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.geom.Point;
   import flash.utils.getTimer;
   
   public class _2e5b3522a164ee588f85e4b1 implements _8b5edf1c1de2751d1bc6fca0
   {
      
      private static var _2c46ca2b86394b9a6e861b75:int = 0x408633C6 ^ 0x41980096 ^ -903472386 ^ -885511762;
      
      public static var maxSpeed:Number = -1414451922 ^ -1607536431 ^ 0x04E19FFE ^ 0x0F7E4205;
      
      var _temp_4:* = Vector.<Point>;
      var _temp_3:* = global;
      var _temp_2:* = §§findproperty(Point);
      var _temp_1:* = -1200609322 ^ 0x3BF1E67D ^ 0x738C075A ^ -267532559;
      
      public static var testPoints:Vector.<Point> = _temp_4([new Point(_temp_1,_temp_1),new Point(-893603610 ^ -1295616922 ^ -1946214009 ^ -209328895,0x21008B57 ^ -664974582 ^ -734932743 ^ 0x2D6C10A4),new Point(-1311280409 ^ 0x695143A3 ^ -1085598330 ^ 0x67CD24C6,-1205782511 ^ 0x1F40CA6A ^ 0x5C0B0393 ^ -76877333),new Point(-1490472831 ^ 0x496562D8 ^ 0x43209ADB ^ -1385379710,-914949784 ^ -463915355 ^ -121965405 ^ -711640214),new Point(-1787457487 ^ 0x628F8F0B ^ 0x0152ED79 ^ 0x09570DBF,-52632372 ^ 0x259FA3CA ^ 0x3DB4EC87 ^ -453530750),new Point(0x258E1498 ^ -1560433210 ^ 0x2D28A7F1 ^ 0x55A4E155,-613297073 ^ 0x6418B67D ^ -1524479501 ^ 0x1A4B2BC1),new Point(-1110881281 ^ -1581203786 ^ -1787896133 ^ 0x7698D40E,0x067CA4ED ^ 0x21386FE3 ^ 0x424EB1AD ^ -1695185570),new Point(0x384A905F ^ -1324248093 ^ -723264304 ^ 0x5DB8DF6C,-1198276972 ^ -718432972 ^ -909340208 ^ 0x5B8D458C),new Point(0x13F67D9D ^ -991780376 ^ -1939708215 ^ -1534507712,0x69F57522 ^ -1219096000 ^ 0x476F2055 ^ -1714665676),new Point(-1424472904 ^ 0x3A38564C ^ -825321481 ^ 0x5FEE8500
      ,-1669736064 ^ -1945540338 ^ 0x055FEFFE ^ 0x152F5F70),new Point(0x28BECF4E ^ 0x44A86EA6 ^ 0x19E69964 ^ 0x75F0388E,_95da7f1147c669197db81295._6371735dc9287bd2d9618c1e("剸剸剐務刾勵剨剩剉勔务判刻勫劭勔剄勬劒勓劓勁勉劅","剱剅劁刨刌剫剿刵刀創劽劷刹刭削到")),new Point(-1771632643 ^ 0x4A7DDD6F ^ 0x44374094 ^ -1741841914,0x639F3D82 ^ -165839171 ^ -1848155414 ^ 0x045521D7),new Point(0x32FBC6F7 ^ -932824567 ^ -1400918452 ^ -1457672884,_433075a5d49397e40222eeae._9417d5d828724209ec5cfbb1("ႡဆვბჵპႼဴႉႠႥသგႪჯဒ჎ဧသႁყၩ႐ჸ","ძဳဪ჈ႌႤნპႱႝၧဳ၃ဒ၄ၗ")),new Point(-697927887 ^ 0x597E149E ^ -940475712 ^ -1223235950,0x5CB07A77 ^ -750093664 ^ -2118754707 ^ 0x0E4C5EBA),new Point(-657239079 ^ 0x452E96FB ^ 0x0646BD65 ^ 0x644487B9,_95da7f1147c669197db81295._6371735dc9287bd2d9618c1e("勓刄劇创劬劯勌劅劇刃刔劃剐加勆創劝刞勵剭剛剒剋创","剔劬劬剚剒剿剖力劷勏劥刬剈刾勣刋")),new Point(0x058F97A6 ^ -1514137208 ^ -1511888604 ^ 0x05ADE70A,0x2D52331D ^ 0x12DD49E8 ^ 0x1D971388 ^ -572025213),new Point(-1972173247 ^ -2052908909 ^ -1505623340 ^ 0x566DE3F8,_433075a5d49397e40222eeae._9417d5d828724209ec5cfbb1("ၵ၍ჂჅ၍ၩჯဿ၅ဿၓხၨဠႦႡပჲံဳယႣၛၣ"
      ,"႐သჄၹဘ၏Ⴇၧ႘ო჻ჳ၇ဆၮჰ"))]);
      
      public static var testOffsetPoints:Vector.<Point> = Vector.<Point>([new Point(0x03260987 ^ -1835356095 ^ -2021461237 ^ 0x163E4AC7,0x3CF82C97 ^ 0x13321BDC ^ -1654715711 ^ -1298842230),new Point(0x58E2EA0F ^ -483430787 ^ -388809898 ^ -1394523950,-1544281515 ^ -1838002661 ^ 0x7A8597B6 ^ 0x4B03FBF8),new Point(0x72A819B5 ^ 0x12BE6128 ^ 0x17EABE15 ^ 0x77FCC688,0x602A43C5 ^ -1074210664 ^ -1572127998 ^ 0x7D99A058),new Point(-112091808 ^ -206330200 ^ 0x35778402 ^ 0x3F95BFCA,-1318728412 ^ -578599344 ^ 0x7B207D46 ^ -398915125),new Point(-1177736999 ^ -1404177279 ^ 0x3BD2AAAD ^ -777156349,0x2C1159D0 ^ -1103141041 ^ -2027445251 ^ 0x15099D65),new Point(0x28DD11DD ^ 0x5B8BE417 ^ -903543876 ^ 0x468C0980,-1348540361 ^ 0x145DA49D ^ -2102586847 ^ -963534478),new Point(0x0B6C0149 ^ 0x59054110 ^ -1923574952 ^ -550382837,0x0624D263 ^ 0x4D4682C8 ^ -1746291691 ^ -594811719),new Point(-552426284 ^ 0x0E9956DF ^ 0x18D85E8F ^ -917263218,-612900936 ^ -2078424410 ^ -1739765054 ^ 0x38D8A825)]);
      
      private const _5e5481991684ea475b076b15:int = 0;
      
      private const _1edee8500c3db3ae015becd0:int = 1;
      
      private const _f089198584f4b4ef0b6143a5:int = 2;
      
      private const _d2e613fc06fc858c19ebb3bb:int = 3;
      
      private const _4150ffa853e4925c2592f5d0:Number = 0.01;
      
      public var _fieldChar:_08c120b706560fce9302bcab;
      
      private var _1579fad685a8e56c1943d4b5:Number = 90;
      
      private var _4685681560c1fd036b1aa5b2:BitmapData;
      
      protected var _path:Vector.<Point> = new Vector.<Point>();
      
      private var _255b498633f724fddb6d2898:Vector.<Point> = new Vector.<Point>();
      
      private var _09c907de113c598cc5a18b2e:_adf7395a2a04cf1a777de682;
      
      private var _2f718dc29e35ac510b437e72:Boolean = false;
      
      private var _7958e8d9f3773774966a46e2:int = 0;
      
      private var _5bd4900c14b6b0dc4506b790:_a5c3dbdfbeb709a5bf92d27c = new _a5c3dbdfbeb709a5bf92d27c();
      
      private var _1eb3468943aa32d85f6edab7:Number;
      
      protected var _callback:Function;
      
      private var _aa571640f248dbfe2d848384:BitmapData;
      
      public var wasPathSearch:Boolean = false;
      
      private var _a0ff0b2ccb72490a0a6535bb:Number = 0;
      
      private var _40d7fb84c348418f25b8ab12:Number = 0;
      
      private var _74b806a52587204f456f5ce8:Number;
      
      private var _c335491b47e8df56f8331a71:Function;
      
      private var _16782f34331ea8c2af719c0e:int = -1;
      
      public function _2e5b3522a164ee588f85e4b1()
      {
         this._c335491b47e8df56f8331a71 = this._5c02460a29e73651d344c931;
         super();
         this._16782f34331ea8c2af719c0e = _2c46ca2b86394b9a6e861b75++;
      }
      
      private static function _f1162bf442d407258c4e670f(param1:Number, param2:Number) : Number
      {
         var _loc3_:Point = new Point(param1,param2);
         if(_loc3_.x > (-1385210616 ^ -695289123 ^ 0x21152BB9 ^ 0x5AF4CC6C))
         {
            if(_loc3_.y > (0x769FDACB ^ -1854291431 ^ 0x02C3E7EB ^ -450494663))
            {
               return 0x21A65E49 ^ 0x5AD27AC6 ^ 0x6417C29E ^ 0x1F63E63C;
            }
            if(_loc3_.y < (0x4D67E2DC ^ 0x16361463 ^ -1418710281 ^ -266222520))
            {
               return 0x74665FF4 ^ -1740148254 ^ 0x0EA15A72 ^ -494897825;
            }
            return 0x7642AD9C ^ 0x7D0470DB ^ 0x0569FFE3 ^ 0x0E2F22A4;
         }
         if(_loc3_.x < (0x49EAEEE5 ^ -1092796818 ^ -1395129498 ^ 0x5BEFD3ED))
         {
            if(_loc3_.y > (-1452723650 ^ -1696998843 ^ 0x3E687A03 ^ 0x0DD89278))
            {
               return 0x4076B986 ^ 0x51C771AF ^ -1556584464 ^ -1299599522;
            }
            if(_loc3_.y < (0x1DC67C98 ^ -71705668 ^ -136635455 ^ 0x11A4BCE5))
            {
               return 0x7C0EC6C4 ^ -635864637 ^ 0x57D11779 ^ -238638945;
            }
            return 0x72F3ECDF ^ -1932855307 ^ 0x508B0E05 ^ -1364060773;
         }
         if(_loc3_.y > (0x170B3C06 ^ 0x72262E2E ^ 0x294434F9 ^ 0x4C6926D1))
         {
            return -1249601791 ^ 0x1E1D723D ^ -1323327810 ^ 0x1A867BD8;
         }
         if(_loc3_.y < (0x50A6FA8D ^ -826682625 ^ 0x42B39506 ^ -592659084))
         {
            return -1850715478 ^ 0x4E953536 ^ 0x6002373E ^ -1087942228;
         }
         return NaN;
      }
      
      private static function _969d8d5bff167153accda38c(param1:Number, param2:Number) : Boolean
      {
         var _loc3_:_a00a2200c99ccb365fe1b90e = GameSwf.currentLocationDialog.raft;
         return _loc3_ != null ? _loc3_._b04d2ea00510610a2a032312(param1,param2) : false;
      }
      
      private static function _fe943c74980c4ada12c3de96(param1:Number, param2:Number, param3:uint = 255, param4:uint = 16777215) : void
      {
         var _loc5_:int = -982038657 ^ -1351362223 ^ 0x5E64131C ^ 0x7DAE0CD1;
         loop0:
         while(true)
         {
            switch(_loc5_ ^ (0x1E680EDC ^ 0x7C308EBE ^ 0x1C5DEDBA ^ 0x37CBEC3A))
            {
               case 0:
                  _bd60f9ad6ef4aaf28041ce8f.DEBUG_SPRITE.graphics.lineStyle(0x4FEDF685 ^ -219895124 ^ -1074403051 ^ 0x02FCB53D,param3);
                  _bd60f9ad6ef4aaf28041ce8f.DEBUG_SPRITE.graphics.beginFill(param4,_39d7d82359bf8046fe8ef6c4._ed4a735c5a6981f99dda5b73("挅挘掞掩挨掉捦揍掁揓挶捨捿挏捶揝捸揅挫挿掆捸掻捊","揪挹挘持揖揌挷掩掋挊挝掳挛捑捱捨"));
                  _bd60f9ad6ef4aaf28041ce8f.DEBUG_SPRITE.graphics.drawCircle(param1,param2,0x202D9DC9 ^ -221567883 ^ -900449340 ^ 0x18B2827E);
                  _bd60f9ad6ef4aaf28041ce8f.DEBUG_SPRITE.graphics.endFill();
                  _loc5_ = -1196659261 ^ -46449036 ^ 0x1A5418D3 ^ 0x160DCA84;
                  break;
               case 1:
                  if(Config.DEBUG_DRAW_PATH)
                  {
                     _loc5_ = -1466696599 ^ 0x6CBF9C17 ^ -723617852 ^ 0x593C9658;
                  }
                  else
                  {
                     _loc5_ = -1432138917 ^ -1393676577 ^ -734279607 ^ -1682428883;
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
      
      private static function _af1ce87a7d2aad9caf504923(param1:_a5c3dbdfbeb709a5bf92d27c, param2:_a5c3dbdfbeb709a5bf92d27c, param3:int) : void
      {
         var _loc4_:int = 0x6A56436B ^ -1222026209 ^ 0x768F143E ^ 0x324B9F3D;
         loop0:
         while(true)
         {
            switch(_loc4_ ^ (-478280127 ^ -1345431621 ^ -753219319 ^ 0x06110C84))
            {
               case 0:
                  if(Config.DEBUG_DRAW_PATH)
                  {
                     _loc4_ = -1077629455 ^ 0x6C5254AA ^ -1515461111 ^ -276395225;
                  }
                  else
                  {
                     _loc4_ = -1875043293 ^ -2047665086 ^ 0x74CBE36B ^ -121735300;
                  }
                  break;
               case 1:
                  return;
               case 2:
                  _bd60f9ad6ef4aaf28041ce8f.DEBUG_SPRITE.graphics.lineStyle(0x717F1942 ^ -73186255 ^ -1388087743 ^ 0x279F2B33,param3);
                  _bd60f9ad6ef4aaf28041ce8f.DEBUG_SPRITE.graphics.moveTo(param1.x,param1.y);
                  _bd60f9ad6ef4aaf28041ce8f.DEBUG_SPRITE.graphics.lineTo(param2.x,param2.y);
                  _loc4_ = 0x5C3F86AA ^ -1840836479 ^ 0x19657443 ^ 0x4EA6761E;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function _db384801298e04376755aa5d() : Number
      {
         var _loc1_:int = 0x58FB80FF ^ -1530541666 ^ -1402061984 ^ 0x7F5D16E1;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (-1280160540 ^ -1010237188 ^ -1470087221 ^ -149547215))
            {
               case 0:
                  return this._1579fad685a8e56c1943d4b5;
               case 1:
                  return this._fieldChar.boat._491742ba3ea18846c625e312(this._1579fad685a8e56c1943d4b5);
               case 2:
                  if(this._fieldChar.boat != null)
                  {
                     _loc1_ = -4297639 ^ -2123363756 ^ 0x43E67900 ^ 0x12257BEE;
                  }
                  else
                  {
                     _loc1_ = -1104701265 ^ -1317410082 ^ 0x6C6F0D2E ^ 0x4C3C1BBD;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function _69f6832ef5212d8e19395b6d(param1:int, param2:int) : Boolean
      {
         return this._c8c77062a5326ca7b3492521(param1,param2);
      }
      
      public function set speedMultiplier(param1:Number) : void
      {
         this._74b806a52587204f456f5ce8 = param1;
      }
      
      public function _f0cc32364e2c99cf1496a9a6(param1:Number, param2:Number) : Boolean
      {
         var _loc3_:Point = null;
         for each(_loc3_ in testPoints)
         {
            if(this._c335491b47e8df56f8331a71(int(param1 + _loc3_.x + _95da7f1147c669197db81295._6371735dc9287bd2d9618c1e("办劚剡刉勢刺剤剭刜剬务刋勊勬務剚剅勋刻刎勝勨剑刟","刪勒勄刐劂刖剌刽勱劙剡剏劳刲勤剠")),int(param2 + _loc3_.y + _95da7f1147c669197db81295._6371735dc9287bd2d9618c1e("劊劏剣刂刱刚勴剣劒勻劃労到勞剟剜劈剼刣勓刷剽劰劷","刌勩剖勺初剛剚助划劌劎剂剣初剁労"))))
            {
               return true;
            }
         }
         return false;
      }
      
      public function _a43618439352bc03017c3c39() : Boolean
      {
         return this._path.length > (0x0DE8789C ^ -694375643 ^ 0x082A6086 ^ -748768449) || this._7958e8d9f3773774966a46e2 != this._5e5481991684ea475b076b15;
      }
      
      public function _bdc65a6326e91a3b031ee7c7() : Boolean
      {
         return this._path.length > (0x444CA0A2 ^ 0x2B698B35 ^ -1598743298 ^ -812632215) && this._7958e8d9f3773774966a46e2 == this._1edee8500c3db3ae015becd0;
      }
      
      public function set target(param1:_08c120b706560fce9302bcab) : void
      {
         this._fieldChar = param1;
      }
      
      public function _97a5a7e3bc4bf69d61e7aef7(param1:BitmapData, param2:BitmapData, param3:Number, param4:Number) : void
      {
         this._4685681560c1fd036b1aa5b2 = param1;
         this._aa571640f248dbfe2d848384 = param2;
         this._09c907de113c598cc5a18b2e = new _adf7395a2a04cf1a777de682(this._4685681560c1fd036b1aa5b2,null);
         this._a0ff0b2ccb72490a0a6535bb = param3;
         this._40d7fb84c348418f25b8ab12 = param4;
         this._09c907de113c598cc5a18b2e._8cef8bd0fb9d52ec62080dda(param3,param4);
         this._09c907de113c598cc5a18b2e.checkWalkableAt = this._1ded168a76d47816b9ddadeb;
      }
      
      public function _6e26cba323340280bd895ce7(param1:Number, param2:Number) : void
      {
         this._09c907de113c598cc5a18b2e._8cef8bd0fb9d52ec62080dda(param1,param2);
      }
      
      public function isLakeHit(param1:Point) : Boolean
      {
         return this._7c0237bdbbe607e4e3b0965a(param1.x,param1.y);
      }
      
      public function _7c0237bdbbe607e4e3b0965a(param1:int, param2:int, param3:Bitmap = null) : Boolean
      {
         if(this._aa571640f248dbfe2d848384 != null)
         {
            return this._aa571640f248dbfe2d848384.getPixel32(param1,param2) > (-536938370 ^ 0x55DA5F79 ^ 0x45AAC6DD ^ -814637531) && GameSwf.currentLocationDialog._b24937139cc44ffe53f7fc23(param1,param2,this._fieldChar) == false && _969d8d5bff167153accda38c(param1,param2) == false && GameSwf.currentLocationDialog.hitTestBoats(param1,param2,param3) == false;
         }
         return false;
      }
      
      public function _932bcd14906ee6abb2c18abc(param1:Point, param2:Boolean = false, param3:Boolean = false) : Boolean
      {
         var _loc4_:Point = null;
         var _loc5_:Point = null;
         if(this._4685681560c1fd036b1aa5b2)
         {
            if(param2)
            {
               for each(_loc4_ in testPoints)
               {
                  if(this._c335491b47e8df56f8331a71(int(param1.x + _loc4_.x + _433075a5d49397e40222eeae._9417d5d828724209ec5cfbb1("ဈႢႉჵဉဖၸၚ၈၌ၤၟဿႏၖငუၡအოိဈှႌ","၊အၬშၱႆၮშၛ၍ဒႭფဤႌჱ")),int(param1.y + _loc4_.y + _95da7f1147c669197db81295._6371735dc9287bd2d9618c1e("剣刂勤劦劲労剞刎前剀勅劵创劌剼劦删判剜刱刘剥刧劳","务剺刮刎劣到剋刦劸劍勿勀刕劆勻励"))))
                  {
                     return true;
                  }
               }
               if(param3)
               {
                  for each(_loc5_ in testOffsetPoints)
                  {
                     if(this._c335491b47e8df56f8331a71(int(param1.x + _loc5_.x + _95da7f1147c669197db81295._6371735dc9287bd2d9618c1e("則制力刷刿劃劜剶勠勾剘剓劕创剙勤剗劲勇勐刞勯勝勎","剪勣劣勥刣刧剗剨刕勇勄劦剼剃刌劰")),int(param1.y + _loc5_.y + _433075a5d49397e40222eeae._9417d5d828724209ec5cfbb1("ၺာႊჯႥု၀ႝႽန჋ံႮჽၠီკၪွႣჭၻჰၾ","჏ႇၬჍဤ႕ჅဏႮဃთညခႯၠ႔"))))
                     {
                        return true;
                     }
                  }
               }
               return false;
            }
            return this._c335491b47e8df56f8331a71(int(param1.x + _95da7f1147c669197db81295._6371735dc9287bd2d9618c1e("勸剴劗刵勾刴剖剛劭勲勪务剐勩剤勰剏勑劬刄勸剽劒刭","劐剚劦刱剣剻勉劕剉前劯剅剔劬副副")),int(param1.y + _433075a5d49397e40222eeae._9417d5d828724209ec5cfbb1("ჃႺჶသმဳၲ႘ნႤსနბ႕ၡღႳ၀႘ထဂတႻၠ","ရံმ႙ႉႧს႖ပဒ჈გၐၱႄဟ")));
         }
         return false;
      }
      
      public function _4670bff38705895c648e18bd(param1:Point) : Boolean
      {
         var _loc2_:Point = null;
         if(this._fieldChar.onRaft)
         {
            _loc2_ = param1.clone();
            _loc2_.x -= this._fieldChar.raft.offsetX;
            _loc2_.y -= this._fieldChar.raft.offsetY;
            return this._932bcd14906ee6abb2c18abc(_loc2_,false);
         }
         return this._932bcd14906ee6abb2c18abc(param1,false);
      }
      
      protected function _1ded168a76d47816b9ddadeb(param1:int, param2:int) : Boolean
      {
         var _loc3_:Point = null;
         for each(_loc3_ in testPoints)
         {
            if(this._4685681560c1fd036b1aa5b2.getPixel32(param1 + _loc3_.x,param2 + _loc3_.y) > (-574712716 ^ 0x7BC4E0F0 ^ -1672895438 ^ 0x3ACC2F49) || GameSwf.currentLocationDialog._b24937139cc44ffe53f7fc23(param1 + _loc3_.x,param2 + _loc3_.y,this._fieldChar))
            {
               return false;
            }
         }
         return true;
      }
      
      public function _41828d220a31759b508cc08d(param1:Function) : void
      {
         var _loc2_:int = 0x5D9D0178 ^ 0x407E02BD ^ -911693671 ^ 0x36FEB327;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (-1050848668 ^ -114498171 ^ -1600716174 ^ 0x7A53ADE8))
            {
               case 0:
                  if(param1 != null)
                  {
                     _loc2_ = 0x76D4F9EE ^ -1105336437 ^ -2002713768 ^ -1562573497;
                  }
                  else
                  {
                     _loc2_ = 0x230FD2B4 ^ -1264655467 ^ 0x0776799C ^ 0x725250C5;
                  }
                  break;
               case 1:
                  this._c335491b47e8df56f8331a71 = param1;
                  _loc2_ = 0x66B5BAA0 ^ 0x5BC820E6 ^ -1525924689 ^ 0x7AC4BE90;
                  break;
               case 2:
                  return;
               case 3:
                  this._c335491b47e8df56f8331a71 = this._5c02460a29e73651d344c931;
                  _loc2_ = -1133895751 ^ -909189670 ^ 0x7B89992C ^ -325565642;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function set maxCalculationTimeMs(param1:uint) : void
      {
         this._09c907de113c598cc5a18b2e.maxCalculationTimeMs = param1;
      }
      
      public function update(param1:uint, param2:uint, param3:Number) : void
      {
         var _loc4_:Vector.<_3f0b8f3bb126033c881dfbc2> = null;
         var _loc5_:Point = null;
         var _loc6_:_3f0b8f3bb126033c881dfbc2 = null;
         var _loc7_:uint = uint(0x06404704 ^ 0x26439FB9 ^ 0x7620F6FB ^ 0x56232E46);
         var _loc8_:Point = null;
         var _loc9_:Number = NaN;
         var _loc10_:Number = NaN;
         var _loc11_:Number = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:Boolean = false;
         var _loc15_:Point = null;
         var _loc16_:Point = null;
         if(this._fieldChar != null && this._fieldChar.locationUser != null && this._fieldChar.locationUser.username == _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ဉႨႠၵეႷჵၩწპႯႼ၀ၟႠဌ჏ိ","၌႑ჿ႒႗႙ႁხႵာၱဋ၏ჼო၀"))
         {
            _9b189a790efd59581443eb40.change(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၙၯწႫၿჁဩ၃ႋဤ჉ႅၲမ჉჻ဘ္ႊၼၒဆႋုှၾზႻႠႱ၀჊ჭၷႄჵၢႺ၁Ⴜპ္","ၥႛဩ့ဣႂဆးႿၠၭဇၬၭေႋ"),this._09c907de113c598cc5a18b2e != null ? this._09c907de113c598cc5a18b2e.isComplete() : _95da7f1147c669197db81295._8f4866de82b7339154180ecb("刞剂刎剺刻劍势勵剢劔劕勴勆刳剼劉","勭勊勐勍劌剞勵勽剜劎勮刟劦剼努勭"));
         }
         if(this._7958e8d9f3773774966a46e2 == this._f089198584f4b4ef0b6143a5)
         {
            this._348d1108185fe11a0d971ad4(this._5bd4900c14b6b0dc4506b790);
            this._7958e8d9f3773774966a46e2 = this._d2e613fc06fc858c19ebb3bb;
         }
         else if(this._7958e8d9f3773774966a46e2 == this._d2e613fc06fc858c19ebb3bb)
         {
            if(this._09c907de113c598cc5a18b2e.isComplete())
            {
               this._7958e8d9f3773774966a46e2 = this._1edee8500c3db3ae015becd0;
               _loc4_ = this._09c907de113c598cc5a18b2e._1631f1252a3e84343c544055();
               if(_loc4_ != null && _loc4_.length > (-153300989 ^ -284312327 ^ -1616821703 ^ -2039468349))
               {
                  _loc5_ = this._fieldChar.position;
                  for each(_loc6_ in _loc4_)
                  {
                     this._a5ec5fe18c979df409382c2a(_loc5_.x,_loc5_.y,_loc6_.x,_loc6_.y);
                     _loc5_ = _loc6_;
                  }
                  this._2f718dc29e35ac510b437e72 = true;
               }
            }
            else
            {
               _loc7_ = uint(getTimer());
               while(this._09c907de113c598cc5a18b2e.isComplete() == false && getTimer() - _loc7_ < this._4150ffa853e4925c2592f5d0)
               {
                  this._09c907de113c598cc5a18b2e._4b406987b7185af600a41e7e();
               }
            }
         }
         else if(this._7958e8d9f3773774966a46e2 == this._1edee8500c3db3ae015becd0)
         {
            if(this._path.length > (0x22019B44 ^ -611900349 ^ 0x2E6ACCB7 ^ -672369744))
            {
               if(app.performanceManager.sleepMode)
               {
                  _loc15_ = this._path[this._path.length - 1];
                  this._fieldChar.position.x = _loc15_.x;
                  this._fieldChar.position.y = _loc15_.y;
                  this._path.length = 0x56BA7FC5 ^ -249948020 ^ 0x16C91340 ^ -1318489079;
                  return;
               }
               _loc8_ = this._path[-6043430 ^ 0x34B71174 ^ 0x29938768 ^ -494444858];
               _loc9_ = Point.distance(_loc8_,this._fieldChar.position);
               while(_loc9_ < (-1038197291 ^ 0x6BB8F00A ^ -1640573887 ^ 0x3790799F))
               {
                  this._path.shift();
                  if(this._path.length <= (0x03A1C5BD ^ 0x247AEFE7 ^ 0x2B96308B ^ 0x0C4D1AD1))
                  {
                     this._fieldChar.position.x = _loc8_.x;
                     this._fieldChar.position.y = _loc8_.y;
                     return;
                  }
                  _loc8_ = this._path[-1804591221 ^ -1663053927 ^ 0x55F5690B ^ 0x5D5AB919];
                  _loc9_ = Point.distance(_loc8_,this._fieldChar.position);
               }
               _loc10_ = _2e5b3522a164ee588f85e4b1.maxSpeed * this._74b806a52587204f456f5ce8 * param3;
               _loc11_ = Math.min(_loc10_,_loc9_);
               _loc12_ = Math.round(limit(this._fieldChar.position.x - _loc8_.x,-_loc11_,_loc11_));
               _loc13_ = Math.round(limit(this._fieldChar.position.y - _loc8_.y,-_loc11_,_loc11_));
               _9b189a790efd59581443eb40.change(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("Ⴈჺၺဎ႑ჃကჃჭ႐ၗႿ","ဌ၎ဉၷဈყ႑႒ჵနႅငၷၒჵჷ"),_loc12_);
               _9b189a790efd59581443eb40.change(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("წၻ်ვၩქဩႨუ၁႕ც","ჭၠႧႡၖၙ၉Ⴜႜဎဌნာსკჾ"),_loc13_);
               if(_loc12_ != (0x731EB484 ^ -2000834848 ^ 0x6C5B8010 ^ -1745315212) && _loc13_ != (0x226E30CC ^ -1310662296 ^ 0x195B33B1 ^ -1965694443))
               {
                  _loc12_ *= _412bba20db41500babcd2a85.SIN_45;
                  _loc13_ *= _412bba20db41500babcd2a85.SIN_45;
               }
               _loc14_ = this._69f6832ef5212d8e19395b6d(this._fieldChar.position.x - _loc12_,this._fieldChar.position.y - _loc13_);
               if(_loc14_)
               {
                  _loc16_ = this._path[this._path.length - 1];
                  this._5bd4900c14b6b0dc4506b790.x = _loc16_.x;
                  this._5bd4900c14b6b0dc4506b790.y = _loc16_.y;
                  this._7958e8d9f3773774966a46e2 = this._f089198584f4b4ef0b6143a5;
               }
               else
               {
                  this._fieldChar.position.x -= _loc12_;
                  this._fieldChar.position.y -= _loc13_;
               }
               this._1579fad685a8e56c1943d4b5 = _f1162bf442d407258c4e670f(-_loc12_,-_loc13_);
            }
            else
            {
               if(isNaN(this._1eb3468943aa32d85f6edab7) == false)
               {
                  this._fieldChar.position.rotation = this._1eb3468943aa32d85f6edab7;
                  this._1eb3468943aa32d85f6edab7 = NaN;
                  this._fieldChar._11af0ae1dc88e5244bdef63d();
               }
               this._7958e8d9f3773774966a46e2 = this._5e5481991684ea475b076b15;
            }
         }
      }
      
      private function _348d1108185fe11a0d971ad4(param1:Point) : void
      {
         var _loc2_:int = 0x2012C683 ^ -1953132775 ^ -928348901 ^ 0x2CA1E865;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (-1616282228 ^ -1922765819 ^ 0x684346AF ^ 0x3502F3C1))
            {
               case 0:
                  _fe943c74980c4ada12c3de96(param1.x,param1.y);
                  _loc2_ = -735649805 ^ 0x41F67F07 ^ -523693310 ^ 0x3A959713;
                  break;
               case 1:
                  if(this._fieldChar.locationUser.username == _95da7f1147c669197db81295._8f4866de82b7339154180ecb("劅勈割剢勅剬勨勴剞勍劑勽劒剡勳励切切","刈刅剸功勞剶勬劒劷刞剂刂勥勥劯刢"))
                  {
                     _loc2_ = -170684780 ^ -1392020747 ^ 0x41FE9EC4 ^ 0x56A64646;
                  }
                  else
                  {
                     _loc2_ = 0x77E1D734 ^ 0x74276129 ^ -1955634022 ^ -953813408;
                  }
                  break;
               case 2:
                  this._09c907de113c598cc5a18b2e.borderCheck = !(this._fieldChar is _ba120ae720a391732e866217);
                  this._09c907de113c598cc5a18b2e._dcb89d608d02600426fb8dd1(this._fieldChar.position.x + _39d7d82359bf8046fe8ef6c4._ed4a735c5a6981f99dda5b73("掄挛捯揑掇提揔掏掖掋挈掏挳挿挛挻挬揰揸掤揉掶掺揸","掸捸挵探揄捣掉捤挒掸掲措揙挅揘揂"),this._fieldChar.position.y + _39d7d82359bf8046fe8ef6c4._ed4a735c5a6981f99dda5b73("挐捆揖掁揗捓捥挹挣捥揌掟捝揷援換捃揢掼揧揰捂挜揿","挹揽挔揥捼掇揺援揘捻掃揬揝捬掦排"),param1.x + _39d7d82359bf8046fe8ef6c4._ed4a735c5a6981f99dda5b73("挤掮掏捱掂挓揻掉揯捩揘揌挶援捨揪掱掳掦捚揆挷捝掃","挅掃挚挫挾掓捈揠挽掁措探挹据捊揵"),param1.y + _433075a5d49397e40222eeae._9417d5d828724209ec5cfbb1("ထၠჲျზၖဒჱ႔ႆ჏ၣၑယჟဆႺႄၢ်ბဠၽဴ","ჲ჊ჀျႿႺဏဖထဦჳၽႁႲႭင"),false);
                  return;
               case 3:
                  this.wasPathSearch = true;
                  this._path.length = 0x4D48F9FA ^ -13589264 ^ -1188800035 ^ 0x0B5C04D7;
                  this._255b498633f724fddb6d2898.length = -266538508 ^ -850166520 ^ 0x651F283A ^ 0x5850A4C6;
                  if(Config.DEBUG_DRAW_PATH)
                  {
                     _loc2_ = 0x4F380F90 ^ 0x491024CF ^ 0x16BB7C11 ^ 0x5F1F73A8;
                  }
                  else
                  {
                     _loc2_ = 0x59192B3A ^ 0x583E625E ^ 0x3B64D003 ^ 0x75CFBD82;
                  }
                  break;
               case 4:
                  _bd60f9ad6ef4aaf28041ce8f.DEBUG_SPRITE.graphics.clear();
                  _loc2_ = -1723449833 ^ 0x4499252D ^ 0x0A6416C7 ^ -1741215462;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function _c8c77062a5326ca7b3492521(param1:Number, param2:Number) : Boolean
      {
         var _loc3_:int = -1075264526 ^ -1866048131 ^ -231291641 ^ -1053084182;
         loop0:
         while(true)
         {
            switch(_loc3_ ^ (0x65198AB2 ^ -435611919 ^ 0x50D7BE56 ^ -807121801))
            {
               case 0:
                  if(this._2f718dc29e35ac510b437e72)
                  {
                     _loc3_ = -37522494 ^ -491354013 ^ 0x7262485B ^ 0x7134DD9A;
                  }
                  else
                  {
                     _loc3_ = -257412588 ^ 0x7893DE38 ^ -748331842 ^ 0x477DDEF1;
                  }
                  break;
               case 1:
                  return this._f0cc32364e2c99cf1496a9a6(param1,param2);
               case 2:
                  return false;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function moveTo(param1:int, param2:int, param3:Number = NaN, param4:Function = null) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Point = null;
         var _loc7_:Point = null;
         if(this._fieldChar == null)
         {
            return;
         }
         this._1eb3468943aa32d85f6edab7 = param3;
         this._callback = param4;
         this._2f718dc29e35ac510b437e72 = false;
         this._7958e8d9f3773774966a46e2 = this._5e5481991684ea475b076b15;
         if(this._09c907de113c598cc5a18b2e != null)
         {
            this._09c907de113c598cc5a18b2e.reset();
         }
         if(this._fieldChar.position.x == param1 && this._fieldChar.position.y == param2)
         {
            param1 = 0x1DF53240 ^ -192319549 ^ -850954881 ^ -607856893;
            param2 = 0x22DAC964 ^ 0x258246D0 ^ 0x76B188D3 ^ -1911097192;
         }
         if(param1 != (0x75E1A3E2 ^ -960259085 ^ 0x70DF109B ^ 0x3C02D775) || param2 != (-263080596 ^ -2088022084 ^ -1538204466 ^ 0x2875D9E1))
         {
            this._path.length = -699018429 ^ -324946626 ^ 0x6BB14443 ^ 0x5145223E;
            if(this._fieldChar.locationUser.username == _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捼捄挔揿挣捘持掀捒掮揾挽掟揼揆捄掲揺","掲捜捱掘措揎掤揉挛掺捀揔捉掀揁捖") && Config.DEBUG_DRAW_PATH)
            {
               _bd60f9ad6ef4aaf28041ce8f.DEBUG_SPRITE.graphics.clear();
            }
            if(this._932bcd14906ee6abb2c18abc(new Point(param1,param2),false))
            {
               _loc6_ = this._fieldChar._42da5931475ef60d3da8d4a2(param1,param2);
               param1 = _loc6_.x;
               param2 = _loc6_.y;
            }
            _loc5_ = this._932bcd14906ee6abb2c18abc(this._fieldChar.position,false);
            if(_loc5_ && this._fieldChar.raft == null)
            {
               _loc7_ = this._fieldChar._42da5931475ef60d3da8d4a2(this._fieldChar.position.x,this._fieldChar.position.y);
               this._fieldChar.position.x = _loc7_.x;
               this._fieldChar.position.y = _loc7_.y;
               this._a5ec5fe18c979df409382c2a(_loc7_.x,_loc7_.y,param1,param2);
            }
            else
            {
               this._a5ec5fe18c979df409382c2a(this._fieldChar.position.x,this._fieldChar.position.y,param1,param2);
            }
         }
         else if(isNaN(this._1eb3468943aa32d85f6edab7) == false && this._1eb3468943aa32d85f6edab7 != (-2076978174 ^ -1749215397 ^ 0x02737903 ^ -301840987))
         {
            this._fieldChar.position.rotation = this._1eb3468943aa32d85f6edab7;
            this._1eb3468943aa32d85f6edab7 = NaN;
            this._fieldChar._11af0ae1dc88e5244bdef63d();
         }
      }
      
      public function _a9e2dd6063c60dc4a60d90ba() : Boolean
      {
         return this._a43618439352bc03017c3c39() == false && this._7958e8d9f3773774966a46e2 == this._5e5481991684ea475b076b15;
      }
      
      protected function _a5ec5fe18c979df409382c2a(param1:int, param2:int, param3:int, param4:int) : void
      {
         if(this._7958e8d9f3773774966a46e2 == this._5e5481991684ea475b076b15)
         {
            this._7958e8d9f3773774966a46e2 = this._1edee8500c3db3ae015becd0;
         }
         var _loc5_:Number = param3 - param1;
         var _loc6_:Number = param4 - param2;
         var _loc7_:Number = Math.min(Math.abs(_loc5_),Math.abs(_loc6_));
         var _loc8_:Point = new Point(param3,param4);
         if(_loc5_ > (0x214930AB ^ -322261120 ^ -1930139363 ^ 0x4177F636))
         {
            _loc8_.x -= _loc7_;
         }
         else
         {
            _loc8_.x += _loc7_;
         }
         if(_loc6_ > (0x12558566 ^ 0x4A6B23CD ^ -1721331239 ^ -1051183246))
         {
            _loc8_.y -= _loc7_;
         }
         else
         {
            _loc8_.y += _loc7_;
         }
         _fe943c74980c4ada12c3de96(param3,param4,0x423FC810 ^ -274587499 ^ 0x297BF771 ^ -2065293324,-1168402335 ^ 0x7B724749 ^ 0x76807EDA ^ -1219059214);
         _fe943c74980c4ada12c3de96(_loc8_.x,_loc8_.y,0x1DBFAC83 ^ 0x57EE91C0 ^ -827840994 ^ -2064049315,-1299561142 ^ -1552200023 ^ 0x730DC568 ^ 0x62FC318B);
         this._path.push(_loc8_);
         this._path.push(new Point(param3,param4));
      }
      
      public function disable() : void
      {
      }
      
      protected function _5c02460a29e73651d344c931(param1:int, param2:int) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = false;
         if(this._4685681560c1fd036b1aa5b2)
         {
            if(this._fieldChar.onRaft && this._fieldChar.isMovingToRaft == false)
            {
               return this._fieldChar.raft.rectangle.contains(param1,param2) == false;
            }
            if(param1 <= this._a0ff0b2ccb72490a0a6535bb && param2 <= this._40d7fb84c348418f25b8ab12)
            {
               _loc4_ = this._4685681560c1fd036b1aa5b2.getPixel32(param1,param2) > (0x653B6276 ^ 0x188F5713 ^ -1074665100 ^ -1027988498);
               _loc5_ = GameSwf.currentLocationDialog._b24937139cc44ffe53f7fc23(param1,param2,this._fieldChar);
               return _loc4_ || _loc5_;
            }
            return true;
         }
         return false;
      }
      
      public function destroy() : void
      {
         this._fieldChar = null;
         this._path = null;
         this._4685681560c1fd036b1aa5b2 = null;
         this._255b498633f724fddb6d2898 = null;
         this._09c907de113c598cc5a18b2e = null;
      }
      
      public function reset() : void
      {
         this._7958e8d9f3773774966a46e2 = this._5e5481991684ea475b076b15;
      }
      
      public function stop() : void
      {
         this._1eb3468943aa32d85f6edab7 = NaN;
         this._path.length = 0x29EB8D6D ^ 0x53A3CD10 ^ -1058974194 ^ -1163323789;
         this._7958e8d9f3773774966a46e2 = this._5e5481991684ea475b076b15;
      }
      
      public function toString() : String
      {
         return _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ႃည၇ჴၪაဓ႖ၗၹၜႋၶၬႇၛ၎ၩင၊ႝႁჀ၈Ⴎ၃ჼ်ၓ჎ႴၫჺဦႦზၳဝႷ္Ⴊჹ၇်სဆ႔ჵ჉႔ဗဪႥးႊႊၞဳၒဍ၂Ⴭჭဥ","Ⴝ၈Ⴇသფ၌ဥგဓႍၼႬႪည჊ၓ") + this._16782f34331ea8c2af719c0e + _95da7f1147c669197db81295._8f4866de82b7339154180ecb("刬剃刳劖刽刐勩劬勵刷","剪劵劰劶劊刿剿勈勢勠剬勛割刾剼别");
      }
   }
}

