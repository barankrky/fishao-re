package com.ax3.fishao.view.dialogs.club.pages.management
{
   import com.ax3.fishao.ConstantsBase;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.utils.UtilsArray;
   import com.ax3.fishao.view.dialogs.club.helpers.actions_leader.HelperClubChangeInfo;
   import com.ax3.fishao.view.dialogs.club.model.ClubInfo;
   import com.ax3.fishao.view.dialogs.club.model.EClubType;
   import com.ax3.fishao.view.dialogs.club.pages.base.ControllerClubPage;
   import com.ax3.fishao.view.dialogs.club.pages.base.club_type.ControllerClubType;
   import com.ax3.fishao.view.dialogs.club.pages.base.emblem.ControllerEmblem;
   import com.ax3.fishao.view.dialogs.club.pages.base.requirement_level.ControllerRequirementLevel;
   import com.ax3.fishao.view.dialogs.club.pages.management.item.ControllerClubItemManagement;
   import com.ax3.jss.requests.server.ServerResp;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import protocol.api.base.ResponseError;
   import protocol.api.clubs.page.management.ResponseClubsGetPageManagement;
   
   public class ControllerClubPageManagement extends ControllerClubPage
   {
      
      private var _view:ViewPageManagement;
      
      private var _controllerEmblem:ControllerEmblem;
      
      private var _controllerClubType:ControllerClubType;
      
      private var _controllerRequirementLevel:ControllerRequirementLevel;
      
      private var _helperChangeInfo:HelperClubChangeInfo;
      
      private var _items:Array;
      
      private var _itemsOnPage:int;
      
      public function ControllerClubPageManagement(param1:DisplayObjectContainer)
      {
         this._view = new ViewPageManagement(this,param1);
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
         var _loc2_:ResponseClubsGetPageManagement = param1 as ResponseClubsGetPageManagement;
         this._view.viewInputDescription.label.text = _loc2_.description;
         this.createItems(_loc2_.waitingForApprove);
         this._view.viewPagination.pageCurrent = 0;
         this._controllerRequirementLevel.requiredLevel = _loc2_.requiredLevel;
         this.updateHelperChangeInfo();
         this.updatePagesTotal();
         this.updatePageInternal();
         this.updateViewWaitingApproval();
      }
      
      override public function onPageClosed() : void
      {
         super.onPageClosed();
         this.trySaveChanges();
      }
      
      private function onMemberKickedOrApproved(param1:String) : void
      {
         var _loc2_:ControllerClubItemManagement = null;
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
         this.updateViewWaitingApproval();
         this.updatePagesTotal();
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
         this._itemsOnPage = 4;
         this._items = [];
         this._helperChangeInfo = new HelperClubChangeInfo();
         var _loc1_:ClubInfo = _managerClubs.userClub;
         this._controllerEmblem = new ControllerEmblem(this._view.sourceEmblem);
         this._controllerEmblem.emblemID = _loc1_.emblemID;
         this._controllerClubType = new ControllerClubType(this._view.sourceClubType);
         this._controllerClubType.type = _loc1_.type;
         this._controllerRequirementLevel = new ControllerRequirementLevel(this._view.sourceRequirementLevel);
         this._view.viewInputDescription.label.maxChars = ConstantsBase.CLUB_DESCRIPTION_CHARACTERS_MAX;
         this.updateViewWaitingApproval();
      }
      
      private function updateHelperChangeInfo() : void
      {
         this._helperChangeInfo.emblemID = this._controllerEmblem.emblem;
         this._helperChangeInfo.clubType = this._controllerClubType.type;
         this._helperChangeInfo.requiredLevel = this._controllerRequirementLevel.requiredLevel;
         this._helperChangeInfo.description = this._view.viewInputDescription.label.text;
         this._helperChangeInfo.infoEstablished = true;
      }
      
      private function createItems(param1:Array) : void
      {
         var _loc2_:Object = null;
         var _loc3_:ControllerClubItemManagement = null;
         var _loc4_:DisplayObject = null;
         clearItems(this._items);
         var _loc5_:DisplayObjectContainer = view.source as DisplayObjectContainer;
         for each(_loc2_ in param1)
         {
            _loc3_ = new ControllerClubItemManagement(_loc2_,this.onMemberKickedOrApproved);
            _loc4_ = _loc3_.view.source;
            _loc5_.addChild(_loc4_);
            _loc4_.x = 315;
            this._items.push(_loc3_);
         }
         this.placeItemsInternal();
      }
      
      private function placeItemsInternal() : void
      {
         placeItemsVertical(this._items,285,this._itemsOnPage,0);
      }
      
      private function updatePagesTotal() : void
      {
         this._view.viewPagination.pagesTotal = Math.ceil(this._items.length / this._itemsOnPage);
      }
      
      private function updatePageInternal() : void
      {
         updatePage(this._items,this._view.viewPagination.pageCurrent,this._itemsOnPage);
      }
      
      private function updateViewWaitingApproval() : void
      {
         var _loc1_:ClubInfo = _managerClubs.userClub;
         if(_loc1_.type != EClubType.ECT_PRIVATE || this._items.length == 0)
         {
            this._view.viewPagination.hide();
            this._view.viewTableTitle.visible = false;
         }
         else
         {
            this._view.viewPagination.show();
            this._view.viewTableTitle.visible = true;
         }
      }
      
      private function trySaveChanges() : void
      {
         if(!this._helperChangeInfo.isAnyFieldChanged(this._controllerEmblem.emblem,this._view.viewInputDescription.label.text,this._controllerClubType.type,this._controllerRequirementLevel.requiredLevel))
         {
            return;
         }
         this.updateHelperChangeInfo();
         this._helperChangeInfo.doAction();
      }
      
      override public function cleanup() : void
      {
         this.trySaveChanges();
         super.cleanup();
      }
   }
}

