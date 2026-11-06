package com.ax3.fishao.display.dialogs
{
   import com.ax3.display.dialog.SWFDialogConfig;
   import com.ax3.display.wrappers.impl.FriendHouseItemWrapper;
   import com.ax3.display.wrappers.impl.ScrollListWrapper;
   import com.ax3.display.wrappers.impl.SwfFactoryWrapper;
   import com.ax3.fishao.model.vo.FriendHouseVO;
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs.CloseMenuFishaoButtonWrapper;
   import com.ax3.fishao.view.dialogs.FishaoBaseSwfDialog;
   import flash.display.MovieClip;
   import flash.events.Event;
   import flash.events.FocusEvent;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   import flash.text.TextFieldAutoSize;
   import flash.utils.clearTimeout;
   import flash.utils.setTimeout;
   
   public class FriendsHouseListSwfDialogAsset extends FishaoBaseSwfDialog
   {
      
      public var closeButton:CloseMenuFishaoButtonWrapper;
      
      public var filterText:TextField;
      
      public var filterInput:TextField;
      
      public var title:TextField;
      
      public var whichFriend:TextField;
      
      public var friend:TextField;
      
      public var homePoints:TextField;
      
      public var online:TextField;
      
      public var list:ScrollListWrapper;
      
      public var items:Vector.<FriendHouseVO> = new Vector.<FriendHouseVO>();
      
      protected var _filteredItems:Vector.<FriendHouseVO> = new Vector.<FriendHouseVO>();
      
      protected var _filterTimeout:uint = 0;
      
      public function FriendsHouseListSwfDialogAsset()
      {
         var _loc1_:SWFDialogConfig = new SWFDialogConfig();
         _loc1_.swfFileName = "friend_house_list.swf";
         super(_loc1_);
      }
      
      public function setItems(param1:Vector.<FriendHouseVO>) : void
      {
         this.items = param1;
         this._filteredItems = this.items.concat();
         if(this.list != null)
         {
            this.showItems();
         }
      }
      
      private function showItems() : void
      {
         var _loc1_:FriendHouseVO = null;
         var _loc2_:FriendHouseItemWrapper = null;
         var _loc3_:Vector.<FriendHouseVO> = this._filteredItems;
         var _loc4_:int = 0;
         this.list.removeAll();
         for each(_loc1_ in _loc3_)
         {
            _loc4_++;
            _loc2_ = FriendHouseItemWrapper(this.list.add(_loc1_,_loc4_ == _loc3_.length));
            _loc2_.buyHandler = this.visitHandler;
         }
      }
      
      protected function visitHandler(param1:FriendHouseVO) : void
      {
      }
      
      override protected function onAssetCreationComplete() : void
      {
         this.closeButton.handler = this.onCloseClick;
         this.filterInput.addEventListener(Event.CHANGE,this.onChangeFilterList);
         this.filterInput.addEventListener(FocusEvent.FOCUS_IN,this.onFilterFocus);
         this.filterInput.addEventListener(MouseEvent.MOUSE_OUT,this.onFilterMouseOut);
         this.filterInput.text = "";
         this.filterText.text = I18n.get("friendsHomeListDialog_searchFriendText");
         this.title.text = I18n.get("friendsHomeListDialog_title");
         this.whichFriend.text = I18n.get("friendsHomeListDialog_whichFriend").split("#USERNAME#").join(app.user.username);
         this.friend.text = I18n.get("friendsHomeListDialog_friend");
         this.homePoints.text = I18n.get("friendsHomeListDialog_homePoints");
         this.online.text = I18n.get("friendsHomeListDialog_online");
         this.filterText.autoSize = TextFieldAutoSize.LEFT;
         this.filterInput.x = this.filterText.x + this.filterText.width + 17;
         (bg as MovieClip).getChildByName("inputBackground").x = this.filterInput.x - 8;
         this.updateAsset();
         super.onAssetCreationComplete();
      }
      
      private function onFilterMouseOut(param1:MouseEvent) : void
      {
         stage.focus = this.filterInput;
      }
      
      private function onFilterFocus(param1:FocusEvent) : void
      {
         stage.focus = this.filterInput;
         this.filterInput.text = "";
         this.updateFilterList();
      }
      
      private function onChangeFilterList(param1:Event) : void
      {
         if(this._filterTimeout)
         {
            clearTimeout(this._filterTimeout);
         }
         this._filterTimeout = setTimeout(this.updateFilterList,100);
      }
      
      private function updateFilterList() : void
      {
         var _loc1_:FriendHouseVO = null;
         var _loc2_:String = this.filterInput.text.toLowerCase();
         this._filteredItems.length = 0;
         if(_loc2_.length > 0)
         {
            for each(_loc1_ in this.items)
            {
               if(_loc1_.friendName.toLowerCase().indexOf(_loc2_) > -1)
               {
                  this._filteredItems.push(_loc1_);
               }
            }
         }
         else
         {
            this._filteredItems = this.items.concat();
         }
         this.showItems();
      }
      
      private function onCloseClick(param1:MouseEvent) : void
      {
         GameSwf.currentLocationDialog.declineEntrence = true;
         close();
      }
      
      public function updateAsset() : void
      {
         var _loc1_:SwfFactoryWrapper = new SwfFactoryWrapper(_app.resourceManager,dialogAssetURL,FriendHouseItemWrapper);
         _loc1_.process(this.list.itemTemplate);
         this.list.gap = 5;
         this.list.itemFactory = _loc1_;
         this.showItems();
      }
   }
}

