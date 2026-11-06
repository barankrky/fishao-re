package com.ax3.fishao.view.dialogs.club_goal_history.item
{
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.view.dialogs.base.controllers.implementations.Controller;
   
   public class ControllerGoalHistoryItem extends Controller
   {
      
      private var _view:ViewGoalHistoryItem = new ViewGoalHistoryItem(this);
      
      private var _data:Object;
      
      public function ControllerGoalHistoryItem(param1:Object)
      {
         super(this._view);
         this._data = param1;
         this.init();
      }
      
      private function init() : void
      {
         this._view.setGoalType(Debug.assertProperty(this._data,"type"),Debug.assertProperty(this._data,"value_total"));
         this._view.reward = Debug.assertProperty(this._data,"reward_points");
      }
   }
}

