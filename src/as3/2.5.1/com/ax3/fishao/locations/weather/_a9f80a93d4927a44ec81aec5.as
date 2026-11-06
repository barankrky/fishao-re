package com.ax3.fishao.locations.weather
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import assets.common.Snow2;
   import com.ax3.utils.math.limit;
   import com.greensock.TweenMax;
   import com.greensock.easing.Linear;
   import com.greensock.easing.Quad;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.Rectangle;
   
   public class _a9f80a93d4927a44ec81aec5 extends _14b1db7c3b67b592d467704b
   {
      
      private static const _09011ede5540f0657506d90c:int = -2044210297 ^ 0x2805611C ^ 0x3D4F309C ^ -1821539541;
      
      private static var _6011882e5179bf528fca05c3:int = -269413492 ^ 0x1FAFED3C ^ -739044351 ^ 0x23ADEAB1;
      
      private var _3b3c87752a923bba6907fbe4:Number = 0.0003;
      
      private var _3bf2438fbad5166a1a8887d6:int = 0;
      
      private var _c78ccff6d543a8ad628224ed:Vector.<MovieClip> = new Vector.<MovieClip>();
      
      private var _7f01997cad649b3fa69dd8bf:Boolean = false;
      
      private var _2304ab51c44cb628585c461c:Number = 7.5;
      
      private var _7db7d3b0c5c4aab2948f6283:Number = 75;
      
      private var _28b3e28b9986d459b3f0d96b:Number = 10;
      
      private var _e3c759498da8a5a98a2bb80d:Number = 1;
      
      private var _cbc85c3e4709d10563d2653a:Number = 1;
      
      private var _b959c85c99469982b3f02b19:Number = 1;
      
      private var _4e79db5dc2471904554cb566:Number = 0;
      
      private var _1b6db0d2a5a0dac1f2fb1fb5:Number = 0;
      
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
      
      public var index:int = _6011882e5179bf528fca05c3++;
      
      public function _a9f80a93d4927a44ec81aec5(param1:Object)
      {
         super(param1);
         this._165898847e1b857d5aa8a938(param1);
         addEventListener(Event.ADDED_TO_STAGE,this._49be0c4ece68ff0aa4e36ad9,false,-1095006733 ^ 0x595A18D5 ^ 0x1B36A69B ^ -53003331,true);
         addEventListener(Event.REMOVED_FROM_STAGE,this._4bc6846b6375bfe4018391a5,false,0x4E94001C ^ 0x0D1AA5D3 ^ -926223895 ^ -1958456282,true);
      }
      
      override public function set scrollRect(param1:Rectangle) : void
      {
         this._4e79db5dc2471904554cb566 = param1.x;
         this._1b6db0d2a5a0dac1f2fb1fb5 = param1.y;
         if(this._e3c759498da8a5a98a2bb80d != param1.width || this._cbc85c3e4709d10563d2653a != param1.height)
         {
            this._e3c759498da8a5a98a2bb80d = param1.width;
            this._cbc85c3e4709d10563d2653a = param1.height;
            this._3bf2438fbad5166a1a8887d6 = limit(this._e3c759498da8a5a98a2bb80d * this._cbc85c3e4709d10563d2653a * this._3b3c87752a923bba6907fbe4,-330993242 ^ 0x46BAA294 ^ -1116863381 ^ 0x1791D758,_09011ede5540f0657506d90c);
            this.sh = this._cbc85c3e4709d10563d2653a;
            this.sw = this._e3c759498da8a5a98a2bb80d;
            this._15bc0d0e3f9f147dcd347ca4();
         }
      }
      
      public function _165898847e1b857d5aa8a938(param1:Object) : void
      {
         this.tracer = true;
         this.intro = true;
         this.fade = true;
         this.snowAmount = 0x7CF99D51 ^ -238700469 ^ -340336218 ^ 0x668AC42A;
         this.snowSize = _39d7d82359bf8046fe8ef6c4._ed4a735c5a6981f99dda5b73("捝挚挴损援掽捕捅揪掔揸揑挲掸探揥掘捛挕揗掎挽掴捑","捚挿挫捤揱挷挡挳挅措掔挠揅推捡揃");
         this.snowZmin = -155094591 ^ 0x29CCF520 ^ 0x1C7B1D0D ^ -1015637524;
         this.snowZmax = -963625311 ^ 0x7D0C30CB ^ -842658578 ^ 0x765A0285;
         this.snowAlphaMin = _433075a5d49397e40222eeae._9417d5d828724209ec5cfbb1("ჰ႙ႅြႳဟწၴဆႨსႿႌႣဒჼლჁႿၥეႧ၃်","ဟ჆ၞႱဟ႕ჀჃႭႤဝ၂အၶჍჍ");
         this.snowAlphaMax = -1131957132 ^ 0x481BC6B5 ^ 0x10B5ECEE ^ -467034578;
         this.gravity = 0x3AD514CB ^ 0x4E9BF848 ^ -1900383231 ^ -84633370;
         this.windBegin = -377550472 ^ -1770735557 ^ 0x6AB2D0FE ^ 0x15B9602D;
         this.windForceMin = 0x7889BC51 ^ -642266888 ^ -445800865 ^ 0x4453EA92;
         this.windForceMax = 0x1E5815CF ^ -725980031 ^ 0x4B8282F9 ^ -2124350909;
         this.windDirection = _95da7f1147c669197db81295._8f4866de82b7339154180ecb("剰剡刏勎刲勬勚劑剅勵劥勯剜勵劂剈勬剥","剱別勦劣勍刪刹剽劶勪劂势剞刓劥剱");
         this.windTimeMin = -1755388373 ^ 0x775C1C96 ^ -1881022267 ^ 0x6FE31A79;
         this.windTimeMax = -104248844 ^ -993054152 ^ -6120030 ^ -1029380504;
         this.snowAmount = this.snowAmount;
         this.margin = 0x09CD3711 ^ -915984635 ^ 0x3DAE0969 ^ -50064971;
         var _loc2_:* = false;
         this.mouseEnabled = false;
         this.wind = new Object();
         this.wind.max = this.windForceMax;
         this.wind.min = this.windForceMin;
         this.wind.dir = this.windDirection;
         if(this.wind.dir == _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掼捰揿损掴捼挳掗提捳掕挾援捊掽揟挽捊","捍插揎捯挩揅揍掌掸揺挰挮掩揥捤採"))
         {
            this.wind.force = this.windBegin;
         }
         else if(this.wind.dir == _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ဖညၠဆჅ႖აჿံၹြႼႄဋဃၐ","၁ၵტႱၴႳიစႼီ჆ၝჴ၏ႍၞ"))
         {
            this.wind.force = -this.windBegin;
         }
         else
         {
            this.wind.force = this.windBegin;
         }
         this._e6e8f47fb528e77d724f05ab();
         this.nAlpha = -530158227 ^ -478694772 ^ -2109389647 ^ -2125161647;
      }
      
      public function _15bc0d0e3f9f147dcd347ca4() : void
      {
         var _loc1_:DisplayObject = null;
         while(this.numChildren)
         {
            _loc1_ = this.getChildAt(0x399AE50D ^ 0x21CCB98E ^ -609260170 ^ -1007078923);
            TweenMax.killTweensOf(_loc1_,false);
            removeChildAt(0x34133441 ^ 0x5C6A7394 ^ -663910840 ^ -1340816995);
         }
         var _loc2_:int = -1292369402 ^ -1853765743 ^ -201674477 ^ -796691324;
         while(_loc2_ < this.snowAmount)
         {
            this._e4b35316cb62f9787d32648c(_loc2_);
            _loc2_++;
         }
      }
      
      public function _e6e8f47fb528e77d724f05ab() : void
      {
         var _loc1_:int = -211494077 ^ -773343699 ^ -61600247 ^ -1540926866;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (-377571840 ^ 0x127D7C89 ^ -1784238820 ^ 0x1455569C))
            {
               case 0:
                  if(this.wind.dir == _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揍揮捠挠捳挲挞揼掛揯挚揅捌捌捪掬捣捠","挋掖挺揀捞插掌揣捄振捏掷排掱挱捋"))
                  {
                     _loc1_ = -2011516127 ^ -336587659 ^ 0x337CADC7 ^ 0x2A663B98;
                  }
                  else
                  {
                     _loc1_ = -584638920 ^ 0x4FBFB8AE ^ -686460220 ^ 0x3F7DE55A;
                  }
                  break;
               case 1:
                  if(this.wind.dir == _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掭揍捙据捶挌捹挡捨揇揥掾挼捊捍揥","捺捘捠挤挃掟挝挤挚捓捺挚按揱捞挱"))
                  {
                     _loc1_ = 0x2C7BCBFE ^ 0x4760AF0C ^ -2030620538 ^ -1759746690;
                  }
                  else
                  {
                     _loc1_ = 0x2A7A8BC2 ^ 0x0556E76D ^ 0x23D714FF ^ 0x760B495D;
                  }
                  break;
               case 2:
                  this.nWind = Math.random() * (this.wind.max - this.wind.min) + this.wind.min;
                  _loc1_ = -1960831510 ^ 0x1155AFC3 ^ 0x09943482 ^ -384712793;
                  break;
               case 3:
                  this.nWind = -Math.random() * (this.wind.max - this.wind.min) - this.wind.min;
                  _loc1_ = 0x341F54EE ^ 0x49BA3544 ^ 0x44429DB8 ^ 0x4317CD1E;
                  break;
               case 4:
                  this.nWind = Math.random() * (this.wind.max * (-512104840 ^ -728301702 ^ -678311821 ^ -495005325) - this.wind.min) - this.wind.min - this.wind.max;
                  _loc1_ = -958949689 ^ -360211855 ^ 0x3838C63B ^ 0x6E98FB81;
                  break;
               case 5:
                  if(this.tracer == true)
                  {
                     _loc1_ = 0x3824778B ^ -1980239778 ^ 0x345CAA2C ^ -8446730;
                  }
                  else
                  {
                     _loc1_ = 0x2BE86F7F ^ 0x1231E348 ^ -1395474530 ^ -268762458;
                  }
                  break;
               case 6:
                  TweenMax.to(this.wind,Math.random() * (-117841999 ^ 0x1EB09DEA ^ 0x0C935037 ^ -354807185) + (-779134767 ^ 0x5DE19A60 ^ -1357191498 ^ 0x23742406),{
                     (_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剹割劓刘剀勂劧勚劗務勐勞劄刚剏勄勀刚","勯剀勱刂劍劌劢劬勢剭剉勈劽削刾刎")):this.nWind,
                     (_95da7f1147c669197db81295._8f4866de82b7339154180ecb("努劓労勒勬劚勛刻剃刉劲到刞剮刊刢剋劉","劘劻劀功劥剮剧剓剑到剶刼劝剰剮剻")):Math.random() * (this.windTimeMax - this.windTimeMin) + this.windTimeMin,
                     (_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勭初勶刣助剾剦别刭勼剐勣勩剻劀剠刮刑劤劼劼勏剡刮勾剈劧勆","剔勃刁刧効剑剀勹刷勠剕判剳劭勶剻")):this._e6e8f47fb528e77d724f05ab
                  });
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function _49be0c4ece68ff0aa4e36ad9(param1:Event) : void
      {
         this._f9c77230f0f532a2ead4d915();
      }
      
      private function _4bc6846b6375bfe4018391a5(param1:Event) : void
      {
         this._5e3db261403a4f0c96bb18d2();
      }
      
      private function _5e3db261403a4f0c96bb18d2() : void
      {
         var _loc1_:int = 0x2C856958 ^ 0x4A532F3F ^ -496259329 ^ 0x27686B64;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (0x7BBFA6E4 ^ -674474212 ^ -1682546105 ^ -1810886589))
            {
               case 0:
                  if(this._7f01997cad649b3fa69dd8bf == true)
                  {
                     _loc1_ = -1914415752 ^ 0x3AF03814 ^ 0x5A4520F9 ^ 0x4E84CE68;
                  }
                  else
                  {
                     _loc1_ = -664383193 ^ -1995009296 ^ 0x410D73D7 ^ -1280822274;
                  }
                  break;
               case 1:
                  this._7f01997cad649b3fa69dd8bf = false;
                  removeEventListener(Event.ENTER_FRAME,this._f6e939e2d6bc4752f6818b33);
                  _loc1_ = -1410142920 ^ 0x3A2CEA67 ^ 0x09900FB3 ^ 0x3B9B8B12;
                  break;
               case 2:
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function _f9c77230f0f532a2ead4d915() : void
      {
         var _loc1_:int = -332507085 ^ -2132521143 ^ 0x5F429D5D ^ -281175967;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (-864647637 ^ 0x0AF3C8DA ^ 0x4F71BEEA ^ 0x5541E25C))
            {
               case 0:
                  return;
               case 1:
                  if(this._7f01997cad649b3fa69dd8bf == false)
                  {
                     _loc1_ = 0x3C3A35C8 ^ -118884002 ^ -1369770719 ^ -1237570574;
                  }
                  else
                  {
                     _loc1_ = 0x5354DAF6 ^ 0xD0FE96 ^ 0x1CC4D726 ^ -1812602623;
                  }
                  break;
               case 2:
                  this._7f01997cad649b3fa69dd8bf = true;
                  addEventListener(Event.ENTER_FRAME,this._f6e939e2d6bc4752f6818b33);
                  _loc1_ = -1728918116 ^ -1771788311 ^ 0x61D2C574 ^ -1276003002;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function _f6e939e2d6bc4752f6818b33(param1:Event) : void
      {
      }
      
      private function _e4b35316cb62f9787d32648c(param1:int) : void
      {
         var _loc2_:BitmapData = new Snow2();
         var _loc3_:_733ac4ee7a33c0428cfdeb43 = new _733ac4ee7a33c0428cfdeb43(_loc2_);
         _loc3_.y = Math.random() * (this.sh + this.margin * (-1826889451 ^ -1434742175 ^ -477025564 ^ -621717102)) - this.margin * (-446771706 ^ -1844590122 ^ -235081225 ^ -2035288539);
         _loc3_.x = Math.random() * (this.sw + this.margin * (-1249378338 ^ 0x408994DB ^ -1724383808 ^ 0x6C3996C7)) - this.margin * (-1391516989 ^ 0x4448A5F6 ^ -1305998099 ^ 0x5B6F8BDA);
         _loc3_.rotation = Math.random() * (-404858048 ^ 0x0CE360A8 ^ 0x400F5EC6 ^ -1422760890);
         _loc3_.depth = Math.random() * (this.snowZmax * (0x2C54150C ^ -979014930 ^ -1556008733 ^ 0x4AB04F03) - this.snowZmin) + this.snowZmin;
         _loc3_.depth = int(_loc3_.depth * (-1463070554 ^ 0x255F0E78 ^ -222407696 ^ 0x7F2A0D4A)) / (-2099608323 ^ 0x3FD98625 ^ 0x4FDE6F00 ^ -220369476);
         var _loc4_:* = Math.max(_95da7f1147c669197db81295._6371735dc9287bd2d9618c1e("努剛勊劉剗剉剾别势勾加剰勅募剰刓勮到到勄剼副剉務","勦勷刴刟划劵劈劗勦労勂勾剹劀劷勇"),((-476382182 ^ 0x7A36F9F1 ^ 0x1D5A5F01 ^ -2064229653) / Math.max(0x7267161B ^ 0x0DB7639F ^ -360893373 ^ -1783807545,_loc3_.depth) - _433075a5d49397e40222eeae._9417d5d828724209ec5cfbb1("ဨၯ၁ჳფპၱს჋Ⴀ၅၂ႭჴჴႜႾၢႽ႟რყႀ჆","႘၉ႠმႌၒဤმႉჁဟၹლဖႷრ")) * this.snowSize);
         _loc3_.scaleY = Math.max(_95da7f1147c669197db81295._6371735dc9287bd2d9618c1e("勿勑劕劯劋劋劖劰勥劒切剷劫加刪剸劵刻勴刂刖刨刵刬","剮剈勥剭剑划劕劂剥剹勯刯勪勹刋剛"),((-1110312546 ^ 0x09C5C322 ^ -1565658261 ^ 0x16B9C9D6) / Math.max(-398930731 ^ -188244031 ^ -747438741 ^ -812798337,_loc3_.depth) - _39d7d82359bf8046fe8ef6c4._ed4a735c5a6981f99dda5b73("挄掽捁探掴揰揆挈捇揶掺授掺揝捍掑插揸挃捜掕挑挤掩","揬掏捩捷掌捕揋捞捷挲揯挗措捼挍揯")) * this.snowSize);
         _loc3_.scaleX = _loc4_;
         if(this.fade == true)
         {
            _loc3_.alpha = 0x7EF2DE03 ^ 0x4677B5F2 ^ 0x108584C5 ^ 0x2800EF34;
         }
         else
         {
            _loc3_.alpha = this._347d219b7eb74f496188cb5f(_loc3_);
         }
         addChild(_loc3_);
         this._71747f0924176e9818dcf0c9(_loc3_);
         this._d73215d169bc2173f4b4a88b(_loc3_);
      }
      
      public function _347d219b7eb74f496188cb5f(param1:_733ac4ee7a33c0428cfdeb43) : Number
      {
         if(param1.scaleX < (-810860120 ^ -1811478096 ^ -305114733 ^ -1233380983) * this.snowSize)
         {
            this.nAlpha = Math.random() * (this.snowAlphaMax - this.snowAlphaMin) + this.snowAlphaMin;
         }
         else if(param1.scaleX > (0x6A9914DA ^ -482713992 ^ -1963979586 ^ 0x0353461E) * this.snowSize && param1.scaleX < (0x66732BF2 ^ 0x0B50D01C ^ -859711796 ^ -1579012826) * this.snowSize)
         {
            this.nAlpha = (Math.random() * (this.snowAlphaMax - this.snowAlphaMin) + this.snowAlphaMin) * _433075a5d49397e40222eeae._9417d5d828724209ec5cfbb1("ვပႶთနჲႺႾၽႎ჈ုီ၄၆ယန႕ၹდჿჸၞ႕","လႣႽ჊Ⴓე႕ႁနႉဥငခ႞ၸႀ");
         }
         else if(param1.scaleX > (0x3C3EE458 ^ 0x0B7EEED9 ^ 0x45B33821 ^ 0x72F332A4) * this.snowSize)
         {
            this.nAlpha = (Math.random() * (this.snowAlphaMax - this.snowAlphaMin) + this.snowAlphaMin) * _433075a5d49397e40222eeae._9417d5d828724209ec5cfbb1("႙აყჶပ჋ჲူ၂ဦ၎ၷၢႼგნရႁညჂူၹლဩ","ჄဵၐၖჺჺႵ့ဟၾბၕწႠိႋ");
         }
         return this.nAlpha;
      }
      
      public function _d73215d169bc2173f4b4a88b(param1:_733ac4ee7a33c0428cfdeb43) : void
      {
         this._208f98f8f4b751e0909efa76(param1);
         TweenMax.to(param1,Math.random() * (-1450520309 ^ 0x694C8A10 ^ -1718648172 ^ 0x5949D98D) + (0x495B6586 ^ 0x2AA96B03 ^ -532309691 ^ -2085120063),{
            (_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勡力剉剰劌判切割勧剑","劍刭剪刐勂利劽劋勛劣刼剦刼劧勋剛")):param1.y + (Math.random() * (this.gravity / (0x6E375BB7 ^ -370482779 ^ 0x24E83CC7 ^ -1556773161)) + this.gravity / (0x631A6736 ^ -391783370 ^ 0x56D6D71B ^ -580293607)) * param1.scaleX * (-920215822 ^ -1213191029 ^ 0x235AA9B3 ^ 0x5DCC1BC9),
            (_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揸揮挧揯揩援挛掃挠捍揊掹掺揷捏掵捥捥掓推推揸捌捵掫掂捇握","捵探挔揨掻掔挆挕挾揽捻捨掽捾揌挠")):this._d73215d169bc2173f4b4a88b,
            (_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揕掉挝揮掉挲捍捪挞捍掓捕挃掷揇挐揻挽捊挻揍捝挹揁捤捬挫掞揰揣捔捑据揗捿揇挂採挈振","挽损揙捌掩探捚揎掟挆揠掦掗掟挀掰")):[param1],
            (_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勈勩勜剮勻勭刲劵助劗劥刦劄勑制剢","勛剌刾劐剏劾剈劀剟剜剫刔勫劀劶勚")):Linear.easeInOut,
            (_95da7f1147c669197db81295._8f4866de82b7339154180ecb("刊办勊剄勖劾勂勮勫刃募勏劥努勡勀劐剶勇劚劄剱剄勷剫劦","勸刪剏勿勴剨刵剮劳勂勷勄刈劤劣勜")):false
         });
      }
      
      public function _71747f0924176e9818dcf0c9(param1:_733ac4ee7a33c0428cfdeb43) : void
      {
         this._f176f76ee69bc2894646785e(param1);
         TweenMax.to(param1,Math.random() * (0x7FDB3B60 ^ -150182065 ^ 0x2AD4A823 ^ -1576799218) + (-1274751093 ^ -732755731 ^ 0x586A957D ^ 0x383D4A1A),{
            (_95da7f1147c669197db81295._8f4866de82b7339154180ecb("励勧副劺勷勓刼勍剦刘勯剣刺刘劥勦勘刧","剤勏剝励剙劁刋勍劭勇劇办劭労勁劙")):this._347d219b7eb74f496188cb5f(param1),
            (_95da7f1147c669197db81295._8f4866de82b7339154180ecb("剗劾勤刍剿刉剞勝刬刓","刉剃劮勻勧劲刿助刺勴劀刷励劓劐刻")):param1.x + (Math.random() * (-452059800 ^ 0x4A254122 ^ -11763467 ^ 0x5067DCEF) - (-1181355698 ^ -779318596 ^ 0x08FFFA69 ^ 0x60E681B3) + this.wind.force) * param1.scaleX,
            (_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၱპႻျ၆ၨႽၣ်ႮဴჯဵၑႻဥႲဇჟႫၺဨဆႩ","მရလႮဤၨႲფဍံဘဲဧ၊ူႇ")):Math.random() * (0x499B6056 ^ 0x3EFEB2F6 ^ 0x65C7E3B1 ^ 0x12A23295),
            (_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ျဂစჇဒဆმ႔Ⴘငဒჲၧ႕ၾႡწႜკၴჵႳႫၺၟဢლဦ","ჭဟိၫမဵხၠ၉ႇႈ၉ဣဤႌွ")):this._71747f0924176e9818dcf0c9,
            (_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勶删刏勿勧剎剤剴勥勀劕剞刐刏劏副勞削勔励勿劌剾刓剥勻勃勅刷劍勀劼勢剳刱劀勦剥到刻","勁剠劒勪刽刚剷剣勩勿刮刓勍刭勔勿")):[param1],
            (_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劶勀刾刋勋剅剙勓剧刚判剌勎劲勏刡","勯勽剥剳勗勔勶劌刁刧刍勶劤勂刻剝")):Quad.easeInOut,
            (_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("Ⴔဳဣ႙႘႐ပუႬၫ႞အცწဈეယჼႿႅაဨ႔Ⴢ႑ႜ","ၱၽ჎ၸშႤၗၓოၽဇჯჷჹჿၜ")):false
         });
      }
      
      public function _f176f76ee69bc2894646785e(param1:_733ac4ee7a33c0428cfdeb43) : void
      {
         var _loc2_:int = -1478923710 ^ 0x792D4C19 ^ 0x7A0409FA ^ 0x545A99DE;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x36AB24B5 ^ -468650350 ^ 0x53B05B2C ^ 0x71A13F74))
            {
               case 0:
                  if(param1.x - this._4e79db5dc2471904554cb566 > this.sw + this.margin)
                  {
                     _loc2_ = -1790599887 ^ 0x56643D1F ^ -1326767394 ^ -2090847093;
                  }
                  else
                  {
                     _loc2_ = -732068220 ^ -625337705 ^ 0x09C31D5C ^ -141674701;
                  }
                  break;
               case 1:
                  param1.x = this.sw + Math.random() * this.margin + this._4e79db5dc2471904554cb566;
                  _loc2_ = -1312473367 ^ 0x7087E9C9 ^ 0x18F70B34 ^ 0x291F6A69;
                  break;
               case 2:
                  return;
               case 3:
                  if(param1.x - this._4e79db5dc2471904554cb566 < -this.margin)
                  {
                     _loc2_ = -1451074063 ^ 0x2DFA885B ^ -422206461 ^ -1844983849;
                  }
                  else
                  {
                     _loc2_ = -445699001 ^ -1829266527 ^ 0x2F9CE40E ^ -1464932971;
                  }
                  break;
               case 4:
                  param1.x = Math.random() * -this.margin + this._4e79db5dc2471904554cb566;
                  _loc2_ = 0x76C6EF2C ^ -740483010 ^ 0x4733D140 ^ 0x1282A82F;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function _208f98f8f4b751e0909efa76(param1:_733ac4ee7a33c0428cfdeb43) : void
      {
         var _loc2_:int = 0x28C5AFDB ^ -2112462138 ^ -481447725 ^ 0x1C430E20;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (-1284537387 ^ -1508479126 ^ 0x6B37D533 ^ 0x2B934A61))
            {
               case 0:
                  param1.y = this.sh + Math.random() * this.margin + this._1b6db0d2a5a0dac1f2fb1fb5;
                  _loc2_ = 0x4FEE9CDD ^ 0x6AF9CBCD ^ -1395195672 ^ -602069999;
                  break;
               case 1:
                  param1.y = Math.random() * -this.margin + this._1b6db0d2a5a0dac1f2fb1fb5;
                  _loc2_ = -1020131825 ^ -552298711 ^ 0x1BE26998 ^ 0x52198B57;
                  break;
               case 2:
                  if(param1.y - this._1b6db0d2a5a0dac1f2fb1fb5 < -this.margin)
                  {
                     _loc2_ = 0x2B5D78B1 ^ -1255129629 ^ -1718582945 ^ 0x5220B7E0;
                  }
                  else
                  {
                     _loc2_ = -563042491 ^ -1780248998 ^ -2138502222 ^ -1631104700;
                  }
                  break;
               case 3:
                  if(param1.y - this._1b6db0d2a5a0dac1f2fb1fb5 > this.sh + this.margin)
                  {
                     _loc2_ = -1760420942 ^ 0x48C7E648 ^ 0x58DD3EE0 ^ -757747466;
                  }
                  else
                  {
                     _loc2_ = 0x2CF85846 ^ -1996695277 ^ 0x155C9FCD ^ -461017737;
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
   }
}

