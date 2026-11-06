package com.ax3.fishao.model.info
{
   public class _69796f101fc3fc2b4b8665e9 extends _c4d45de32d45523b37ad0cdf
   {
      
      public static const HOOK_ID:int = 0x23E4C880 ^ 0x42C05E0C ^ -586398097 ^ -1138175774;
      
      public static const DOUGH_ID:int = 0x052651D0 ^ -31022345 ^ -1853047328 ^ 0x6A8C4EC4;
      
      public static const BLOCKED_FOR_TRADE:Vector.<int> = new <int>[HOOK_ID,DOUGH_ID];
      
      public function _69796f101fc3fc2b4b8665e9(param1:Object)
      {
         super(param1);
      }
      
      public static function _056928f133d4ea22440521ad(param1:_69796f101fc3fc2b4b8665e9) : Boolean
      {
         return BLOCKED_FOR_TRADE.indexOf(param1.id) == (0x234B5DBF ^ -846491966 ^ 0x450BD2B3 ^ 0x5434FE31);
      }
   }
}

