package com.ax3.utils
{
   import flash.utils.Dictionary;
   
   public class DictionaryUtil
   {
      
      public function DictionaryUtil()
      {
         super();
      }
      
      public static function removeAll(param1:Dictionary) : void
      {
         var _loc2_:* = undefined;
         for(_loc2_ in param1)
         {
            param1[_loc2_] = null;
            delete param1[_loc2_];
         }
      }
   }
}

