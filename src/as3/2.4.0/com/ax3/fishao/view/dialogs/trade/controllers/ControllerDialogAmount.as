package com.ax3.fishao.view.dialogs.trade.controllers
{
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.utils.I18n;
   import com.ax3.fishao.view.dialogs.base.controllers.implementations.Controller;
   import com.ax3.fishao.view.dialogs.string.EStringType;
   import com.ax3.fishao.view.dialogs.trade.model.ETradeType;
   import com.ax3.fishao.view.dialogs.trade.model.TradeItem;
   import com.ax3.fishao.view.dialogs.trade.views.ViewDialogAmount;
   import com.ax3.utils.math.limit;
   import flash.display.DisplayObjectContainer;
   import flash.events.Event;
   import flash.events.TextEvent;
   
   public class ControllerDialogAmount extends Controller
   {
      
      private var _view:ViewDialogAmount;
      
      private var _tradeItem:TradeItem;
      
      private var _tradePlayerType:String;
      
      private var _amount:int;
      
      public function ControllerDialogAmount(param1:DisplayObjectContainer, param2:String)
      {
         this._tradePlayerType = param2;
         this._view = new ViewDialogAmount(this,param1);
         super(this._view);
         this.init();
      }
      
      override public function onViewClicked(param1:Object, param2:Event) : Boolean
      {
         var _loc3_:Boolean = super.onViewClicked(param1,param2);
         if(!_loc3_)
         {
            switch(param1)
            {
               case this._view.buttonClose:
                  this.hide();
                  break;
               case this._view.buttonOk:
                  this._tradeItem.quantity = this._amount;
                  if(this._amount > 0)
                  {
                     GameSwf.instance.managerTrade.tradeModel.moveItemToOffer(this._tradeItem);
                  }
                  this.hide();
                  break;
               default:
                  Debug.assert(false);
            }
         }
         return _loc3_;
      }
      
      private function onAmountTextChange(param1:Event) : void
      {
         this.validateAmount();
      }
      
      private function onTextInput(param1:TextEvent) : void
      {
         this.validateAmount();
      }
      
      private function init() : void
      {
         this._view.labelAmount.addEventListener(Event.CHANGE,this.onAmountTextChange);
         this._view.labelAmount.addEventListener(TextEvent.TEXT_INPUT,this.onTextInput);
         this.updateDialog();
         this.hide();
      }
      
      private function updateDialog() : void
      {
         switch(this._tradePlayerType)
         {
            case ETradeType.ETT_PLAYER:
               this._view.message = I18n.get(EStringType.EST_DIALOG_TRADE_DIALOG_AMOUNT_MESSAGE);
               break;
            case ETradeType.ETT_NPC:
               this._view.message = I18n.get(EStringType.EST_DIALOG_TRADE_DIALOG_AMOUNT_MESSAGE_NPC);
               break;
            default:
               Debug.assert(false,"Unsupported tradePlayerType on ControllerDialogAmount class updateDialog method: " + this._tradePlayerType);
         }
      }
      
      public function show(param1:TradeItem) : void
      {
         this._tradeItem = param1;
         this._amount = this._tradeItem.quantity;
         this._view.amount = this._amount;
         this._view.source.visible = true;
      }
      
      public function hide() : void
      {
         this._tradeItem = null;
         this._view.source.visible = false;
      }
      
      private function validateAmount() : void
      {
         if(this._view.labelAmount.text.length > 0)
         {
            this._amount = parseInt(this._view.labelAmount.text);
            this._amount = limit(this._amount,1,this._tradeItem.quantity);
            this._view.amount = this._amount;
         }
      }
   }
}

