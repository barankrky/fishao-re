package com.ax3.fishao.locations.privateHouse.interior.model
{
   public class EInteriorItemRotation
   {
      
      public static const EIIR_FRONT:String = "front";
      
      public static const EIIR_BACK:String = "back";
      
      public static const EIIR_LEFT:String = "left";
      
      public static const EIIR_RIGHT:String = "right";
      
      public function EInteriorItemRotation()
      {
         super();
      }
      
      public static function isVertical(param1:String) : Boolean
      {
         return param1 == EIIR_FRONT || param1 == EIIR_BACK;
      }
      
      public static function next(param1:String) : String
      {
         var _loc2_:String = null;
         switch(param1)
         {
            case EIIR_BACK:
               _loc2_ = EIIR_RIGHT;
               break;
            case EIIR_FRONT:
               _loc2_ = EIIR_LEFT;
               break;
            case EIIR_RIGHT:
               _loc2_ = EIIR_FRONT;
               break;
            case EIIR_LEFT:
               _loc2_ = EIIR_BACK;
               break;
            default:
               _loc2_ = EIIR_FRONT;
         }
         return _loc2_;
      }
      
      public static function previous(param1:String) : String
      {
         var _loc2_:String = null;
         switch(param1)
         {
            case EIIR_BACK:
               _loc2_ = EIIR_LEFT;
               break;
            case EIIR_FRONT:
               _loc2_ = EIIR_RIGHT;
               break;
            case EIIR_RIGHT:
               _loc2_ = EIIR_BACK;
               break;
            case EIIR_LEFT:
               _loc2_ = EIIR_FRONT;
               break;
            default:
               _loc2_ = EIIR_FRONT;
         }
         return _loc2_;
      }
   }
}

