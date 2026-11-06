package com.ax3.fishao.requirements
{
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.view.dialogs.string.EStringType;
   import com.ax3.fishao.view.dialogs.string.EStringTypeStubs;
   
   public class RequirementCatchFish extends RequirementBase
   {
      
      private var _fishID:int;
      
      public function RequirementCatchFish(param1:int)
      {
         super();
         this._fishID = param1;
      }
      
      override public function get isComplete() : Boolean
      {
         return GameSwf.instance.managerFishes.fishesUserMap[String(this._fishID)] != null;
      }
      
      override public function get description() : String
      {
         var _loc1_:String = I18n.get(EStringType.EST_REQUIREMENT_CATCH_FISH);
         return _loc1_.replace(EStringTypeStubs.ESTS_FISH,I18n.get("fish_" + this._fishID));
      }
   }
}

