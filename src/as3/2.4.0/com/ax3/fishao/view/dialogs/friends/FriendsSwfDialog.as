package com.ax3.fishao.view.dialogs.friends
{
   import com.ax3.fishao.FishaoFscModelManager;
   import com.ax3.fishao.model.friends.FriendData;
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.utils.Preloader;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs.trade.model.ETradeType;
   import com.ax3.fishao.view.wrappers.impl.friends.FriendsListItemWrapper;
   import flash.display.Sprite;
   import flash.events.Event;
   import flash.events.FocusEvent;
   import flash.events.MouseEvent;
   import flash.utils.clearTimeout;
   import flash.utils.getDefinitionByName;
   import flash.utils.setTimeout;
   import protocol.sr.profile.ProfileFriendsResp;
   
   public class FriendsSwfDialog extends FriendsSwfDialogAsset
   {
      
      private static const FRIENDS_PER_PAGE:uint = 9;
      
      private var _currentPageIndex:uint = 0;
      
      private var _totalPages:uint = 0;
      
      private var _friendsList:Vector.<Object>;
      
      private var _login:String;
      
      private var _filterTimeout:int;
      
      private var _filteredItems:Vector.<Object>;
      
      public function FriendsSwfDialog()
      {
         super();
      }
      
      override protected function onAssetCreationComplete() : void
      {
         super.onAssetCreationComplete();
         btnClose.handler = function(param1:MouseEvent):void
         {
            close();
         };
         title.text = I18n.get("friendsLabel");
         lblFilter.text = I18n.get("friend_search_text");
         inpFilter.text = I18n.get("friend_search_name");
         lblName.text = I18n.get("name");
         lblLastWorld.text = I18n.get("lastWorld");
         lblActions.text = I18n.get("actions");
         btnPreviousPage.handler = this.previousPageHandler;
         btnNextPage.handler = this.nextPageHandler;
         inpFilter.addEventListener(Event.CHANGE,this.onChangeFilterList);
         inpFilter.addEventListener(FocusEvent.FOCUS_IN,this.onFilterFocus);
         inpFilter.addEventListener(MouseEvent.MOUSE_OUT,this.onFilterMouseOut);
         listSet.removeChildren();
         FishaoFscModelManager.profileExtension.getProfileFriendsInfo(app.user.username,Preloader.waitForResponse(this.onFriendsListReceived));
      }
      
      private function nextPageHandler(param1:MouseEvent) : void
      {
         if(this._currentPageIndex + 1 <= this._totalPages - 1)
         {
            ++this._currentPageIndex;
         }
         this.updateFriendsList();
         this.updatePaging();
      }
      
      private function previousPageHandler(param1:MouseEvent) : void
      {
         if(this._currentPageIndex - 1 >= 0)
         {
            --this._currentPageIndex;
         }
         this.updateFriendsList();
         this.updatePaging();
      }
      
      private function onFilterMouseOut(param1:MouseEvent) : void
      {
      }
      
      private function onFilterFocus(param1:FocusEvent) : void
      {
         stage.focus = inpFilter;
         if(inpFilter.text.indexOf("...") > -1)
         {
            inpFilter.text = "";
         }
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
         var _loc1_:FriendData = null;
         var _loc2_:String = inpFilter.text.toLowerCase();
         if(_loc2_.length > 0)
         {
            this._currentPageIndex = 0;
            this._filteredItems.length = 0;
            for each(_loc1_ in this._friendsList)
            {
               if(_loc1_.name.toLowerCase().indexOf(_loc2_) > -1)
               {
                  this._filteredItems.push(_loc1_);
               }
            }
         }
         else
         {
            this._filteredItems = this._friendsList.concat();
         }
         this._filteredItems.sort(this.sortListByLogin);
         this.updateFriendsList();
         this.updatePaging();
      }
      
      private function sortListByLogin(param1:FriendData, param2:FriendData) : int
      {
         if(param1.status && param2.status)
         {
            if(param1.name.toLowerCase() > param2.name.toLowerCase())
            {
               return 1;
            }
            if(param1.name.toLowerCase() < param2.name.toLowerCase())
            {
               return -1;
            }
            return 0;
         }
         if(param1.status && !param2.status)
         {
            return -1;
         }
         if(!param1.status && param2.status)
         {
            return 1;
         }
         if(param1.name.toLowerCase() > param2.name.toLowerCase())
         {
            return 1;
         }
         if(param1.name.toLowerCase() < param2.name.toLowerCase())
         {
            return -1;
         }
         return 0;
      }
      
      private function onFriendsListReceived(param1:ProfileFriendsResp) : void
      {
         var _loc2_:Array = null;
         var _loc3_:Number = NaN;
         var _loc4_:Boolean = false;
         var _loc5_:String = null;
         var _loc6_:String = null;
         var _loc7_:int = 0;
         var _loc8_:uint = 0;
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = false;
         this._friendsList = new Vector.<Object>(0);
         this._filteredItems = new Vector.<Object>(0);
         this._currentPageIndex = 0;
         var _loc12_:Object = JSON.parse(param1.friends);
         if(_loc12_ is Array)
         {
            lblNoFriends.text = "";
            _loc2_ = _loc12_ as Array;
            _loc3_ = 0;
            while(_loc3_ < _loc2_.length)
            {
               _loc4_ = _loc2_[_loc3_].status == "true";
               _loc5_ = _loc2_[_loc3_].login;
               _loc6_ = _loc2_[_loc3_].lastServer;
               _loc7_ = parseInt(_loc2_[_loc3_].level);
               _loc8_ = parseInt(_loc2_[_loc3_].lastLoginTime);
               _loc9_ = _loc2_[_loc3_].trade == "true";
               _loc10_ = this._login == app.user.username;
               _loc11_ = this._login == app.user.username;
               this.addFriend(_loc4_,_loc5_,_loc6_,_loc7_,_loc8_,_loc9_,_loc10_,_loc11_);
               _loc3_++;
            }
            this._filteredItems = this._friendsList.concat();
            this._filteredItems.sort(this.sortListByLogin);
            this.updateFriendsList();
            this.updatePaging();
         }
         else
         {
            lblNoFriends.text = I18n.get("no_friends_yet");
         }
      }
      
      private function updatePaging() : void
      {
         lblPages.text = this._currentPageIndex + 1 + " " + I18n.get("of") + " " + (this._totalPages > 0 ? this._totalPages : 1);
         if(this._currentPageIndex == 0)
         {
            btnPreviousPage.disable();
         }
         else
         {
            btnPreviousPage.enable();
         }
         if(this._totalPages == 1 || this._currentPageIndex + 1 == this._totalPages)
         {
            btnNextPage.disable();
         }
         else
         {
            btnNextPage.enable();
         }
      }
      
      private function updateFriendsList() : void
      {
         var _loc1_:Sprite = null;
         var _loc2_:FriendsListItemWrapper = null;
         var _loc3_:uint = this._currentPageIndex * FRIENDS_PER_PAGE;
         var _loc4_:uint = _loc3_ + FRIENDS_PER_PAGE > this._filteredItems.length ? this._filteredItems.length : uint(_loc3_ + FRIENDS_PER_PAGE);
         var _loc5_:Class = getDefinitionByName("FriendsItemView") as Class;
         var _loc6_:Number = this._filteredItems.length / FRIENDS_PER_PAGE;
         if(_loc6_ - int(_loc6_) > 0)
         {
            this._totalPages = int(_loc6_) + 1;
         }
         else
         {
            this._totalPages = int(_loc6_);
         }
         listSet.removeChildren();
         var _loc7_:uint = 0;
         while(_loc3_ < _loc4_)
         {
            _loc1_ = new _loc5_();
            _loc2_ = new FriendsListItemWrapper(this._filteredItems[_loc3_] as FriendData,_loc1_);
            _loc1_.y = _loc7_ * 38;
            listSet.addChild(_loc1_);
            _loc2_.onDeleteHandler = this.removeFromFriends;
            _loc2_.onTradeHandler = this.tradeWithFriend;
            _loc2_.updateView();
            _loc7_++;
            _loc3_++;
         }
      }
      
      private function tradeWithFriend(param1:FriendData) : void
      {
         GameSwf.instance.managerTrade.startTradeWith(param1.name,ETradeType.ETT_PLAYER);
         close();
      }
      
      private function addFriend(param1:Boolean, param2:String, param3:String, param4:int, param5:uint, param6:Boolean, param7:Boolean, param8:Boolean) : void
      {
         this._friendsList.push(new FriendData(param1,param2,param4,param6,param3,param5,param7,param8));
      }
      
      private function removeFromFriends(param1:String) : void
      {
         FishaoFscModelManager.profileExtension.removeFromFriends(param1,Preloader.waitForResponse(this.onRemoveFromFriendsResp));
      }
      
      private function onRemoveFromFriendsResp(param1:Object) : void
      {
         FishaoFscModelManager.profileExtension.getProfileFriendsInfo(app.user.username,Preloader.waitForResponse(this.onFriendsListReceived));
      }
   }
}

