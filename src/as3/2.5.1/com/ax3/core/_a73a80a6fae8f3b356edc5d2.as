package com.ax3.core
{
   import __29bfe0e6ca7e9c8a7b0c2d17._39d7d82359bf8046fe8ef6c4;
   import __97617a75ee06500d42cdea1c._433075a5d49397e40222eeae;
   import com.ax3.events._8c6eae3f22f8cb28c277afbe;
   import flash.events.IEventDispatcher;
   import flash.utils.Dictionary;
   
   public class _a73a80a6fae8f3b356edc5d2
   {
      
      public var count:int = 0;
      
      private var _fa29428cef2aa583b5b54bb0:Dictionary = new Dictionary(true);
      
      private var _e2d8e8bce1e6f837596ecee0:Dictionary = new Dictionary(true);
      
      public function _a73a80a6fae8f3b356edc5d2()
      {
         super();
      }
      
      public function addEventListener(param1:Object, param2:IEventDispatcher, param3:String, param4:Function, param5:Boolean = false, param6:int = 0, param7:Boolean = false) : void
      {
         var _loc8_:_8c6eae3f22f8cb28c277afbe = null;
         if(this._ba654c87785db26d77f3c38b(param1,param2,param3,param4,param5) == null)
         {
            _loc8_ = new _8c6eae3f22f8cb28c277afbe(param1,param2,param3,param4,param5,param6,param7);
            this._65617781c6cb7745811da0cd(_loc8_);
            this._fe206fa11ec0b0a6f7aee802(_loc8_);
            param2.addEventListener(param3,param4,param5,param6,param7);
            ++this.count;
         }
      }
      
      private function _65617781c6cb7745811da0cd(param1:_8c6eae3f22f8cb28c277afbe) : void
      {
         var _loc2_:Object = param1.handler;
         if(!(_loc2_ in this._fa29428cef2aa583b5b54bb0))
         {
            this._fa29428cef2aa583b5b54bb0[_loc2_] = new Vector.<_8c6eae3f22f8cb28c277afbe>();
         }
         (this._fa29428cef2aa583b5b54bb0[_loc2_] as Vector.<_8c6eae3f22f8cb28c277afbe>).push(param1);
      }
      
      private function _fe206fa11ec0b0a6f7aee802(param1:_8c6eae3f22f8cb28c277afbe) : void
      {
         var _loc2_:Object = param1.target;
         if(!(_loc2_ in this._e2d8e8bce1e6f837596ecee0))
         {
            this._e2d8e8bce1e6f837596ecee0[_loc2_] = new Vector.<_8c6eae3f22f8cb28c277afbe>();
         }
         (this._e2d8e8bce1e6f837596ecee0[_loc2_] as Vector.<_8c6eae3f22f8cb28c277afbe>).push(param1);
      }
      
      public function removeEventListener(param1:Object, param2:IEventDispatcher, param3:String, param4:Function, param5:Boolean = false) : void
      {
         var _loc6_:_8c6eae3f22f8cb28c277afbe = this._ba654c87785db26d77f3c38b(param1,param2,param3,param4,param5);
         if(_loc6_ != null)
         {
            this._e9f85ed21857bf8eb7b6377c(_loc6_);
            this._7d4a3a2f32995e6affbb52a3(_loc6_);
            _loc6_._730543c47e80c472026200f6();
            --this.count;
         }
      }
      
      private function _ba654c87785db26d77f3c38b(param1:Object, param2:IEventDispatcher, param3:String, param4:Function, param5:Boolean) : _8c6eae3f22f8cb28c277afbe
      {
         var _loc6_:Vector.<_8c6eae3f22f8cb28c277afbe> = null;
         var _loc7_:_8c6eae3f22f8cb28c277afbe = null;
         if(param2 in this._e2d8e8bce1e6f837596ecee0)
         {
            _loc6_ = this._e2d8e8bce1e6f837596ecee0[param2];
            for each(_loc7_ in _loc6_)
            {
               if(_loc7_.equal(param1,param2,param3,param4,param5))
               {
                  return _loc7_;
               }
            }
         }
         return null;
      }
      
      private function _e9f85ed21857bf8eb7b6377c(param1:_8c6eae3f22f8cb28c277afbe) : void
      {
         var _loc2_:Vector.<_8c6eae3f22f8cb28c277afbe> = null;
         var _loc3_:int = 0x538D1321 ^ 0x378B2701 ^ 0x18C6A008 ^ 0x7CC09428;
         if(param1.handler in this._fa29428cef2aa583b5b54bb0)
         {
            _loc2_ = this._fa29428cef2aa583b5b54bb0[param1.handler];
            _loc3_ = _loc2_.indexOf(param1);
            if(_loc3_ > (0x65FCE605 ^ -1646172677 ^ 0x202FAAA2 ^ 0x27CDD6A3))
            {
               _loc2_.splice(_loc3_,-1293020780 ^ -358528798 ^ 0x1A9871C0 ^ 0x42D728B7);
            }
            if(_loc2_.length == (0x07B9B28B ^ 0x7C35A9E6 ^ 0x49E7B5A5 ^ 0x326BAEC8))
            {
               this._fa29428cef2aa583b5b54bb0[param1.handler] = null;
               delete this._fa29428cef2aa583b5b54bb0[param1.handler];
            }
         }
      }
      
      private function _7d4a3a2f32995e6affbb52a3(param1:_8c6eae3f22f8cb28c277afbe) : void
      {
         var _loc2_:Vector.<_8c6eae3f22f8cb28c277afbe> = null;
         var _loc3_:int = 0x016A2FF9 ^ 0x350B43 ^ 0x2D624B8D ^ 0x2C3D6F37;
         if(param1.target in this._e2d8e8bce1e6f837596ecee0)
         {
            _loc2_ = this._e2d8e8bce1e6f837596ecee0[param1.target];
            _loc3_ = _loc2_.indexOf(param1);
            if(_loc3_ > (0x5A63D810 ^ 0x703376D2 ^ -904239750 ^ 0x1FB53447))
            {
               _loc2_.splice(_loc3_,0x79326833 ^ -1721044540 ^ -1233436570 ^ 0x5623D990);
            }
            if(_loc2_.length == (0x72BF8753 ^ 0x35CA3664 ^ -1500753157 ^ -503716916))
            {
               this._e2d8e8bce1e6f837596ecee0[param1.target] = null;
               delete this._e2d8e8bce1e6f837596ecee0[param1.target];
            }
         }
      }
      
      public function _07badf0e4e0943fed2d3dfaf(param1:IEventDispatcher) : Vector.<_8c6eae3f22f8cb28c277afbe>
      {
         return param1 in this._e2d8e8bce1e6f837596ecee0 ? this._e2d8e8bce1e6f837596ecee0[param1] : null;
      }
      
      public function _8e405b7515eccb1a0aef24d1(param1:Object) : Vector.<_8c6eae3f22f8cb28c277afbe>
      {
         return param1 in this._fa29428cef2aa583b5b54bb0 ? this._fa29428cef2aa583b5b54bb0[param1] : null;
      }
      
      public function _87b72cd49d8fc861c4443e4d(param1:Object) : void
      {
         var _loc2_:int = -1573362021 ^ -293079293 ^ -813741213 ^ 0x5B8C9449;
         loop0:
         while(true)
         {
            switch(_loc2_ ^ (-1030305545 ^ 0x61E26012 ^ 0x3DF37AB9 ^ 0x46CB9CEC))
            {
               case 0:
                  return;
               case 1:
                  this._c01c488232b3acfc3755f54a(IEventDispatcher(param1));
                  _loc2_ = -509965295 ^ 0x10C6AD35 ^ -1200360922 ^ -1855742542;
                  break;
               case 2:
                  this._2a0c0ba3c2f2d5de6dcb58b4(param1);
                  if(param1 is IEventDispatcher)
                  {
                     _loc2_ = 0x08B54C86 ^ 0x7ECACE58 ^ -481665863 ^ 0x4D7990D6;
                  }
                  else
                  {
                     _loc2_ = -1067281480 ^ 0x57A8DAE2 ^ 0x28FB0065 ^ 0x677D078F;
                  }
                  break;
               default:
                  break loop0;
            }
         }
         throw null;
      }
      
      private function _2a0c0ba3c2f2d5de6dcb58b4(param1:Object) : void
      {
         var _loc2_:Vector.<_8c6eae3f22f8cb28c277afbe> = null;
         var _loc3_:_8c6eae3f22f8cb28c277afbe = null;
         if(param1 in this._fa29428cef2aa583b5b54bb0)
         {
            _loc2_ = this._fa29428cef2aa583b5b54bb0[param1];
            for each(_loc3_ in _loc2_)
            {
               this._7d4a3a2f32995e6affbb52a3(_loc3_);
               _loc3_._730543c47e80c472026200f6();
               --this.count;
            }
            this._fa29428cef2aa583b5b54bb0[param1] = null;
            delete this._fa29428cef2aa583b5b54bb0[param1];
         }
      }
      
      private function _c01c488232b3acfc3755f54a(param1:IEventDispatcher) : void
      {
         var _loc2_:Vector.<_8c6eae3f22f8cb28c277afbe> = null;
         var _loc3_:_8c6eae3f22f8cb28c277afbe = null;
         if(param1 in this._e2d8e8bce1e6f837596ecee0)
         {
            _loc2_ = this._e2d8e8bce1e6f837596ecee0[param1];
            for each(_loc3_ in _loc2_)
            {
               this._e9f85ed21857bf8eb7b6377c(_loc3_);
               _loc3_._730543c47e80c472026200f6();
            }
            this._e2d8e8bce1e6f837596ecee0[param1] = null;
            delete this._e2d8e8bce1e6f837596ecee0[param1];
         }
      }
      
      public function _b7fd8cf54bf37a82220f6264() : String
      {
         var _loc1_:Vector.<_8c6eae3f22f8cb28c277afbe> = null;
         var _loc2_:_8c6eae3f22f8cb28c277afbe = null;
         var _loc3_:String = "";
         var _loc4_:int = -2034581452 ^ 0x425F6CA9 ^ -1291357869 ^ 0x77E2DDCF;
         for each(_loc1_ in this._fa29428cef2aa583b5b54bb0)
         {
            for each(_loc2_ in _loc1_)
            {
               if(_loc3_.length > (0x591DEB1E ^ -1950091897 ^ 0x1BE40750 ^ -918939191))
               {
                  _loc3_ += _433075a5d49397e40222eeae._aa70f30b6c8db4826c832ff5("ထသწငဟ႞ႛှၗက","ჍၓႼႤုၕၣၵ။ရ့჈ႝკჺႮ");
               }
               _loc3_ += _loc4_ + _39d7d82359bf8046fe8ef6c4._33a8897a401e877f1086d126("探挚捶捾掐捕捜揌捸捕","掼揹措措捨揣挀挷排挣描挷揅挥描揂") + _loc2_.toString();
            }
         }
         return _loc3_;
      }
   }
}

