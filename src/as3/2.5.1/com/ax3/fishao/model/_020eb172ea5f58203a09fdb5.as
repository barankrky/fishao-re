package com.ax3.fishao.model
{
   import com.ax3.utils.TimeConverter;
   import com.ax3.utils.math.limit;
   
   public class _020eb172ea5f58203a09fdb5
   {
      
      private var _36709e42124d6d94a6e58832:Number;
      
      private var _2ff747fcb239a8d16ace0b26:int;
      
      public function _020eb172ea5f58203a09fdb5(param1:Number, param2:Number, param3:int = -1)
      {
         super();
         this._2ff747fcb239a8d16ace0b26 = param3;
         this._36709e42124d6d94a6e58832 = param2 + param1;
      }
      
      public function _277818a1702e4c92e556f731(param1:int) : Number
      {
         return limit(this._36709e42124d6d94a6e58832 - param1,0x04783696 ^ -2057211914 ^ -189187845 ^ 0x75A0619B,Number.MAX_VALUE);
      }
      
      public function _0995b3aa2fe33ceaf8dd4322(param1:int) : int
      {
         return TimeConverter.toSeconds(this._277818a1702e4c92e556f731(param1));
      }
      
      public function _3b77beccd1788668b60a84c9() : int
      {
         return this._2ff747fcb239a8d16ace0b26;
      }
   }
}

