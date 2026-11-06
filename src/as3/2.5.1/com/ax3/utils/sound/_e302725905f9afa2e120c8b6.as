package com.ax3.utils.sound
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import com.ax3.control.managers._78aae26c61ff9e1b9fd957bc;
   import com.ax3.events._d23a86a05a63898e7f07d85a;
   import com.ax3.fishao.locations._c36d2d5bdf0600686d3429c2;
   import com.inkora.sound.SoundEx;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   import flash.net.URLRequest;
   import flash.utils.Dictionary;
   
   public class _e302725905f9afa2e120c8b6 extends EventDispatcher
   {
      
      private var _836cad95f858b6106748e85a:Dictionary = new Dictionary();
      
      public var volume:Number = 1;
      
      private var _fa6660ff65aeb07353d0bc2c:Vector.<_c5aa52fca149ae6f0be6dc5b> = new Vector.<_c5aa52fca149ae6f0be6dc5b>();
      
      private var _f84e8ba26cc9ad6fb08eb62e:Dictionary = new Dictionary();
      
      private var _bd027b0545320b4d816d3e8a:Dictionary = new Dictionary();
      
      private var _618a203ed4e3c2a69c0fb41c:Dictionary = new Dictionary();
      
      private var _1cdaae6c84394a3745f0289d:Dictionary = new Dictionary();
      
      private var _2773702f93d3b2388918a94d:Dictionary = new Dictionary();
      
      public function _e302725905f9afa2e120c8b6()
      {
         super();
      }
      
      public function _ed72a4eaff19529397a68c9a(param1:_c5aa52fca149ae6f0be6dc5b, param2:String) : void
      {
         var _loc3_:Sound = null;
         if(param1.type == _bd01d2c8f29f01fb2ee03db5.LOCATION_BACKGROUND)
         {
            _loc3_ = new _6bdbc49598695e4865b2d01d(new URLRequest(param2));
         }
         else
         {
            _loc3_ = new SoundEx(new URLRequest(param2));
         }
         _loc3_.addEventListener(Event.COMPLETE,this.onComplete);
         _loc3_.addEventListener(IOErrorEvent.IO_ERROR,this.onError);
         this._bd027b0545320b4d816d3e8a[_loc3_] = param1;
      }
      
      public function _dee591e007cd708a9692f4aa(param1:_df07891ae3011a9db02e5118) : void
      {
         var _loc2_:_78aae26c61ff9e1b9fd957bc = param1.swfSource;
         if(_loc2_.isLoaded())
         {
            this._78159e37f1a1d05fb788b76d(param1);
         }
         else
         {
            if(!(_loc2_ in this._1cdaae6c84394a3745f0289d))
            {
               this._1cdaae6c84394a3745f0289d[_loc2_] = [];
            }
            if((this._1cdaae6c84394a3745f0289d[_loc2_] as Array).indexOf(param1) == (0x32272EAC ^ -509146302 ^ -145951410 ^ -617402529))
            {
               (this._1cdaae6c84394a3745f0289d[_loc2_] as Array).push(param1);
            }
            if(_loc2_.isLoading() == false)
            {
               _loc2_.addEventListener(Event.COMPLETE,this._8479c1b927ac863a649d4415);
               _loc2_.load();
            }
         }
      }
      
      private function _8479c1b927ac863a649d4415(param1:_d23a86a05a63898e7f07d85a) : void
      {
         var _loc2_:Array = null;
         var _loc3_:_df07891ae3011a9db02e5118 = null;
         var _loc4_:_78aae26c61ff9e1b9fd957bc = _78aae26c61ff9e1b9fd957bc(param1.data);
         if(_loc4_ in this._1cdaae6c84394a3745f0289d)
         {
            _loc2_ = this._1cdaae6c84394a3745f0289d[_loc4_] as Array;
            for each(_loc3_ in _loc2_)
            {
               this._78159e37f1a1d05fb788b76d(_loc3_);
            }
         }
      }
      
      private function _78159e37f1a1d05fb788b76d(param1:_df07891ae3011a9db02e5118) : void
      {
         var _loc2_:Class = null;
         var _loc3_:Sound = param1.swfSource._e00f10b15c253aa3e0672e06(param1.className);
         if(param1.type != null)
         {
            _loc2_ = param1.type.decorator;
            if(_loc2_ != null)
            {
               _loc3_ = new _loc2_(_loc3_,this,param1.params);
            }
         }
         this._bd027b0545320b4d816d3e8a[_loc3_] = param1;
         _loc3_.addEventListener(Event.COMPLETE,this.onComplete);
         _loc3_.dispatchEvent(new Event(Event.COMPLETE));
      }
      
      public function play(param1:_c5aa52fca149ae6f0be6dc5b, param2:int = 0, param3:Number = NaN) : *
      {
         var _loc4_:Sound = null;
         var _loc5_:SoundChannel = null;
         if(this._351002867e12197b65f0e658(param1) && this._f84e8ba26cc9ad6fb08eb62e[param1] != null)
         {
            _loc4_ = Sound(this._f84e8ba26cc9ad6fb08eb62e[param1]);
            if(isNaN(param3))
            {
               param3 = Number(this._2773702f93d3b2388918a94d[param1.group]);
            }
            if(param3 > (0x076F49AC ^ 0x5103EB94 ^ -564916812 ^ -2009550964))
            {
               _loc5_ = _loc4_.play(-862744547 ^ 0x155EF1E7 ^ -1948694409 ^ 0x5214298D,param2,new SoundTransform(param3 * this._2773702f93d3b2388918a94d[param1.group]));
               if(_loc4_.hasOwnProperty(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("挚揠捃损捫揵挍採揘捰捄掝挰掶掶掯","揜捊持揨挺挣推揤掺挦挅掁揘掣揹挓")))
               {
                  return _loc4_;
               }
               return _loc5_;
            }
         }
         return null;
      }
      
      private function _351002867e12197b65f0e658(param1:_c5aa52fca149ae6f0be6dc5b) : Boolean
      {
         var _loc2_:_c5aa52fca149ae6f0be6dc5b = null;
         for each(_loc2_ in _c5aa52fca149ae6f0be6dc5b.all)
         {
            if(_loc2_ == param1 && Boolean(this._836cad95f858b6106748e85a[_loc2_.group]))
            {
               return false;
            }
         }
         return true;
      }
      
      public function _d2b72a74253af6d1c777cb05(param1:_c5aa52fca149ae6f0be6dc5b, param2:Number = NaN) : *
      {
         var _loc3_:int = -1561404681 ^ -156423417 ^ 0x7D10EA8B ^ -1443955574;
         loop0:
         while(true)
         {
            switch(_loc3_ ^ (-723283556 ^ 0x688B7C15 ^ 0x710AFA61 ^ 0x4DDFF01C))
            {
               case 0:
                  if(this._351002867e12197b65f0e658(param1))
                  {
                     _loc3_ = 0x62570015 ^ -1332986178 ^ -2073237838 ^ -703971350;
                  }
                  else
                  {
                     _loc3_ = -628248692 ^ -2911191 ^ -440466717 ^ 0x405CDEBA;
                  }
                  break;
               case 1:
                  if(this._fa6660ff65aeb07353d0bc2c.indexOf(param1) == (-1833556173 ^ 0x21A791C2 ^ -343170164 ^ -1486493054))
                  {
                     _loc3_ = 0x2999F33B ^ -1928399155 ^ 0x486A3A96 ^ 0x6C40D892;
                  }
                  else
                  {
                     _loc3_ = 0x658C140A ^ -1578886081 ^ -1319707072 ^ -175951483;
                  }
                  break;
               case 2:
                  _loc3_ = -1216808927 ^ 0x3E02BBC0 ^ 0x70B4F9EC ^ 0x79735DFD;
                  break;
               case 3:
                  if(this._618a203ed4e3c2a69c0fb41c[param1] == null)
                  {
                     _loc3_ = 0x753EBA44 ^ -312511129 ^ 0x7A6772A5 ^ 0x62BB5A72;
                  }
                  else
                  {
                     _loc3_ = -1008247060 ^ -2006405762 ^ 0x47400270 ^ -1938680300;
                  }
                  break;
               case 4:
                  return this._618a203ed4e3c2a69c0fb41c[param1];
               case 5:
                  if(this._f84e8ba26cc9ad6fb08eb62e[param1] != null)
                  {
                     _loc3_ = 0x75109E29 ^ -542856977 ^ 0x0D25F53C ^ 0x272C240D;
                  }
                  else
                  {
                     _loc3_ = 0x20377685 ^ 0x1919D410 ^ 0x31EE0638 ^ -2005056680;
                  }
                  break;
               case 6:
                  this._fa6660ff65aeb07353d0bc2c.push(param1);
                  _loc3_ = -2085736190 ^ 0x29A7BA33 ^ 0x3FFCE7FE ^ 0x15488B3F;
                  break;
               case 7:
                  this._618a203ed4e3c2a69c0fb41c[param1] = this.play(param1,int.MAX_VALUE,param2);
                  _loc3_ = 0x7F7F8518 ^ 0x7A492DFB ^ -1668694824 ^ 0x1902F3CD;
                  break;
               case 8:
                  this._618a203ed4e3c2a69c0fb41c[param1] = null;
                  _loc3_ = -1046177775 ^ -977641696 ^ 0x01DEB9B5 ^ -2055366286;
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function _455115db629ba63658f60520(param1:_c5aa52fca149ae6f0be6dc5b) : void
      {
         this._b189c0369b3688746656e90a(param1);
         this._618a203ed4e3c2a69c0fb41c[param1] = null;
         delete this._618a203ed4e3c2a69c0fb41c[param1];
      }
      
      public function _b189c0369b3688746656e90a(param1:_c5aa52fca149ae6f0be6dc5b) : void
      {
         var _loc2_:* = undefined;
         if(this._618a203ed4e3c2a69c0fb41c[param1] != null)
         {
            _loc2_ = this._618a203ed4e3c2a69c0fb41c[param1];
            _loc2_.stop();
            this._618a203ed4e3c2a69c0fb41c[param1] = null;
         }
         var _loc3_:Number = this._fa6660ff65aeb07353d0bc2c.indexOf(param1);
         if(_loc3_ > (0x098C0E21 ^ -327530351 ^ 0x2E249192 ^ 0x342D28DD))
         {
            this._fa6660ff65aeb07353d0bc2c.splice(_loc3_,-327090934 ^ -552958429 ^ 0x5983F01B ^ 0x6A098B33);
         }
      }
      
      public function _aba208bba94ae1f5a01b1aeb() : void
      {
         var _loc1_:_c5aa52fca149ae6f0be6dc5b = null;
         var _loc2_:* = undefined;
         for(_loc2_ in this._618a203ed4e3c2a69c0fb41c)
         {
            _loc1_ = _loc2_;
            this._455115db629ba63658f60520(_loc1_);
         }
      }
      
      public function _74d728fe9517a08dfc541301(param1:Object) : void
      {
         var _loc2_:_c5aa52fca149ae6f0be6dc5b = null;
         for each(_loc2_ in _c5aa52fca149ae6f0be6dc5b.all)
         {
            if(_loc2_.group == param1)
            {
               this._455115db629ba63658f60520(_loc2_);
            }
         }
      }
      
      public function _79d009d3ea03e57485dcb2ef(param1:Object) : void
      {
         var _loc2_:_c5aa52fca149ae6f0be6dc5b = null;
         for each(_loc2_ in _c5aa52fca149ae6f0be6dc5b.all)
         {
            if(_loc2_.group == param1)
            {
               this._b189c0369b3688746656e90a(_loc2_);
            }
         }
      }
      
      public function _9d5089a5ee0a3340fd792346(param1:Object) : void
      {
         var _loc2_:_c5aa52fca149ae6f0be6dc5b = null;
         for each(_loc2_ in _c5aa52fca149ae6f0be6dc5b.all)
         {
            if(_loc2_.group == param1 && _loc2_ in this._618a203ed4e3c2a69c0fb41c)
            {
               this._d2b72a74253af6d1c777cb05(_loc2_);
            }
         }
      }
      
      public function _ec15afd595e76fb6ed650e43(param1:Array = null) : void
      {
         var _loc2_:_c5aa52fca149ae6f0be6dc5b = null;
         var _loc3_:* = undefined;
         if(param1 == null)
         {
            for(_loc3_ in this._618a203ed4e3c2a69c0fb41c)
            {
               _loc2_ = _loc3_;
               this._d2b72a74253af6d1c777cb05(_loc2_);
            }
         }
         else
         {
            for each(_loc2_ in param1)
            {
               this._d2b72a74253af6d1c777cb05(_loc2_);
            }
         }
      }
      
      public function _edb917694a973a1f00ba6e26(param1:Object) : void
      {
         var _loc2_:int = 0x1DA0A28B ^ 0x6A6964B9 ^ -887862882 ^ 0x38B3BE8F;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (-2076383842 ^ 0x641BA813 ^ -1526643595 ^ -1052231464))
            {
               case 0:
                  return;
               case 1:
                  this._f41ac045cf49932b069cc924(param1);
                  _loc2_ = -772304668 ^ 0x40352AFB ^ -414984071 ^ -219196602;
                  break;
               case 2:
                  this._0e4f06a2a23b862a14619bd8(param1);
                  _loc2_ = 0x0A1C8282 ^ -1013142862 ^ -1585831073 ^ -325830065;
                  break;
               case 3:
                  if(this._836cad95f858b6106748e85a[param1] == true)
                  {
                     _loc2_ = 0x5E3D2D53 ^ 0x2F5EB979 ^ 0x1D7EDC94 ^ -395085409;
                  }
                  else
                  {
                     _loc2_ = -1351643425 ^ -1621803318 ^ 0x2BD9F943 ^ -1618118540;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      public function _bf503172ba862055966bfc96(param1:Object) : void
      {
         var _loc2_:Object = null;
         if(param1 is Array)
         {
            for each(_loc2_ in param1)
            {
               this._0e4f06a2a23b862a14619bd8(_loc2_);
            }
         }
         else
         {
            this._0e4f06a2a23b862a14619bd8(param1);
         }
      }
      
      public function _0e4f06a2a23b862a14619bd8(param1:Object) : void
      {
         this._836cad95f858b6106748e85a[param1] = true;
         this._79d009d3ea03e57485dcb2ef(param1);
      }
      
      public function _f41ac045cf49932b069cc924(param1:Object) : void
      {
         this._836cad95f858b6106748e85a[param1] = false;
         this._9d5089a5ee0a3340fd792346(param1);
      }
      
      private function onComplete(param1:Event) : void
      {
         Sound(param1.target).removeEventListener(Event.COMPLETE,this.onComplete);
         var _loc2_:_c5aa52fca149ae6f0be6dc5b = this._bd027b0545320b4d816d3e8a[param1.target];
         this._f84e8ba26cc9ad6fb08eb62e[_loc2_] = Sound(param1.target);
         var _loc3_:Number = this._fa6660ff65aeb07353d0bc2c.indexOf(_loc2_);
         if(_loc3_ > (-2062165228 ^ -826266576 ^ 0x3B712CA2 ^ -1889852295))
         {
            this._d2b72a74253af6d1c777cb05(_loc2_);
            this._fa6660ff65aeb07353d0bc2c.splice(_loc3_,0x3823E712 ^ 0x6ABA782D ^ -1518828348 ^ -136242182);
         }
      }
      
      public function _b87ca74bd9516206cbc6cc47(param1:_c5aa52fca149ae6f0be6dc5b) : Sound
      {
         return this._f84e8ba26cc9ad6fb08eb62e[param1];
      }
      
      private function onError(param1:IOErrorEvent) : void
      {
      }
      
      public function get disableMap() : Dictionary
      {
         return this._836cad95f858b6106748e85a;
      }
      
      public function isEnabled(param1:Object) : Boolean
      {
         return !this._836cad95f858b6106748e85a[param1];
      }
      
      public function _638c1105246d8fe9ced12299() : Vector.<_c5aa52fca149ae6f0be6dc5b>
      {
         return this._fa6660ff65aeb07353d0bc2c;
      }
      
      public function _6b3775d03b7f18382ae7c2b4(param1:Object, param2:Number) : void
      {
         var _loc3_:_c5aa52fca149ae6f0be6dc5b = null;
         var _loc4_:* = undefined;
         this._2773702f93d3b2388918a94d[param1] = param2;
         for each(_loc3_ in _c5aa52fca149ae6f0be6dc5b.all)
         {
            if(_loc3_.group == param1)
            {
               if(this._618a203ed4e3c2a69c0fb41c[_loc3_] != null)
               {
                  _loc4_ = this._618a203ed4e3c2a69c0fb41c[_loc3_];
                  if(_loc4_.hasOwnProperty(_39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("掛捞挅揇捋掆掏掂挠掃挐揻挨捵挚揆掴挎捐捘","揾掖提掖损掋揙揯挓掸控捴挷捔掔捆")))
                  {
                     _loc4_.volume = param2;
                  }
               }
            }
         }
      }
      
      public function _5f641a6684a8d54b7a77b160(param1:Object) : Number
      {
         return this._2773702f93d3b2388918a94d[param1];
      }
      
      public function _794d51d60230ac975d20e22a(param1:_c5aa52fca149ae6f0be6dc5b) : *
      {
         return param1 in this._618a203ed4e3c2a69c0fb41c ? this._618a203ed4e3c2a69c0fb41c[param1] : null;
      }
      
      public function destroy(param1:_c5aa52fca149ae6f0be6dc5b) : void
      {
         var _loc2_:* = this._f84e8ba26cc9ad6fb08eb62e[param1];
         if(_loc2_ is _c36d2d5bdf0600686d3429c2)
         {
            (_loc2_ as _c36d2d5bdf0600686d3429c2).destroy();
         }
         this._f84e8ba26cc9ad6fb08eb62e[param1] = null;
         delete this._f84e8ba26cc9ad6fb08eb62e[param1];
      }
   }
}

