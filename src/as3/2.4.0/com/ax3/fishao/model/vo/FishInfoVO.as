package com.ax3.fishao.model.vo
{
   import com.ax3.fishao.model.IValueObject;
   import com.ax3.fishao.requirements.ERequirementType;
   import com.ax3.fishao.requirements.FactoryRequirement;
   import com.ax3.fishao.requirements.RequirementBase;
   import com.ax3.fishao.requirements.RequirementClubPoints;
   import com.ax3.fishao.requirements.RequirementClubUnlockByFishcoins;
   import com.ax3.fishao.utils.I18n;
   import com.ax3.utils.empty;
   import flash.utils.Dictionary;
   
   public class FishInfoVO implements IValueObject
   {
      
      public var id:Number;
      
      public var rating:Number;
      
      public var minLength:Number;
      
      public var avgLength:Number;
      
      public var maxLength:Number;
      
      public var catchRequirements:Object;
      
      public var breedingCost:int;
      
      public var breedingDuration:int;
      
      public var breedingSuccessRate:Number;
      
      public var breedingSuccessRateCurrent:Number;
      
      public var hueShiftOfShiny:int;
      
      private var _displayName:String = "";
      
      private var _displayDescription:String = "";
      
      private var _catchRequirementsMap:Dictionary;
      
      public function FishInfoVO()
      {
         super();
         this._catchRequirementsMap = new Dictionary(true);
      }
      
      public static function sortByFishName(param1:Object, param2:Object) : int
      {
         var _loc3_:String = (param1 as FishInfoVO).displayName;
         var _loc4_:String = (param2 as FishInfoVO).displayName;
         if(_loc3_ > _loc4_)
         {
            return 1;
         }
         if(_loc3_ < _loc4_)
         {
            return -1;
         }
         return 0;
      }
      
      public static function sortByClubPoints(param1:FishInfoVO, param2:FishInfoVO) : int
      {
         var _loc3_:int = 0;
         var _loc4_:RequirementClubPoints = param1._catchRequirementsMap[ERequirementType.ERT_CLUB_POINTS];
         var _loc5_:RequirementClubPoints = param2._catchRequirementsMap[ERequirementType.ERT_CLUB_POINTS];
         if(_loc4_.points > _loc5_.points)
         {
            _loc3_ = 1;
         }
         else if(_loc4_.points < _loc5_.points)
         {
            _loc3_ = -1;
         }
         return _loc3_;
      }
      
      public static function sortByFishcoins(param1:FishInfoVO, param2:FishInfoVO) : int
      {
         var _loc3_:int = 0;
         var _loc4_:RequirementClubUnlockByFishcoins = param1._catchRequirementsMap[ERequirementType.ERT_CLUB_UNLOCK_BY_FISHCOINS];
         var _loc5_:RequirementClubUnlockByFishcoins = param2._catchRequirementsMap[ERequirementType.ERT_CLUB_UNLOCK_BY_FISHCOINS];
         if(_loc4_.price > _loc5_.price)
         {
            _loc3_ = 1;
         }
         else if(_loc4_.price < _loc5_.price)
         {
            _loc3_ = -1;
         }
         return _loc3_;
      }
      
      public function readResponse(param1:Object) : void
      {
         this.id = parseInt(param1.id);
         this.rating = parseInt(param1.rating);
         this.minLength = parseInt(param1.min_length);
         this.avgLength = parseInt(param1.avg_length);
         this.maxLength = parseInt(param1.max_length);
         this.breedingCost = parseInt(param1.breed_cost);
         this.breedingDuration = parseInt(param1.breed_duration);
         this.breedingSuccessRate = parseFloat(param1.breed_success_rate);
         this.catchRequirements = JSON.parse(param1.catch_req);
         this.hueShiftOfShiny = parseFloat(param1.hue_shift_of_shiny);
         this.initRequirementsMap();
      }
      
      private function initRequirementsMap() : void
      {
         var _loc1_:RequirementBase = null;
         var _loc2_:Array = FactoryRequirement.createRequirements(this.catchRequirements);
         for each(_loc1_ in _loc2_)
         {
            this._catchRequirementsMap[_loc1_.type] = _loc1_;
         }
      }
      
      public function getRequirement(param1:String) : RequirementBase
      {
         return this._catchRequirementsMap[param1];
      }
      
      public function hasRequirement(param1:String) : Boolean
      {
         return param1 in this._catchRequirementsMap;
      }
      
      public function get displayName() : String
      {
         if(empty(this._displayName))
         {
            this._displayName = I18n.get("fish_" + this.id);
         }
         return this._displayName;
      }
      
      public function get displayDescription() : String
      {
         if(empty(this._displayDescription))
         {
            if(I18n.exist("fish_desc_" + this.id))
            {
               this._displayDescription = I18n.get("fish_desc_" + this.id);
            }
            else
            {
               this._displayDescription = "";
            }
         }
         return this._displayDescription;
      }
      
      public function get increaseBreedingChancePrice() : int
      {
         if(this.breedingSuccessRate == 0)
         {
            return 0;
         }
         var _loc1_:Number = this.breedingCost / this.breedingSuccessRate;
         _loc1_ /= 40;
         _loc1_ *= 1.5;
         _loc1_ /= 20;
         return Math.ceil(_loc1_);
      }
   }
}

