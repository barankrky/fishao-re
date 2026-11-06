package com.ax3.fishao.view.dialogs.club.pages.goals
{
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.display.popups.TextFieldAutofitWrapper;
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces.IController;
   import com.ax3.fishao.view.dialogs.base.views.implementations.ViewBase;
   import com.ax3.fishao.view.dialogs.club.pages.base.view_with_buttons_arrows.ViewPagination;
   import com.ax3.fishao.view.dialogs.string.EStringType;
   import com.ax3.fishao.view.wrappers.impl.FrameButtonWrapper;
   import flash.display.DisplayObjectContainer;
   
   public class ViewPageGoals extends ViewBase
   {
      
      private var _buttonHistory:FrameButtonWrapper;
      
      private var _labelText:TextFieldAutofitWrapper;
      
      private var _viewPagination:ViewPagination;
      
      public function ViewPageGoals(param1:IController, param2:DisplayObjectContainer)
      {
         super(param1,param2);
         this.init();
      }
      
      public function get buttonHistory() : FrameButtonWrapper
      {
         return this._buttonHistory;
      }
      
      public function set isAllGoalsComplete(param1:Boolean) : void
      {
         this._labelText.text = I18n.get(param1 ? EStringType.EST_CLUB_TEXT_GOALS_ALL_COMPLETED : EStringType.EST_CLUB_TEXT_GOALS_UNCOMPLETED);
      }
      
      public function get viewPagination() : ViewPagination
      {
         return this._viewPagination;
      }
      
      private function init() : void
      {
         this._buttonHistory = createButton("buttonHistory");
         this._buttonHistory.label = I18n.get(EStringType.EST_COMMON_VIEW_COMPLETED);
         this._labelText = createAutofitLabel("labelText",null);
         this._viewPagination = new ViewPagination(controller,Debug.assertProperty(this.source,"viewPagination"));
      }
   }
}

