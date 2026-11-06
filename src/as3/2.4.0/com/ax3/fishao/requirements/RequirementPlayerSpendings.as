package com.ax3.fishao.requirements
{
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs.string.EStringType;
   
   public class RequirementPlayerSpendings extends RequirementBase
   {
      
      private var _spendings:Number;
      
      public function RequirementPlayerSpendings(param1:Number)
      {
         super();
         this._spendings = param1;
      }
      
      override public function get isComplete() : Boolean
      {
         return app.user.spendings >= this._spendings;
      }
      
      override public function get description() : String
      {
         return I18n.get(EStringType.EST_REQUIREMENT_PLAYER_SPENDINGS);
      }
   }
}

