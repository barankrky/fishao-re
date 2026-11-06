package com.ax3.fishao.locations.weather
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.utils.math.randomRange;
   import com.ax3.utils.math.randomRangeEase;
   import com.greensock.TweenMax;
   import com.inkora.easing.Circular;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.geom.Rectangle;
   
   public class _b899b7e25fa8e39333090376 extends _14b1db7c3b67b592d467704b
   {
      
      private var _7fb7cccba17f64c619b10879:Vector.<MovieClip> = new Vector.<MovieClip>();
      
      private var _4b2374a3a4d3633a48430a50:Boolean = false;
      
      private var _4a1c33ed749ed512a2051d12:Number = 1;
      
      private var _c112c2c601f11043209b94cf:Number = 1;
      
      private var _4213ea700c19eb5940822ecf:Number = 0;
      
      private var _3a2ec1cea6e81bf8c83a421f:Number = 0;
      
      public var wind:Object;
      
      public var nWind:int;
      
      public var windTimeMin:int;
      
      public var snowSize:Number;
      
      public var margin:int = 0;
      
      public var windTimeMax:int;
      
      public var snowAmount:int;
      
      public var tracer:Boolean;
      
      private var _c5e4dbfef3bf56be96cd7555:Vector.<_b15da3cc8808d46bbfd29bd6> = new Vector.<_b15da3cc8808d46bbfd29bd6>();
      
      public function _b899b7e25fa8e39333090376(param1:Object)
      {
         super(param1);
         this._165898847e1b857d5aa8a938(param1);
         addEventListener(Event.ADDED_TO_STAGE,this._178036f037d5223b3ad93a65,false,-1511836033 ^ 0x07029AAD ^ -609196645 ^ 0x7951C949,true);
         addEventListener(Event.REMOVED_FROM_STAGE,this._5774c100d6057af7b611ab86,false,-1063322160 ^ 0x2FE51C11 ^ 0x39E9273C ^ -695023875,true);
      }
      
      override public function set scrollRect(param1:Rectangle) : void
      {
         if(this._4a1c33ed749ed512a2051d12 != param1.width || this._c112c2c601f11043209b94cf != param1.height)
         {
            this._4a1c33ed749ed512a2051d12 = param1.width;
            this._c112c2c601f11043209b94cf = param1.height;
            this._8ba68c04078d6477263ed55e();
         }
         this._4213ea700c19eb5940822ecf = param1.x;
         this._3a2ec1cea6e81bf8c83a421f = param1.y;
      }
      
      public function _165898847e1b857d5aa8a938(param1:Object) : void
      {
         this.snowAmount = 0x7F780248 ^ -1234419077 ^ 0x4F1D67A7 ^ -2046220393;
      }
      
      public function _8ba68c04078d6477263ed55e() : void
      {
         var _loc1_:_b15da3cc8808d46bbfd29bd6 = null;
         var _loc2_:int = -602267293 ^ -2071345005 ^ -27361305 ^ -1496476137;
         var _loc3_:_b15da3cc8808d46bbfd29bd6 = null;
         for each(_loc1_ in this._c5e4dbfef3bf56be96cd7555)
         {
            TweenMax.killChildTweensOf(_loc1_,false);
            removeChild(_loc1_);
         }
         this._c5e4dbfef3bf56be96cd7555 = new Vector.<_b15da3cc8808d46bbfd29bd6>();
         _loc2_ = 0x4F58FFB6 ^ 0x14A992C1 ^ 0x10B75C95 ^ 0x4B4631E2;
         while(_loc2_ < this.snowAmount)
         {
            _loc3_ = this._c427aa55a343dbab3c2abb0c(_loc2_);
            this._c5e4dbfef3bf56be96cd7555.push(_loc3_);
            _loc2_++;
         }
      }
      
      public function _e6e8f47fb528e77d724f05ab() : void
      {
         var _loc1_:int = -990016284 ^ 0x417ECC72 ^ 0x2AA58035 ^ -1939499581;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (-1247431111 ^ -303697419 ^ -1265684042 ^ -812899554))
            {
               case 0:
                  this.nWind = Math.random() * (this.wind.max - this.wind.min) + this.wind.min;
                  _loc1_ = -2141583619 ^ 0x68DE4867 ^ 0x6B3F0BB7 ^ -1594355637;
                  break;
               case 1:
                  this.nWind = Math.random() * (this.wind.max * (-1096962953 ^ 0x6CD6DF66 ^ 0x0F3C00CD ^ -579374114) - this.wind.min) - this.wind.min - this.wind.max;
                  _loc1_ = 0x6F70AB4E ^ 0x795A0058 ^ 0x3C81B8CA ^ 0x09E846BA;
                  break;
               case 2:
                  if(this.tracer == true)
                  {
                     _loc1_ = 0x66468ADC ^ -151826659 ^ -751967095 ^ 0x60DB742F;
                  }
                  else
                  {
                     _loc1_ = 0x27754D79 ^ 0x34E14EF5 ^ -188497979 ^ -1005262546;
                  }
                  break;
               case 3:
                  TweenMax.to(this.wind,Math.random() * (-64184568 ^ -624983868 ^ -1234311899 ^ -1862337814) + (0x370805DF ^ -1579400249 ^ -1099777162 ^ 0x28A6FD6F),{
                     (_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("揎捱捆掱指捎挲指排掏挾捌挟挊揁捪揬掇","掷捎揪挻挵掿捶揬揓揂揌捫掄揰掎掷")):this.nWind,
                     (_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捥捇提捔挰揂捱掳揻掽捨揷挜挴揖掫挴掳","揲捂揧揬捘挎据挝挼挘挎掇揋掩挷捍")):Math.random() * (this.windTimeMax - this.windTimeMin) + this.windTimeMin,
                     (_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劵勹努剨刬剖勬剐勥劧刜刿勤剙勘劀劆劆刵剅勯剹剥勬勳勷力剷","刅剩剽劫剙勱剻判刵剮创勗剩勳刉前")):this._e6e8f47fb528e77d724f05ab
                  });
                  return;
               case 4:
                  if(this.wind.dir == _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၬႌჱ჈ဨჇၙ჎უဠღჀზဎ႓ၜၱႃ","႐Ⴥက၇პႫၝၗႴၠႄბႍၿဢႷ"))
                  {
                     _loc1_ = -199354582 ^ 0x6BC8CB5E ^ -371420665 ^ 0x55491B17;
                  }
                  else
                  {
                     _loc1_ = -1057264386 ^ 0x0DA8E56A ^ -1836137316 ^ 0x7C9E1869;
                  }
                  break;
               case 5:
                  if(this.wind.dir == _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掃挽捚揑揋捇揨挜揘捴挜捫揤捌揂揜","掕捈揽掲揣掣掰捘揄揺挑掳揁掻捴挞"))
                  {
                     _loc1_ = -1033347883 ^ 0x58291A0C ^ 0x53E79612 ^ -354056791;
                  }
                  else
                  {
                     _loc1_ = 0x58A02A94 ^ 0x3BEAB00D ^ -865801776 ^ -1939003860;
                  }
                  break;
               case 6:
                  this.nWind = -Math.random() * (this.wind.max - this.wind.min) - this.wind.min;
                  _loc1_ = -659003926 ^ -484861536 ^ 0x10F76552 ^ 0x0815CC7E;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function _178036f037d5223b3ad93a65(param1:Event) : void
      {
         this._60936da9e3209b99ae5fed4b();
      }
      
      private function _5774c100d6057af7b611ab86(param1:Event) : void
      {
         this._a72d1eec877459f1ab6a4700();
      }
      
      private function _a72d1eec877459f1ab6a4700() : void
      {
         var _loc1_:_b15da3cc8808d46bbfd29bd6 = null;
         if(this._4b2374a3a4d3633a48430a50 == true)
         {
            this._4b2374a3a4d3633a48430a50 = false;
            for each(_loc1_ in this._c5e4dbfef3bf56be96cd7555)
            {
               TweenMax.killChildTweensOf(_loc1_,false);
               removeChild(_loc1_);
            }
            this._c5e4dbfef3bf56be96cd7555 = new Vector.<_b15da3cc8808d46bbfd29bd6>();
         }
      }
      
      private function _60936da9e3209b99ae5fed4b() : void
      {
         var _loc1_:int = -480440476 ^ 0x3856E5BE ^ -1172656419 ^ 0x44FBEB0E;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (0x3D4DC53C ^ -287483067 ^ 0x1E635BEC ^ -400987492))
            {
               case 0:
                  if(this._4b2374a3a4d3633a48430a50 == false)
                  {
                     _loc1_ = 0x4AB145C6 ^ -999832507 ^ 0x5C9BB331 ^ -140010054;
                  }
                  else
                  {
                     _loc1_ = -428528509 ^ 0x0C2602C8 ^ -1069217886 ^ 0x0FFC86E2;
                  }
                  break;
               case 1:
                  this._4b2374a3a4d3633a48430a50 = true;
                  this._8ba68c04078d6477263ed55e();
                  _loc1_ = 0x3BE652BC ^ 0x0A2F2193 ^ 0x7D55E0B2 ^ 0x69763C96;
                  break;
               case 2:
                  return;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function _c427aa55a343dbab3c2abb0c(param1:int) : _b15da3cc8808d46bbfd29bd6
      {
         var _loc2_:_b15da3cc8808d46bbfd29bd6 = new _b15da3cc8808d46bbfd29bd6();
         addChild(_loc2_);
         this._bb050b466aacb0174dba8451(_loc2_);
         return _loc2_;
      }
      
      private function _bb050b466aacb0174dba8451(param1:_b15da3cc8808d46bbfd29bd6) : void
      {
         param1.alpha = 0x79E149B6 ^ 0x59E37D26 ^ 0x435CB4FC ^ 0x635E806C;
         param1.scaleX = param1.scaleY = randomRange(-709773407 ^ -910718440 ^ 0x686B8F4D ^ 0x746DB2F6,-408487501 ^ -1215090998 ^ 0x2A1527D4 ^ 0x7A20F0A8);
         this._bbbf105747d1a116f5f6bdbd(param1);
         this._5835e70ac427f84aaedc5d69(param1);
         TweenMax.to(param1,Math.random() * (-1975876170 ^ -250648785 ^ -1635075125 ^ -440444586) + (-1401581650 ^ 0x5452AF66 ^ -814619008 ^ 0x3756C64A),{
            (_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ၡၒႋჴჁၡၼႪბ჏შညဂႭၠႪჇဌ","ၡႲၰ႞ီၩზၭႹკဆრၯဍအႰ")):0x71AE0CC7 ^ 0x0B35DB1D ^ -2094301565 ^ -105862824,
            (_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捁捧揖掊揜揣接揎掱捳挑揋挰挹控挙揾揈掽排揅掋捌揳握捇挷持","揨揍捊揽捉挟揤挺挚挽捇掀揅挲挒掹")):this._bb050b466aacb0174dba8451,
            (_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("႗ဍၥႏႳငႍၮ႕ႃၹცႍიႨძჇ႘უႬြႣူ႞Ⴞ჎ႬၧႤႩၦႱၡႮႪၢႭဗჍၾ","ღံငႼႁვႽႻუဓဣၚჾၮწ႟")):[param1],
            (_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("၍ၾთლႆၳ჎ဃဘၖါးၑၡၥჷ","ႲဿჁံသჵြံၰაႝჟჼငႫဧ")):true,
            (_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捭揯挡掀接捹揖捥振揩掦掩揪揟揁捴揩捨捗捆","揻挏揳捰挙揘挷掰挦捉揎揖掯揓捑推")):0x6318C720 ^ 0x47B40568 ^ 0x74006171 ^ 0x50ACA338,
            (_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劮勴勄剦勞副剜刼刃刉剘劎勍劑勅劂剨剋","劥刷剩副勄剷剄劊勍励刖刎別刘勗劖")):0x02BA5E41 ^ -1715033338 ^ 0x48560427 ^ -752160414
         });
      }
      
      private function _bbbf105747d1a116f5f6bdbd(param1:_b15da3cc8808d46bbfd29bd6) : void
      {
         param1.x = randomRangeEase(-31145699 ^ 0x2A82704F ^ -660475394 ^ 0x0C0740AC,this._4a1c33ed749ed512a2051d12,Circular.easeInOut) + this._4213ea700c19eb5940822ecf;
      }
      
      private function _5835e70ac427f84aaedc5d69(param1:_b15da3cc8808d46bbfd29bd6) : void
      {
         param1.y = randomRangeEase(-1903659694 ^ 0x1F6D1F0E ^ -579519571 ^ 0x4C9051F1,this._c112c2c601f11043209b94cf,Circular.easeInOut) + this._3a2ec1cea6e81bf8c83a421f;
      }
   }
}

