package com.ax3.fishao.display.dialogs
{
   import com.ax3.fishao.FishaoFscModelManager;
   import com.ax3.fishao.model.vo.FriendHouseVO;
   import com.ax3.fishao.utils.Preloader;
   
   public class FriendsHouseListSwfDialog extends FriendsHouseListSwfDialogAsset
   {
      
      private var _currentItem:FriendHouseVO;
      
      public function FriendsHouseListSwfDialog()
      {
         super();
      }
      
      override public function show() : void
      {
         this.updateItems();
      }
      
      override protected function visitHandler(param1:FriendHouseVO) : void
      {
         close();
         GameSwf.instance.enterPrivateHouse(param1.friendName);
         this._currentItem = param1;
      }
      
      private function updateItems() : void
      {
         FishaoFscModelManager.friendsHouseFscExtension.getFriendsHouse(Preloader.waitForResponse(this.onUpdate));
      }
      
      private function onUpdate(param1:Object) : void
      {
         var _loc2_:Vector.<FriendHouseVO> = null;
         var _loc3_:Object = null;
         var _loc4_:Array = JSON.parse(param1.data) as Array;
         _loc2_ = new Vector.<FriendHouseVO>();
         for each(_loc3_ in _loc4_)
         {
            _loc2_.push(new FriendHouseVO(_loc3_.login,_loc3_.housePoints,_loc3_.online));
         }
         _loc2_.sort(FriendHouseVO.sortItemsFunc);
         items = _loc2_;
         _filteredItems = items.concat();
         super.show();
      }
   }
}

