package com.ax3.fishao.requirements
{
   public class RequirementClubPoints extends RequirementBase
   {
      
      private var _points:int;
      
      public function RequirementClubPoints(param1:int)
      {
         super();
         this._points = param1;
      }
      
      public function get points() : int
      {
         return this._points;
      }
   }
}

