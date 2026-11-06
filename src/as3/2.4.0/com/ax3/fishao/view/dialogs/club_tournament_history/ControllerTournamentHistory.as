package com.ax3.fishao.view.dialogs.club_tournament_history
{
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.utils.Preloader;
   import com.ax3.fishao.utils.UtilsDialog;
   import com.ax3.fishao.view.dialogs.base.controllers.implementations.ControllerWithItems;
   import com.ax3.fishao.view.dialogs.club_tournament_history.item.ControllerTournamentHistoryItem;
   import com.ax3.jss.requests.server.ServerResp;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import protocol.api.clubs.tournament_history.ResponseClubsTournamentHistory;
   
   public class ControllerTournamentHistory extends ControllerWithItems
   {
      
      private var _items:Array;
      
      private var _itemsOnPage:int;
      
      private var _view:ViewTournamentHistory;
      
      public function ControllerTournamentHistory(param1:DisplayObjectContainer)
      {
         this._view = new ViewTournamentHistory(this,param1);
         super(this._view);
         this.init();
      }
      
      private function onDataLoaded(param1:ServerResp) : void
      {
         var _loc2_:Object = null;
         var _loc3_:ControllerTournamentHistoryItem = null;
         var _loc4_:DisplayObject = null;
         if(UtilsDialog.tryHandleResponseError(param1))
         {
            return;
         }
         var _loc5_:ResponseClubsTournamentHistory = param1 as ResponseClubsTournamentHistory;
         var _loc6_:DisplayObjectContainer = this._view.source as DisplayObjectContainer;
         var _loc7_:Array = _loc5_.historyData;
         _loc7_.sortOn("time_start",Array.NUMERIC | Array.DESCENDING);
         for each(_loc2_ in _loc7_)
         {
            _loc3_ = new ControllerTournamentHistoryItem(_loc2_);
            _loc4_ = _loc3_.view.source;
            _loc6_.addChild(_loc4_);
            _loc4_.x = 45;
            this._items.push(_loc3_);
         }
         this._view.viewPagination.pagesTotal = Math.ceil(this._items.length / this._itemsOnPage);
         this._view.viewPagination.pageCurrent = 0;
         placeItemsVertical(this._items,90,this._itemsOnPage,2);
         this.updatePageInternal();
      }
      
      override public function onViewClicked(param1:Object, param2:Event) : Boolean
      {
         var _loc3_:Boolean = super.onViewClicked(param1,param2);
         if(!_loc3_)
         {
            switch(param1)
            {
               case this._view.viewPagination.buttonLeft:
               case this._view.viewPagination.buttonRight:
                  this.updatePageInternal();
                  break;
               default:
                  Debug.assert(false);
            }
         }
         return _loc3_;
      }
      
      private function init() : void
      {
         this._items = [];
         this._itemsOnPage = 12;
         GameSwf.instance.managerClubs.getTournamentHistory(Preloader.waitForResponse(this.onDataLoaded));
      }
      
      private function updatePageInternal() : void
      {
         updatePage(this._items,this._view.viewPagination.pageCurrent,this._itemsOnPage);
      }
   }
}

