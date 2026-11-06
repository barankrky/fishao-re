package com.ax3.fishao.locations.weather
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.utils.math.limit;
   import com.ax3.utils.timer._34a2ba6ad978d976b8b0f5a4;
   import com.ax3.utils.timer._69eec7d2f73604da25ccda04;
   import com.ax3.utils.timer._92d7656ddc3c3da810e99c74;
   import flash.events.Event;
   import flash.geom.Rectangle;
   
   public class _81dc55b4b13da5fdbd0aa52a extends _14b1db7c3b67b592d467704b implements _69eec7d2f73604da25ccda04
   {
      
      private static const _9502ea89b4eb48b187601b56:int = -1553624463 ^ -1222163802 ^ 0x5F3AB1D7 ^ 0x4B78602C;
      
      private var _9a8f48c7b331e250e25fa801:Number = 0.0003;
      
      private var _ea552a304c04d9ea33d46198:int = 0;
      
      private var _b6733f4a5a35154032d59a69:Vector.<_5826b2b2482ca435e15296b9> = new Vector.<_5826b2b2482ca435e15296b9>();
      
      private var _450a7388533dacdb14df059c:Boolean = false;
      
      private var _8d94ca9e90cbd2fe588a99bd:Number = 7.5;
      
      private var _457766dc9976dd00748135cb:Number = 75;
      
      private var _d5f807cfe7b12b5c33105dc3:Number = 10;
      
      private var _ade2abf3c2d39d8ec96ce50b:Number = 1;
      
      private var _906d82e02a592354791f5464:Number = 1;
      
      private var _5965dfaa71aef4f81a9e0b85:Number = 1;
      
      private var _e6200e819acb8a45dac58f75:Number = 0;
      
      private var _96dff6d87f8fb4e6b7466254:Number = 0;
      
      public function _81dc55b4b13da5fdbd0aa52a(param1:Object)
      {
         super(param1);
         this._165898847e1b857d5aa8a938(param1);
         addEventListener(Event.ADDED_TO_STAGE,this._ff3ab04b518caf1ec25544ce,false,0x560E8F5F ^ 0x03DC3BEC ^ 0x73CD1774 ^ 0x261FA3C7,true);
         addEventListener(Event.REMOVED_FROM_STAGE,this._6322b64ec190981acf932bf0,false,-133787680 ^ -2035400390 ^ 0x5C0334ED ^ 0x22ABFA37,true);
      }
      
      public function _165898847e1b857d5aa8a938(param1:Object) : void
      {
         this._457766dc9976dd00748135cb = param1.fallSpeed;
         this._5965dfaa71aef4f81a9e0b85 = param1.dropAlpha;
         this._8d94ca9e90cbd2fe588a99bd = param1.fallSpeed / (-858987665 ^ 0x0A60E902 ^ -450173504 ^ 0x2386EFA7);
         this._9a8f48c7b331e250e25fa801 = param1.dropsDensity;
         this._d5f807cfe7b12b5c33105dc3 = param1.dropRotationDegree;
      }
      
      private function init() : void
      {
         var _loc1_:_5826b2b2482ca435e15296b9 = null;
         var _loc2_:int = 0x42A17536 ^ 0x6EC3B2F7 ^ 0x2DA47440 ^ 0x01C6B381;
         var _loc3_:_5826b2b2482ca435e15296b9 = null;
         for each(_loc1_ in this._b6733f4a5a35154032d59a69)
         {
            removeChild(_loc1_);
         }
         this._b6733f4a5a35154032d59a69 = new Vector.<_5826b2b2482ca435e15296b9>();
         _loc2_ = 0x31F1D0D1 ^ 0x0EBE19D5 ^ -691715808 ^ -376797148;
         while(_loc2_ < this._ea552a304c04d9ea33d46198)
         {
            _loc3_ = new _5826b2b2482ca435e15296b9();
            _loc3_.gotoAndStop(-1767528342 ^ 0x1BF1AF91 ^ -1240492867 ^ 0x3B5B9347);
            _loc3_.alpha = this._5965dfaa71aef4f81a9e0b85;
            _loc3_.scaleY = _loc3_.scaleX = Math.round((Math.random() * _95da7f1147c669197db81295._6371735dc9287bd2d9618c1e("勗勁劉刉剔刂剿剋切刡勫劼刓劺刏劾剁刈劜刟剼刟刅刿","剫剘刳勌募剃刽剥剎励剰勲勆刌勖劭") + _39d7d82359bf8046fe8ef6c4._ed4a735c5a6981f99dda5b73("揷捴掶挥捲揳掓捅指挂捤捄掦挽揅掣掦掋挲掛揇掵挊掌","挹挝揮掽掋捺掠捕挝揲挺掭捬揚捾掛")) * (-1071071225 ^ -413024794 ^ -1368155537 ^ -1992628348)) / (0x1181E2B3 ^ 0x7A0B71AA ^ -1940322938 ^ -405563755);
            _loc3_.x = Math.random() * this._ade2abf3c2d39d8ec96ce50b;
            _loc3_.y = Math.random() * this._906d82e02a592354791f5464;
            _loc3_.endY = this._906d82e02a592354791f5464;
            _loc3_.rotation = this._d5f807cfe7b12b5c33105dc3;
            this._b6733f4a5a35154032d59a69.push(_loc3_);
            addChild(_loc3_);
            _loc2_++;
         }
         if(stage != null)
         {
            this._9d583e53d66ea1daa29a50cf();
         }
      }
      
      private function _ff3ab04b518caf1ec25544ce(param1:Event) : void
      {
         this._9d583e53d66ea1daa29a50cf();
      }
      
      private function _6322b64ec190981acf932bf0(param1:Event) : void
      {
         this._9ff5afa470927e05f33945e7();
      }
      
      private function _9ff5afa470927e05f33945e7() : void
      {
         var _loc1_:int = -1592569959 ^ 0x619BD735 ^ -2035442455 ^ -1426151370;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (-976002642 ^ 0x65C19635 ^ 0x188BA3DB ^ 0x5442F831))
            {
               case 0:
                  return;
               case 1:
                  this._450a7388533dacdb14df059c = false;
                  _92d7656ddc3c3da810e99c74.getInstance()._57ad3faeff9ca92cbf9fe447(_34a2ba6ad978d976b8b0f5a4.ENTER_FRAME).remove(this);
                  _loc1_ = -201954404 ^ 0x1545E0EE ^ 0x2628DEB3 ^ 0x2C40F9B0;
                  break;
               case 2:
                  if(this._450a7388533dacdb14df059c == true)
                  {
                     _loc1_ = 0x29944B46 ^ -1706107414 ^ 0x73731E06 ^ 0x2C7224DA;
                  }
                  else
                  {
                     _loc1_ = 0x16A66F1D ^ -1064424137 ^ 0x1C03ED1B ^ 0x26F00340;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function _9d583e53d66ea1daa29a50cf() : void
      {
         var _loc1_:int = -533199366 ^ -350483655 ^ -2067989148 ^ 0x2C016245;
         loop0:
         while(true)
         {
            switch(_loc1_ ^ (0x4F45D2C0 ^ -531002948 ^ 0x52F21228 ^ 0x5E77D8B7))
            {
               case 0:
                  this._450a7388533dacdb14df059c = true;
                  _92d7656ddc3c3da810e99c74.getInstance()._57ad3faeff9ca92cbf9fe447(_34a2ba6ad978d976b8b0f5a4.ENTER_FRAME).add(this);
                  _loc1_ = -810011284 ^ -797797503 ^ 0x78AB0179 ^ -990366091;
                  break;
               case 1:
                  if(this._450a7388533dacdb14df059c == false)
                  {
                     _loc1_ = 0x02886204 ^ -427573554 ^ -1273550206 ^ -209360981;
                  }
                  else
                  {
                     _loc1_ = 0x62D5BE39 ^ -26687158 ^ 0x76D3CB35 ^ 0x49F72DA7;
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
      
      private function _2a6361d2b967f4b244b52e0c(param1:_5826b2b2482ca435e15296b9) : void
      {
         param1.gotoAndStop(0x4CC0350A ^ 0x225C308B ^ -1392183799 ^ -1013386359);
      }
      
      private function _f49df733032a8f96a578c39b(param1:_5826b2b2482ca435e15296b9) : void
      {
         param1.gotoAndStop(param1.currentFrame + (0x37A213B6 ^ 0x0A06983A ^ 0x2CE7514D ^ 0x1143DAC0));
      }
      
      override public function set scrollRect(param1:Rectangle) : void
      {
         if(this._ade2abf3c2d39d8ec96ce50b != param1.width || this._906d82e02a592354791f5464 != param1.height)
         {
            this._ade2abf3c2d39d8ec96ce50b = param1.width;
            this._906d82e02a592354791f5464 = param1.height;
            this._ea552a304c04d9ea33d46198 = limit(this._ade2abf3c2d39d8ec96ce50b * this._906d82e02a592354791f5464 * this._9a8f48c7b331e250e25fa801,0x6EC90527 ^ 0x0B8ADEA4 ^ -927137552 ^ -1375806606,_9502ea89b4eb48b187601b56);
            this.init();
         }
         this._e6200e819acb8a45dac58f75 = param1.x;
         this._96dff6d87f8fb4e6b7466254 = param1.y;
      }
      
      public function update(param1:uint, param2:uint) : void
      {
         var _loc3_:_5826b2b2482ca435e15296b9 = null;
         for each(_loc3_ in this._b6733f4a5a35154032d59a69)
         {
            if(_loc3_.y > _loc3_.endY + _loc3_.height)
            {
               if(_loc3_.currentFrame < _loc3_.totalFrames)
               {
                  this._f49df733032a8f96a578c39b(_loc3_);
               }
               else
               {
                  if(_loc3_.currentFrame != (0x24C0DA9A ^ 0x9E0C37 ^ -623145440 ^ -24815476))
                  {
                     this._2a6361d2b967f4b244b52e0c(_loc3_);
                  }
                  _loc3_.x = Math.random() * this._ade2abf3c2d39d8ec96ce50b * _433075a5d49397e40222eeae._9417d5d828724209ec5cfbb1("ႱჇဨ႕မႉႡႻႈ႙ဩၾေოဘ჻Ⴋდოძၕၞთჰ","ဇჅႤ်ჟ႗၁ჴၣლႊၑထჳ္Ⴔ") + this._e6200e819acb8a45dac58f75;
                  _loc3_.y = -_loc3_.height + this._96dff6d87f8fb4e6b7466254;
                  _loc3_.endY = Math.random() * this._906d82e02a592354791f5464 * _433075a5d49397e40222eeae._9417d5d828724209ec5cfbb1("တဳ႖Ⴒ႗ၪၡ်ှြၱႆိဉဦိ჎ရၸყႄ၎ဈပ","Ⴞ႙ဨညငႜკ჏ჾဦီဲူ჉Ⴐအ") + this._96dff6d87f8fb4e6b7466254;
               }
            }
            else
            {
               _loc3_.x -= _loc3_.scaleX * this._8d94ca9e90cbd2fe588a99bd;
               _loc3_.y += _loc3_.scaleY * this._457766dc9976dd00748135cb;
            }
         }
      }
   }
}

