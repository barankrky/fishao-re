package com.ax3.fishao.locations.objects.boat
{
   import com.ax3.display.wrappers.IAssetWrapper;
   import flash.display.DisplayObject;
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.geom.Point;
   import flash.utils.Dictionary;
   
   public class _2e0e272987dc17facb32230a extends Sprite implements IAssetWrapper
   {
      
      private static const _955cdad2f61b84ba8e57e3cf:int = -1579727381 ^ 0x277F4F47 ^ 0x775F34D0 ^ -235454868;
      
      private var _4372b1a1226334557d6c3f84:Dictionary = new Dictionary();
      
      private var _98654e19071a6004fd1badae:_d8a6f04331e45b3fc4efa7e8;
      
      public function _2e0e272987dc17facb32230a()
      {
         super();
      }
      
      public function _1a9b2f347ee5a5f67049691e(param1:MovieClip, param2:_d8a6f04331e45b3fc4efa7e8) : void
      {
         this._98654e19071a6004fd1badae = param2;
         this.process(param1);
      }
      
      public function process(param1:DisplayObject) : void
      {
         var _loc2_:_2efea606ad9242a2a6a00bb1 = null;
         var _loc3_:MovieClip = MovieClip(param1);
         var _loc4_:int = _loc3_.totalFrames / _955cdad2f61b84ba8e57e3cf;
         var _loc5_:int = 0x134011DD ^ -1618838719 ^ 0x039EAFAF ^ -1889745613;
         while(_loc5_ < _955cdad2f61b84ba8e57e3cf)
         {
            _loc2_ = this._2cbf845ad7f41d45e86f0a02(_loc3_,_loc5_ * _loc4_ + (-156085470 ^ 0x4F105595 ^ -1168504419 ^ 0x03F80F2B),_loc4_);
            _f4627c560a2c1219281787a7.leftSizeMap[this._98654e19071a6004fd1badae][_loc2_.directionIndex] = new Point(_loc2_.shiftX,_loc2_.shiftY);
            this._4372b1a1226334557d6c3f84[_loc2_.directionIndex] = _loc2_;
            _loc5_++;
         }
      }
      
      private function _2cbf845ad7f41d45e86f0a02(param1:MovieClip, param2:int, param3:int) : _2efea606ad9242a2a6a00bb1
      {
         return new _2efea606ad9242a2a6a00bb1(param1,param2,param3);
      }
      
      public function _8fee1fb58752a1a489ad2a32(param1:int) : _2efea606ad9242a2a6a00bb1
      {
         return this._4372b1a1226334557d6c3f84[param1];
      }
   }
}

