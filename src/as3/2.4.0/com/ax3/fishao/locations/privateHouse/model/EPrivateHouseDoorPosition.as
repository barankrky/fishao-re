package com.ax3.fishao.locations.privateHouse.model
{
   public class EPrivateHouseDoorPosition
   {
      
      public static const EPHDP_CENTER:String = "EPHDP_CENTER";
      
      public static const EPHDP_LEFT:String = "EPHDP_LEFT";
      
      public function EPrivateHouseDoorPosition()
      {
         super();
      }
      
      public static function getDoorByPositions(param1:String, param2:String) : String
      {
         var _loc3_:String = null;
         switch(param1)
         {
            case EPlayerPosition.EPP_FIRST_FLOOR:
               switch(param2)
               {
                  case EPlayerPosition.EPP_SECOND_FLOOR:
                     _loc3_ = EPHDP_LEFT;
                     break;
                  case EPlayerPosition.EPP_GARDEN:
                     _loc3_ = EPHDP_CENTER;
               }
               break;
            case EPlayerPosition.EPP_SECOND_FLOOR:
               switch(param2)
               {
                  case EPlayerPosition.EPP_FIRST_FLOOR:
                     _loc3_ = EPHDP_LEFT;
                     break;
                  case EPlayerPosition.EPP_THIRD_FLOOR:
                     _loc3_ = EPHDP_CENTER;
               }
               break;
            case EPlayerPosition.EPP_THIRD_FLOOR:
               switch(param2)
               {
                  case EPlayerPosition.EPP_SECOND_FLOOR:
                     _loc3_ = EPHDP_CENTER;
               }
               break;
            case EPlayerPosition.EPP_GARDEN:
               switch(param2)
               {
                  case EPlayerPosition.EPP_FIRST_FLOOR:
                     _loc3_ = EPHDP_CENTER;
               }
         }
         return _loc3_;
      }
   }
}

