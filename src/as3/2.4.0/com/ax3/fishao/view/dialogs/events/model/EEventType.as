package com.ax3.fishao.view.dialogs.events.model
{
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.view.dialogs.string.EStringType;
   
   public class EEventType
   {
      
      public static const EET_CATCH_MOST_FISH:String = "EET_CATCH_MOST_FISH";
      
      public static const EET_CATCH_MOST_FISH_SHINIES:String = "EET_CATCH_MOST_FISH_SHINIES";
      
      public static const EET_CATCH_MOST_FISH_WITH_STAR:String = "EET_CATCH_MOST_FISH_WITH_STAR";
      
      public static const EET_CATCH_MOST_FISH_WITH_TYPE:String = "EET_CATCH_MOST_FISH_WITH_TYPE";
      
      public static const EET_CATCH_BIGGEST_FISH:String = "EET_CATCH_BIGGEST_FISH";
      
      public static const EET_CATCH_BIGGEST_FISH_WITH_TYPE:String = "EET_CATCH_BIGGEST_FISH_WITH_TYPE";
      
      public static const EET_WIN_MOST_TOURNAMENTS:String = "EET_WIN_MOST_TOURNAMENTS";
      
      public static const EET_COLLECT_MOST_SHELLS:String = "EET_COLLECT_MOST_SHELLS";
      
      public static const EET_USE_MOST_GADGETS:String = "EET_USE_MOST_GADGETS";
      
      public static const EET_SPEND_MOST_FISHCOINS:String = "EET_SPEND_MOST_FISHCOINS";
      
      public static const EET_SPEND_MOST_FISHBUCKS:String = "EET_SPEND_MOST_FISHBUCKS";
      
      public static const EET_COLLECT_MOST_FRUITS:String = "EET_COLLECT_MOST_FRUITS";
      
      public static const EET_GAIN_MOST_EXP:String = "EET_GAIN_MOST_EXP";
      
      public function EEventType()
      {
         super();
      }
      
      public static function getStringTypeName(param1:String) : String
      {
         var _loc2_:String = null;
         switch(param1)
         {
            case EEventType.EET_CATCH_MOST_FISH:
               _loc2_ = EStringType.EST_EVENT_CATCH_MOST_FISH_NAME;
               break;
            case EEventType.EET_CATCH_MOST_FISH_SHINIES:
               _loc2_ = EStringType.EST_EVENT_CATCH_MOST_FISH_SHINIES_NAME;
               break;
            case EEventType.EET_CATCH_MOST_FISH_WITH_STAR:
               _loc2_ = EStringType.EST_EVENT_CATCH_MOST_FISH_WITH_STAR_NAME;
               break;
            case EEventType.EET_CATCH_MOST_FISH_WITH_TYPE:
               _loc2_ = EStringType.EST_EVENT_CATCH_MOST_FISH_WITH_TYPE_NAME;
               break;
            case EEventType.EET_CATCH_BIGGEST_FISH:
               _loc2_ = EStringType.EST_EVENT_CATCH_BIGGEST_FISH_NAME;
               break;
            case EEventType.EET_CATCH_BIGGEST_FISH_WITH_TYPE:
               _loc2_ = EStringType.EST_EVENT_CATCH_BIGGEST_FISH_WITH_TYPE_NAME;
               break;
            case EEventType.EET_WIN_MOST_TOURNAMENTS:
               _loc2_ = EStringType.EST_EVENT_WIN_MOST_TOURNAMENTS_NAME;
               break;
            case EEventType.EET_COLLECT_MOST_SHELLS:
               _loc2_ = EStringType.EST_EVENT_COLLECT_MOST_SHELLS_NAME;
               break;
            case EEventType.EET_USE_MOST_GADGETS:
               _loc2_ = EStringType.EST_EVENT_USE_MOST_GADGETS_NAME;
               break;
            case EEventType.EET_SPEND_MOST_FISHCOINS:
               _loc2_ = EStringType.EST_EVENT_SPEND_MOST_FISHCOINS_NAME;
               break;
            case EEventType.EET_SPEND_MOST_FISHBUCKS:
               _loc2_ = EStringType.EST_EVENT_SPEND_MOST_FISHBUCKS_NAME;
               break;
            case EEventType.EET_GAIN_MOST_EXP:
               _loc2_ = EStringType.EST_EVENT_GAIN_MOST_EXP_NAME;
               break;
            case EEventType.EET_COLLECT_MOST_FRUITS:
               _loc2_ = EStringType.EST_EVENT_COLLECT_MOST_FRUITS_NAME;
               break;
            default:
               Debug.assert(false);
         }
         return _loc2_;
      }
      
      public static function getStringTypeDescription(param1:String) : String
      {
         var _loc2_:String = null;
         switch(param1)
         {
            case EEventType.EET_CATCH_MOST_FISH:
               _loc2_ = EStringType.EST_EVENT_CATCH_MOST_FISH_DESCRIPTION;
               break;
            case EEventType.EET_CATCH_MOST_FISH_SHINIES:
               _loc2_ = EStringType.EST_EVENT_CATCH_MOST_FISH_SHINIES_DESCRIPTION;
               break;
            case EEventType.EET_CATCH_MOST_FISH_WITH_STAR:
               _loc2_ = EStringType.EST_EVENT_CATCH_MOST_FISH_WITH_STAR_DESCRIPTION;
               break;
            case EEventType.EET_CATCH_MOST_FISH_WITH_TYPE:
               _loc2_ = EStringType.EST_EVENT_CATCH_MOST_FISH_WITH_TYPE_DESCRIPTION;
               break;
            case EEventType.EET_CATCH_BIGGEST_FISH:
               _loc2_ = EStringType.EST_EVENT_CATCH_BIGGEST_FISH_DESCRIPTION;
               break;
            case EEventType.EET_CATCH_BIGGEST_FISH_WITH_TYPE:
               _loc2_ = EStringType.EST_EVENT_CATCH_BIGGEST_FISH_WITH_TYPE_DESCRIPTION;
               break;
            case EEventType.EET_WIN_MOST_TOURNAMENTS:
               _loc2_ = EStringType.EST_EVENT_WIN_MOST_TOURNAMENTS_DESCRIPTION;
               break;
            case EEventType.EET_COLLECT_MOST_SHELLS:
               _loc2_ = EStringType.EST_EVENT_COLLECT_MOST_SHELLS_DESCRIPTION;
               break;
            case EEventType.EET_USE_MOST_GADGETS:
               _loc2_ = EStringType.EST_EVENT_USE_MOST_GADGETS_DESCRIPTION;
               break;
            case EEventType.EET_SPEND_MOST_FISHCOINS:
               _loc2_ = EStringType.EST_EVENT_SPEND_MOST_FISHCOINS_DESCRIPTION;
               break;
            case EEventType.EET_SPEND_MOST_FISHBUCKS:
               _loc2_ = EStringType.EST_EVENT_SPEND_MOST_FISHBUCKS_DESCRIPTION;
               break;
            case EEventType.EET_GAIN_MOST_EXP:
               _loc2_ = EStringType.EST_EVENT_GAIN_MOST_EXP_DESCRIPTION;
               break;
            case EEventType.EET_COLLECT_MOST_FRUITS:
               _loc2_ = EStringType.EST_EVENT_COLLECT_MOST_FRUITS_DESCRIPTION;
               break;
            default:
               Debug.assert(false);
         }
         return _loc2_;
      }
   }
}

