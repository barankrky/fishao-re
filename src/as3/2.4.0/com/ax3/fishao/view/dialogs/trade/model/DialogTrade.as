package com.ax3.fishao.view.dialogs.trade.model
{
   import com.ax3.fishao.debug.Debug;
   import com.ax3.fishao.view.dialogs.base.EDialogType;
   import com.ax3.fishao.view.dialogs.base.controllers.interfaces.EControllerUpdate;
   import com.ax3.fishao.view.dialogs.trade.DialogTradeAsset;
   import com.ax3.fishao.view.dialogs.trade.controllers.ControllerDialogTrade;
   import flash.events.MouseEvent;
   
   public class DialogTrade extends DialogTradeAsset
   {
      
      private var _controllerTradeDialog:ControllerDialogTrade;
      
      public function DialogTrade()
      {
         super();
         _canClosedByEsc = false;
      }
      
      override public function get type() : String
      {
         return EDialogType.EDT_TRADE;
      }
      
      public function get controllerTradeDialog() : ControllerDialogTrade
      {
         return this._controllerTradeDialog;
      }
      
      override protected function onButtonCloseClicked(param1:MouseEvent) : void
      {
         Debug.assertNotEqual(this._controllerTradeDialog,null,"Impossible that controller is not initialized while clicking on close trade dialog");
         GameSwf.instance.managerTrade.cancelTradeOffer();
      }
      
      override protected function onAssetCreationComplete() : void
      {
         super.onAssetCreationComplete();
         this._controllerTradeDialog = new ControllerDialogTrade(_asset);
      }
      
      override public function update(param1:String) : void
      {
         switch(param1)
         {
            case EControllerUpdate.ECU_TRADE_OFFER_CHANGED_OWNER:
            case EControllerUpdate.ECU_TRADE_OFFER_CHANGED_TARGET:
            case EControllerUpdate.ECU_TRADE_STATUS_CHANGED:
            case EControllerUpdate.ECU_TRADE_CANCELED:
            case EControllerUpdate.ECU_TRADE_REVIEW:
            case EControllerUpdate.ECU_TRADE_FINISHED:
               if(this._controllerTradeDialog != null)
               {
                  this._controllerTradeDialog.update(param1);
               }
               break;
            default:
               Debug.assert(false,"Unsupported update type on update method of TradeDialog: " + param1);
         }
      }
   }
}

