package com.ax3.fishao.view.dialogs.club.pages.info
{
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.utils.Preloader;
   import com.ax3.fishao.utils.UtilsArray;
   import com.ax3.fishao.view.dialogs.club.helpers.actions_leader.HelperClubKick;
   import com.ax3.fishao.view.dialogs.club.pages.base.ControllerClubPage;
   import com.ax3.fishao.view.dialogs.club.pages.base.club_info.ControllerClubInfo;
   import com.ax3.fishao.view.dialogs.club.pages.info.item.ControllerClubMemberItem;
   import com.ax3.jss.requests.server.ServerResp;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import protocol.api.base.ResponseError;
   import protocol.api.clubs.page.info.ResponseClubsGetPageInfo;
   
   public class ControllerClubPageInfo extends ControllerClubPage
   {
      
      private var _view:ViewClubPageInfo;
      
      private var _controllerInfo:ControllerClubInfo;
      
      private var _clubData:Object;
      
      private var _clubID:int;
      
      private var _leaderLogin:String;
      
      private var _items:Array;
      
      private var _itemsOnPage:int;
      
      private var _helperKick:HelperClubKick;
      
      public function ControllerClubPageInfo(param1:DisplayObjectContainer)
      {
         this._view = new ViewClubPageInfo(this,param1);
         super(this._view);
         this.init();
      }
      
      private function get pageForCurrentUser() : int
      {
         var _loc1_:ControllerClubMemberItem = null;
         var _loc2_:int = 0;
         var _loc3_:int = 0;
         while(_loc3_ < this._items.length)
         {
            _loc1_ = this._items[_loc3_];
            if(_loc1_.isCurrentUser)
            {
               _loc2_ = Math.floor(_loc3_ / this._itemsOnPage);
               break;
            }
            _loc3_++;
         }
         return _loc2_;
      }
      
      override protected function onDataLoaded(param1:ServerResp) : void
      {
         super.onDataLoaded(param1);
         if(param1 is ResponseError)
         {
            _owner.close();
            return;
         }
         var _loc2_:ResponseClubsGetPageInfo = param1 as ResponseClubsGetPageInfo;
         this._clubData = _loc2_.clubInfo;
         this._controllerInfo.clubData = this._clubData;
         this._view.description = Debug.assertProperty(this._clubData,"description");
         this._clubID = Debug.assertProperty(this._clubData,"id");
         this._leaderLogin = Debug.assertProperty(this._clubData,"leader_login");
         this.createItems();
         this._view.viewPagination.pageCurrent = this.pageForCurrentUser;
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
      
      private function onButtonKickCLicked(param1:String) : void
      {
         this._helperKick.login = param1;
         this._helperKick.doAction(this.onMemberKicked);
      }
      
      private function onMemberKicked(param1:String) : void
      {
         var _loc2_:ControllerClubMemberItem = null;
         var _loc3_:DisplayObject = null;
         for each(_loc2_ in this._items)
         {
            if(_loc2_.login == param1)
            {
               UtilsArray.removeValue(this._items,_loc2_);
               _loc3_ = _loc2_.view.source;
               _loc3_.parent.removeChild(_loc3_);
               this.placeItemsInternal();
               break;
            }
         }
         this._controllerInfo.membersCount = this._items.length;
         this.updatePagesTotal();
         this.updatePageInternal();
      }
      
      private function init() : void
      {
         this._itemsOnPage = 5;
         this._items = [];
         this._controllerInfo = new ControllerClubInfo(this._view.viewInfo);
         this._helperKick = new HelperClubKick();
      }
      
      override public function loadData() : void
      {
         var _loc1_:Object = {"club_id":_entity.ID};
         _managerClubs.loadDataForPage(_type,Preloader.waitForResponse(this.onDataLoaded),_loc1_);
      }
      
      private function createItems() : void
      {
         var _loc1_:Object = null;
         var _loc2_:ControllerClubMemberItem = null;
         clearItems(this._items);
         var _loc3_:Array = Debug.assertProperty(this._clubData,"members");
         var _loc4_:DisplayObjectContainer = view.source as DisplayObjectContainer;
         for each(_loc1_ in _loc3_)
         {
            _loc2_ = new ControllerClubMemberItem(this._clubID,_loc1_,this._leaderLogin,this.onButtonKickCLicked);
            _loc4_.addChild(_loc2_.view.source);
            if(_loc2_.login == this._leaderLogin)
            {
               this._items.unshift(_loc2_);
            }
            else
            {
               this._items.push(_loc2_);
            }
         }
         this.updatePagesTotal();
         this.placeItemsInternal();
      }
      
      private function placeItemsInternal() : void
      {
         placeItemsVertical(this._items,200,this._itemsOnPage,0);
      }
      
      private function updatePagesTotal() : void
      {
         this._view.viewPagination.pagesTotal = Math.ceil(this._items.length / this._itemsOnPage);
      }
      
      private function updatePageInternal() : void
      {
         updatePage(this._items,this._view.viewPagination.pageCurrent,this._itemsOnPage);
      }
      
      override public function cleanup() : void
      {
         this._controllerInfo.cleanup();
         this._controllerInfo = null;
         this._items.length = 0;
         this._items = null;
         super.cleanup();
      }
   }
}

