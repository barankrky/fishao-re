package com.ax3.net
{
   import com.ax3.display.autoscalable._6361b2c3a5d7e31e21223d27;
   import com.ax3.display.autoscalable._759432fb62268c6ba2923d88;
   import com.ax3.display.autoscalable._9cccaae393248dfd75bf3e65;
   import com.ax3.display.autoscalable._a4e47350c89a50d87a148c28;
   import com.ax3.events._bcc9d420700df45988ac88c2;
   import com.ax3.utils.TimeConverter;
   import com.ax3.utils.isBitmapDataValid;
   import com.junkbyte.console.Cc;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.LoaderInfo;
   import flash.events.Event;
   import flash.events.EventDispatcher;
   import flash.events.IOErrorEvent;
   import flash.events.TimerEvent;
   import flash.net.URLRequest;
   import flash.system.LoaderContext;
   import flash.utils.Dictionary;
   import flash.utils.Timer;
   
   public class _1e4a460db40ffbe5f8da94dc extends EventDispatcher
   {
      
      private static const _b38c0716474972404bbeb219:int = int.MAX_VALUE;
      
      private static const _e519db8db6160a6fa8e1aeee:int = -505712998 ^ -1984162493 ^ 0x0574E390 ^ 0x6D1397E9;
      
      private var _0f458773b920407a9ca191ff:Dictionary = new Dictionary();
      
      private var _5dad9e787c0dd25ced7e3603:Dictionary = new Dictionary();
      
      private var _2687d1af8378ce1102d66879:Dictionary = new Dictionary();
      
      private var _d5fb3406608725ae4499fcdc:Dictionary = new Dictionary();
      
      private var _e208d439c461b9b7f66a24db:Dictionary = new Dictionary();
      
      private var _11dff453d9a148dbf431f4f4:Array = new Array();
      
      private var _5e226f1f3f02c38582b08c48:Dictionary = new Dictionary();
      
      private var _57c5860225b58ff838cc6cd9:int;
      
      private const _f1fb15e054be643d7097ede2:int = 3;
      
      private var _3dd91c4e4ba69438eadcf241:Timer;
      
      private var _3c21fe04bfd0131d0618686b:LoaderContext;
      
      private const _01189da60da8866ddf0f4bc8:int = 3;
      
      public function _1e4a460db40ffbe5f8da94dc()
      {
         super();
         this._3c21fe04bfd0131d0618686b = new LoaderContext(true);
      }
      
      private function _723cad811761eb7c81964bfd(param1:TimerEvent) : void
      {
         this._786ceeb1d2f5a62815ee91f8();
      }
      
      public function _c30a64381e6c9120309eac4b(param1:String) : BitmapData
      {
         var _loc2_:BitmapData = null;
         var _loc3_:_ed45c0bbe1b74058bed8974a = null;
         if(this._e208d439c461b9b7f66a24db[param1] == null)
         {
            if(this._2687d1af8378ce1102d66879[param1] != null && isBitmapDataValid(this._2687d1af8378ce1102d66879[param1]))
            {
               this._5e226f1f3f02c38582b08c48[param1] = new Date().valueOf();
               return this._2687d1af8378ce1102d66879[param1];
            }
            _loc2_ = this._a11d93927dafe840028767c8(param1);
            _loc3_ = new _ed45c0bbe1b74058bed8974a(this._01189da60da8866ddf0f4bc8);
            this._e208d439c461b9b7f66a24db[param1] = _loc3_;
            this._d5fb3406608725ae4499fcdc[_loc3_] = param1;
            this._11dff453d9a148dbf431f4f4.push(_loc3_);
            this._43cd4bb415543a9b1b6239cb();
            return _loc2_;
         }
         return this._a11d93927dafe840028767c8(param1);
      }
      
      public function _aa5b089a4b49e59ddb184361(param1:String) : _a4e47350c89a50d87a148c28
      {
         var _loc2_:_a4e47350c89a50d87a148c28 = null;
         var _loc3_:_ed45c0bbe1b74058bed8974a = null;
         if(this._e208d439c461b9b7f66a24db[param1] == null)
         {
            if(this._2687d1af8378ce1102d66879[param1] != null)
            {
               this._5e226f1f3f02c38582b08c48[param1] = new Date().valueOf();
               return new _a4e47350c89a50d87a148c28(this._2687d1af8378ce1102d66879[param1]);
            }
            _loc2_ = this._0d4f3978c274bb6044be39d3(param1);
            _loc3_ = new _ed45c0bbe1b74058bed8974a(this._01189da60da8866ddf0f4bc8);
            this._e208d439c461b9b7f66a24db[param1] = _loc3_;
            this._d5fb3406608725ae4499fcdc[_loc3_] = param1;
            this._11dff453d9a148dbf431f4f4.push(_loc3_);
            this._43cd4bb415543a9b1b6239cb();
            return _loc2_;
         }
         return this._0d4f3978c274bb6044be39d3(param1);
      }
      
      public function _e7ce7b9b2628cc4b263f2d04(param1:String) : _6361b2c3a5d7e31e21223d27
      {
         var _loc2_:_6361b2c3a5d7e31e21223d27 = null;
         if(this._e208d439c461b9b7f66a24db[param1] == null)
         {
            if(this._2687d1af8378ce1102d66879[param1] != null)
            {
               this._5e226f1f3f02c38582b08c48[param1] = new Date().valueOf();
               return new _6361b2c3a5d7e31e21223d27(this._2687d1af8378ce1102d66879[param1]);
            }
            _loc2_ = this._2ca1951d3fd808408a99b959(param1);
            this.replaceBitmapDataFromURL(_loc2_,param1);
            return _loc2_;
         }
         return this._2ca1951d3fd808408a99b959(param1);
      }
      
      protected function _a2b92b8d62050cf0233bb624(param1:String) : _759432fb62268c6ba2923d88
      {
         var _loc2_:_759432fb62268c6ba2923d88 = null;
         var _loc3_:_ed45c0bbe1b74058bed8974a = null;
         if(this._e208d439c461b9b7f66a24db[param1] == null)
         {
            if(this._2687d1af8378ce1102d66879[param1] != null)
            {
               this._5e226f1f3f02c38582b08c48[param1] = new Date().valueOf();
               return new _759432fb62268c6ba2923d88(this._2687d1af8378ce1102d66879[param1]);
            }
            _loc2_ = this._513d9decbaf3cc4ba539c57b(param1);
            _loc3_ = new _ed45c0bbe1b74058bed8974a(this._01189da60da8866ddf0f4bc8);
            this._e208d439c461b9b7f66a24db[param1] = _loc3_;
            this._d5fb3406608725ae4499fcdc[_loc3_] = param1;
            this._11dff453d9a148dbf431f4f4.push(_loc3_);
            this._43cd4bb415543a9b1b6239cb();
            return _loc2_;
         }
         return this._513d9decbaf3cc4ba539c57b(param1);
      }
      
      protected function replaceBitmapDataFromURL(param1:Bitmap, param2:String) : Bitmap
      {
         var _loc3_:_ed45c0bbe1b74058bed8974a = null;
         if(this._e208d439c461b9b7f66a24db[param2] == null)
         {
            if(this._2687d1af8378ce1102d66879[param2] != null)
            {
               this._5e226f1f3f02c38582b08c48[param2] = new Date().valueOf();
               param1.bitmapData = this._2687d1af8378ce1102d66879[param2];
               return param1;
            }
            this._f3c1c3ef8294c3df9ac8d1fd(param1,param2);
            _loc3_ = new _ed45c0bbe1b74058bed8974a(this._01189da60da8866ddf0f4bc8);
            this._e208d439c461b9b7f66a24db[param2] = _loc3_;
            this._d5fb3406608725ae4499fcdc[_loc3_] = param2;
            this._11dff453d9a148dbf431f4f4.push(_loc3_);
            this._43cd4bb415543a9b1b6239cb();
            return param1;
         }
         this._f3c1c3ef8294c3df9ac8d1fd(param1,param2);
         return param1;
      }
      
      public function _08c18c947d384aa7d43d7964(param1:String) : Bitmap
      {
         var _loc2_:Bitmap = null;
         var _loc3_:_ed45c0bbe1b74058bed8974a = null;
         if(this._e208d439c461b9b7f66a24db[param1] == null)
         {
            if(this._2687d1af8378ce1102d66879[param1] != null)
            {
               this._5e226f1f3f02c38582b08c48[param1] = new Date().valueOf();
               return new Bitmap(this._2687d1af8378ce1102d66879[param1]);
            }
            _loc2_ = this._eef713fa59bb48c278cc738c(param1);
            _loc3_ = new _ed45c0bbe1b74058bed8974a(this._01189da60da8866ddf0f4bc8);
            this._e208d439c461b9b7f66a24db[param1] = _loc3_;
            this._d5fb3406608725ae4499fcdc[_loc3_] = param1;
            this._11dff453d9a148dbf431f4f4.push(_loc3_);
            this._43cd4bb415543a9b1b6239cb();
            return _loc2_;
         }
         return this._eef713fa59bb48c278cc738c(param1);
      }
      
      private function _a11d93927dafe840028767c8(param1:String) : BitmapData
      {
         var _temp_2:* = §§findproperty(BitmapData);
         var _temp_1:* = 0x39DE1193 ^ 0x7509A722 ^ 0x06AE0F2E ^ 0x4A79B99E;
         var _loc2_:BitmapData = new BitmapData(_temp_1,_temp_1,true,-337742726 ^ -1449850812 ^ 0x4BD4961A ^ 0x099FEA24);
         if(this._5dad9e787c0dd25ced7e3603[param1] == null)
         {
            this._5dad9e787c0dd25ced7e3603[param1] = new Array();
         }
         (this._5dad9e787c0dd25ced7e3603[param1] as Array).push(_loc2_);
         return _loc2_;
      }
      
      private function _eef713fa59bb48c278cc738c(param1:String) : Bitmap
      {
         var _loc2_:BitmapData = this._a11d93927dafe840028767c8(param1);
         var _loc3_:Bitmap = new Bitmap(_loc2_);
         if(this._0f458773b920407a9ca191ff[param1] == null)
         {
            this._0f458773b920407a9ca191ff[param1] = new Array();
         }
         (this._0f458773b920407a9ca191ff[param1] as Array).push(_loc3_);
         return _loc3_;
      }
      
      private function _0d4f3978c274bb6044be39d3(param1:String) : _a4e47350c89a50d87a148c28
      {
         var _loc2_:BitmapData = this._a11d93927dafe840028767c8(param1);
         var _loc3_:_a4e47350c89a50d87a148c28 = new _9cccaae393248dfd75bf3e65(_loc2_);
         this._f3c1c3ef8294c3df9ac8d1fd(_loc3_,param1);
         return _loc3_;
      }
      
      private function _2ca1951d3fd808408a99b959(param1:String) : _6361b2c3a5d7e31e21223d27
      {
         var _loc2_:BitmapData = this._a11d93927dafe840028767c8(param1);
         var _loc3_:_6361b2c3a5d7e31e21223d27 = new _6361b2c3a5d7e31e21223d27(_loc2_);
         this._f3c1c3ef8294c3df9ac8d1fd(_loc3_,param1);
         return _loc3_;
      }
      
      private function _f3c1c3ef8294c3df9ac8d1fd(param1:Bitmap, param2:String) : void
      {
         var _loc3_:int = -1004481279 ^ -429767061 ^ 0x506D0019 ^ 0x5CE85918;
         loop0:
         while(true)
         {
            switch(_loc3_ ^ (-230659368 ^ 0x043C1CE0 ^ -7813143 ^ 0x27337BB8))
            {
               case 0:
                  (this._0f458773b920407a9ca191ff[param2] as Array).push(param1);
                  return;
               case 1:
                  this._0f458773b920407a9ca191ff[param2] = new Array();
                  _loc3_ = -1594712995 ^ -1404583150 ^ -605062282 ^ -107090352;
                  break;
               case 2:
                  if(this._0f458773b920407a9ca191ff[param2] == null)
                  {
                     _loc3_ = -2067943504 ^ -989774987 ^ 0x3DF66B35 ^ 0x528D3598;
                  }
                  else
                  {
                     _loc3_ = -1562414690 ^ -1943836301 ^ -2004821610 ^ -2001007854;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function _513d9decbaf3cc4ba539c57b(param1:String) : _759432fb62268c6ba2923d88
      {
         var _loc2_:BitmapData = this._a11d93927dafe840028767c8(param1);
         var _loc3_:_759432fb62268c6ba2923d88 = new _759432fb62268c6ba2923d88(_loc2_);
         if(this._0f458773b920407a9ca191ff[param1] == null)
         {
            this._0f458773b920407a9ca191ff[param1] = new Array();
         }
         (this._0f458773b920407a9ca191ff[param1] as Array).push(_loc3_);
         return _loc3_;
      }
      
      private function _43cd4bb415543a9b1b6239cb() : void
      {
         var loader:_ed45c0bbe1b74058bed8974a = null;
         var url:String = null;
         var urlRequest:URLRequest = null;
         if(this._57c5860225b58ff838cc6cd9 < this._f1fb15e054be643d7097ede2)
         {
            if(this._11dff453d9a148dbf431f4f4.length != (0x30C78BA5 ^ 0x33D01F5B ^ 0x3B7D7DDC ^ 0x386AE922))
            {
               loader = this._11dff453d9a148dbf431f4f4.shift();
               url = this._d5fb3406608725ae4499fcdc[loader];
               urlRequest = new URLRequest(url);
               loader.contentLoaderInfo.addEventListener(Event.COMPLETE,this._0042b5aecc64773b867cc10d);
               loader.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this._3f691e27d586380ae4cade6b);
               try
               {
                  ++this._57c5860225b58ff838cc6cd9;
                  this._d5fb3406608725ae4499fcdc[loader] = null;
                  delete this._d5fb3406608725ae4499fcdc[loader];
                  loader.load(urlRequest,this._3c21fe04bfd0131d0618686b);
               }
               catch(error:Error)
               {
                  Cc.error(error.getStackTrace());
                  --_57c5860225b58ff838cc6cd9;
                  _43cd4bb415543a9b1b6239cb();
                  throw error;
               }
            }
         }
      }
      
      private function _0042b5aecc64773b867cc10d(param1:Event) : void
      {
         var _loc2_:Bitmap = null;
         var _loc3_:BitmapData = null;
         var _loc4_:String = param1.target.url;
         this._2687d1af8378ce1102d66879[_loc4_] = (param1.target.content as Bitmap).bitmapData;
         if(this._0f458773b920407a9ca191ff[_loc4_] != null)
         {
            for each(_loc2_ in this._0f458773b920407a9ca191ff[_loc4_])
            {
               _loc2_.bitmapData = this._2687d1af8378ce1102d66879[_loc4_];
            }
            this._0f458773b920407a9ca191ff[_loc4_] = null;
            delete this._0f458773b920407a9ca191ff[_loc4_];
         }
         if(this._5dad9e787c0dd25ced7e3603[_loc4_] != null)
         {
            for each(_loc3_ in this._5dad9e787c0dd25ced7e3603[_loc4_])
            {
               _loc3_.dispose();
            }
            this._5dad9e787c0dd25ced7e3603[_loc4_] = null;
            delete this._5dad9e787c0dd25ced7e3603[_loc4_];
         }
         this._73b89c5c4d3b6b4a2e2c8794(_loc4_);
         this._43cd4bb415543a9b1b6239cb();
      }
      
      private function _73b89c5c4d3b6b4a2e2c8794(param1:String) : void
      {
         _ed45c0bbe1b74058bed8974a(this._e208d439c461b9b7f66a24db[param1]).removeEventListener(IOErrorEvent.IO_ERROR,this._3f691e27d586380ae4cade6b);
         this._e208d439c461b9b7f66a24db[param1] = null;
         delete this._e208d439c461b9b7f66a24db[param1];
         dispatchEvent(new _bcc9d420700df45988ac88c2(_bcc9d420700df45988ac88c2.BITMAP_LOADED_FROM_URL,param1));
         this._5e226f1f3f02c38582b08c48[param1] = new Date().valueOf();
         --this._57c5860225b58ff838cc6cd9;
      }
      
      private function _3f691e27d586380ae4cade6b(param1:IOErrorEvent) : void
      {
         var _loc2_:LoaderInfo = param1.target as LoaderInfo;
         var _loc3_:_ed45c0bbe1b74058bed8974a = _ed45c0bbe1b74058bed8974a(_loc2_.loader);
         var _loc4_:String = _loc3_.url;
         this._73b89c5c4d3b6b4a2e2c8794(_loc4_);
         this._43cd4bb415543a9b1b6239cb();
      }
      
      private function _786ceeb1d2f5a62815ee91f8() : void
      {
         var _loc1_:String = null;
         var _loc2_:Number = new Date().valueOf();
         for(_loc1_ in this._2687d1af8378ce1102d66879)
         {
            if(this._5e226f1f3f02c38582b08c48[_loc1_] + TimeConverter.fromMinutes(_b38c0716474972404bbeb219) < _loc2_)
            {
               this._f6bc79f8b24d15b90d218a01(_loc1_);
            }
         }
      }
      
      private function _f6bc79f8b24d15b90d218a01(param1:String) : void
      {
         this._2687d1af8378ce1102d66879[param1].dispose();
         this._2687d1af8378ce1102d66879[param1] = null;
         delete this._2687d1af8378ce1102d66879[param1];
      }
      
      public function _e713662f4b4947614beafe6b(param1:String) : Boolean
      {
         if(this._2687d1af8378ce1102d66879[param1] == null || this._e208d439c461b9b7f66a24db[param1] == null)
         {
            return false;
         }
         return true;
      }
      
      public function _0f101b3e7ff226b9a0880c82(param1:String) : Boolean
      {
         var _loc2_:int = 0x37C1F5D8 ^ -1430687742 ^ -1746497418 ^ -2044150261;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (0x63465911 ^ 0x0CFE9452 ^ -665745997 ^ 0x3B5FE357))
            {
               case 0:
                  if(this._2687d1af8378ce1102d66879[param1] != null)
                  {
                     _loc2_ = 0x1CA229F4 ^ 0x0F3A83AC ^ -1038471676 ^ 0x5D342FF9;
                  }
                  else
                  {
                     _loc2_ = 0x6BA69E26 ^ -1324419423 ^ 0x5A70A6C4 ^ 0x0C6E65E5;
                  }
                  break;
               case 1:
                  return false;
               case 2:
                  return true;
               default:
                  break loop0;
            }
         }
         throw null;
      }
   }
}

