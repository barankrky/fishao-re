package com.ax3.fishao.view.dialogs.club.pages.rankings
{
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.utils.Preloader;
   import com.ax3.fishao.utils.UtilsDisplayObject;
   import com.ax3.fishao.utils.UtilsString;
   import com.ax3.fishao.view.dialogs.club.model.ClubInfo;
   import com.ax3.fishao.view.dialogs.club.model.ManagerClubs;
   import com.ax3.fishao.view.dialogs.club.pages.base.ControllerClubPage;
   import com.ax3.fishao.view.dialogs.club.pages.rankings.item.ControllerClubItemRankings;
   import com.ax3.jss.requests.server.ServerResp;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import protocol.api.base.ResponseError;
   import protocol.api.clubs.page.rankings.ResponseClubsGetPageRankings;
   
   public class ControllerClubPageRankings extends ControllerClubPage
   {
      
      private var _view:ViewClubPageRankings;
      
      private var _itemsFiltered:Array;
      
      private var _itemsOnPage:int;
      
      private var _itemsDataAll:Array;
      
      private var _itemsDataFiltered:Array;
      
      private var _rankingType:String;
      
      public function ControllerClubPageRankings(param1:DisplayObjectContainer, param2:String)
      {
         this._view = new ViewClubPageRankings(this,param1,param2);
         super(this._view);
         this.init();
      }
      
      private function get pageForCurrentUser() : int
      {
         var _loc1_:Object = null;
         var _loc2_:Boolean = false;
         var _loc3_:int = 0;
         if(!_managerClubs.userInClub)
         {
            return _loc3_;
         }
         var _loc4_:int = 0;
         while(_loc4_ < this._itemsDataFiltered.length)
         {
            _loc1_ = this._itemsDataFiltered[_loc4_];
            _loc2_ = Debug.assertProperty(_loc1_,"is_current");
            if(_loc2_)
            {
               _loc3_ = Math.floor(_loc4_ / this._itemsOnPage);
               break;
            }
            _loc4_++;
         }
         return _loc3_;
      }
      
      private function onChangeType(param1:Event) : void
      {
         this.loadData();
      }
      
      private function onFilterChanged(param1:Event = null) : void
      {
         var _loc2_:Object = null;
         var _loc3_:ClubInfo = null;
         clearItems(this._itemsFiltered);
         this._itemsFiltered = [];
         var _loc4_:String = this._view.viewInput.label.text;
         var _loc5_:RegExp = null;
         if(!UtilsString.isNullOrEmpty(_loc4_))
         {
            _loc5_ = new RegExp(_loc4_,"gi");
         }
         this._itemsDataFiltered = [];
         for each(_loc2_ in this._itemsDataAll)
         {
            _loc3_ = Debug.assertProperty(_loc2_,"club_info");
            if(_loc5_ == null)
            {
               this._itemsDataFiltered.push(_loc2_);
               this._itemsFiltered.push(null);
            }
            else if(_loc3_.name.match(_loc5_).length > 0)
            {
               this._itemsDataFiltered.push(_loc2_);
               this._itemsFiltered.push(null);
            }
         }
         this._view.viewPagination.pageCurrent = this.pageForCurrentUser;
         this.createItemsForPageCurrent();
         this.updatePagesTotal();
         this.updatePageInternal();
      }
      
      override protected function onDataLoaded(param1:ServerResp) : void
      {
         super.onDataLoaded(param1);
         if(param1 is ResponseError)
         {
            return;
         }
         var _loc2_:ResponseClubsGetPageRankings = param1 as ResponseClubsGetPageRankings;
         this._itemsDataAll = _loc2_.rankingsData;
         this._rankingType = _loc2_.rankingType;
         this._view.rankingType = this._rankingType;
         this.prepareData();
         this.onFilterChanged();
      }
      
      private function prepareData() : void
      {
         var _loc1_:Object = null;
         var _loc2_:ClubInfo = null;
         var _loc3_:Boolean = false;
         var _loc4_:ManagerClubs = GameSwf.instance.managerClubs;
         for each(_loc1_ in this._itemsDataAll)
         {
            _loc2_ = new ClubInfo();
            _loc2_.deserialize(_loc1_);
            _loc3_ = false;
            if(_loc4_.userInClub)
            {
               _loc3_ = _loc4_.userClub.ID == _loc2_.ID;
            }
            _loc1_["is_current"] = _loc3_;
            _loc1_["club_info"] = _loc2_;
         }
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
                  this.createItemsForPageCurrent();
                  this.updatePageInternal();
                  _loc3_ = true;
                  break;
               default:
                  Debug.assert(false);
            }
         }
         return _loc3_;
      }
      
      private function init() : void
      {
         this._rankingType = null;
         this._itemsFiltered = [];
         this._itemsDataAll = [];
         this._itemsDataFiltered = [];
         this._itemsOnPage = 9;
         this._view.viewInput.callbackOnTextChanged = this.onFilterChanged;
         this._view.viewInput.label.addEventListener(Event.CHANGE,this.onFilterChanged);
         this._view.viewDropDown.addEventListener(Event.CHANGE,this.onChangeType);
      }
      
      override public function loadData() : void
      {
         var _loc1_:Object = {"ranking_type":this._view.viewDropDown.selectedType};
         _managerClubs.loadDataForPage(_type,Preloader.waitForResponse(this.onDataLoaded),_loc1_);
      }
      
      private function createItemsForPageCurrent() : void
      {
         var _loc1_:ControllerClubItemRankings = null;
         var _loc2_:Object = null;
         var _loc3_:DisplayObjectContainer = this._view.source as DisplayObjectContainer;
         var _loc4_:int = this._view.viewPagination.pageCurrent;
         var _loc5_:int = _loc4_ * this._itemsOnPage;
         var _loc6_:int = (_loc4_ + 1) * this._itemsOnPage;
         var _loc7_:Array = [];
         _loc6_ = Math.min(_loc6_,this._itemsDataFiltered.length);
         var _loc8_:int = _loc5_;
         while(_loc8_ < _loc6_)
         {
            _loc1_ = this._itemsFiltered[_loc8_];
            if(_loc1_ == null)
            {
               _loc2_ = this._itemsDataFiltered[_loc8_];
               _loc1_ = new ControllerClubItemRankings(_loc2_,this._rankingType);
               this._itemsFiltered[_loc8_] = _loc1_;
               _loc3_.addChild(_loc1_.view.source);
               _loc7_.push(_loc1_);
            }
            _loc8_++;
         }
         this.placeItemsInternal(_loc7_);
         UtilsDisplayObject.toFront(this._view.viewDropDown);
      }
      
      private function placeItemsInternal(param1:Array) : void
      {
         placeItemsVertical(param1,105,this._itemsOnPage,0);
      }
      
      private function updatePagesTotal() : void
      {
         this._view.viewPagination.pagesTotal = Math.ceil(this._itemsFiltered.length / this._itemsOnPage);
      }
      
      private function updatePageInternal() : void
      {
         updatePage(this._itemsFiltered,this._view.viewPagination.pageCurrent,this._itemsOnPage);
      }
      
      override public function cleanup() : void
      {
         this._view.viewInput.label.removeEventListener(Event.CHANGE,this.onFilterChanged);
         this._view.viewDropDown.removeEventListener(Event.CHANGE,this.onChangeType);
         super.cleanup();
      }
   }
}

