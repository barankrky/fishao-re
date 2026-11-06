package com.ax3.fishao.requirements
{
   public class RequirementClubUnlockByFishcoins extends RequirementBase
   {
      
      private var _price:int;
      
      public function RequirementClubUnlockByFishcoins(param1:int)
      {
         super();
         this._price = param1;
      }
      
      public function get price() : int
      {
         return this._price;
      }
   }
}

