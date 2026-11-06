package com.ax3.fishao.view.dialogs.fishingLine.model
{
   import com.ax3.fishao.debug.Debug;
   
   public class EFishingLineColor
   {
      
      public static const EFLC_WHITE:String = "white";
      
      public static const EFLC_GOLD:String = "gold";
      
      public static const EFLC_SILVER:String = "silver";
      
      public static const EFLC_BLUE_LIGHT:String = "blue_light";
      
      public static const EFLC_GREEN_LIGHT:String = "green_light";
      
      public function EFishingLineColor()
      {
         super();
      }
      
      public static function getColor(param1:String) : uint
      {
         var _loc2_:uint = 0;
         switch(param1)
         {
            case EFLC_WHITE:
               _loc2_ = 16772846;
               break;
            case EFLC_GOLD:
               _loc2_ = 16771072;
               break;
            case EFLC_SILVER:
               _loc2_ = 14935011;
               break;
            case EFLC_BLUE_LIGHT:
               _loc2_ = 61183;
               break;
            case EFLC_GREEN_LIGHT:
               _loc2_ = 12975104;
               break;
            default:
               Debug.assert(false);
         }
         return _loc2_;
      }
   }
}

