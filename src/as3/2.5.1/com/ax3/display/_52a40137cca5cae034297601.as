package com.ax3.display
{
   import flash.display.DisplayObject;
   import flash.display.Sprite;
   
   public class _52a40137cca5cae034297601 extends Sprite
   {
      
      public var hgap:int;
      
      public var vgap:int;
      
      private var _8d7733c8d481dacf5c501b57:int;
      
      public function _52a40137cca5cae034297601(param1:int, param2:int = 0, param3:int = 0)
      {
         super();
         this.hgap = param2;
         this.vgap = param3;
         this._8d7733c8d481dacf5c501b57 = param1;
      }
      
      public function _2e9466f75d66a9fa2afad4d1(param1:Vector.<DisplayObject>) : void
      {
         var _loc2_:DisplayObject = null;
         for each(_loc2_ in param1)
         {
            addChild(_loc2_);
         }
         this._098afa8a02047dffe7cf140c();
      }
      
      private function _098afa8a02047dffe7cf140c() : void
      {
         var _loc1_:int = 0x7EC7E6F3 ^ 0x560C7DF7 ^ -782178124 ^ -106204240;
         _loc1_ = 0x03265992 ^ -727457017 ^ -128473004 ^ 0x2FD212C1;
         var _loc2_:DisplayObject = null;
         var _loc3_:int = numChildren;
         var _loc4_:int = -1083881164 ^ -759871429 ^ 0x336994F1 ^ 0x5EB995FE;
         var _loc5_:int = 0x54F8DF78 ^ -1778062959 ^ 0x1F1073CA ^ -571718365;
         _loc1_ = -1657097744 ^ 0x62617233 ^ 0x3FD9D027 ^ -1065217052;
         var _loc6_:int = 0x4E369CEA ^ 0x0654A210 ^ -1037473535 ^ -1974773765;
         while(_loc6_ < _loc3_)
         {
            _loc2_ = getChildAt(_loc6_);
            if(_loc4_ != (-175434288 ^ -901362942 ^ 0x3F4C126F ^ 0x814CBD) && _loc4_ + _loc2_.width > this._8d7733c8d481dacf5c501b57)
            {
               _loc4_ = 0x6F91645F ^ -927912764 ^ -312934859 ^ 0x4A78B6AE;
               _loc5_ += _loc1_ + this.vgap;
            }
            _loc2_.x = _loc4_;
            _loc2_.y = _loc5_;
            _loc4_ = _loc2_.x + _loc2_.width + this.hgap;
            _loc1_ = Math.max(_loc1_,_loc2_.height);
            _loc6_++;
         }
      }
   }
}

