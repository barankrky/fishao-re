package com.ax3.fishao.view.dialogs.club.pages.goals.item
{
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.view.dialogs.base.controllers.implementations.Controller;
   
   public class ControllerClubItemGoal extends Controller
   {
      
      private var _viewItemGoal:ViewClubItemGoal = new ViewClubItemGoal(this);
      
      private var _data:Object;
      
      public function ControllerClubItemGoal(param1:Object)
      {
         super(this._viewItemGoal);
         this._data = param1;
         this.init();
      }
      
      private function init() : void
      {
         var _loc1_:int = Debug.assertProperty(this._data,"value");
         var _loc2_:int = Debug.assertProperty(this._data,"value_total");
         var _loc3_:int = Debug.assertProperty(this._data,"reward_points");
         var _loc4_:String = Debug.assertProperty(this._data,"type");
         this._viewItemGoal.setProgress(_loc1_,_loc2_);
         this._viewItemGoal.reward = _loc3_;
         this._viewItemGoal.setType(_loc4_,_loc2_);
      }
   }
}

