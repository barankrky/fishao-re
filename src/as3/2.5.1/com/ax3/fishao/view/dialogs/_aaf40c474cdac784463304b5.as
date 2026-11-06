package com.ax3.fishao.view.dialogs
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.display.autoscalable._a4e47350c89a50d87a148c28;
   import com.ax3.display.wrappers.impl._eb2314ffc37429732989b460;
   import com.ax3.fishao._67282af25befe9778e5c8dd1;
   import com.ax3.fishao.model.vo._cff30366d510ea862540bfef;
   import com.ax3.fishao.utils._3b0c83955f875982aead2f14;
   import com.ax3.fishao.utils._a240f0394e2d5677aff9f7b4;
   import com.ax3.fishao.utils._c2ad9d37d7be0097d6d2e977;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.wrappers.impl._c4d6fde03c7ad6e55257d966;
   import flash.display.DisplayObjectContainer;
   import flash.events.MouseEvent;
   import flash.utils.Dictionary;
   
   public class _aaf40c474cdac784463304b5 extends _cf68afc9ee6fc487ce2f14e4
   {
      
      private var _718e710eb743c4733c661c03:Boolean;
      
      private var _576024a3245a3cb343e1f9ab:_cff30366d510ea862540bfef;
      
      private var _ded6ed6c4b446509a4f12163:Vector.<_eb2314ffc37429732989b460>;
      
      private var _f5a851809f7059557e62f58b:_c4d6fde03c7ad6e55257d966;
      
      private var _6326e5a53335a698c917da52:_c4d6fde03c7ad6e55257d966;
      
      private var _9c697a2cf1f918647e7c1a82:_c4d6fde03c7ad6e55257d966;
      
      private var _f06222c0e093409b34c32e46:Dictionary = new Dictionary();
      
      public function _aaf40c474cdac784463304b5()
      {
         super();
         this._f06222c0e093409b34c32e46[0x4EBA0620 ^ -1538766603 ^ 0x78C75C4E ^ -1842015590] = _67282af25befe9778e5c8dd1.ID_MAGIC_WATCH;
         this._f06222c0e093409b34c32e46[0x1EE52074 ^ 0x3453D56F ^ -1613230508 ^ -1251017907] = _67282af25befe9778e5c8dd1.ID_LUCK_POTION_1;
         this._f06222c0e093409b34c32e46[-1846550939 ^ 0x49FC21A5 ^ 0x20D20D31 ^ -121507086] = _67282af25befe9778e5c8dd1.ID_LUCK_POTION_1;
         this._f06222c0e093409b34c32e46[0x5830AB05 ^ 0x664F0BFA ^ 0x12530329 ^ 0x2C2CA3D2] = _67282af25befe9778e5c8dd1.ID_LUCK_POTION_2;
         this._f06222c0e093409b34c32e46[-1471851205 ^ 0x720E1E1C ^ -429592939 ^ 0x3C2FA5B7] = _67282af25befe9778e5c8dd1.ID_LUCK_POTION_2;
      }
      
      public function _fb2737826eacd0c722842d87(param1:int) : void
      {
         this._576024a3245a3cb343e1f9ab = app.fishDict.get(param1) as _cff30366d510ea862540bfef;
      }
      
      override public function show() : void
      {
         super.show();
      }
      
      override protected function _d998e9465b31be9894488c29(param1:DisplayObjectContainer) : void
      {
         this._718e710eb743c4733c661c03 = true;
         super._d998e9465b31be9894488c29(param1);
      }
      
      override protected function _935ac2966ddad68dfc449202() : void
      {
         var _loc1_:Array = null;
         var _loc2_:_eb2314ffc37429732989b460 = null;
         var _loc3_:* = undefined;
         var _loc4_:String = null;
         var _loc5_:_a4e47350c89a50d87a148c28 = null;
         var _loc6_:int = 0x28BAD81C ^ -564675489 ^ -1986967829 ^ 0x7F7C22A8;
         var _loc7_:Vector.<Object> = null;
         var _loc8_:Vector.<Object> = null;
         var _loc9_:Array = null;
         var _loc10_:int = -817606862 ^ -483800699 ^ -484217977 ^ -816911056;
         var _loc11_:Vector.<Object> = null;
         var _loc12_:Vector.<Object> = null;
         var _loc13_:Object = null;
         var _loc14_:Vector.<Object> = null;
         var _loc15_:Object = null;
         var _loc16_:Object = null;
         var _loc17_:String = null;
         var _loc18_:_a4e47350c89a50d87a148c28 = null;
         var _loc19_:Dictionary = null;
         var _loc20_:int = 0x54BE16E9 ^ 0x20CD0F10 ^ -1825753858 ^ -413258489;
         closeButton.handler = this._c2052a4d2d55edaae588e3be;
         if(this._576024a3245a3cb343e1f9ab != null)
         {
            title.text = _c2ad9d37d7be0097d6d2e977.get(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ზჸဎဗၝტ႖ဧჺჯႰသၹၼံႳ၄ဤ","ဤჟჳმႡၦၝတ჎႞၇კტုდႺ") + this._576024a3245a3cb343e1f9ab.id);
            txtCaughtIn.text = _c2ad9d37d7be0097d6d2e977.get(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("勏刬勡剣劷刳创勜剖剉制刕剨剋剩刺割剾剟勧剶剸到助刓励副创初劤剰劦剄剄剈刏创刑剢勒劋劣勴勷剕勴刞劮","剦剬务刉刡勪劌劸勉剷剴励剒劤劈勓"));
            _loc1_ = this._576024a3245a3cb343e1f9ab.catchRequirements.location_ids as Array;
            this._ded6ed6c4b446509a4f12163 = new Vector.<_eb2314ffc37429732989b460>();
            _loc6_ = 0x7C50BC65 ^ -26226901 ^ -1874230059 ^ 0x1276F79B;
            while(_loc6_ < (-1851033061 ^ -908526588 ^ 0x360C9C08 ^ 0x6E7F1A13))
            {
               _loc3_ = _asset.getChildByName(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("描捝描捒挌捄挖掑挺揁描挫掲挞掣掂捝捍插持掔掰掅捧掻挚","掤捔捯採捀揺挈振揸措捑挺捀挌挶挣") + _loc6_);
               _loc2_ = this._ded6ed6c4b446509a4f12163[this._ded6ed6c4b446509a4f12163.length] = new _eb2314ffc37429732989b460();
               _loc2_.graphics.beginFill(-1502306662 ^ 0x119FAA44 ^ -2115375400 ^ 0x3692BA96,0x184E3136 ^ -1090854957 ^ 0x041307EB ^ -1566054130);
               var _temp_3:* = _loc2_.graphics;
               var _temp_2:* = -548759553 ^ -1389153593 ^ 0x04D18EC9 ^ 0x76A82BF1;
               _temp_3.drawRect(_temp_2,_temp_2,_loc3_.width,_loc3_.height);
               if(_loc1_.length > _loc6_)
               {
                  _loc2_.tooltipConfig = {(_433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("Ⴎ჉ၻွံჳၺေႜလႯႫწპ႑ႛ","Ⴊ။Ⴕၵშფၔၿ႐დწს႗းၮჽ")):_c2ad9d37d7be0097d6d2e977.get(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劕剔剏刺到勚刡剿劎刀刑勰勴劍劶剡刣勝剎剚剀刔剪劓剐刺","則分劻劃剬勬勳剚剐刬劯别劆劬券割") + _loc1_[_loc6_])};
                  _loc4_ = _3b0c83955f875982aead2f14._c28db4f07d43f2dc8f1ec5b4(_3b0c83955f875982aead2f14._81b8d50af9d50ae6f297af99(_67282af25befe9778e5c8dd1.LOCATION.name,_loc1_[_loc6_]));
                  _loc5_ = new _a4e47350c89a50d87a148c28(null);
                  _loc5_.width = -415437073 ^ -931171774 ^ -606253035 ^ -190919449;
                  _loc5_.height = 0x5319588C ^ -1538486034 ^ 0x541055C0 ^ -1555718685;
                  app.resourceManager.replaceBitmapDataFromURL(_loc5_,_loc4_);
                  _loc3_.image.addChild(_loc5_);
               }
               else
               {
                  _loc3_.visible = false;
               }
               _loc3_.image.addChild(_loc2_);
               _loc6_++;
            }
            _loc7_ = app.baitsDict.getAll();
            _loc8_ = new Vector.<Object>();
            _loc9_ = this._576024a3245a3cb343e1f9ab.catchRequirements.bait_category as Array;
            _loc10_ = 0x24F1EC9D ^ -55124461 ^ 0x482686CE ^ -1872645056;
            while(_loc10_ < _loc7_.length)
            {
               _loc20_ = -318198879 ^ 0x6613264F ^ -1327308884 ^ 0x3BF95242;
               while(_loc20_ < _loc9_.length)
               {
                  if(_loc7_[_loc10_].category == _loc9_[_loc20_])
                  {
                     _loc8_.push(_loc7_[_loc10_]);
                  }
                  _loc20_++;
               }
               _loc10_++;
            }
            _loc11_ = app.rodsDict.getAll().concat();
            _loc12_ = new Vector.<Object>();
            for each(_loc13_ in _loc11_)
            {
               if(this._576024a3245a3cb343e1f9ab.maxLength <= parseInt(_loc13_.quality_power))
               {
                  _loc12_.push(_loc13_);
               }
            }
            if(_loc12_.length == (-1902368719 ^ 0x151E0A05 ^ -687166853 ^ 0x4C88884F))
            {
               _loc11_.sort(this._c189b747ccb127fa4ba58a07);
               _loc12_.push(_loc11_[_loc11_.length - 1]);
            }
            else
            {
               _loc12_.sort(this._c189b747ccb127fa4ba58a07);
            }
            _loc14_ = app.resourcesDict.getAll();
            _loc15_ = null;
            for each(_loc16_ in _loc14_)
            {
               if(_loc16_.id == this._f06222c0e093409b34c32e46[this._576024a3245a3cb343e1f9ab.rating])
               {
                  _loc15_ = _loc16_;
               }
            }
            this._f5a851809f7059557e62f58b = new _c4d6fde03c7ad6e55257d966();
            this._f5a851809f7059557e62f58b.process(recommendationBaitView);
            this._f5a851809f7059557e62f58b.show(_loc8_[Math.round(Math.random() * (_loc8_.length - 1))],-1478477986 ^ -1409537684 ^ -1059390634 ^ -859380379);
            this._f5a851809f7059557e62f58b.closeCallback = this._82de59935c3b37ee9462b462;
            this._6326e5a53335a698c917da52 = new _c4d6fde03c7ad6e55257d966();
            this._6326e5a53335a698c917da52.process(recommendationRodView);
            this._6326e5a53335a698c917da52.show(_loc12_[0x01BD821D ^ 0x10AE660D ^ -728924293 ^ -979461269],0x5F6EEF8F ^ 0x65F4F781 ^ 0x509D58A5 ^ 0x6A0740AB);
            this._6326e5a53335a698c917da52.closeCallback = this._82de59935c3b37ee9462b462;
            this._9c697a2cf1f918647e7c1a82 = new _c4d6fde03c7ad6e55257d966();
            this._9c697a2cf1f918647e7c1a82.process(recommendationGadgetView);
            this._9c697a2cf1f918647e7c1a82.show(_loc15_,0x57597B4E ^ -29127086 ^ 0x6E34E29E ^ -953280640);
            this._9c697a2cf1f918647e7c1a82.closeCallback = this._82de59935c3b37ee9462b462;
            _loc17_ = _3b0c83955f875982aead2f14._c28db4f07d43f2dc8f1ec5b4(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劲劑剹劮剄劀劽勘勦勅刐剦剻劇刚勔刊勎刴剉劽刜剸劗勃剂剋剙刜勶勝前則刱刋初办劧刊劤勳剖剀勪","券刴刬刭勠刯剰刜劢刻劌劰刵剀剢剷") + this._576024a3245a3cb343e1f9ab.id + _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("၀჈ဉၔၟၪႷႻხ჌ႃၔၾჭႦხ","ႝၡჩႳ်ဨ႔Ⴕ၍ၬ၍ဦႶာ၃ნ"));
            _loc18_ = new _a4e47350c89a50d87a148c28(null);
            _loc18_.width = -561027280 ^ 0x70E2761E ^ 0x71A38708 ^ -540108966;
            _loc18_.height = 0x10CB4E30 ^ -346792993 ^ -278494953 ^ 0x14F9945C;
            app.resourceManager.replaceBitmapDataFromURL(_loc18_,_loc17_);
            imgFish.addChild(_loc18_);
            _loc19_ = GameSwf.instance.managerFishes.fishesUserMap;
            if(!_loc19_.hasOwnProperty(String(this._576024a3245a3cb343e1f9ab.id)))
            {
               imgFish.filters = [_a240f0394e2d5677aff9f7b4._4e8eecfe2829137c38b53096(-1423895615 ^ -685255592 ^ 0x093910A9 ^ -1967118288)];
            }
         }
         super._935ac2966ddad68dfc449202();
      }
      
      private function _c189b747ccb127fa4ba58a07(param1:Object, param2:Object) : int
      {
         var _loc3_:int = -1261486671 ^ 0x20347E51 ^ 0x3027A6FF ^ 0x043ACB57;
         loop0:
         while(true)
         {
            switch(_loc3_ ^ (0x5C36AFB8 ^ 0x220FC6BC ^ -1104188626 ^ 0x60F02C66))
            {
               case 0:
                  return 0x5474D076 ^ 0x09CF968D ^ 0x2BC3505F ^ 0x767816A5;
               case 1:
                  return 0x2C7D7F88 ^ 0x0B002EAA ^ 0x05F7F70A ^ 0x228AA628;
               case 2:
                  if(parseInt(param1.quality_power) > parseInt(param2.quality_power))
                  {
                     _loc3_ = -1315221169 ^ -934802398 ^ -268298229 ^ 0x29376B2A;
                  }
                  else
                  {
                     _loc3_ = 0x24A225CD ^ 0x7F6AB3AD ^ 0x7535EFA5 ^ -1910810744;
                  }
                  break;
               case 3:
                  return -2075213231 ^ -990982752 ^ 0x1D8FB1CE ^ -1563409984;
               case 4:
                  if(parseInt(param1.quality_power) < parseInt(param2.quality_power))
                  {
                     _loc3_ = -744756976 ^ -1040530345 ^ 0x3B4771B8 ^ -1983876432;
                  }
                  else
                  {
                     _loc3_ = -1173415427 ^ -1546796314 ^ 0x4799FDA5 ^ -21165840;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function _82de59935c3b37ee9462b462() : void
      {
      }
      
      private function _c2052a4d2d55edaae588e3be(param1:MouseEvent) : void
      {
         close();
      }
   }
}

