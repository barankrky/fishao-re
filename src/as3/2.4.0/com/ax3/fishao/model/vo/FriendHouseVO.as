package com.ax3.fishao.model.vo
{
   public class FriendHouseVO
   {
      
      public var friendName:String;
      
      public var homePoints:int;
      
      public var visitorsAmount:int;
      
      public function FriendHouseVO(param1:String, param2:int, param3:int)
      {
         super();
         this.friendName = param1;
         this.homePoints = param2;
         this.visitorsAmount = param3;
      }
      
      public static function sortItemsFunc(param1:FriendHouseVO, param2:FriendHouseVO) : int
      {
         if(param1.homePoints > param2.homePoints)
         {
            return -1;
         }
         if(param1.homePoints < param2.homePoints)
         {
            return 1;
         }
         return 0;
      }
   }
}

