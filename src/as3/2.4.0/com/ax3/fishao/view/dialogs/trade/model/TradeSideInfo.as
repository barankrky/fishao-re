package com.ax3.fishao.view.dialogs.trade.model
{
   import com.ax3.fishao.model.types.TradeStatusType;
   import com.ax3.fishao.vars.app;
   import com.ax3.fishao.view.dialogs.PopupManager;
   import com.ax3.fishao.view.dialogs.base.EDialogType;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces.EControllerUpdate;
   
   public class TradeSideInfo
   {
      
      private var _login:String;
      
      private var _type:String;
      
      private var _isInitiator:Boolean;
      
      private var _status:String;
      
      private var _items:Array;
      
      public function TradeSideInfo(param1:String, param2:String, param3:Boolean)
      {
         super();
         this._login = param1;
         this._type = param2;
         this._isInitiator = param3;
         this.init();
      }
      
      public function get login() : String
      {
         return this._login;
      }
      
      public function get status() : String
      {
         return this._status;
      }
      
      public function set status(param1:String) : void
      {
         this._status = param1;
         PopupManager.getInstance().tryUpdateCurrentDialog(EControllerUpdate.ECU_TRADE_STATUS_CHANGED,EDialogType.EDT_TRADE);
      }
      
      public function get items() : Array
      {
         return this._items;
      }
      
      public function set items(param1:Array) : void
      {
         this._items = param1;
         if(this._login == app.user.username)
         {
            PopupManager.getInstance().tryUpdateCurrentDialog(EControllerUpdate.ECU_TRADE_OFFER_CHANGED_OWNER,EDialogType.EDT_TRADE);
         }
         else
         {
            PopupManager.getInstance().tryUpdateCurrentDialog(EControllerUpdate.ECU_TRADE_OFFER_CHANGED_TARGET,EDialogType.EDT_TRADE);
         }
      }
      
      public function get type() : String
      {
         return this._type;
      }
      
      public function get isInitiator() : Boolean
      {
         return this._isInitiator;
      }
      
      private function init() : void
      {
         this._items = [];
      }
      
      public function resetStatus() : void
      {
         if(this._status != TradeStatusType.RECEIVE_INCOME_OFFER)
         {
            this.status = TradeStatusType.MAKE_OFFER;
         }
      }
   }
}

