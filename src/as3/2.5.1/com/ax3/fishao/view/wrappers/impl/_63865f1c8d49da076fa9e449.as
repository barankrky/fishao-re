package com.ax3.fishao.view.wrappers.impl
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.display.wrappers._67a7ec125a01811d64af4dcc;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   
   public class _63865f1c8d49da076fa9e449 extends _818ca771e56d1f99e60c15fc
   {
      
      private static const _6a6d9fc59d06be16e614bce3:Number = -1467118939 ^ -1249583651 ^ -755575187 ^ -805338864;
      
      private var _4ef2158cf1048d0099c59318:Number;
      
      private var _7f837cdf394c9d7dae3bb4d0:Vector.<String>;
      
      private var _37e7de5351eb522b723f85e2:_67a7ec125a01811d64af4dcc;
      
      private var _245a56ea6278dd1ca2a039e2:Array;
      
      private var _8d854599d425dc51d2fbb6eb:Function;
      
      private var _3f37cba50c8095621941a20e:DisplayObject;
      
      private var _6d363fcc0a81b64bae43aae0:Number;
      
      private var _e17cb57f24eaa796f41cb4e4:DisplayObject;
      
      public function _63865f1c8d49da076fa9e449()
      {
         super();
      }
      
      public function get items() : Array
      {
         return this._245a56ea6278dd1ca2a039e2;
      }
      
      public function set maxCountOfVisibleItems(param1:Number) : void
      {
         this._4ef2158cf1048d0099c59318 = param1;
      }
      
      override public function process(param1:DisplayObject) : void
      {
         super.process(param1);
         this._3f37cba50c8095621941a20e = DisplayObjectContainer(_child).getChildByName(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ჽჲခၳ჏ၤ၊ႲၐႀႯყ","၉ဉၪၫႀၞၮ၎၄ႍ႟ჇႰႦႚၢ"));
         this._5a0cdff83455960c21fd3e81();
         this._f9253ac7644fbbb426fd469c();
         this._1cf6687628eca9e5dcee130a();
         this.maxCountOfVisibleItems = _6a6d9fc59d06be16e614bce3;
      }
      
      private function _5a0cdff83455960c21fd3e81() : void
      {
         _content = new Sprite();
         addChild(_content);
         var _loc1_:DisplayObject = (_child as DisplayObjectContainer).getChildByName(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("刟劧刷剕勂刪勛勳刪勖剴剹勻刌刽勑","剋劒别勧勏刿列勒勓刮列劣剟劐刢刲")) as DisplayObject;
         var _temp_3:* = _content;
         var _temp_2:* = §§findproperty(Rectangle);
         var _temp_1:* = 0x4D4B6F3C ^ 0x1EA043DC ^ -2089455875 ^ -794934755;
         _temp_3.scrollRect = new Rectangle(_temp_1,_temp_1,_loc1_.width,_loc1_.height);
         _content.x = _loc1_.x;
         _content.y = _loc1_.y;
         _loc1_.parent.removeChild(_loc1_);
         this._6d363fcc0a81b64bae43aae0 = this._3f37cba50c8095621941a20e.height - _loc1_.height;
      }
      
      private function _f9253ac7644fbbb426fd469c() : void
      {
         this._e17cb57f24eaa796f41cb4e4 = (_child as DisplayObjectContainer).getChildByName(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ဵ႘ႫႼဍဃႮၞჲჱၰ၂ႌ့Ⴂჰ","ၤခႺ၎ႁၬေဎႄჴ၄ှုႠწ႑"));
         (_child as DisplayObjectContainer).removeChild(this.itemDisplay);
      }
      
      public function create(param1:Vector.<String>) : void
      {
         this._7f837cdf394c9d7dae3bb4d0 = param1;
         this._38519856f6b73519f6d11175();
      }
      
      public function set itemFactory(param1:_67a7ec125a01811d64af4dcc) : void
      {
         this._37e7de5351eb522b723f85e2 = param1;
      }
      
      private function _38519856f6b73519f6d11175() : void
      {
         this._1cf6687628eca9e5dcee130a();
         var _loc1_:Number = 0x5AAB8363 ^ -1718959435 ^ 0x061646 ^ -1020831856;
         while(_loc1_ < this._7f837cdf394c9d7dae3bb4d0.length)
         {
            this._245a56ea6278dd1ca2a039e2.push(this._54f267880e2b186dd42cbb73(this._7f837cdf394c9d7dae3bb4d0[_loc1_],_loc1_));
            if(_loc1_ < this._4ef2158cf1048d0099c59318)
            {
               _c44407c756119b498390c59c(contentHeight);
               this._bbe0048961a95ebd7ed5a48c(contentHeight);
            }
            _loc1_++;
         }
         _a270befba6c808194a3475ba();
      }
      
      private function _bbe0048961a95ebd7ed5a48c(param1:Number) : void
      {
         this._3f37cba50c8095621941a20e.height = param1 + this._6d363fcc0a81b64bae43aae0;
      }
      
      private function _1cf6687628eca9e5dcee130a() : void
      {
         var _loc1_:DisplayObject = null;
         for each(_loc1_ in this._245a56ea6278dd1ca2a039e2)
         {
            _content.removeChild(_loc1_);
         }
         this._245a56ea6278dd1ca2a039e2 = [];
         _contentHeight = -1729309202 ^ -2040861663 ^ -1239984826 ^ -1465815927;
         _c44407c756119b498390c59c(0x0641A069 ^ -1006986 ^ 0x7C688442 ^ -2049341859);
         this._bbe0048961a95ebd7ed5a48c(-1014206335 ^ 0x57840F1A ^ -1154259096 ^ 0x2F3B18F3);
         scrollTo(0x3D7CDA82 ^ -1702261167 ^ -978463856 ^ 0x62588743);
      }
      
      private function _54f267880e2b186dd42cbb73(param1:String, param2:int) : _9eacfd4ff26a9d83bb66df5f
      {
         var _loc3_:String = null;
         var _loc4_:_9eacfd4ff26a9d83bb66df5f = this._2c06d888af30602e50a860b8();
         (_loc4_ as DisplayObject).y = contentHeight;
         var _loc5_:int = 0x2634E957 ^ 0x4600BE9B ^ 0x2FF4EBF9 ^ 0x4FC0BC35;
         while(_loc5_ < (_loc4_ as DisplayObjectContainer).numChildren)
         {
            if(DisplayObjectContainer((_loc4_ as DisplayObjectContainer).getChildAt(_loc5_)).hasOwnProperty(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捪换揁掉挽揑插捽揌揳挊挒捖揳掭揽挧援","掩捱捖提揸捾挕掬捫握掅捳援揎揤掼")))
            {
               for(_loc3_ in _c2ad9d37d7be0097d6d2e977.langs)
               {
                  if(_c2ad9d37d7be0097d6d2e977.langs[_loc3_] == param1)
                  {
                     _a9183ad11c0a32494c998b46(_loc4_).clear();
                     _a9183ad11c0a32494c998b46(_loc4_).flag = _95da7f1147c669197db81295._8f4866de82b7339154180ecb("劌効刏劶加制劑则剢劓勛刵前刣剠刋劯刄勂劵办劢副剬勄劑刊勷","削勪劶勓勄劏券刌刷劖剥勔刦剓勭勇") + _loc3_ + _95da7f1147c669197db81295._8f4866de82b7339154180ecb("刦劸剃勺労劚劜劌勓劣刴劀剗削剋剉","勃利剿刣势勖刕勧剕勳劢勯加刪刳劳");
                  }
               }
            }
            else if(DisplayObjectContainer((_loc4_ as DisplayObjectContainer).getChildAt(_loc5_)).hasOwnProperty(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ჩႏ။ၺჱာၓჍႺဥၸံ႑႗ၱႭ","უჴွႠჼ჎ႎၵႤဖ႑ဋႱၗၖဗ")))
            {
               _45050138a2c5c7b0f497e4b4(_loc4_).icon = param2;
            }
            _loc5_++;
         }
         _loc4_.displayValue = param1;
         _loc4_.index = param2;
         _loc4_.clickHandler = this._8d854599d425dc51d2fbb6eb;
         _contentHeight += (_loc4_ as DisplayObject).height;
         _content.addChild(DisplayObject(_loc4_));
         return _loc4_;
      }
      
      public function set onItemClickHandler(param1:Function) : void
      {
         this._8d854599d425dc51d2fbb6eb = param1;
      }
      
      public function get itemDisplay() : DisplayObject
      {
         return this._e17cb57f24eaa796f41cb4e4;
      }
      
      protected function _2c06d888af30602e50a860b8() : _9eacfd4ff26a9d83bb66df5f
      {
         return _9eacfd4ff26a9d83bb66df5f(this._37e7de5351eb522b723f85e2._a54f7898880d608c7e1dc342());
      }
      
      public function _16bd6cdf460c2ef8f42efde9(param1:int) : String
      {
         return param1 in this._245a56ea6278dd1ca2a039e2 ? _9eacfd4ff26a9d83bb66df5f(this._245a56ea6278dd1ca2a039e2[param1]).displayValue : null;
      }
   }
}

