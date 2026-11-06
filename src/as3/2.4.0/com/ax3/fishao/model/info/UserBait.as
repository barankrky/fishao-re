package com.ax3.fishao.model.info
{
   public class UserBait extends UserResource
   {
      
      public static const HOOK_ID:int = 1;
      
      public static const DOUGH_ID:int = 3;
      
      public static const BLOCKED_FOR_TRADE:Vector.<int> = new <int>[HOOK_ID,DOUGH_ID];
      
      public function UserBait(param1:Object)
      {
         super(param1);
      }
      
      public static function isAvailableForTrade(param1:UserBait) : Boolean
      {
         return BLOCKED_FOR_TRADE.indexOf(param1.id) == -1;
      }
   }
}

