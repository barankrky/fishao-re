package com.ax3.fishao.view.dialogs.tournaments.controllers
{
   import com.ax3.fishao.control.managers.FishaoSoundManager;
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.view.dialogs.PopupManager;
   import com.ax3.fishao.view.dialogs.base.controllers.implementations.Controller;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces.IController;
   import com.ax3.fishao.view.dialogs.string.EStringType;
   import com.ax3.fishao.view.dialogs.string.EStringTypeStubs;
   import com.ax3.fishao.view.dialogs.tournaments.models.TournamentInfo;
   import com.ax3.fishao.view.dialogs.tournaments.models.TournamentMemberInfo;
   import com.ax3.fishao.view.dialogs.tournaments.views.ViewDialogTournamentResults;
   import com.ax3.utils.sound.SoundFile;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   
   public class ControllerDialogTournamentResults extends Controller
   {
      
      private var _view:ViewDialogTournamentResults;
      
      private var _items:Array;
      
      private var _pageCurrent:int;
      
      private var _pagesTotal:int;
      
      private var _members:Array;
      
      private var _tournament:TournamentInfo;
      
      public function ControllerDialogTournamentResults(param1:DisplayObjectContainer)
      {
         this._view = new ViewDialogTournamentResults(this,param1);
         super(this._view);
         this.init();
      }
      
      override public function onViewClicked(param1:Object, param2:Event) : Boolean
      {
         var _loc3_:Boolean = super.onViewClicked(param1,param2);
         switch(param1)
         {
            case this._view.buttonPrevious:
               --this._pageCurrent;
               this.updatePage();
               this.updateButtons();
               break;
            case this._view.buttonNext:
               ++this._pageCurrent;
               this.updatePage();
               this.updateButtons();
               break;
            case this._view.buttonOk:
               PopupManager.getInstance().currentDialog().close();
         }
         return _loc3_;
      }
      
      private function init() : void
      {
         var _loc1_:TournamentMemberInfo = null;
         var _loc2_:ControllerTournamentMemberResult = null;
         this._tournament = GameSwf.instance.managerTournaments.tournamentCurrent;
         this._members = this._tournament.members;
         this._members.sort(TournamentMemberInfo.sortByPosition);
         this._items = [];
         this._pageCurrent = 1;
         for each(_loc1_ in this._members)
         {
            _loc2_ = new ControllerTournamentMemberResult(_loc1_);
            this._items.push(_loc2_);
         }
         this._pagesTotal = Math.floor(this._items.length / this._view.itemsOnPage) + 1;
         this.updateLabels();
         this.updatePage();
         FishaoSoundManager.playAndLowerBgSound(this._tournament.getPlayer().position == 1 ? FishaoSoundManager.SFX_066_MUS_Tournament_win : FishaoSoundManager.SFX_067_MUS_Tournament_lose);
         GameSwf.instance.managerTournaments.onResultsDisplayed();
         this._view.placeViews(false);
      }
      
      private function updateLabels() : void
      {
         var _loc1_:String = null;
         var _loc2_:TournamentMemberInfo = this._tournament.getPlayer();
         if(_loc2_.position == 1)
         {
            _loc1_ = I18n.get(EStringType.EST_DIALOG_TOURNAMENT_RESULTS_MESSAGE_WIN);
         }
         else if(_loc2_.position <= 3)
         {
            _loc1_ = I18n.get(EStringType.EST_DIALOG_TOURNAMENT_RESULTS_MESSAGE_IN_TOP_THREE);
         }
         else
         {
            _loc1_ = I18n.get(EStringType.EST_DIALOG_TOURNAMENT_RESULTS_MESSAGE_LOSE);
         }
         _loc1_ = _loc1_.replace(EStringTypeStubs.ESTS_POSITION,_loc2_.position);
         _loc1_ = _loc1_.replace(EStringTypeStubs.ESTS_USERNAME,_loc2_.login);
         _loc1_ = _loc1_.replace(EStringTypeStubs.ESTS_COUNT,_loc2_.rewardFishcoins);
         this._view.message = _loc1_;
         this._view.tournamentType = this._tournament.type;
      }
      
      private function updatePage() : void
      {
         this.updateItems();
         this.updatePageLabel();
         this.updateButtons();
      }
      
      private function updateItems() : void
      {
         var _loc1_:ControllerTournamentMemberResult = null;
         var _loc2_:Array = this.сurrentPageItems;
         var _loc3_:Array = [];
         for each(_loc1_ in _loc2_)
         {
            _loc3_.push(_loc1_.view.source);
         }
         this._view.items = _loc3_;
      }
      
      private function updatePageLabel() : void
      {
         var _loc1_:IController = null;
         var _loc2_:uint = 0;
         var _loc3_:int = 0;
         while(_loc3_ < this._items.length)
         {
            _loc1_ = this._items[_loc3_];
            _loc2_ = Math.ceil((_loc3_ + 1) / this._view.itemsOnPage);
            if(_loc2_ == this._pageCurrent)
            {
               _loc1_.view.show();
            }
            else
            {
               _loc1_.view.hide();
            }
            _loc3_++;
         }
         var _loc4_:String = I18n.get(EStringType.EST_DIALOG_TOURNAMENT_RESULTS_PAGE);
         _loc4_ = _loc4_.replace(EStringTypeStubs.ESTS_VALUE,this._pageCurrent);
         _loc4_ = _loc4_.replace(EStringTypeStubs.ESTS_VALUE,this._pagesTotal);
         this._view.labelPage.text = _loc4_;
      }
      
      private function updateButtons() : void
      {
         this._view.buttonNext.enabled = this._pageCurrent < this._pagesTotal;
         this._view.buttonPrevious.enabled = this._pageCurrent > 1;
      }
      
      private function get сurrentPageItems() : Array
      {
         var _loc1_:int = (this._pageCurrent - 1) * this._view.itemsOnPage;
         var _loc2_:Array = [];
         var _loc3_:int = _loc1_;
         while(_loc3_ < this._items.length && _loc3_ < _loc1_ + this._view.itemsOnPage)
         {
            _loc2_.push(this._items[_loc3_]);
            _loc3_++;
         }
         return _loc2_;
      }
      
      private function cleanupItems() : void
      {
         var _loc1_:IController = null;
         for each(_loc1_ in this._items)
         {
            _loc1_.cleanup();
         }
         this._items.length = 0;
      }
      
      override public function cleanup() : void
      {
         this.cleanupItems();
         super.cleanup();
      }
   }
}

