package com.ax3.utils
{
   import com.ax3.utils.math.randomRange;
   
   public class _8dbac3cb2bae16fc4e0e0f27
   {
      
      public function _8dbac3cb2bae16fc4e0e0f27()
      {
         super();
      }
      
      public static function _8ded50bff02ca5190c64a44c(param1:Object) : Array
      {
         var _loc2_:Object = null;
         var _loc3_:Array = [];
         for each(_loc2_ in param1)
         {
            _loc3_.push(_loc2_);
         }
         return _loc3_;
      }
      
      public static function _1607865cf784b327c5943d2a(param1:Array, param2:Object) : Array
      {
         if(param1 == null)
         {
            param1 = [];
         }
         param1.push(param2);
         return param1;
      }
      
      public static function _44739042c814649b8594b259(param1:Array) : *
      {
         return param1.length > (0x57A21099 ^ 0x30319F70 ^ -458667177 ^ -2093300546) ? param1[randomRange(-192344894 ^ 0x68C52D27 ^ 0x1A0534A7 ^ -2042030782,param1.length - 1)] : null;
      }
   }
}

