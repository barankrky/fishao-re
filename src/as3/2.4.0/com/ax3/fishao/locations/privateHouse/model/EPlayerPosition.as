package com.ax3.fishao.locations.privateHouse.model
{
   public class EPlayerPosition
   {
      
      public static var EPP_DEFAULT:String = "EPP_DEFAULT";
      
      public static var EPP_FIRST_FLOOR:String = "EPP_FIRST_FLOOR";
      
      public static var EPP_SECOND_FLOOR:String = "EPP_SECOND_FLOOR";
      
      public static var EPP_THIRD_FLOOR:String = "EPP_THIRD_FLOOR";
      
      public static var EPP_GARDEN:String = "EPP_GARDEN";
      
      public function EPlayerPosition()
      {
         super();
      }
      
      public static function getFloorByPosition(param1:String) : int
      {
         var _loc2_:int = 0;
         switch(param1)
         {
            case EPP_FIRST_FLOOR:
            case EPP_GARDEN:
               _loc2_ = 1;
               break;
            case EPP_SECOND_FLOOR:
               _loc2_ = 2;
               break;
            case EPP_THIRD_FLOOR:
               _loc2_ = 3;
         }
         return _loc2_;
      }
   }
}

