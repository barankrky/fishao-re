package com.ax3.fishao.locations
{
   import com.ax3.display.wrappers.ShiftWrapper;
   import com.ax3.utils.timer._69eec7d2f73604da25ccda04;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class _10aec915df137be255fad9fc extends Sprite implements _69eec7d2f73604da25ccda04, _abbbb5592f09d3723539995b, _c36d2d5bdf0600686d3429c2, _1c3337d0df0240fa0eb6e1b1
   {
      
      private static var _25aeddc07cb09b73764f8259:int = 0x50D675E2 ^ -1003273658 ^ 0x78DFA658 ^ -331705860;
      
      private static var _3b42e517bd571e14188f3672:int = -445960676 ^ 0x46A8394D ^ -1598069002 ^ 0x037C71A7;
      
      private static var _174998516208256d08a7cb8d:int = -214073883 ^ -2001275050 ^ 0x484B24B0 ^ 0x33C0AE03;
      
      public static var created:int = -355425184 ^ -2028800738 ^ 0x7AEA6C94 ^ 0x17283DEA;
      
      public static var destroyed:int = 0x3BBECCA2 ^ 0x45E08054 ^ 0x0637AE1B ^ 0x7869E2ED;
      
      public var asset:MovieClip;
      
      private var _4c86380ee123409867ed6828:Rectangle;
      
      private var _385573f0397acfb16424c27e:Number;
      
      private var _59d7222d5f4e88a0d94a022e:Number;
      
      private const _4d75d90030f0130e7d0c9144:Number = 256;
      
      private const _eae678a30ab06e6fb7af4902:Number = 256;
      
      private var _f9f957a7e6ba167ceaeaf592:int;
      
      private var _4730e37100b6aaddf8e30a2e:int;
      
      private const _9a3e78201c93edee3f781d41:BitmapData = null;
      
      protected var _grid:Vector.<_de2a275c74ad73d373d2a7a8>;
      
      private var _04b24d8bbb224adacc6e4cc0:Number;
      
      private var _5de67fde5deb2c5bd2e9ebba:Number = 0;
      
      private var _c5af61bf8391423c60ebb003:Number = 1;
      
      private var _118e9ee011722c72278d6ae0:Boolean;
      
      private var _2e67e76fd5c0de9db8de0dae:Number = 0;
      
      private var _98d2fdd083cb82eeb4b72e42:int = 0;
      
      private var _4b1bf8e338fb66380a045d2f:Vector.<DisplayObject>;
      
      private var _e75346c377b84c912be1e93c:Boolean = false;
      
      private var _f29f7a861afdd570f9957419:int;
      
      private var _6f8351a0cf09d565153695c1:int;
      
      private var _48f9906e91988ba1dafc3d6f:int;
      
      private var _e0e8a90fbb8547478ad5bafb:Function;
      
      public var origX:Number;
      
      public var origY:Number;
      
      public function _10aec915df137be255fad9fc(param1:MovieClip, param2:Boolean = true, param3:Boolean = true, param4:Function = null)
      {
         super();
         ++created;
         this.asset = param1;
         var _loc5_:Point = param1.localToGlobal(new Point(param1.x,param1.y));
         this.origX = _loc5_.x;
         this.origY = _loc5_.y;
         this._e0e8a90fbb8547478ad5bafb = param4;
         if(param3)
         {
            this._f9f957a7e6ba167ceaeaf592 = this._4d75d90030f0130e7d0c9144;
            this._4730e37100b6aaddf8e30a2e = this._eae678a30ab06e6fb7af4902;
         }
         else
         {
            this._f9f957a7e6ba167ceaeaf592 = param1.width;
            this._4730e37100b6aaddf8e30a2e = param1.height;
         }
         ShiftWrapper.shiftDisplayObject(param1,this);
         var _temp_4:* = this;
         var _temp_3:* = §§findproperty(Rectangle);
         var _temp_2:* = 0x242734A0 ^ 0x6D5B202A ^ 0x504C5D3B ^ 0x193049B1;
         _temp_4._4c86380ee123409867ed6828 = new Rectangle(_temp_2,_temp_2,param1.width,param1.height);
         this._385573f0397acfb16424c27e = Math.ceil(this._4c86380ee123409867ed6828.width / this._f9f957a7e6ba167ceaeaf592);
         this._59d7222d5f4e88a0d94a022e = Math.ceil(this._4c86380ee123409867ed6828.height / this._4730e37100b6aaddf8e30a2e);
         this._grid = new Vector.<_de2a275c74ad73d373d2a7a8>();
         this._4b1bf8e338fb66380a045d2f = new Vector.<DisplayObject>();
         this._98d2fdd083cb82eeb4b72e42 = param1.totalFrames;
         this._f29f7a861afdd570f9957419 = 0x268172DD ^ 0x5C661C7F ^ 0x747166CF ^ 0x0E96086C;
         this._6f8351a0cf09d565153695c1 = -2038689069 ^ 0x6D9EED50 ^ -1612961148 ^ 0x743ED507;
         this._48f9906e91988ba1dafc3d6f = 0x65F051CC ^ -1564865881 ^ 0x11C2BF78 ^ -695671789;
         if(param2)
         {
            while(this._e75346c377b84c912be1e93c == false)
            {
               this._4abd7c3aad51c496276fb656();
            }
         }
      }
      
      public static function isEmpty(param1:BitmapData) : Boolean
      {
         var _loc2_:int = 0x212298FE ^ -667105678 ^ -1131766467 ^ 0x4594C3B1;
         var _loc3_:uint = uint(-1104127295 ^ -973610975 ^ -1329443026 ^ -888801842);
         param1.lock();
         var _loc4_:int = param1.width;
         var _loc5_:int = param1.height;
         var _loc6_:int = 0x5585D268 ^ 0x13E85955 ^ 0x163D6994 ^ 0x5050E2A9;
         loop0:
         while(_loc6_ < _loc4_)
         {
            _loc2_ = -390366925 ^ 0x5BF7DF04 ^ -1285341133 ^ 0x2FE604;
            while(true)
            {
               if(_loc2_ >= _loc5_)
               {
                  _loc6_ += 0x42E9FCE7 ^ 0x09DA666C ^ 0x58152A05 ^ 0x1326B08B;
                  continue loop0;
               }
               _loc3_ = param1.getPixel32(_loc6_,_loc2_);
               if(_loc3_ > (0x72138A10 ^ 0x1C0F6309 ^ -2144655250 ^ -288866680))
               {
                  break;
               }
               _loc2_ += -1732483679 ^ 0x5FEAE2EE ^ -1821571840 ^ 0x543B824A;
            }
            param1.unlock();
            return false;
         }
         param1.unlock();
         return true;
      }
      
      public function tick() : void
      {
         this._4abd7c3aad51c496276fb656();
      }
      
      public function _4abd7c3aad51c496276fb656() : void
      {
         var _loc1_:_de2a275c74ad73d373d2a7a8 = null;
         var _loc2_:BitmapData = null;
         var _loc3_:Matrix = null;
         var _loc4_:BitmapData = null;
         if(this._f29f7a861afdd570f9957419 > this._98d2fdd083cb82eeb4b72e42)
         {
            this._e75346c377b84c912be1e93c = true;
            if(this._e0e8a90fbb8547478ad5bafb != null)
            {
               this._e0e8a90fbb8547478ad5bafb(this);
            }
         }
         else
         {
            if(this.asset.currentFrame != this._f29f7a861afdd570f9957419)
            {
               this.asset.gotoAndStop(this._f29f7a861afdd570f9957419);
            }
            if(this._6f8351a0cf09d565153695c1 >= this._59d7222d5f4e88a0d94a022e)
            {
               this._6f8351a0cf09d565153695c1 = -1856807568 ^ -1818041229 ^ -1959956772 ^ -1982015521;
               ++this._f29f7a861afdd570f9957419;
            }
            else if(this._48f9906e91988ba1dafc3d6f >= this._385573f0397acfb16424c27e)
            {
               this._48f9906e91988ba1dafc3d6f = 0x0C40AD76 ^ 0x0106499E ^ -234456622 ^ -12542662;
               ++this._6f8351a0cf09d565153695c1;
            }
            else
            {
               if(this._6f8351a0cf09d565153695c1 * this._385573f0397acfb16424c27e + this._48f9906e91988ba1dafc3d6f in this._grid)
               {
                  _loc1_ = this._grid[this._6f8351a0cf09d565153695c1 * this._385573f0397acfb16424c27e + this._48f9906e91988ba1dafc3d6f];
               }
               else
               {
                  _loc1_ = this._939d8a98f1de844f57fcdb49();
                  _loc1_.x = this._48f9906e91988ba1dafc3d6f * this._f9f957a7e6ba167ceaeaf592;
                  _loc1_.y = this._6f8351a0cf09d565153695c1 * this._4730e37100b6aaddf8e30a2e;
                  this._grid.push(_loc1_);
                  this._4b1bf8e338fb66380a045d2f.push(_loc1_);
                  addChild(_loc1_);
               }
               _loc2_ = new BitmapData(this._f9f957a7e6ba167ceaeaf592,this._4730e37100b6aaddf8e30a2e,true,-226219980 ^ 0x15C436D0 ^ -1124804226 ^ 0x5BB4C79A);
               _loc3_ = new Matrix();
               _loc3_.tx = -this._48f9906e91988ba1dafc3d6f * this._f9f957a7e6ba167ceaeaf592;
               _loc3_.ty = -this._6f8351a0cf09d565153695c1 * this._4730e37100b6aaddf8e30a2e;
               _loc2_.lock();
               _loc2_.draw(this.asset,_loc3_,null,null,null,false);
               if(isEmpty(_loc2_))
               {
                  _loc2_.dispose();
                  _loc1_._b4acf079c9d49145fe13e365(this._9a3e78201c93edee3f781d41);
                  ++_3b42e517bd571e14188f3672;
               }
               else
               {
                  _loc4_ = _loc1_._d0896a2f8783f768d3a2cf77();
                  if(false && this._4d53c46793278e60a49f37b7(_loc2_,_loc4_))
                  {
                     _loc2_.dispose();
                     _loc1_._b4acf079c9d49145fe13e365(_loc4_);
                     ++_174998516208256d08a7cb8d;
                  }
                  else
                  {
                     ++_25aeddc07cb09b73764f8259;
                     _loc2_.unlock();
                     _loc1_._b4acf079c9d49145fe13e365(_loc2_);
                  }
               }
               ++this._48f9906e91988ba1dafc3d6f;
            }
         }
      }
      
      public function isComplete() : Boolean
      {
         return this._e75346c377b84c912be1e93c;
      }
      
      protected function _939d8a98f1de844f57fcdb49() : _de2a275c74ad73d373d2a7a8
      {
         return new _de2a275c74ad73d373d2a7a8();
      }
      
      private function _4d53c46793278e60a49f37b7(param1:BitmapData, param2:BitmapData) : Boolean
      {
         var _loc3_:Object = null;
         if(param2 == null)
         {
            return false;
         }
         _loc3_ = param1.compare(param2);
         if(_loc3_ == (-7893778 ^ 0x31DB1F07 ^ 0x5DEA33C6 ^ -1816747985))
         {
            return true;
         }
         return false;
      }
      
      public function update(param1:uint, param2:uint) : void
      {
         var _loc3_:Number = NaN;
         var _loc4_:int = 0x28AE5BC5 ^ -1351167504 ^ -1842486844 ^ 0x15F56BF1;
         if(this._118e9ee011722c72278d6ae0)
         {
            if(this._5de67fde5deb2c5bd2e9ebba == (0x27AAB286 ^ -701035874 ^ 0x1D86E509 ^ 0x13E4A2EE))
            {
               this._5de67fde5deb2c5bd2e9ebba = param1;
               this._f1f533ffc86d4d53222fc4fb(0x41ADCBCD ^ 0x4688ED2A ^ 0x5D4C1C3B ^ 0x5A693ADD);
            }
            else
            {
               _loc3_ = param1 - this._5de67fde5deb2c5bd2e9ebba;
               if(_loc3_ > this._2e67e76fd5c0de9db8de0dae)
               {
                  _loc4_ = int(_loc3_ / this._2e67e76fd5c0de9db8de0dae);
                  this._5de67fde5deb2c5bd2e9ebba += this._2e67e76fd5c0de9db8de0dae * _loc4_;
                  this._ff8f28eb48ba9618dd2bbd1c(_loc4_);
               }
            }
         }
      }
      
      private function _ff8f28eb48ba9618dd2bbd1c(param1:int) : void
      {
         this._c5af61bf8391423c60ebb003 = (this._c5af61bf8391423c60ebb003 + param1) % this._98d2fdd083cb82eeb4b72e42;
         this._f1f533ffc86d4d53222fc4fb(this._c5af61bf8391423c60ebb003 + (-622079953 ^ -510069465 ^ 0x36B0AEC0 ^ 0x0DC38BC9));
      }
      
      private function _f1f533ffc86d4d53222fc4fb(param1:int) : void
      {
         var _loc2_:_de2a275c74ad73d373d2a7a8 = null;
         this._c5af61bf8391423c60ebb003 = param1 - 1;
         for each(_loc2_ in this._grid)
         {
            if(_loc2_.visible)
            {
               _loc2_.gotoAndStop(this._c5af61bf8391423c60ebb003 + (0x3B5B1D48 ^ 0x2066C40A ^ -1425166706 ^ -1339000883));
            }
         }
      }
      
      public function set framePerSec(param1:Number) : void
      {
         this._04b24d8bbb224adacc6e4cc0 = param1;
         this._2e67e76fd5c0de9db8de0dae = (-1217554786 ^ -969436153 ^ 0x44044145 ^ 0x355E4034) / this._04b24d8bbb224adacc6e4cc0;
      }
      
      public function play() : void
      {
         this._118e9ee011722c72278d6ae0 = true;
         this._5de67fde5deb2c5bd2e9ebba = -365190150 ^ 0x3F353FF8 ^ 0x1C4F7C79 ^ 0x36BE1F84;
      }
      
      public function _7aa00ab6e8c1c792ca866dec() : Vector.<DisplayObject>
      {
         return this._4b1bf8e338fb66380a045d2f;
      }
      
      public function _c0e80b767060f8ae52aca1af() : Vector.<_de2a275c74ad73d373d2a7a8>
      {
         return this._grid;
      }
      
      public function destroy() : void
      {
         var _loc1_:* = undefined;
         if(parent != null)
         {
            parent.removeChild(this);
         }
         ++destroyed;
         for each(_loc1_ in this._4b1bf8e338fb66380a045d2f)
         {
            if(_loc1_ is _c36d2d5bdf0600686d3429c2)
            {
               _c36d2d5bdf0600686d3429c2(_loc1_).destroy();
            }
         }
         this.asset = null;
         this._4c86380ee123409867ed6828 = null;
         this._grid.length = -1023892924 ^ -1478959904 ^ -539301376 ^ -1157983068;
         this._grid = null;
         this._4b1bf8e338fb66380a045d2f = null;
      }
      
      public function _7120ced6b8dc8511e430ec67() : Vector.<_69eec7d2f73604da25ccda04>
      {
         return null;
      }
      
      public function _8c7137adb6802e3295eaecbb() : Vector.<DisplayObject>
      {
         return null;
      }
   }
}

