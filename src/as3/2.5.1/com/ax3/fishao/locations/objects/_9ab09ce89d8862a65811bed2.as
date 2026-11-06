package com.ax3.fishao.locations.objects
{
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import com.ax3.fishao.locations.entries._08c120b706560fce9302bcab;
   import com.ax3.utils._5f5fc3a6dc1e8f79994a4a9b;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.geom.Rectangle;
   
   public class _9ab09ce89d8862a65811bed2
   {
      
      private var _asset:MovieClip;
      
      private var _588602a8216951326af6ae93:Boolean;
      
      private var _b49532de69d88595b603ef34:BitmapData;
      
      private var _c481b28f95de8c136276a41c:Rectangle;
      
      private var _3cf31bd9299e16dfb99e71e3:Number;
      
      private var _5f66fbc420d9031520a28ef1:Number;
      
      public function _9ab09ce89d8862a65811bed2()
      {
         super();
      }
      
      public function process(param1:DisplayObject) : void
      {
         this._asset = MovieClip(param1);
         var _loc2_:DisplayObject = this._asset.getChildByName(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("劉刘劇劗剬刕剎勛刊劵剧劙剬刯勻勬剈剥劌劸劍勣刞剕刻劑勌剙劢剹","勓勶剦勥刕勮勏勩勣务勠剺创刍劃勞"));
         this._c481b28f95de8c136276a41c = _loc2_.getBounds(_loc2_);
         this._b49532de69d88595b603ef34 = _5f5fc3a6dc1e8f79994a4a9b._e7dbc3137e062426b65fde1a(_loc2_);
         _loc2_.visible = false;
         this._asset.gotoAndStop(0x6617C151 ^ 0x540C96AF ^ -372111229 ^ -607559812);
         this._3cf31bd9299e16dfb99e71e3 = this._asset.x + this._c481b28f95de8c136276a41c.x;
         this._5f66fbc420d9031520a28ef1 = this._asset.y + this._c481b28f95de8c136276a41c.y;
      }
      
      public function hitTest(param1:Number, param2:Number, param3:_08c120b706560fce9302bcab) : Boolean
      {
         param1 -= this._3cf31bd9299e16dfb99e71e3;
         param2 -= this._5f66fbc420d9031520a28ef1;
         var _loc4_:Boolean = param3.raft != null || param3.isMovingToRaft;
         return _loc4_ == false && (this._b49532de69d88595b603ef34 != null && param1 > (-662393101 ^ -2098557919 ^ -1624693602 ^ -985201076) && param2 > (-731808561 ^ -2050787299 ^ 0x7B6C634E ^ 0x2ACE679C) && param1 < this._b49532de69d88595b603ef34.width && param2 < this._b49532de69d88595b603ef34.height && this._b49532de69d88595b603ef34.getPixel32(param1,param2) > (-499290110 ^ -2118569869 ^ -304971952 ^ -1901477666));
      }
      
      public function destroy() : void
      {
         this._asset = null;
         this._b49532de69d88595b603ef34.dispose();
         this._b49532de69d88595b603ef34 = null;
      }
   }
}

