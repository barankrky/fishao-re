package com.ax3.fishao.locations.objects
{
   import __3745b40d744003bef0e02f22._95da7f1147c669197db81295;
   import com.ax3.display.wrappers.IAssetWrapper;
   import com.ax3.fishao.locations.objects.boat._2e0e272987dc17facb32230a;
   import com.ax3.fishao.locations.objects.boat._2efea606ad9242a2a6a00bb1;
   import com.ax3.fishao.locations.objects.boat._d8a6f04331e45b3fc4efa7e8;
   import com.ax3.fishao.locations.objects.boat._f4627c560a2c1219281787a7;
   import com.ax3.utils._5f5fc3a6dc1e8f79994a4a9b;
   import flash.display.BitmapData;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.geom.Point;
   import flash.utils.Dictionary;
   
   public class _9764d11560b9366107f04187 extends Sprite implements IAssetWrapper
   {
      
      private var _529ac7170dca332de3ffbb89:Dictionary = new Dictionary();
      
      private var _98f2a5bacd91f87df2353798:BitmapData;
      
      private var _8d4d482ab8174b14a768189f:Point;
      
      public function _9764d11560b9366107f04187()
      {
         super();
      }
      
      public function process(param1:DisplayObject) : void
      {
         this._9e5ba74079ecf7775218784f(MovieClip(param1));
      }
      
      private function _9e5ba74079ecf7775218784f(param1:MovieClip) : void
      {
         var _loc2_:MovieClip = null;
         var _loc3_:_d8a6f04331e45b3fc4efa7e8 = null;
         var _loc4_:_2e0e272987dc17facb32230a = null;
         var _loc5_:int = param1.totalFrames;
         var _loc6_:int = -1674403753 ^ -665919329 ^ -1494663804 ^ -493519539;
         while(_loc6_ <= _loc5_)
         {
            param1.gotoAndStop(_loc6_);
            _loc2_ = MovieClip(param1.getChildAt(0x74842EB0 ^ -1786070906 ^ 0x1102D8B6 ^ -267628928));
            _loc3_ = _d8a6f04331e45b3fc4efa7e8._c8d6d84dc47da0978cc47cfb(_loc2_.name);
            if(_f4627c560a2c1219281787a7.leftSizeMap[_loc3_] == null)
            {
               _f4627c560a2c1219281787a7.leftSizeMap[_loc3_] = new Dictionary();
            }
            _loc4_ = new _2e0e272987dc17facb32230a();
            if(_loc6_ == (0x32042086 ^ 0x59DAABF1 ^ 0x26062A55 ^ 0x4DD8A123))
            {
               this._4c25c97fd5e61207a394597a(_loc2_);
            }
            _loc4_._1a9b2f347ee5a5f67049691e(_loc2_,_loc3_);
            this._529ac7170dca332de3ffbb89[_loc3_] = _loc4_;
            _loc6_++;
         }
      }
      
      private function _4c25c97fd5e61207a394597a(param1:MovieClip) : void
      {
         param1.gotoAndStop(0x7FF8679B ^ -2007779902 ^ 0x1A43D122 ^ -303561862);
         var _loc2_:DisplayObject = param1.getChildByName(_95da7f1147c669197db81295._8f4866de82b7339154180ecb("刴動刞剱劈剎勶勪務加勏劧劲剡","劷勦剬刲劅勑剴勴加刼劎剂努別勀劣"));
         this._98f2a5bacd91f87df2353798 = _5f5fc3a6dc1e8f79994a4a9b.clone(_loc2_);
         this._8d4d482ab8174b14a768189f = new Point(_loc2_.x,_loc2_.y);
      }
      
      public function _80bc6128e22b2af3cd18ec0b(param1:_d8a6f04331e45b3fc4efa7e8, param2:int) : _2efea606ad9242a2a6a00bb1
      {
         var _loc3_:_2e0e272987dc17facb32230a = this._529ac7170dca332de3ffbb89[param1];
         return _loc3_._8fee1fb58752a1a489ad2a32(param2);
      }
      
      public function _698bb584b5b0ca8d2e60ce08() : BitmapData
      {
         return this._98f2a5bacd91f87df2353798;
      }
      
      public function _4bb3c43b903ae97ea7094fa8() : Point
      {
         return this._8d4d482ab8174b14a768189f;
      }
      
      public function destroy() : void
      {
         this._529ac7170dca332de3ffbb89 = null;
         this._98f2a5bacd91f87df2353798.dispose();
         this._98f2a5bacd91f87df2353798 = null;
      }
   }
}

