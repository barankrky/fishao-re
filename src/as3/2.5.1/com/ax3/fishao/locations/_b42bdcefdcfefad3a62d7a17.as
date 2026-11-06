package com.ax3.fishao.locations
{
   import com.ax3.utils.removeAllChildren;
   import com.ax3.utils.removeFromParent;
   import com.ax3.utils.timer._69eec7d2f73604da25ccda04;
   import flash.display.Bitmap;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.geom.Matrix;
   import flash.geom.Point;
   import flash.geom.Rectangle;
   
   public class _b42bdcefdcfefad3a62d7a17 implements _1c3337d0df0240fa0eb6e1b1, _c36d2d5bdf0600686d3429c2, _abbbb5592f09d3723539995b
   {
      
      private const _1559c34d6b34c0cd43a30147:Number = 256;
      
      private const _db336205d01e77453ee7bfca:Number = 256;
      
      private var _118da4eed38ff00f62728938:int = 256;
      
      private var _331204f2c982cc228baf2ea3:int = 256;
      
      private var _2d1d27069c1203b1dff1ec1b:Rectangle;
      
      private const _6bbcf618d9acbe33b064ee70:Point;
      
      private var _7054e3f7496ba2f03253b20b:Rectangle;
      
      private var _24de0e3035dfef8e39b9140c:Number;
      
      private var _cd46534c53a3c6aabbf838f6:Number;
      
      private var _79bfc8351aa36d3061e8a6b8:int;
      
      private var _b8fa2756f836993fb3ba07a4:int;
      
      private var _e750974a65187ce7e30668f6:DisplayObject;
      
      private var _24b76383878008bb55ab0cd4:Bitmap;
      
      private var _f9919e76d8b26cbe16036b63:DisplayObjectContainer;
      
      private var _28e1b3dc1b4a4a2c06fee180:Boolean = false;
      
      public var bitmaps:Vector.<Bitmap>;
      
      public var addToDayNight:Boolean = false;
      
      public var container:Sprite;
      
      public var name:String;
      
      public function _b42bdcefdcfefad3a62d7a17(param1:DisplayObject, param2:int = 256, param3:int = 256, param4:int = 2147483647, param5:int = 2147483647)
      {
         var _temp_3:* = this;
         var _temp_2:* = §§findproperty(Point);
         var _temp_1:* = 0x4193591E ^ -1008910560 ^ 0x4D270D3F ^ -815174911;
         _temp_3._6bbcf618d9acbe33b064ee70 = new Point(_temp_1,_temp_1);
         this.bitmaps = new Vector.<Bitmap>();
         super();
         this._e750974a65187ce7e30668f6 = param1;
         this._118da4eed38ff00f62728938 = param2;
         this._331204f2c982cc228baf2ea3 = param3;
         this._f9919e76d8b26cbe16036b63 = param1.parent;
         var _loc6_:BitmapData = new BitmapData(Math.min(param1.width,param4),Math.min(param1.height,param5),true,-811867108 ^ -983446404 ^ -834010502 ^ -995087846);
         _loc6_.draw(param1);
         this._24b76383878008bb55ab0cd4 = new Bitmap(_loc6_);
         var _temp_6:* = this;
         var _temp_5:* = §§findproperty(Rectangle);
         var _temp_4:* = -279107649 ^ -1565733340 ^ -508832902 ^ -1403372831;
         _temp_6._7054e3f7496ba2f03253b20b = new Rectangle(_temp_4,_temp_4,this._24b76383878008bb55ab0cd4.width,this._24b76383878008bb55ab0cd4.height);
         this._24de0e3035dfef8e39b9140c = Math.ceil(this._7054e3f7496ba2f03253b20b.width / param2);
         this._cd46534c53a3c6aabbf838f6 = Math.ceil(this._7054e3f7496ba2f03253b20b.height / param3);
         this._79bfc8351aa36d3061e8a6b8 = 0x63644517 ^ 0x6C216DA3 ^ 0x5B2DFE49 ^ 0x5468D6FD;
         this._b8fa2756f836993fb3ba07a4 = 0x460DE58C ^ -1588125597 ^ 0x6D8D7CC2 ^ -1965573843;
      }
      
      public function tick() : void
      {
         var _loc1_:BitmapData = null;
         var _loc2_:Matrix = null;
         var _loc3_:Bitmap = null;
         if(this._79bfc8351aa36d3061e8a6b8 >= this._24de0e3035dfef8e39b9140c)
         {
            this._79bfc8351aa36d3061e8a6b8 = 0x4DCD7A22 ^ 0x2ADEA80A ^ 0x7C91D96B ^ 0x1B820B43;
            ++this._b8fa2756f836993fb3ba07a4;
         }
         else if(this._b8fa2756f836993fb3ba07a4 > this._24de0e3035dfef8e39b9140c)
         {
            this._28e1b3dc1b4a4a2c06fee180 = true;
            this._ad2ee8d562a00ac69ae0bb2f();
         }
         else
         {
            _loc1_ = new BitmapData(this._118da4eed38ff00f62728938,this._331204f2c982cc228baf2ea3,true,-837868966 ^ 0x4C71CFC6 ^ 0x1915F5CB ^ -1687480233);
            _loc2_ = new Matrix();
            this._2d1d27069c1203b1dff1ec1b = new Rectangle(this._79bfc8351aa36d3061e8a6b8 * this._118da4eed38ff00f62728938,this._b8fa2756f836993fb3ba07a4 * this._331204f2c982cc228baf2ea3,this._118da4eed38ff00f62728938,this._331204f2c982cc228baf2ea3);
            _loc1_.copyPixels(this._24b76383878008bb55ab0cd4.bitmapData,this._2d1d27069c1203b1dff1ec1b,this._6bbcf618d9acbe33b064ee70);
            if(_10aec915df137be255fad9fc.isEmpty(_loc1_))
            {
               _loc1_.dispose();
            }
            else
            {
               _loc3_ = new Bitmap(_loc1_);
               _loc3_.x = this._79bfc8351aa36d3061e8a6b8 * this._118da4eed38ff00f62728938;
               _loc3_.y = this._b8fa2756f836993fb3ba07a4 * this._331204f2c982cc228baf2ea3;
               this.bitmaps.push(_loc3_);
            }
            ++this._79bfc8351aa36d3061e8a6b8;
         }
      }
      
      private function _ad2ee8d562a00ac69ae0bb2f() : void
      {
         this._24b76383878008bb55ab0cd4.bitmapData.dispose();
         this._24b76383878008bb55ab0cd4.bitmapData = null;
         this._24b76383878008bb55ab0cd4 = null;
      }
      
      public function isComplete() : Boolean
      {
         return this._28e1b3dc1b4a4a2c06fee180;
      }
      
      public function _d1275084d2e36b0d41132e3e() : void
      {
         var _loc1_:Bitmap = null;
         this.container = new Sprite();
         var _loc2_:int = this._f9919e76d8b26cbe16036b63.getChildIndex(this._e750974a65187ce7e30668f6);
         this.container.x = this._e750974a65187ce7e30668f6.x;
         this.container.y = this._e750974a65187ce7e30668f6.y;
         this._f9919e76d8b26cbe16036b63.removeChild(this._e750974a65187ce7e30668f6);
         this._f9919e76d8b26cbe16036b63.addChildAt(this.container,_loc2_);
         for each(_loc1_ in this.bitmaps)
         {
            this.container.addChild(_loc1_);
         }
         this._2d1d27069c1203b1dff1ec1b = null;
         this._e750974a65187ce7e30668f6 = null;
         this._f9919e76d8b26cbe16036b63 = null;
      }
      
      public function destroy() : void
      {
         var _loc1_:Bitmap = null;
         for each(_loc1_ in this.bitmaps)
         {
            _loc1_.bitmapData.dispose();
            _loc1_.bitmapData = null;
         }
         this.bitmaps = null;
         if(this.container != null)
         {
            removeFromParent(this.container);
            removeAllChildren(this.container);
            this.container = null;
         }
      }
      
      public function _4abd7c3aad51c496276fb656() : void
      {
         this.tick();
      }
      
      public function _7120ced6b8dc8511e430ec67() : Vector.<_69eec7d2f73604da25ccda04>
      {
         return null;
      }
      
      public function _8c7137adb6802e3295eaecbb() : Vector.<DisplayObject>
      {
         var _loc1_:Bitmap = null;
         var _loc2_:Vector.<DisplayObject> = new Vector.<DisplayObject>(0x1A63B32C ^ 0x568DEE2C ^ -932593105 ^ -2071486673);
         for each(_loc1_ in this.bitmaps)
         {
            _loc2_.push(_loc1_);
         }
         return _loc2_;
      }
   }
}

