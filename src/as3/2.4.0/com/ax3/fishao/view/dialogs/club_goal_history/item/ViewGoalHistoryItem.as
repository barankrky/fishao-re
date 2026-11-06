package com.ax3.fishao.view.dialogs.club_goal_history.item
{
   import com.ax3.fishao.display.popups.TextFieldAutofitWrapper;
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces.IController;
   import com.ax3.fishao.view.dialogs.base.views.implementations.ViewBase;
   import com.ax3.fishao.view.dialogs.string.EStringTypeStubs;
   
   public class ViewGoalHistoryItem extends ViewBase
   {
      
      private var _source:gViewClubsItemGoalHistory = new gViewClubsItemGoalHistory();
      
      private var _labelGoalType:TextFieldAutofitWrapper;
      
      private var _labelReward:TextFieldAutofitWrapper;
      
      public function ViewGoalHistoryItem(param1:IController)
      {
         super(param1,this._source);
         this.init();
      }
      
      public function set reward(param1:int) : void
      {
         this._labelReward.text = param1.toString();
      }
      
      public function setGoalType(param1:String, param2:int) : void
      {
         var _loc3_:String = I18n.get(param1);
         _loc3_ = _loc3_.replace(EStringTypeStubs.ESTS_VALUE,param2);
         this._labelGoalType.text = _loc3_;
      }
      
      private function init() : void
      {
         this._labelGoalType = new TextFieldAutofitWrapper(this._source.labelType);
         this._labelReward = new TextFieldAutofitWrapper(this._source.labelReward);
      }
   }
}

