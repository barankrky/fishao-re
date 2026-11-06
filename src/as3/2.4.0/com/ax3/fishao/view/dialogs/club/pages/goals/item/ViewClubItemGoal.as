package com.ax3.fishao.view.dialogs.club.pages.goals.item
{
   import com.ax3.fishao.display.popups.TextFieldAutofitWrapper;
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces.IController;
   import com.ax3.fishao.view.dialogs.base.views.implementations.ViewBase;
   import com.ax3.fishao.view.dialogs.base.views.implementations.ViewProgress;
   import com.ax3.fishao.view.dialogs.string.EStringTypeStubs;
   
   public class ViewClubItemGoal extends ViewBase
   {
      
      private var _source:gViewClubsItemGoal = new gViewClubsItemGoal();
      
      private var _viewProgress:ViewProgress;
      
      private var _labelReward:TextFieldAutofitWrapper;
      
      private var _labelProgress:TextFieldAutofitWrapper;
      
      private var _labelType:TextFieldAutofitWrapper;
      
      public function ViewClubItemGoal(param1:IController)
      {
         super(param1,this._source);
         this.init();
      }
      
      public function setType(param1:String, param2:int) : void
      {
         var _loc3_:String = I18n.get(param1);
         _loc3_ = _loc3_.replace(EStringTypeStubs.ESTS_VALUE,param2);
         this._labelType.text = _loc3_;
      }
      
      public function setProgress(param1:int, param2:int) : void
      {
         this._labelProgress.text = param1 + "/" + param2;
         this._viewProgress.percent = param1 / param2 * 100;
      }
      
      public function set reward(param1:int) : void
      {
         this._labelReward.text = param1.toString();
      }
      
      private function init() : void
      {
         this._labelReward = createAutofitLabel("labelReward",null);
         this._labelProgress = createAutofitLabel("labelProgress",null);
         this._labelType = createAutofitLabel("labelType",null);
         this._viewProgress = new ViewProgress(controller,this._source.viewProgress);
      }
   }
}

