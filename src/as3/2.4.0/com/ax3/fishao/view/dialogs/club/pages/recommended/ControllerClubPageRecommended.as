package com.ax3.fishao.view.dialogs.club.pages.recommended
{
   import com.ax3.fishao.view.dialogs.club.pages.base.ControllerClubPage;
   import com.ax3.fishao.view.dialogs.club.pages.recommended.item.ControllerClubItemRecommended;
   import com.ax3.jss.requests.server.ServerResp;
   import flash.display.DisplayObjectContainer;
   import protocol.api.base.ResponseError;
   import protocol.api.clubs.page.recommended.ResponseClubsGetPageRecommended;
   
   public class ControllerClubPageRecommended extends ControllerClubPage
   {
      
      private var _view:ViewClubPageRecommended;
      
      private var _items:Array;
      
      public function ControllerClubPageRecommended(param1:DisplayObjectContainer)
      {
         this._view = new ViewClubPageRecommended(this,param1);
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
         var _loc2_:ResponseClubsGetPageRecommended = param1 as ResponseClubsGetPageRecommended;
         this.createItems(_loc2_.clubsData);
         this._view.isRecommendedClubsExists = _loc2_.clubsData.length > 0;
      }
      
      private function init() : void
      {
         this._items = [];
      }
      
      private function createItems(param1:Array) : void
      {
         var _loc2_:Object = null;
         var _loc3_:ControllerClubItemRecommended = null;
         clearItems(this._items);
         var _loc4_:DisplayObjectContainer = view.source as DisplayObjectContainer;
         for each(_loc2_ in param1)
         {
            _loc3_ = new ControllerClubItemRecommended(_loc2_);
            _loc3_.canOpenDialogInside = this._canOpenDialogInside;
            _loc4_.addChild(_loc3_.view.source);
            this._items.push(_loc3_);
         }
         placeItemsVertical(this._items,100,6,0);
      }
   }
}

