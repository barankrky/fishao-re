package com.ax3.fishao.view.dialogs.club.pages.tournament
{
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs.club.pages.base.ControllerClubPage;
   import com.ax3.fishao.view.dialogs.club.pages.tournament.item.ControllerClubItemTournament;
   import com.ax3.fishao.view.dialogs.club_tournament_history.DialogClubTournamentHistory;
   import com.ax3.fishao.view.dialogs.string.EStringType;
   import com.ax3.fishao.view.dialogs.string.EStringTypeStubs;
   import com.ax3.fishao.view.dialogs.tournaments.models.ETournamentState;
   import com.ax3.jss.requests.server.ServerResp;
   import com.ax3.utils.timer.UpdateGroup;
   import com.ax3.utils.timer.UpdateManager;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.utils.clearTimeout;
   import flash.utils.setTimeout;
   import protocol.api.base.ResponseError;
   import protocol.api.clubs.page.tournament.ResponseClubsGetPageTournament;
   
   public class ControllerClubPageTournament extends ControllerClubPage
   {
      
      private var _view:ViewPageTournament;
      
      private var _items:Array;
      
      private var _itemsOnPage:int;
      
      private var _timeLeft:int;
      
      private var _clubsInGroup:int;
      
      private var _updateGroup:UpdateGroup;
      
      private var _state:String;
      
      private var _timeoutLoadData:uint;
      
      public function ControllerClubPageTournament(param1:DisplayObjectContainer)
      {
         this._view = new ViewPageTournament(this,param1);
         super(this._view);
         this.init();
      }
      
      override public function onPageClosed() : void
      {
         super.onPageClosed();
         this._updateGroup.removeFunction(this.onTimerTick);
      }
      
      private function onTimerTick(param1:int, param2:int) : void
      {
         --this._timeLeft;
         this.updateText();
         if(this._timeLeft == 0)
         {
            this._updateGroup.removeFunction(this.onTimerTick);
            this.sendRequestUpdate();
         }
         else
         {
            this.updateText();
         }
      }
      
      override protected function onDataLoaded(param1:ServerResp) : void
      {
         super.onDataLoaded(param1);
         if(param1 is ResponseError)
         {
            return;
         }
         var _loc2_:ResponseClubsGetPageTournament = param1 as ResponseClubsGetPageTournament;
         _loc2_.mergeData();
         this._timeLeft = _loc2_.timeLeftChangeState;
         this._state = _loc2_.state;
         this._clubsInGroup = _loc2_.clubsInGroup;
         this._view.buttonHistory.visible = _loc2_.tournaments_played > 0;
         switch(_loc2_.state)
         {
            case ETournamentState.ETS_UPCOMING:
               this.onTournamentUpcoming(_loc2_);
               break;
            case ETournamentState.ETS_IN_PROGRESS:
               this.onTournamentInProgress(_loc2_);
               break;
            case ETournamentState.ETS_FINISHED:
               this.onTournamentFinished(_loc2_);
               break;
            default:
               Debug.assert(false);
         }
         this.updateText();
         this.createItems(_loc2_.data,_loc2_.type);
         this._view.viewPagination.pageCurrent = 0;
         this.updatePagesTotal();
         this.updatePageInternal();
      }
      
      private function onTournamentUpcoming(param1:ResponseClubsGetPageTournament) : void
      {
         this._view.isTournamentInProgress = false;
         this.tryStartTimer();
      }
      
      private function onTournamentInProgress(param1:ResponseClubsGetPageTournament) : void
      {
         this._view.isTournamentInProgress = true;
         this._view.tournamentType = param1.type;
         this.tryStartTimer();
      }
      
      private function onTournamentFinished(param1:ResponseClubsGetPageTournament) : void
      {
         this._view.isTournamentInProgress = false;
      }
      
      override public function onViewClicked(param1:Object, param2:Event) : Boolean
      {
         var _loc3_:DialogClubTournamentHistory = null;
         var _loc4_:Boolean = super.onViewClicked(param1,param2);
         if(!_loc4_)
         {
            switch(param1)
            {
               case this._view.buttonHistory:
                  _loc3_ = app.dialogFactory.getDialog(DialogClubTournamentHistory);
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
         this._itemsOnPage = 6;
         this._items = [];
         this._updateGroup = UpdateManager.getInstance().getGroup(UpdateGroup.TIMER_1S);
      }
      
      private function updateText() : void
      {
         var _loc1_:String = null;
         var _loc2_:String = null;
         switch(this._state)
         {
            case ETournamentState.ETS_UPCOMING:
               _loc1_ = I18n.formatTimestampToClockView(this._timeLeft);
               _loc2_ = I18n.get(EStringType.EST_CLUB_TOURNAMENT_UPCOMING);
               _loc2_ = _loc2_.replace(EStringTypeStubs.ESTS_VALUE,_loc1_);
               break;
            case ETournamentState.ETS_IN_PROGRESS:
               _loc2_ = I18n.get(EStringType.EST_CLUB_TOURNAMENT_IN_PROGRESS);
               _loc2_ = _loc2_.replace(EStringTypeStubs.ESTS_VALUE,Math.max(this._clubsInGroup - 1,0));
               break;
            case ETournamentState.ETS_FINISHED:
               _loc2_ = I18n.get(EStringType.EST_CLUB_TOURNAMENT_FINISHED);
               break;
            default:
               Debug.assert(false);
         }
         this._view.text = _loc2_;
         this._view.timeLeft = this._timeLeft;
      }
      
      private function tryStartTimer() : void
      {
         if(this._timeLeft == 0)
         {
            return;
         }
         this._updateGroup.addFunction(this.onTimerTick);
      }
      
      private function sendRequestUpdate() : void
      {
         this.clearTimeoutLoadData();
         this._timeoutLoadData = setTimeout(loadData,2000);
      }
      
      private function createItems(param1:Array, param2:String) : void
      {
         var _loc3_:Object = null;
         var _loc4_:ControllerClubItemTournament = null;
         clearItems(this._items);
         var _loc5_:DisplayObjectContainer = this._view.source as DisplayObjectContainer;
         for each(_loc3_ in param1)
         {
            _loc4_ = new ControllerClubItemTournament(_loc3_,param2);
            this._items.push(_loc4_);
            _loc5_.addChild(_loc4_.view.source);
         }
         this.placeItemsInternal();
      }
      
      private function placeItemsInternal() : void
      {
         placeItemsVertical(this._items,185,this._itemsOnPage,0);
      }
      
      private function updatePagesTotal() : void
      {
         this._view.viewPagination.pagesTotal = Math.ceil(this._items.length / this._itemsOnPage);
      }
      
      private function updatePageInternal() : void
      {
         updatePage(this._items,this._view.viewPagination.pageCurrent,this._itemsOnPage);
      }
      
      private function clearTimeoutLoadData() : void
      {
         clearTimeout(this._timeoutLoadData);
      }
      
      override public function cleanup() : void
      {
         this.clearTimeoutLoadData();
         this._updateGroup.removeFunction(this.onTimerTick);
         super.cleanup();
      }
   }
}

