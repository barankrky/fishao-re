package com.ax3.fishao.locations.weather
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import assets.common.Sand;
   import com.ax3.utils.math.limit;
   import com.ax3.utils.math.randomRange;
   import com.greensock.TweenMax;
   import com.greensock.easing.Cubic;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.events.Event;
   import flash.geom.Rectangle;
   
   public class _c07b49c3d6c547fd543b9f59 extends _14b1db7c3b67b592d467704b
   {
      
      private static const _f9535a74a2140f4628907c11:int = 0x22B78055 ^ 0x3C5F02D8 ^ -444638206 ^ -73932893;
      
      private var _b3c97acf3368d1b2bed1b46d:Number = 0.0003;
      
      private var _da49ddbca5d640d5999d3642:int = 0;
      
      private var _bb2c5bf05464c40270f79f0c:Boolean = false;
      
      private var _cb7634ef7ad405007cb806c3:Number = 7.5;
      
      private var _409f27dc9fbb39f363461a45:Number = 75;
      
      private var _b7e6c49e8bd3732b3a01b1fd:Number = 10;
      
      private var _db33d005017427742a794fd1:Number = 1;
      
      private var _691e325052172a11c71be438:Number = 1;
      
      private var _b52a83b16344ec2d47b35328:Number = 1;
      
      private var _04434829e5eec5226133bf14:Number = 0;
      
      private var _fd7f50d9dbf420eaf8931740:Number = 0;
      
      public var windBegin:int;
      
      public var wind:Object;
      
      public var windForceMin:int;
      
      public var nWind:int;
      
      public var nAlpha:Number;
      
      public var windTimeMin:int;
      
      public var snowSize:Number;
      
      public var windForceMax:int;
      
      public var margin:int;
      
      public var windTimeMax:int;
      
      public var snowAlphaMin:Number;
      
      public var snowAmount:int;
      
      public var snowAlphaMax:Number;
      
      public var tracer:Boolean;
      
      public var gravity:int;
      
      public var snowZmin:Number;
      
      public var snowZmax:Number;
      
      public var sh:int;
      
      public var windDirection:String;
      
      public var sw:int;
      
      public var intro:Boolean;
      
      public var fade:Boolean;
      
      public function _c07b49c3d6c547fd543b9f59(param1:Object)
      {
         super(param1);
         this._165898847e1b857d5aa8a938(param1);
         addEventListener(Event.ADDED_TO_STAGE,this._a47a92ac1ee0abecdf90a9f9,false,-1867776472 ^ -1248979196 ^ 0x64DBF9CB ^ 0x41FE10E7,true);
         addEventListener(Event.REMOVED_FROM_STAGE,this._f577dcb361f72393a1477811,false,-631941806 ^ -146559590 ^ 0x76DDBCF2 ^ 0x5BCB443A,true);
      }
      
      override public function set scrollRect(param1:Rectangle) : void
      {
         if(this._db33d005017427742a794fd1 != param1.width || this._691e325052172a11c71be438 != param1.height)
         {
            this._db33d005017427742a794fd1 = param1.width;
            this._691e325052172a11c71be438 = param1.height;
            this._da49ddbca5d640d5999d3642 = limit(this._db33d005017427742a794fd1 * this._691e325052172a11c71be438 * this._b3c97acf3368d1b2bed1b46d,0x67089227 ^ -1407803254 ^ -2053570997 ^ 0x4E86CCE7,_f9535a74a2140f4628907c11);
            this.sh = this._691e325052172a11c71be438;
            this.sw = this._db33d005017427742a794fd1;
            this._15bc0d0e3f9f147dcd347ca4();
         }
         this._04434829e5eec5226133bf14 = param1.x;
         this._fd7f50d9dbf420eaf8931740 = param1.y;
      }
      
      public function _165898847e1b857d5aa8a938(param1:Object) : void
      {
         this.tracer = true;
         this.intro = true;
         this.fade = true;
         this.snowAmount = 0x539B9938 ^ 0x6602186B ^ 0x276B029B ^ 0x12F283C7;
         this.snowSize = _433075a5d49397e40222eeae._9417d5d828724209ec5cfbb1("ძთဎၠၒဿႽကဂဍჩႳၨႽ႕၎႗ႊအႼწჄၻႫ","၊ၿဇၯႃၚწ႕၊ၕ႓Ⴀႁဒჿၗ");
         this.snowZmin = -1614008912 ^ 0x079312BB ^ -288023371 ^ 0x768A23BE;
         this.snowZmax = -815308887 ^ 0x578E5356 ^ 0x7CE03CC3 ^ -469159875;
         this.snowAlphaMin = _39d7d82359bf8046fe8ef6c4._ed4a735c5a6981f99dda5b73("掟掵探捲掂揮捦換揖挅掽揋揠揿掀掁挶捶挤掛挤揍提挨","揵捑捃挅揲捜捤揉挥掑挵揸掕挼揤掬");
         this.snowAlphaMax = _433075a5d49397e40222eeae._9417d5d828724209ec5cfbb1("၍ၵၢ၇ႤႃၕႣႮႂ၌ღႉၽၰံ့წၳჂၲၢპ႙","რ၄Ⴗღ႔႟႕ထႴလၳဈဃၘႽძ");
         this.gravity = 0x790236D3 ^ -749684241 ^ 0x235D5F07 ^ -1995452321;
         this.windBegin = 0x1082500A ^ -2113475912 ^ 0x4C033286 ^ -561542748;
         this.windForceMin = 0x64EB4335 ^ 0x355138FB ^ -1946088033 ^ -574917067;
         this.windForceMax = -1928112899 ^ -564545825 ^ -1989719174 ^ -634541908;
         this.windDirection = _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捳掜捷挶挄揄捄捹揗捈挔挨揍掚措揇捯挗","探挋掖揰挰捠挊挞掴揃捒换挽捉捪挪");
         this.windTimeMin = 0x2D0B5B98 ^ -1070225221 ^ 0x3EB184CA ^ -745572376;
         this.windTimeMax = -472680620 ^ -1955841143 ^ -1241830581 ^ -582719596;
         this.snowAmount = this.snowAmount;
         this.margin = 0x5B8A9A47 ^ -123706388 ^ -692125834 ^ 0x75940615;
         var _loc2_:* = false;
         this.mouseEnabled = false;
         this.wind = new Object();
         this.wind.max = this.windForceMax;
         this.wind.min = this.windForceMin;
         this.wind.dir = this.windDirection;
         if(this.wind.dir == _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("Ⴇ჻အၧႛი၈ေ႑Ⴕჯဝဒ႑ြყႋၘ","ႡჲჴဲნႼႯၯყဒးိ႗၅ჸႈ"))
         {
            this.wind.force = this.windBegin;
         }
         else if(this.wind.dir == _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挍掮揂揔捬挚捕掦捉掳掌挜揁挷掀揢","挫捰揷捐挊掐捴掤挘挮挰掖捵捶挢揑"))
         {
            this.wind.force = -this.windBegin;
         }
         else
         {
            this.wind.force = this.windBegin;
         }
         this._e6e8f47fb528e77d724f05ab();
         this.nAlpha = 0x363B8ACF ^ -748658029 ^ -728783997 ^ 0x31D44BDE;
      }
      
      public function _15bc0d0e3f9f147dcd347ca4() : void
      {
         var _loc1_:DisplayObject = null;
         while(this.numChildren)
         {
            _loc1_ = this.getChildAt(0x2410A84D ^ -455162901 ^ 0x2D727DDB ^ -306440579);
            TweenMax.killTweensOf(_loc1_,false);
            removeChildAt(0x5EF01270 ^ 0x40FA569C ^ -329386512 ^ -229134052);
         }
         var _loc2_:int = -2019290056 ^ 0x67499974 ^ 0x1EC411B0 ^ -30827268;
         while(_loc2_ < this.snowAmount)
         {
            this._51bc288fcb62f33892679221(_loc2_);
            _loc2_++;
         }
      }
      
      public function _e6e8f47fb528e77d724f05ab() : void
      {
         var _loc1_:int = -1221377233 ^ -1903755469 ^ 0x01BD91B9 ^ -727365378;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (-1415062411 ^ -1833506114 ^ -1509321396 ^ 0x73B5C6D8))
            {
               case 0:
                  if(this.tracer == true)
                  {
                     _loc1_ = 0x1A775C05 ^ -1555501517 ^ -422690855 ^ -1285756749;
                  }
                  else
                  {
                     _loc1_ = -444994873 ^ 0x3B0BF5D9 ^ 0x46A381B0 ^ 0x747CFBF2;
                  }
                  break;
               case 1:
                  this.nWind = Math.random() * (this.wind.max - this.wind.min) + this.wind.min;
                  _loc1_ = -1154863203 ^ -893008856 ^ 0x4A4AB518 ^ -687326222;
                  break;
               case 2:
                  if(this.wind.dir == _95da7f1147c669197db81295._8f4866de82b7339154180ecb("労刂勮勖劫劧剶劰劳切勸剄剮剚刀刧","劥剩勿则勰刚刏勳勺勪切券剜劈勢剈"))
                  {
                     _loc1_ = -1325936388 ^ -367050678 ^ -708722442 ^ 0x63843519;
                  }
                  else
                  {
                     _loc1_ = -1835894105 ^ -716463006 ^ -96526722 ^ 0x514BA5E1;
                  }
                  break;
               case 3:
                  return;
               case 4:
                  if(this.wind.dir == _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揵挞挹揿捂捥据掁揋捗捏握捦捞掱捀挋挩","挫掁挭揑换挠揆掙挥掘捐掉掇挾採掉"))
                  {
                     _loc1_ = -1740566129 ^ 0x7624EDD8 ^ -891903952 ^ -937543367;
                  }
                  else
                  {
                     _loc1_ = -1349369709 ^ 0x2B4DDE16 ^ -503739331 ^ -1987348507;
                  }
                  break;
               case 5:
                  this.nWind = Math.random() * (this.wind.max * (0x121B41E4 ^ 0x02E69D0D ^ -1648319928 ^ -1925349725) - this.wind.min) - this.wind.min - this.wind.max;
                  _loc1_ = 0x5DC06935 ^ -1608240090 ^ -74927499 ^ -356414919;
                  break;
               case 6:
                  this.nWind = -Math.random() * (this.wind.max - this.wind.min) - this.wind.min;
                  _loc1_ = 0x5E25ABE6 ^ 0x6114DAB2 ^ -920451506 ^ 0x1ABF1245;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function _a47a92ac1ee0abecdf90a9f9(param1:Event) : void
      {
         this._676af5382a9e24d9aa0a13cb();
      }
      
      private function _f577dcb361f72393a1477811(param1:Event) : void
      {
         this._795076a3d6d74ddae6b57c9e();
      }
      
      private function _795076a3d6d74ddae6b57c9e() : void
      {
         var _loc1_:int = -2042862809 ^ -1906411513 ^ -1762774922 ^ -1485524257;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (-1591941798 ^ 0x0521AFFB ^ -333644643 ^ 0x71D92FB4))
            {
               case 0:
                  return;
               case 1:
                  if(this._bb2c5bf05464c40270f79f0c == true)
                  {
                     _loc1_ = 0x61B71E5E ^ 0x2019228D ^ 0x568154DB ^ 0x2ED7F182;
                  }
                  else
                  {
                     _loc1_ = -215559454 ^ 0x268FF8D9 ^ 0x48E82CF5 ^ -1531338938;
                  }
                  break;
               case 2:
                  this._bb2c5bf05464c40270f79f0c = false;
                  removeEventListener(Event.ENTER_FRAME,this._dc68221797839322c1353ed4);
                  _loc1_ = 0x457E11D7 ^ 0x686259F2 ^ -2015324650 ^ -1828436037;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function _676af5382a9e24d9aa0a13cb() : void
      {
         var _loc1_:int = 0x3A1EE238 ^ 0x662B9551 ^ -58733470 ^ 0x0B025EA9;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (-1914561543 ^ 0x6731B162 ^ 0x7B8154A6 ^ 0x3A1A1B9F))
            {
               case 0:
                  if(this._bb2c5bf05464c40270f79f0c == false)
                  {
                     _loc1_ = -2019040569 ^ 0x7C3DF95A ^ 0x08B0CF2E ^ 0x58623113;
                  }
                  else
                  {
                     _loc1_ = 0x113B2F8B ^ -1637793868 ^ -54399299 ^ -657253599;
                  }
                  break;
               case 1:
                  return;
               case 2:
                  this._bb2c5bf05464c40270f79f0c = true;
                  addEventListener(Event.ENTER_FRAME,this._dc68221797839322c1353ed4);
                  _loc1_ = -1369412682 ^ 0x630C7DD1 ^ -480427852 ^ -2055621776;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function _dc68221797839322c1353ed4(param1:Event) : void
      {
      }
      
      private function _51bc288fcb62f33892679221(param1:int) : void
      {
         var _loc3_:Bitmap = null;
         var _loc2_:BitmapData = new Sand();
         _loc3_ = new Bitmap(_loc2_);
         _loc3_.y = Math.random() * (this.sh + this.margin * (0x3B9C636E ^ -1687356930 ^ -782023608 ^ 0x7193DEDA)) - this.margin * (0x64DC4159 ^ -921680424 ^ 0x1CBFFEC9 ^ -1317799350);
         _loc3_.x = Math.random() * (this.sw + this.margin * (0x4F1D4581 ^ -1932312565 ^ -600058755 ^ 0x1FF5D1F5)) - this.margin * (0x3370FC0A ^ 0x671B292A ^ 0x047B34E1 ^ 0x5010E1C3);
         _loc3_.rotation = Math.random() * (0x03628805 ^ 0x65D16983 ^ 0x2EDFFB96 ^ 0x486C1B78);
         var _loc4_:Number = randomRange(-1788813769 ^ -1246258775 ^ 0x5FBE485A ^ 0x7F690FC6,0x60C14F4E ^ -112761324 ^ -591680050 ^ 0x453D8490);
         _loc3_.scaleY = _loc4_;
         _loc3_.scaleX = _loc4_;
         _loc3_.alpha = this._347d219b7eb74f496188cb5f(_loc3_);
         addChild(_loc3_);
         this._71747f0924176e9818dcf0c9(_loc3_);
         this._d73215d169bc2173f4b4a88b(_loc3_);
      }
      
      public function _347d219b7eb74f496188cb5f(param1:Bitmap) : Number
      {
         if(param1.scaleX < (-2134216048 ^ 0x62214ECA ^ 0x1FE35CBC ^ -49782556) * this.snowSize)
         {
            this.nAlpha = Math.random() * (this.snowAlphaMax - this.snowAlphaMin) + this.snowAlphaMin;
         }
         else if(param1.scaleX > (-1948764994 ^ 0x6411173C ^ -1775929223 ^ 0x79EC5BF9) * this.snowSize && param1.scaleX < (0x60E757A4 ^ 0x6FB7753D ^ -845362494 ^ -1026758561) * this.snowSize)
         {
            this.nAlpha = (Math.random() * (this.snowAlphaMax - this.snowAlphaMin) + this.snowAlphaMin) * _39d7d82359bf8046fe8ef6c4._ed4a735c5a6981f99dda5b73("挻揟揷換掚捡挲揀揦损掺捈揼掿掤捿揧捱挷掐挍挈捍揷","掌捍揔挮捄挒掝捾捽掭捻揚掝挲捿揬");
         }
         else if(param1.scaleX > (0x1CE8D4ED ^ 0x20BD7746 ^ 0x7EC24815 ^ 0x4297EBBA) * this.snowSize)
         {
            this.nAlpha = (Math.random() * (this.snowAlphaMax - this.snowAlphaMin) + this.snowAlphaMin) * _39d7d82359bf8046fe8ef6c4._ed4a735c5a6981f99dda5b73("捆挮捷挀掵揩捙捽掣揻揜捠捥挱挪揰掋掗揠按挞持揉捩","揣揶掎揖掖捉掿挧振按挩揻捧掗换揓");
         }
         return this.nAlpha;
      }
      
      public function _d73215d169bc2173f4b4a88b(param1:Bitmap) : void
      {
         this._208f98f8f4b751e0909efa76(param1);
         TweenMax.to(param1,(Math.random() * (-2046128480 ^ -1204220075 ^ 0x1243DB50 ^ 0x2C705AA7) + (-828221119 ^ 0x0D1300CF ^ 0x36C95141 ^ -176682803)) / param1.scaleY,{
            (_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ဠ჋ဣၡၐუၚမၵ჎","ၽႎႨႛၤႊဪႢပ၏Ⴊၨჟ႘၀႘")):param1.y + this._691e325052172a11c71be438 + param1.height,
            (_95da7f1147c669197db81295._8f4866de82b7339154180ecb("募勌刑劚劊劦剺刢剩剏剫剴動刉副剿刁劝努劮割剑勶劼剙剘勃刵","剭剭勩刕刜剬剷刲刈勐刿刄剢前刬刌")):this._d73215d169bc2173f4b4a88b,
            (_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剛剷劧剩剆劦利勌劽勫剠勚剳勈刂剚勆劄刼効勄劑勑列刭劁勫勚勮刷刹勹刄励劭刼副劭勎剛","劒劯勊勷刭剢剐刪剳刳刢勧劮剉剘刭")):[param1],
            (_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掲挑掏排捁掔捷揝捤掐插捏揪捈掮掽","捭揬掓掃挈捈挍捄掚揥掵挒挫掴挼揎")):Cubic.easeInOut,
            (_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挺指採揻揬掦掩揆按挭掂掳揊揢掭揶挠捲揈掀掮捩挊掆挻捬","挨挻捍掉掖挗掣捜挘揄捰掦揷掎揈捝")):false
         });
      }
      
      public function _71747f0924176e9818dcf0c9(param1:Bitmap) : void
      {
         this._f176f76ee69bc2894646785e(param1);
         TweenMax.to(param1,(Math.random() * (0x26F63DFB ^ 0x141B1EF9 ^ -314714768 ^ -539953552) + (-796413552 ^ 0x13D5AAA4 ^ -306103315 ^ 0x2E9320DB)) / param1.scaleX,{
            (_95da7f1147c669197db81295._8f4866de82b7339154180ecb("刧利劄劫剜劘刬勼劗勨创刂剼刺刢剀劍劰","刡剑剀切剢刃勅剙切勡劾剙剳分初勝")):this._347d219b7eb74f496188cb5f(param1),
            (_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捿捠挶掜揉揜按捋揁掁","挽揼揈挭掁掠捙揃揕揶挷掹掷掅掷按")):param1.x + this._db33d005017427742a794fd1 + param1.width,
            (_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勔剠剧剠刖劊勣勔勽刐劇剠劺剌勝勇削勑勸劚勩勍删剑势刼勣剃","副勀刨剎勽劳剪劂勵勢劼刍剕剄刯劇")):this._71747f0924176e9818dcf0c9,
            (_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၔႋရႏႤႠႉჴၯႬჅႁၯႧჅႊဏၸဥ၎အဢႷၔგီှႳ჎ၞဧ჊ჵဦႻ႖ဃႻၬ၅","Ⴁ჋ჺტლზწႷၿၿ႘ჰჅღჰ၊")):[param1],
            (_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捵挆挖捆掯捸掱揖掁捗挔捹捿揤挰掋","捉探捔捻掌指揱揓挹揌推捆挈捃揷授")):Cubic.easeInOut,
            (_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勯劰刉勚劸剗刘勈勚劾剭勖剀刟剿勩刊刧勗剕刏刺剭刷剷勪","刵刉利刦劙刱勍務刜剚刵剴剦刊勠办")):false
         });
      }
      
      public function _f176f76ee69bc2894646785e(param1:Bitmap) : void
      {
         param1.x = this._04434829e5eec5226133bf14 + Math.random() * this._db33d005017427742a794fd1 - param1.width;
      }
      
      public function _208f98f8f4b751e0909efa76(param1:Bitmap) : void
      {
         param1.y = this._fd7f50d9dbf420eaf8931740 + Math.random() * this._691e325052172a11c71be438 - param1.height;
      }
   }
}

