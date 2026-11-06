package com.ax3.fishao.view.dialogs.club.model
{
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.view.dialogs.string.EStringType;
   
   public class ETournamentClubsType
   {
      
      public static const ETCT_CAUGHT_MOST_FISH:String = "ct_caught_most_fish";
      
      public static const ETCT_CAUGHT_MOST_SIZE_FISH:String = "ct_caught_most_size_fish";
      
      public static const ETCT_CAUGHT_MOST_STAR_FISH_2:String = "ct_caught_most_star_fish_2";
      
      public static const ETCT_CAUGHT_MOST_STAR_FISH_3:String = "ct_caught_most_star_fish_3";
      
      public static const ETCT_CAUGHT_MOST_STAR_FISH_4:String = "ct_caught_most_star_fish_4";
      
      public static const ETCT_CAUGHT_MOST_STAR_FISH_5:String = "ct_caught_most_star_fish_5";
      
      public static const ETCT_CAUGHT_LARGEST_FISH:String = "ct_caught_largest_fish";
      
      public static const ETCT_BREED_MOST_FISH:String = "ct_breed_most_fish";
      
      public static const ETCT_COMPLETE_MISSIONS:String = "ct_complete_missions";
      
      public static const ETCT_CAUGHT_MOST_CLUB_FISH:String = "ct_caught_most_club_fish";
      
      public static const ETCT_CAUGHT_LARGEST_CLUB_FISH:String = "ct_caught_largest_club_fish";
      
      public static const ETCT_CAUGHT_LARGEST_FRESHWATER_FISH:String = "ct_caught_largest_freshwater_fish";
      
      public static const ETCT_CAUGHT_LARGEST_SALTWATER_FISH:String = "ct_caught_largest_saltwater_fish";
      
      public static const ETCT_CAUGHT_MOST_FRESHWATER_FISH:String = "ct_caught_most_freshwater_fish";
      
      public static const ETCT_CAUGHT_MOST_SALTWATER_FISH:String = "ct_caught_most_saltwater_fish";
      
      public static const ETCT_CAUGHT_MOST_SHARKS:String = "ct_caught_most_sharks";
      
      public static const ETCT_CAUGHT_MOST_CATFISHS:String = "ct_caught_most_catfishs";
      
      public static const ETCT_CAUGHT_MOST_STURGEONS:String = "ct_caught_most_sturgeons";
      
      public function ETournamentClubsType()
      {
         super();
      }
      
      public static function getColumnStringType(param1:String) : String
      {
         var _loc2_:String = null;
         switch(param1)
         {
            case ETCT_CAUGHT_MOST_SHARKS:
            case ETCT_CAUGHT_MOST_CATFISHS:
            case ETCT_CAUGHT_MOST_STURGEONS:
            case ETCT_CAUGHT_MOST_STAR_FISH_2:
            case ETCT_CAUGHT_MOST_STAR_FISH_3:
            case ETCT_CAUGHT_MOST_STAR_FISH_4:
            case ETCT_CAUGHT_MOST_STAR_FISH_5:
            case ETCT_CAUGHT_MOST_SALTWATER_FISH:
            case ETCT_CAUGHT_MOST_FRESHWATER_FISH:
            case ETCT_CAUGHT_MOST_CLUB_FISH:
            case ETCT_CAUGHT_MOST_FISH:
               _loc2_ = EStringType.EST_DIALOG_RANKINGS_AMOUNT_FISH_COUNT;
               break;
            case ETCT_CAUGHT_LARGEST_SALTWATER_FISH:
            case ETCT_CAUGHT_LARGEST_FRESHWATER_FISH:
            case ETCT_CAUGHT_LARGEST_CLUB_FISH:
            case ETCT_CAUGHT_LARGEST_FISH:
            case ETCT_CAUGHT_MOST_SIZE_FISH:
               _loc2_ = EStringType.EST_DIALOG_RANKINGS_AMOUNT_FISH_SIZE;
               break;
            case ETCT_BREED_MOST_FISH:
               _loc2_ = EStringType.EST_DIALOG_RANKINGS_AMOUNT_BREED;
               break;
            case ETCT_COMPLETE_MISSIONS:
               _loc2_ = EStringType.EST_DIALOG_RANKINGS_AMOUNT_MISSIONS;
               break;
            default:
               Debug.assert(false);
         }
         return _loc2_;
      }
      
      public static function getCriteriaString(param1:String, param2:int) : String
      {
         var _loc3_:String = null;
         switch(param1)
         {
            case ETournamentClubsType.ETCT_CAUGHT_MOST_SIZE_FISH:
            case ETournamentClubsType.ETCT_CAUGHT_LARGEST_FISH:
            case ETournamentClubsType.ETCT_CAUGHT_LARGEST_CLUB_FISH:
            case ETournamentClubsType.ETCT_CAUGHT_LARGEST_FRESHWATER_FISH:
            case ETournamentClubsType.ETCT_CAUGHT_LARGEST_SALTWATER_FISH:
               _loc3_ = I18n.formatDistance(param2);
               break;
            default:
               _loc3_ = param2.toString();
         }
         return _loc3_;
      }
   }
}

