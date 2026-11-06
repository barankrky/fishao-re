package com.ax3.fishao.view.wrappers.impl.friends
{
   import com.ax3.display.wrappers.impl.MiddleTextFieldWrapper;
   import com.ax3.fishao.display.dialogs.MessageDialog;
   import com.ax3.fishao.model.friends.FriendData;
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.utils.UtilsDialog;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs.CommunicationSwfDialog;
   import com.ax3.fishao.view.wrappers.impl.FrameButtonWrapper;
   import flash.display.MovieClip;
   import flash.events.MouseEvent;
   
   public class FriendsListItemWrapper
   {
      
      public var onDeleteHandler:Function;
      
      public var onTradeHandler:Function;
      
      private var _view:*;
      
      private var _data:FriendData;
      
      private var _lamp:MovieClip;
      
      private var _btnDelete:FrameButtonWrapper;
      
      private var _btnTrade:FrameButtonWrapper;
      
      private var _btnSendMessage:FrameButtonWrapper;
      
      private var _ttpName:MiddleTextFieldWrapper;
      
      public function FriendsListItemWrapper(param1:FriendData, param2:*)
      {
         super();
         this._data = param1;
         this._view = param2;
      }
      
      public function updateView() : void
      {
         if(this._view != null)
         {
            this._lamp = this._view.getChildByName("lamp") as MovieClip;
            this._lamp.gotoAndStop(this._data.status ? 1 : 2);
            this._view.lblName.text = this._data.name;
            this._view.lblLastWorld.text = this._data.lastWorld;
            this._btnDelete = new FrameButtonWrapper();
            this._btnDelete.process(this._view.btnDelFromFriends);
            this._btnDelete.handler = this.deleteHandler;
            this._btnSendMessage = new FrameButtonWrapper();
            this._btnSendMessage.process(this._view.btnSendMessage);
            this._btnSendMessage.handler = this.sendMessageHandler;
            if(this._data.level < 10 || !this._data.trade || !this._data.status || app.user.level < 10)
            {
               this._view.btnTrade.visible = false;
            }
            else
            {
               this._view.btnTrade.visible = true;
               this._btnTrade = new FrameButtonWrapper();
               this._btnTrade.process(this._view.btnTrade);
               this._btnTrade.label = I18n.get("friend_trade").toUpperCase();
               this._btnTrade.handler = this.tradeHandler;
            }
            this._ttpName = new MiddleTextFieldWrapper();
            this._ttpName.buttonMode = true;
            this._ttpName.useHandCursor = true;
            this._ttpName.addEventListener(MouseEvent.CLICK,this.onNameClick);
            this._ttpName.process(this._view.lblName);
            this._ttpName.text = this._data.name;
            this._ttpName.tooltipConfig = {"text":(this._data.status ? I18n.get("friend_online_tooltip").replace("#WORLD#",this._data.lastWorld) : I18n.get("friend_offline_tooltip").replace("#TIME#",I18n.formatTimestamp(this._data.lastLoginTime)).replace("#WORLD#",this._data.lastWorld))};
         }
      }
      
      private function onNameClick(param1:MouseEvent) : void
      {
         UtilsDialog.showProfileDialog(this._data.name);
      }
      
      private function sendMessageHandler(param1:MouseEvent) : void
      {
         var _loc2_:String = this._data.name;
         var _loc3_:CommunicationSwfDialog = app.dialogFactory.getCommunicationSwfDialog();
         _loc3_.newMessageFor(_loc2_,true);
      }
      
      private function tradeHandler(param1:MouseEvent) : void
      {
         this.onTradeHandler(this._data);
      }
      
      private function deleteHandler(param1:MouseEvent) : void
      {
         var _loc2_:MessageDialog = new MessageDialog();
         _loc2_.setText(I18n.get("are_you_really_want_delete_friend").replace("#USER_NAME#",this._data.name));
         _loc2_.callbackYes = this.deleteFriend;
         _loc2_.closeOnOk = true;
         _loc2_.buttons = MessageDialog.CLOSE_BUTTON | MessageDialog.YES_BUTTON | MessageDialog.NO_BUTTON;
         _loc2_.show();
      }
      
      private function deleteFriend() : void
      {
         this.onDeleteHandler(this._data.name);
      }
   }
}

