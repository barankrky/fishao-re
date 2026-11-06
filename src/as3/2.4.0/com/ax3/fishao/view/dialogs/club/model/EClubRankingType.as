package com.ax3.fishao.view.dialogs.club.model
{
   import com.ax3.fishao.debug.Debug;
   
   public class EClubRankingType
   {
      
      private static var _all:Vector.<String>;
      
      public static const ECLRT_CLUB_POINTS:String = "club_points";
      
      public static const ECLRT_UNLOCKED_FISH:String = "unlocked_fish";
      
      public static const ECLRT_FISH_CAUGHT:String = "fish_caught";
      
      public static const ECLRT_BIGGEST_FISH:String = "biggest_fish";
      
      public static const ECLRT_MOST_LEVELS:String = "most_levels";
      
      public static const ECLRT_TOURNAMENTS_WON:String = "tournaments_won";
      
      public function EClubRankingType()
      {
         super();
      }
      
      public static function get all() : Vector.<String>
      {
         if(_all == null)
         {
            _all = new Vector.<String>(0);
            _all.push(ECLRT_CLUB_POINTS);
            _all.push(ECLRT_UNLOCKED_FISH);
            _all.push(ECLRT_FISH_CAUGHT);
            _all.push(ECLRT_BIGGEST_FISH);
            _all.push(ECLRT_MOST_LEVELS);
            _all.push(ECLRT_TOURNAMENTS_WON);
         }
         return _all;
      }
      
      public static function getIconNameFor(param1:String) : String
      {
         var _loc2_:String = "";
         switch(param1)
         {
            case ECLRT_CLUB_POINTS:
               _loc2_ = "points";
               break;
            case ECLRT_UNLOCKED_FISH:
            case ECLRT_FISH_CAUGHT:
            case ECLRT_BIGGEST_FISH:
               _loc2_ = "fish";
               break;
            case ECLRT_MOST_LEVELS:
               _loc2_ = "level";
               break;
            case ECLRT_TOURNAMENTS_WON:
               _loc2_ = "tournament";
               break;
            default:
               Debug.assert(false);
         }
         return _loc2_;
      }
   }
}

