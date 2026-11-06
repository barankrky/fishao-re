package com.ax3.fishao.requirements
{
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs.string.EStringType;
   import com.ax3.fishao.view.dialogs.string.EStringTypeStubs;
   
   public class RequirementPlayerLevel extends RequirementBase
   {
      
      private var _level:int;
      
      public function RequirementPlayerLevel(param1:int)
      {
         super();
         this._level = param1;
      }
      
      public function get level() : int
      {
         return this._level;
      }
      
      override public function get isComplete() : Boolean
      {
         return app.user.level >= this._level;
      }
      
      override public function get description() : String
      {
         var _loc1_:String = I18n.get(EStringType.EST_REQUIREMENT_REACH_LEVEL);
         return _loc1_.replace(EStringTypeStubs.ESTS_COUNT,this._level);
      }
   }
}

