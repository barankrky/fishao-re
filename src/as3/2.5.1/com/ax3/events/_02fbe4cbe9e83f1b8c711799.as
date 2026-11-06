package com.ax3.events
{
   import com.ax3.core._a73a80a6fae8f3b356edc5d2;
   import flash.events.IEventDispatcher;
   
   public class _02fbe4cbe9e83f1b8c711799
   {
      
      private static var _8d2799ad42b85e2373e4f2ac:_a73a80a6fae8f3b356edc5d2 = new _a73a80a6fae8f3b356edc5d2();
      
      public function _02fbe4cbe9e83f1b8c711799()
      {
         super();
      }
      
      public static function addEventListener(param1:Object, param2:IEventDispatcher, param3:String, param4:Function, param5:Boolean = false, param6:int = 0, param7:Boolean = false) : void
      {
         _8d2799ad42b85e2373e4f2ac.addEventListener(param1,param2,param3,param4,param5,param6,param7);
      }
      
      public static function removeEventListener(param1:Object, param2:IEventDispatcher, param3:String, param4:Function, param5:Boolean = false) : void
      {
         _8d2799ad42b85e2373e4f2ac.removeEventListener(param1,param2,param3,param4,param5);
      }
      
      public static function _2189688e09c9a1497c5f0bb9(param1:IEventDispatcher) : int
      {
         var _loc2_:Vector.<_8c6eae3f22f8cb28c277afbe> = _8d2799ad42b85e2373e4f2ac._07badf0e4e0943fed2d3dfaf(param1);
         return _loc2_ == null ? 0x03C3572B ^ -698000279 ^ 0x0DBE4D0F ^ -669497779 : int(_loc2_.length);
      }
      
      public static function _c4d0c4ffc765f0f48e37e7a9(param1:Object) : int
      {
         var _loc2_:Vector.<_8c6eae3f22f8cb28c277afbe> = _8d2799ad42b85e2373e4f2ac._8e405b7515eccb1a0aef24d1(param1);
         return _loc2_ == null ? -267771608 ^ 0x51795A42 ^ -1630137186 ^ 0x3FA56FF4 : int(_loc2_.length);
      }
      
      public static function _87b72cd49d8fc861c4443e4d(param1:Object) : void
      {
         _8d2799ad42b85e2373e4f2ac._87b72cd49d8fc861c4443e4d(param1);
      }
      
      public static function _d13b40aa9668a90afef05a9d() : String
      {
         return String(_8d2799ad42b85e2373e4f2ac.count);
      }
      
      public static function _b7fd8cf54bf37a82220f6264() : String
      {
         return _8d2799ad42b85e2373e4f2ac._b7fd8cf54bf37a82220f6264();
      }
   }
}

