package com.ax3.fishao.requirements
{
   public class RequirementFeatureEnabled extends RequirementBase
   {
      
      public function RequirementFeatureEnabled()
      {
         super();
      }
      
      override public function get isComplete() : Boolean
      {
         return true;
      }
   }
}

