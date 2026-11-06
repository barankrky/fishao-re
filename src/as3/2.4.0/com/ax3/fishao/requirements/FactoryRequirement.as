package com.ax3.fishao.requirements
{
   public class FactoryRequirement
   {
      
      public function FactoryRequirement()
      {
         super();
      }
      
      public static function createRequirements(param1:Object) : Array
      {
         var _loc2_:String = null;
         var _loc3_:RequirementBase = null;
         var _loc4_:Array = [];
         for(_loc2_ in param1)
         {
            _loc3_ = null;
            switch(_loc2_)
            {
               case ERequirementType.ERT_PLAYER_LEVEL:
                  _loc3_ = new RequirementPlayerLevel(param1[_loc2_]);
                  break;
               case ERequirementType.ERT_PLAYER_SPENDINGS:
                  _loc3_ = new RequirementPlayerSpendings(param1[_loc2_]);
                  break;
               case ERequirementType.ERT_CATCH_FISH:
                  _loc3_ = new RequirementCatchFish(param1[_loc2_]);
                  break;
               case ERequirementType.ERT_FEATURE:
                  _loc3_ = new RequirementFeatureEnabled();
                  break;
               case ERequirementType.ERT_CLUB_POINTS:
                  _loc3_ = new RequirementClubPoints(param1[_loc2_]);
                  break;
               case ERequirementType.ERT_CLUB_UNLOCK_BY_FISHCOINS:
                  _loc3_ = new RequirementClubUnlockByFishcoins(param1[_loc2_]);
            }
            if(_loc3_ != null)
            {
               _loc3_.type = _loc2_;
               _loc4_.push(_loc3_);
            }
         }
         return _loc4_;
      }
   }
}

