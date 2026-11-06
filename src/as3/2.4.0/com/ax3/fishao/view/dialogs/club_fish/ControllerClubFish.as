package com.ax3.fishao.view.dialogs.club_fish
{
   import com.ax3.fishao.ConstantsBase;
   import com.ax3.fishao.FishaoFscModelManager;
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.model.vo.FishInfoVO;
   import com.ax3.fishao.requirements.ERequirementType;
   import com.ax3.fishao.utils.UtilsArray;
   import com.ax3.fishao.utils.UtilsDialog;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs.base.controllers.implementations.ControllerWithItems;
   import com.ax3.fishao.view.dialogs.club_fish.item.ControllerClubFishItem;
   import com.ax3.jss.requests.server.ServerResp;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import protocol.api.fishes.FscExtensionFishes;
   import protocol.api.fishes.get_club.ResponseFishesGetClub;
   
   public class ControllerClubFish extends ControllerWithItems
   {
      
      private var _view:ViewClubFish;
      
      private var _items:Array;
      
      private var _itemsOnPage:int;
      
      private var _isSalt:Boolean;
      
      private var _fishIDs:Array;
      
      private var _fishIDsUnlocked:Array;
      
      public function ControllerClubFish(param1:DisplayObjectContainer, param2:Boolean)
      {
         this._view = new ViewClubFish(this,param1);
         super(this._view);
         this._isSalt = param2;
         this.init();
      }
      
      private function onDataReceived(param1:ServerResp) : void
      {
         if(UtilsDialog.tryHandleResponseError(param1))
         {
            return;
         }
         var _loc2_:ResponseFishesGetClub = param1 as ResponseFishesGetClub;
         this._fishIDs = _loc2_.fishIDs;
         this._fishIDsUnlocked = _loc2_.fishIDsUnlocked;
         this.createItems(_loc2_);
         this._view.viewPagination.pageCurrent = 0;
         this.updateProgress();
         this.updatePagesTotal();
         this.updatePageInternal();
      }
      
      override public function onViewClicked(param1:Object, param2:Event) : Boolean
      {
         var _loc3_:Boolean = super.onViewClicked(param1,param2);
         switch(param1)
         {
            case this._view.viewPagination.buttonLeft:
            case this._view.viewPagination.buttonRight:
               this.updatePageInternal();
               break;
            default:
               Debug.assert(false);
         }
         return _loc3_;
      }
      
      public function onFishUnlocked(param1:int) : void
      {
         this._fishIDsUnlocked.push(param1);
         this.updateProgress();
      }
      
      private function init() : void
      {
         this._items = [];
         this._itemsOnPage = 2;
         var _loc1_:FscExtensionFishes = FishaoFscModelManager.fscModel.extensionFishes;
         _loc1_.getClub(this._isSalt,this.onDataReceived);
      }
      
      private function createItems(param1:ResponseFishesGetClub) : void
      {
         var _loc2_:int = 0;
         var _loc3_:Array = null;
         var _loc4_:FishInfoVO = null;
         var _loc5_:FishInfoVO = null;
         var _loc6_:Boolean = false;
         var _loc7_:ControllerClubFishItem = null;
         var _loc8_:DisplayObject = null;
         clearItems(this._items);
         var _loc9_:DisplayObjectContainer = this._view.source as DisplayObjectContainer;
         var _loc10_:Array = [];
         var _loc11_:Array = [];
         var _loc12_:Array = [];
         for each(_loc2_ in param1.fishIDs)
         {
            _loc5_ = app.fishDict.get(_loc2_) as FishInfoVO;
            if(_loc5_.hasRequirement(ERequirementType.ERT_CLUB_POINTS))
            {
               _loc11_.push(_loc5_);
            }
            else if(_loc5_.hasRequirement(ERequirementType.ERT_CLUB_UNLOCK_BY_FISHCOINS))
            {
               _loc12_.push(_loc5_);
            }
            else
            {
               _loc10_.push(_loc5_);
            }
         }
         _loc11_.sort(FishInfoVO.sortByClubPoints);
         _loc12_.sort(FishInfoVO.sortByFishcoins);
         _loc3_ = UtilsArray.mergeArrays(_loc10_,_loc11_);
         _loc3_ = UtilsArray.mergeArrays(_loc3_,_loc12_);
         for each(_loc4_ in _loc3_)
         {
            _loc6_ = param1.fishIDsUnlocked.indexOf(_loc4_.id) != ConstantsBase.INDEX_NONE;
            _loc7_ = new ControllerClubFishItem(this,_loc4_,_loc6_,param1.points);
            this._items.push(_loc7_);
            _loc8_ = _loc7_.view.source;
            _loc8_.y = 160;
            _loc9_.addChild(_loc8_);
         }
         this.placeItemsInternal();
      }
      
      private function updateProgress() : void
      {
         this._view.setProgress(this._fishIDsUnlocked.length,this._fishIDs.length,this._isSalt);
      }
      
      private function updatePagesTotal() : void
      {
         this._view.viewPagination.pagesTotal = Math.ceil(this._items.length / this._itemsOnPage);
      }
      
      private function updatePageInternal() : void
      {
         updatePage(this._items,this._view.viewPagination.pageCurrent,this._itemsOnPage);
      }
      
      private function placeItemsInternal() : void
      {
         placeItemsHorizontal(this._items,55,this._itemsOnPage,35);
      }
   }
}

