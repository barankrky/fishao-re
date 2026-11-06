package com.ax3.fishao.view.dialogs.club_tournament_history
{
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces.IController;
   import com.ax3.fishao.view.dialogs.base.views.implementations.ViewBase;
   import com.ax3.fishao.view.dialogs.base.views.implementations.ViewTitleAutosized;
   import com.ax3.fishao.view.dialogs.club.pages.base.view_with_buttons_arrows.ViewPagination;
   import com.ax3.fishao.view.dialogs.string.EStringType;
   import flash.display.DisplayObjectContainer;
   
   public class ViewTournamentHistory extends ViewBase
   {
      
      private var _viewPagination:ViewPagination;
      
      public function ViewTournamentHistory(param1:IController, param2:DisplayObjectContainer)
      {
         super(param1,param2);
         this.init();
      }
      
      public function get viewPagination() : ViewPagination
      {
         return this._viewPagination;
      }
      
      private function init() : void
      {
         var _loc1_:ViewTitleAutosized = new ViewTitleAutosized(controller,Debug.assertProperty(this.source,"title"));
         _loc1_.text = I18n.get(EStringType.EST_CLUB_TITLE_TOURNAMENT_HISTORY);
         this._viewPagination = new ViewPagination(controller,Debug.assertProperty(this.source,"viewPagination"));
         createAutofitLabel("labelType",EStringType.EST_COLUMN_TOURNAMENT_TYPE);
         createAutofitLabel("labelPosition",EStringType.EST_COLUMN_RANKING);
         createAutofitLabel("labelReward",EStringType.EST_COMMON_REWARD);
      }
   }
}

