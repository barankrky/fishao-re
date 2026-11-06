package com.ax3.fishao.locations
{
   import flash.display.DisplayObject;
   import flash.utils.Dictionary;
   
   public class _bcd386fcd22a5b84a8880e74
   {
      
      private var _5ddf22dc6f080b62a9170806:Dictionary;
      
      private var _6af0bd8f73c1eeb31649050f:_90e27c4b11f9fb120563f45f = null;
      
      private var _cee3c9d1563a7baedb2f9d0b:int = 0;
      
      public function _bcd386fcd22a5b84a8880e74()
      {
         super();
         this._5ddf22dc6f080b62a9170806 = new Dictionary();
      }
      
      public function add(param1:DisplayObject) : int
      {
         var _loc2_:_90e27c4b11f9fb120563f45f = null;
         var _loc3_:_90e27c4b11f9fb120563f45f = new _90e27c4b11f9fb120563f45f();
         _loc3_.displayObject = param1;
         _loc3_.lastY = param1.y;
         _loc3_.name = param1.name;
         var _loc4_:int = -1290568849 ^ -726655432 ^ -1112043913 ^ 0x25EB14DF;
         if(this._6af0bd8f73c1eeb31649050f == null)
         {
            this._6af0bd8f73c1eeb31649050f = _loc3_;
            this._cee3c9d1563a7baedb2f9d0b = 0x68A50F2F ^ 0x6CDB7190 ^ 0x48B1D8AC ^ 0x4CCFA612;
            _loc4_ = 0x1C5BCBCA ^ 0x77731853 ^ -468683295 ^ -1892112776;
         }
         else
         {
            _loc2_ = this._6af0bd8f73c1eeb31649050f;
            _loc4_ = 0x1233E1A7 ^ 0x130DD835 ^ 0x63160B61 ^ 0x622832F3;
            do
            {
               if(_loc2_.displayObject.y > _loc3_.displayObject.y)
               {
                  this._41a899e9ed88f98c76be855d(_loc2_,_loc3_);
                  break;
               }
               if(_loc2_.next == null)
               {
                  this._85689f55c879ea12545d1c2f(_loc2_,_loc3_);
                  _loc4_++;
                  break;
               }
               _loc2_ = _loc2_.next;
               _loc4_++;
            }
            while(_loc2_ != null);
         }
         this._5ddf22dc6f080b62a9170806[param1] = _loc3_;
         return _loc4_;
      }
      
      private function _85689f55c879ea12545d1c2f(param1:_90e27c4b11f9fb120563f45f, param2:_90e27c4b11f9fb120563f45f) : void
      {
         if(param1.next == param2)
         {
            return;
         }
         if(param2.next != null && param2 == this._6af0bd8f73c1eeb31649050f)
         {
            this._6af0bd8f73c1eeb31649050f = param2.next;
         }
         var _loc3_:_90e27c4b11f9fb120563f45f = param1.next;
         this._d5ce97c7545a8b51cabc87de(param2);
         if(this._6af0bd8f73c1eeb31649050f == null)
         {
            this._6af0bd8f73c1eeb31649050f = param2;
         }
         if(_loc3_ != null)
         {
            this._a3d96bed6e561d5f737166ae(param2,_loc3_);
         }
         this._a3d96bed6e561d5f737166ae(param1,param2);
         ++this._cee3c9d1563a7baedb2f9d0b;
      }
      
      private function _41a899e9ed88f98c76be855d(param1:_90e27c4b11f9fb120563f45f, param2:_90e27c4b11f9fb120563f45f) : void
      {
         var _loc3_:_90e27c4b11f9fb120563f45f = null;
         if(param1.prev != param2)
         {
            _loc3_ = param1.prev;
            if(param1 == this._6af0bd8f73c1eeb31649050f)
            {
               this._6af0bd8f73c1eeb31649050f = param2;
            }
            this._d5ce97c7545a8b51cabc87de(param2);
            if(this._6af0bd8f73c1eeb31649050f == null)
            {
               this._6af0bd8f73c1eeb31649050f = param2;
            }
            if(_loc3_ != null)
            {
               this._a3d96bed6e561d5f737166ae(_loc3_,param2);
            }
            this._a3d96bed6e561d5f737166ae(param2,param1);
            ++this._cee3c9d1563a7baedb2f9d0b;
         }
      }
      
      private function _d5ce97c7545a8b51cabc87de(param1:_90e27c4b11f9fb120563f45f) : void
      {
         var _loc2_:_90e27c4b11f9fb120563f45f = param1.prev;
         var _loc3_:_90e27c4b11f9fb120563f45f = param1.next;
         if(_loc2_ != null || _loc3_ != null)
         {
            --this._cee3c9d1563a7baedb2f9d0b;
         }
         if(_loc2_ != null && _loc3_ != null)
         {
            this._a3d96bed6e561d5f737166ae(_loc2_,_loc3_);
         }
         else
         {
            if(this._6af0bd8f73c1eeb31649050f == param1)
            {
               this._6af0bd8f73c1eeb31649050f = _loc3_;
            }
            if(_loc2_ != null)
            {
               _loc2_.next = null;
            }
            if(_loc3_ != null)
            {
               _loc3_.prev = null;
            }
         }
         param1.prev = null;
         param1.next = null;
      }
      
      private function _a3d96bed6e561d5f737166ae(param1:_90e27c4b11f9fb120563f45f, param2:_90e27c4b11f9fb120563f45f) : void
      {
         param1.next = param2;
         param2.prev = param1;
      }
      
      public function remove(param1:DisplayObject) : void
      {
         var _loc2_:_90e27c4b11f9fb120563f45f = this._5ddf22dc6f080b62a9170806[param1];
         if(_loc2_ != null)
         {
            this._d5ce97c7545a8b51cabc87de(_loc2_);
            delete this._5ddf22dc6f080b62a9170806[param1];
         }
      }
      
      public function get iterator() : _90e27c4b11f9fb120563f45f
      {
         return this._6af0bd8f73c1eeb31649050f;
      }
      
      public function _59bac2fb883c90ee3853b2eb(param1:_90e27c4b11f9fb120563f45f) : int
      {
         var _loc2_:_90e27c4b11f9fb120563f45f = param1.prev;
         var _loc3_:_90e27c4b11f9fb120563f45f = param1.next;
         if(_loc3_ != null && _loc3_.displayObject.y < param1.displayObject.y)
         {
            if(_loc3_.next == null)
            {
               this._85689f55c879ea12545d1c2f(_loc3_,param1);
            }
            else
            {
               while(_loc3_.next != null && _loc3_.next.displayObject.y < param1.displayObject.y)
               {
                  _loc3_ = _loc3_.next;
               }
               this._85689f55c879ea12545d1c2f(_loc3_,param1);
            }
         }
         if(_loc2_ != null && _loc2_.displayObject.y > param1.displayObject.y)
         {
            if(_loc2_.prev == null)
            {
               this._41a899e9ed88f98c76be855d(_loc2_,param1);
            }
            else
            {
               while(_loc2_.prev != null && _loc2_.prev.displayObject.y > param1.displayObject.y)
               {
                  _loc2_ = _loc2_.prev;
               }
               this._41a899e9ed88f98c76be855d(_loc2_,param1);
            }
         }
         return this._0a05bb3b1bcfa287e6a37a90(param1);
      }
      
      internal function _0a05bb3b1bcfa287e6a37a90(param1:_90e27c4b11f9fb120563f45f) : int
      {
         var _loc2_:int = 0x3D73DD4B ^ -235673417 ^ 0x54C42A01 ^ 0x67BBE002;
         if(param1 != null)
         {
            do
            {
               _loc2_++;
               param1 = param1.prev;
            }
            while(param1 != null);
         }
         return _loc2_;
      }
      
      public function _f1fc650bcb22deb5361df2cd(param1:DisplayObject) : _90e27c4b11f9fb120563f45f
      {
         return this._5ddf22dc6f080b62a9170806[param1];
      }
      
      public function getAll() : Vector.<DisplayObject>
      {
         var _loc1_:Vector.<DisplayObject> = new Vector.<DisplayObject>();
         var _loc2_:_90e27c4b11f9fb120563f45f = this.iterator;
         while(_loc2_)
         {
            _loc1_.push(_loc2_.displayObject);
            _loc2_ = _loc2_.next;
         }
         return _loc1_;
      }
      
      public function reset() : void
      {
         var _loc1_:_90e27c4b11f9fb120563f45f = this.iterator;
         while(_loc1_)
         {
            _loc1_.lastY = -1609411107 ^ 0x7294A29B ^ -1683591926 ^ -1226873421;
            _loc1_ = _loc1_.next;
         }
      }
      
      public function _ef439af1a3d9aac5def41c6c() : void
      {
         var _loc1_:_90e27c4b11f9fb120563f45f = null;
         var _loc2_:_90e27c4b11f9fb120563f45f = this._6af0bd8f73c1eeb31649050f;
         while(_loc2_)
         {
            _loc1_ = _loc2_.next;
            _loc2_.prev = null;
            _loc2_.next = null;
            if(!_loc1_)
            {
               break;
            }
            _loc2_ = _loc1_;
         }
         if(this._6af0bd8f73c1eeb31649050f != null)
         {
            this._6af0bd8f73c1eeb31649050f.prev = null;
            this._6af0bd8f73c1eeb31649050f.next = null;
            this._6af0bd8f73c1eeb31649050f = null;
         }
         this._cee3c9d1563a7baedb2f9d0b = -963961203 ^ -1665602942 ^ -1171706495 ^ -535111282;
      }
      
      public function _c5b1f8c1e3752fc14dda6348() : int
      {
         return this._cee3c9d1563a7baedb2f9d0b;
      }
   }
}

