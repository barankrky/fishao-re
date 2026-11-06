package __3745b40d744003bef0e02f22
{
   import flash.utils.ByteArray;
   import flash.utils.Endian;
   
   public final class _95da7f1147c669197db81295
   {
      
      private static var cache:Object = {};
      
      private static var numbers:Object = {};
      
      public function _95da7f1147c669197db81295()
      {
         super();
      }
      
      public static function _6371735dc9287bd2d9618c1e(param1:String, param2:String) : Number
      {
         var _loc3_:String = param2 + param1;
         if(numbers.hasOwnProperty(_loc3_))
         {
            return numbers[_loc3_];
         }
         var _loc4_:String = _8f4866de82b7339154180ecb(param1,param2);
         var _loc5_:ByteArray = new ByteArray();
         _loc5_.endian = Endian.LITTLE_ENDIAN;
         var _loc6_:int = 0;
         while(_loc6_ < _loc4_.length)
         {
            _loc5_.writeByte(_loc4_.charCodeAt(_loc6_));
            _loc6_++;
         }
         _loc5_.position = 0;
         var _loc7_:Number = _loc5_.readDouble();
         numbers[_loc3_] = _loc7_;
         return _loc7_;
      }
      
      public static function _8f4866de82b7339154180ecb(param1:String, param2:String) : String
      {
         var _loc12_:uint = 0;
         var _loc13_:uint = 0;
         var _loc14_:uint = 0;
         var _loc15_:int = 0;
         var _loc16_:int = 0;
         var _loc17_:int = 0;
         var _loc18_:int = 0;
         var _loc3_:String = param2 + param1;
         if(cache[_loc3_] !== undefined)
         {
            return cache[_loc3_];
         }
         var _loc4_:Array = [word(param2,0),word(param2,4),word(param2,8),word(param2,12)];
         var _loc5_:uint = word(param1,0);
         var _loc6_:uint = word(param1,4);
         var _loc7_:Array = [];
         var _loc8_:Array = [];
         var _loc9_:* = 8;
         var _loc10_:* = 0;
         while(_loc9_ < param1.length)
         {
            _loc12_ = _loc5_;
            _loc13_ = _loc6_;
            _loc14_ = 0;
            _loc15_ = 0;
            while(_loc15_ < 32)
            {
               _loc12_ += uint(uint((_loc13_ << 4 ^ _loc13_ >>> 5) + _loc13_) ^ uint(_loc14_ + uint(_loc4_[_loc14_ & 3])));
               _loc14_ += 2654435769;
               _loc13_ += uint(uint((_loc12_ << 4 ^ _loc12_ >>> 5) + _loc12_) ^ uint(_loc14_ + uint(_loc4_[_loc14_ >>> 11 & 3])));
               _loc15_++;
            }
            _loc8_[0] = _loc12_ & 0xFF;
            _loc8_[1] = _loc12_ >>> 8 & 0xFF;
            _loc8_[2] = _loc12_ >>> 16 & 0xFF;
            _loc8_[3] = _loc12_ >>> 24;
            _loc8_[4] = _loc13_ & 0xFF;
            _loc8_[5] = _loc13_ >>> 8 & 0xFF;
            _loc8_[6] = _loc13_ >>> 16 & 0xFF;
            _loc8_[7] = _loc13_ >>> 24;
            _loc16_ = 0;
            while(_loc16_ < 8 && _loc9_ < param1.length)
            {
               _loc17_ = param1.charCodeAt(_loc9_++) - 20992 ^ int(_loc8_[_loc16_]);
               _loc18_ = param1.charCodeAt(_loc9_++) - 20992 ^ int(_loc8_[_loc16_ + 1]);
               _loc7_[_loc10_++] = String.fromCharCode(_loc17_ | _loc18_ << 8);
               _loc16_ += 2;
            }
            _loc5_++;
            if(_loc5_ == 0)
            {
               _loc6_++;
            }
         }
         var _loc11_:String = _loc7_.join("");
         cache[_loc3_] = _loc11_;
         return _loc11_;
      }
      
      private static function word(param1:String, param2:int) : uint
      {
         return uint(param1.charCodeAt(param2) - 20992 | param1.charCodeAt(param2 + 1) - 20992 << 8 | param1.charCodeAt(param2 + 2) - 20992 << 16 | param1.charCodeAt(param2 + 3) - 20992 << 24);
      }
   }
}

