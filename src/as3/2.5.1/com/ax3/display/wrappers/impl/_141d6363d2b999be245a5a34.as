package com.ax3.display.wrappers.impl
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.display.wrappers._67a7ec125a01811d64af4dcc;
   import com.ax3.fishao.view.wrappers.impl._e2e835f66188325c9e9213d9;
   import com.ax3.utils.removeAllChildren;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.geom.Rectangle;
   
   public class _141d6363d2b999be245a5a34 extends _e2e835f66188325c9e9213d9
   {
      
      public static const ACTIVATE_WRAPPER:String = _95da7f1147c669197db81295._8f4866de82b7339154180ecb("勠刹刲剌剮剞勨剁勚利创剙分剻剄劵剃剓剔剿剘勍剦剢劜勹剆刍刔分勶勄剎劋劌勶刮劵動加刭劑勚勶刍勴剓勘刧劋勂剭剭勃剶劥勍剴","劤刟劘劽则勬刐刁勰券办勒剓劤勜刧");
      
      private static const _67d357c004196adb16aa4ce1:int = 0x4E477BBE ^ -1728963009 ^ -2026467371 ^ 0x5183EA5E;
      
      public var itemTemplate:DisplayObject;
      
      private var _asset:DisplayObjectContainer;
      
      private var _1ecd1614b6d574ba5f8c64bc:Vector.<Object> = new Vector.<Object>();
      
      private var _9fd3e7f3b3778e60ea4adcad:_67a7ec125a01811d64af4dcc;
      
      private var _919eaefbea7ef5df91a15602:DisplayObject;
      
      private var _d4c177c243063cf213b54c87:DisplayObject;
      
      public var gap:int = 0;
      
      public function _141d6363d2b999be245a5a34()
      {
         super();
      }
      
      override public function process(param1:DisplayObject) : void
      {
         super.process(param1);
         this._asset = DisplayObjectContainer(param1);
         var _loc2_:DisplayObject = this._asset.getChildByName(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("動刲剟刌刂務劍务勅劑剗劕","剾剓労剨勀刽勺動勦剩刻劚剞勯劖勜"));
         this._919eaefbea7ef5df91a15602 = this._asset.getChildByName(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勪労办刓勆勊刻剓勵勩勊刼制勸剞劎","刓勌剈刯劬勁剤勽加劯勥勔刺劰劀勳"));
         this.itemTemplate = this._asset.getChildByName(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("捫掷捳捁揨掎掶揈挦捠挐揱捑掩掛掫","挰捺捭挝挎掲揶挧挈掭捬挠捖按揘揆"));
         this._d4c177c243063cf213b54c87 = this._asset.getChildByName(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勅剟劇勺刼勱勎勳前刊劕劤劐勬务剑刈剝刀剳","剳剂剥創到勰剩办刻剿剛創劷勆力刚"));
         removeAllChildren(this._asset);
         this._asset.addChild(_loc2_);
         this._asset.addChild(this._d4c177c243063cf213b54c87);
         _content = new Sprite();
         var _temp_3:* = _content;
         var _temp_2:* = §§findproperty(Rectangle);
         var _temp_1:* = -268414746 ^ -419347940 ^ -910893734 ^ -558510176;
         _temp_3.scrollRect = new Rectangle(_temp_1,_temp_1,this._919eaefbea7ef5df91a15602.width,this._919eaefbea7ef5df91a15602.height);
         _content.x = this._919eaefbea7ef5df91a15602.x;
         _content.y = this._919eaefbea7ef5df91a15602.y;
         _content.name = _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掸掀授掸振振掷握挋掬揧捼指挣掶揹挤指排挐捄掳捊掍掾揃捡挱掶捭揃挀捡挕揰挩","掿揀捍捤揑捕捛掯捗掕掏揈捃揶捂揪");
         this._asset.addChild(_content);
      }
      
      public function set itemFactory(param1:_67a7ec125a01811d64af4dcc) : void
      {
         this._9fd3e7f3b3778e60ea4adcad = param1;
      }
      
      public function get items() : Vector.<Object>
      {
         return this._1ecd1614b6d574ba5f8c64bc;
      }
      
      public function add(param1:Object) : DisplayObject
      {
         var _loc2_:int = -1926210165 ^ 0x3D80A7D8 ^ -486273369 ^ 0x77174479;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (-1349587501 ^ -1418888222 ^ 0x423335E6 ^ 0x62731358))
            {
               case 0:
                  return null;
               case 1:
                  return this._c0dbd0244e874b31c0bf9c68(param1);
               case 2:
                  if(this._1ecd1614b6d574ba5f8c64bc.indexOf(param1) == (0x6EE33DE9 ^ 0x53DAE686 ^ 0x75FFBF77 ^ -1220961305))
                  {
                     _loc2_ = -1795966543 ^ 0x1F96D559 ^ 0x648E7B1D ^ -884430981;
                  }
                  else
                  {
                     _loc2_ = 0x4C5D6A29 ^ -1203789565 ^ 0x3D662551 ^ -307798284;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function _c0dbd0244e874b31c0bf9c68(param1:Object) : DisplayObject
      {
         this._1ecd1614b6d574ba5f8c64bc.push(param1);
         var _loc2_:DisplayObject = this._0dcf631f8e19ebb6e55fdc82();
         _loc2_.x = _contentWidth;
         _content.addChild(DisplayObject(_loc2_));
         this._32e9a303815af2533f88b24e();
         _a270befba6c808194a3475ba();
         return _loc2_;
      }
      
      private function _0dcf631f8e19ebb6e55fdc82() : DisplayObject
      {
         return this._9fd3e7f3b3778e60ea4adcad._a54f7898880d608c7e1dc342();
      }
      
      public function remove(param1:Object) : void
      {
         var _loc2_:Number = NaN;
         var _loc3_:Object = this._b072d50739951a77851f2ca2(param1);
         if(_loc3_ != null)
         {
            _loc2_ = this._1ecd1614b6d574ba5f8c64bc.indexOf(_loc3_);
            this._1ecd1614b6d574ba5f8c64bc.splice(_loc2_,-1648030816 ^ 0x5763A192 ^ 0x18154CBE ^ -759961971);
            _content.removeChildAt(_loc2_);
            this._32e9a303815af2533f88b24e();
            _a270befba6c808194a3475ba();
         }
      }
      
      private function _32e9a303815af2533f88b24e() : void
      {
         var _loc1_:DisplayObject = null;
         var _loc2_:uint = uint(-1092362755 ^ 0x0931988D ^ -2050861535 ^ 0x32101351);
         _contentWidth = -14209377 ^ -32404433 ^ 0x3FEB5741 ^ 0x3EDDF5F1;
         var _loc3_:int = _content.numChildren;
         if(_loc3_ > (-1937291961 ^ -907607945 ^ -1479788738 ^ -492015090))
         {
            _loc1_ = _content.getChildAt(0x1EF3AC38 ^ 0x3F82E6FE ^ -688881572 ^ -142488934);
            switch(_loc3_)
            {
               case 0x1985E3BF ^ -951816005 ^ 0x1CE296A0 ^ -1037892187:
                  §§push(-2082375409 ^ 0x03512579 ^ 0x74E3C2FC ^ -195846518);
                  break;
               case 0x361D7C33 ^ -674714918 ^ 0x73989D38 ^ -1840428077:
                  §§push(-189674778 ^ 0x09A0CF33 ^ -1483083454 ^ 0x5A88F496);
                  break;
               default:
                  §§push(0x2AE2030C ^ 0x35953280 ^ -816623080 ^ -802921578);
            }
            switch(§§pop())
            {
               case 0:
                  _loc1_.x = this._919eaefbea7ef5df91a15602.width / (-2146810753 ^ 0x1F1BE8FD ^ -1203370622 ^ 0x2757A902) - _loc1_.width / (-1102344088 ^ 0x684C94A5 ^ -2124046862 ^ 0x5762993D);
                  break;
               case 1:
                  _loc1_.x = this._919eaefbea7ef5df91a15602.width / (-1148816101 ^ 0x516E1BD2 ^ -1668780098 ^ 0x76600174) - _loc1_.width / (-63332272 ^ 0x759AE7F4 ^ 0x79AEA662 ^ -267525692);
                  _contentWidth = _loc1_.x + _loc1_.width + this.gap;
                  _loc2_ = uint(0x51D40948 ^ -684142609 ^ 0x1EA6BB07 ^ -1739948639);
                  while(_loc2_ < _loc3_)
                  {
                     _loc1_ = _content.getChildAt(_loc2_);
                     _loc1_.x = _contentWidth;
                     _contentWidth += _loc1_.width + this.gap;
                     _loc2_++;
                  }
                  break;
               default:
                  _loc1_.x = -1737867286 ^ 0x44CAC2EA ^ -1032476689 ^ 0x1ED55AEF;
                  _contentWidth = _loc1_.x + _loc1_.width + this.gap;
                  _loc2_ = uint(0x7C681D19 ^ 0x8FFB1F ^ -639848032 ^ -1522837593);
                  while(_loc2_ < _loc3_)
                  {
                     _loc1_ = _content.getChildAt(_loc2_);
                     _loc1_.x = _contentWidth;
                     _contentWidth += _loc1_.width + this.gap;
                     _loc2_++;
                  }
            }
            if(_loc3_ <= (-319674612 ^ 0x1E947F0C ^ -748338385 ^ 0x21031B2C))
            {
               _content.y = this._919eaefbea7ef5df91a15602.y + this._d4c177c243063cf213b54c87.height / (0x7368D872 ^ 0x2F2E7240 ^ -874759987 ^ -1751477507);
            }
            else
            {
               _content.y = this._919eaefbea7ef5df91a15602.y;
            }
         }
      }
      
      private function _b072d50739951a77851f2ca2(param1:Object) : Object
      {
         var _loc2_:Object = null;
         for each(_loc2_ in this._1ecd1614b6d574ba5f8c64bc)
         {
            if(_loc2_.hasOwnProperty(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ႅჰქႂႿဠჱშႠპၹဢၫ႟ၷႰჀჍ","ე႟ვ၎၌ჽႡူၘၾრყႲႇღၐ")) && _loc2_.equal is Function)
            {
               if(_loc2_.equal(param1))
               {
                  return _loc2_;
               }
            }
            else if(_loc2_ == param1)
            {
               return _loc2_;
            }
         }
         return null;
      }
      
      public function removeAll() : void
      {
         this._1ecd1614b6d574ba5f8c64bc.length = -175155104 ^ 0x15249E0E ^ -1652160630 ^ 0x7D2DC1E4;
         var _loc1_:Rectangle = _content.scrollRect;
         _loc1_.x = 0x2F8779AA ^ 0x22287EF9 ^ -782094041 ^ -590530956;
         _content.scrollRect = _loc1_;
         removeAllChildren(_content);
         this._32e9a303815af2533f88b24e();
         _a270befba6c808194a3475ba();
      }
      
      public function _6d5360dc76898e470b88eb2e() : void
      {
         var _loc1_:DisplayObject = null;
         var _loc2_:uint = uint(_content.numChildren);
         var _loc3_:int = 0x732AF810 ^ -1911264123 ^ 0x3F0DCBFF ^ -1036820630;
         while(_loc3_ < _loc2_)
         {
            _loc1_ = _content.getChildAt(_loc3_);
            if(_loc1_ is _5851c671824f640d4d36d175)
            {
               _5851c671824f640d4d36d175(_loc1_)._6d5360dc76898e470b88eb2e();
            }
            _loc3_++;
         }
      }
      
      public function get elements() : Vector.<DisplayObject>
      {
         var _loc1_:int = -533752201 ^ 0x772EDC1C ^ 0x30421CDA ^ -1488759119;
         var _loc2_:Vector.<DisplayObject> = new Vector.<DisplayObject>();
         var _loc3_:int = _content.numChildren;
         _loc1_ = -1676111289 ^ -628851299 ^ -2131619843 ^ -965812185;
         while(_loc1_ < _loc3_)
         {
            _loc2_.push(_content.getChildAt(_loc1_));
            _loc1_++;
         }
         return _loc2_;
      }
   }
}

