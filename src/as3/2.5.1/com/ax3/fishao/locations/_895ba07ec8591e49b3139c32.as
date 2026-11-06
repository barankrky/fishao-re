package com.ax3.fishao.locations
{
   import com.ax3.utils._5f5fc3a6dc1e8f79994a4a9b;
   import flash.display.BitmapData;
   import flash.display.DisplayObjectContainer;
   import flash.display.MovieClip;
   
   public class _895ba07ec8591e49b3139c32 implements _1c3337d0df0240fa0eb6e1b1, _c36d2d5bdf0600686d3429c2
   {
      
      public var bitmapSprite:_de2a275c74ad73d373d2a7a8;
      
      private var _49cc2959d4552b9cfa2fa1f3:int;
      
      private var _62c5e4450a6d5223f3edab9d:MovieClip;
      
      private var _ac648dacd5655aa6d5ba68ca:Boolean;
      
      public function _895ba07ec8591e49b3139c32(param1:MovieClip)
      {
         super();
         this._62c5e4450a6d5223f3edab9d = param1;
         this._49cc2959d4552b9cfa2fa1f3 = -188381115 ^ -883244000 ^ 0x27BA62F3 ^ 0x18252E96;
         this.bitmapSprite = new _de2a275c74ad73d373d2a7a8();
         this.bitmapSprite.framePerSec = -309997475 ^ -1525265541 ^ -1390043622 ^ -441055946;
      }
      
      public function tick() : void
      {
         var _loc1_:BitmapData = null;
         if(this._49cc2959d4552b9cfa2fa1f3 < this._62c5e4450a6d5223f3edab9d.totalFrames)
         {
            this._62c5e4450a6d5223f3edab9d.gotoAndStop(this._49cc2959d4552b9cfa2fa1f3 + (0x4E08AC69 ^ 0x73AB5AB6 ^ -1716570311 ^ -1542667801));
            _loc1_ = _5f5fc3a6dc1e8f79994a4a9b.clone(this._62c5e4450a6d5223f3edab9d);
            this.bitmapSprite._b4acf079c9d49145fe13e365(_loc1_);
            ++this._49cc2959d4552b9cfa2fa1f3;
         }
         else
         {
            this._ac648dacd5655aa6d5ba68ca = true;
         }
      }
      
      public function isComplete() : Boolean
      {
         return this._ac648dacd5655aa6d5ba68ca;
      }
      
      public function _6566ae22b09217e310464a2a() : void
      {
         this.bitmapSprite.x = this._62c5e4450a6d5223f3edab9d.x;
         this.bitmapSprite.y = this._62c5e4450a6d5223f3edab9d.y;
         var _loc1_:DisplayObjectContainer = this._62c5e4450a6d5223f3edab9d.parent;
         var _loc2_:int = _loc1_.getChildIndex(this._62c5e4450a6d5223f3edab9d);
         _loc1_.removeChild(this._62c5e4450a6d5223f3edab9d);
         _loc1_.addChildAt(this.bitmapSprite,_loc2_);
         this._62c5e4450a6d5223f3edab9d = null;
      }
      
      public function destroy() : void
      {
         this._62c5e4450a6d5223f3edab9d = null;
         this.bitmapSprite.destroy();
         this.bitmapSprite = null;
      }
   }
}

