package com.ax3.display.wrappers.impl
{
   import com.ax3.display.wrappers.IAssetWrapper;
   import com.ax3.fishao.model.vo.FriendHouseVO;
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.view.wrappers.impl.FishaoButtonWrapper;
   import flash.display.DisplayObject;
   import flash.display.DisplayObjectContainer;
   import flash.display.Sprite;
   import flash.events.MouseEvent;
   import flash.text.TextField;
   
   public class FriendHouseItemWrapper extends Sprite implements IAssetWrapper, IListItemWrapper
   {
      
      private var _asset:DisplayObjectContainer;
      
      private var _data:FriendHouseVO;
      
      private var _username:TextField;
      
      private var _pointsAmount:TextField;
      
      private var _onlineAmount:TextField;
      
      private var _buyButton:FishaoButtonWrapper;
      
      public var buyHandler:Function;
      
      public function FriendHouseItemWrapper()
      {
         super();
      }
      
      public function process(param1:DisplayObject) : void
      {
         this._asset = DisplayObjectContainer(param1);
         this._username = TextField(this._asset.getChildByName("username"));
         this._pointsAmount = TextField(this._asset.getChildByName("pointsAmount"));
         this._onlineAmount = TextField(this._asset.getChildByName("onlineAmount"));
         this._buyButton = new FishaoButtonWrapper();
         this._buyButton.process(this._asset.getChildByName("buyButton"));
         this._buyButton.handler = this.onBuyButtonClick;
         addChild(this._asset);
      }
      
      private function onBuyButtonClick(param1:MouseEvent) : void
      {
         if(this.buyHandler != null)
         {
            this.buyHandler(this._data);
         }
      }
      
      public function set data(param1:Object) : void
      {
         this._data = FriendHouseVO(param1);
         this._username.text = this._data.friendName;
         this._onlineAmount.text = this._data.visitorsAmount.toString() + "/10";
         this._pointsAmount.text = this._data.homePoints.toString();
         this._buyButton.label = I18n.get("friendsHomeListDialog_visit");
         if(this._data.visitorsAmount > 9)
         {
            this._buyButton.disable();
         }
      }
      
      public function get data() : Object
      {
         return this._data;
      }
      
      public function updateData() : void
      {
         this.data = this._data;
      }
   }
}

