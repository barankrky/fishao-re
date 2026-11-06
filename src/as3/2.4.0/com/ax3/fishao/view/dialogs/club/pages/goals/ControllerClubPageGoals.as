package com.ax3.fishao.view.dialogs.club.pages.goals
{
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs.club.pages.base.ControllerClubPage;
   import com.ax3.fishao.view.dialogs.club.pages.goals.item.ControllerClubItemGoal;
   import com.ax3.fishao.view.dialogs.club_goal_history.DialogClubGoalHistory;
   import com.ax3.jss.requests.server.ServerResp;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import protocol.api.base.ResponseError;
   import protocol.api.clubs.page.goals.ResponseClubsGetPageGoals;
   
   public class ControllerClubPageGoals extends ControllerClubPage
   {
      
      private var _view:ViewPageGoals;
      
      private var _items:Array;
      
      private var _itemsOnPage:int;
      
      public function ControllerClubPageGoals(param1:DisplayObjectContainer)
      {
         this._view = new ViewPageGoals(this,param1);
         super(this._view);
         this.init();
      }
      
      override protected function onDataLoaded(param1:ServerResp) : void
      {
         super.onDataLoaded(param1);
         if(param1 is ResponseError)
         {
            return;
         }
         var _loc2_:ResponseClubsGetPageGoals = param1 as ResponseClubsGetPageGoals;
         this._view.buttonHistory.visible = _loc2_.completedGoalsCount > 0;
         var _loc3_:Array = _loc2_.uncompletedGoals;
         this._view.isAllGoalsComplete = _loc3_.length == 0;
         this.createItems(_loc3_);
         this._view.viewPagination.pageCurrent = 0;
         this.updatePagesTotal();
         this.updatePageInternal();
      }
      
      override public function onViewClicked(param1:Object, param2:Event) : Boolean
      {
         var _loc3_:DialogClubGoalHistory = null;
         var _loc4_:Boolean = super.onViewClicked(param1,param2);
         if(!_loc4_)
         {
            switch(param1)
            {
               case this._view.buttonHistory:
                  _loc3_ = app.dialogFactory.getDialog(DialogClubGoalHistory);
                  _loc3_.show();
                  break;
               case this._view.viewPagination.buttonLeft:
               case this._view.viewPagination.buttonRight:
                  this.updatePageInternal();
                  break;
               default:
                  Debug.assert(false);
            }
         }
         return _loc4_;
      }
      
      private function init() : void
      {
         this._itemsOnPage = 4;
         this._items = [];
      }
      
      private function createItems(param1:Array) : void
      {
         var _loc2_:Object = null;
         var _loc3_:ControllerClubItemGoal = null;
         clearItems(this._items);
         var _loc4_:DisplayObjectContainer = this._view.source as DisplayObjectContainer;
         for each(_loc2_ in param1)
         {
            _loc3_ = new ControllerClubItemGoal(_loc2_);
            this._items.push(_loc3_);
            _loc4_.addChild(_loc3_.view.source);
         }
         this.placeItemsInternal();
      }
      
      private function placeItemsInternal() : void
      {
         placeItemsVertical(this._items,60,this._itemsOnPage,4);
      }
      
      private function updatePagesTotal() : void
      {
         this._view.viewPagination.pagesTotal = Math.ceil(this._items.length / this._itemsOnPage);
      }
      
      private function updatePageInternal() : void
      {
         updatePage(this._items,this._view.viewPagination.pageCurrent,this._itemsOnPage);
      }
   }
}

